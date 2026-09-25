# Copyright (c) 2026 Hussein Nazarala

#!/usr/bin/env python3

from pathlib import Path
import re


# ============================================================
# Paths
# ============================================================

HEADER = Path("build/generated/engine_api_suggestions.h")
OUTPUT = Path("doriax-api/doriax.lua")
BINDING_DIR = Path("engine/core/script/binding")
ENGINE_CORE_DIR = Path("engine/core")


# ============================================================
# Type conversion
# ============================================================

def cpp_to_lua_type(type_name):
    type_name = type_name.strip()

    type_name = re.sub(r"\bconst\b", "", type_name)
    type_name = type_name.replace("&", "").replace("*", "")
    type_name = re.sub(r"\s+", " ", type_name).strip()

    if type_name == "bool":
        return "boolean"

    if type_name in {
        "float",
        "double",
        "long double",
        "int",
        "unsigned",
        "unsigned int",
        "long",
        "unsigned long",
        "long long",
        "unsigned long long",
        "short",
        "unsigned short",
        "char",
        "unsigned char",
        "size_t",
        "uint8_t",
        "uint16_t",
        "uint32_t",
        "uint64_t",
        "int8_t",
        "int16_t",
        "int32_t",
        "int64_t"
    }:
        return "number"

    if type_name in {
        "std::string",
        "string"
    }:
        return "string"

    if type_name == "void":
        return None

    vector_match = re.match(
        r"(?:std::)?vector\s*<\s*(.+?)\s*>$",
        type_name
    )

    if vector_match:
        element_type = cpp_to_lua_type(
            vector_match.group(1)
        )

        if element_type:
            return element_type + "[]"

        return "any[]"

    known_types = {
        "Vector2",
        "Vector3",
        "Vector4",
        "Quaternion",
        "Matrix3",
        "Matrix4",
        "Color",
        "Object",
        "Scene",
        "Entity",
        "Camera",
        "Material",
        "Texture",
        "Mesh",
        "Model",
        "Animation",
        "Touch",
        "Gamepad",
        "File",
        "FileData",
        "Data",
        "UserSettings",
        "System",
        "Engine",
        "Input",
        "Log",
        "DoriaxScript"
    }

    if type_name in known_types:
        return type_name

    simple = type_name.split("::")[-1]

    if re.match(r"^[A-Za-z_]\w*$", simple):
        return simple

    return "any"


# ============================================================
# Small parsing helpers
# ============================================================

def strip_comments(text):
    text = re.sub(
        r"/\*.*?\*/",
        "",
        text,
        flags=re.S
    )

    text = re.sub(
        r"//.*",
        "",
        text
    )

    return text


def find_matching_brace(text, open_pos):
    depth = 0

    for i in range(open_pos, len(text)):
        char = text[i]

        if char == "{":
            depth += 1

        elif char == "}":
            depth -= 1

            if depth == 0:
                return i

    return -1


def split_arguments(text):
    result = []
    current = []

    paren_depth = 0
    angle_depth = 0
    brace_depth = 0

    for char in text:

        if char == "(":
            paren_depth += 1

        elif char == ")":
            paren_depth -= 1

        elif char == "<":
            angle_depth += 1

        elif char == ">":
            if angle_depth > 0:
                angle_depth -= 1

        elif char == "{":
            brace_depth += 1

        elif char == "}":
            if brace_depth > 0:
                brace_depth -= 1

        if (
            char == ","
            and paren_depth == 0
            and angle_depth == 0
            and brace_depth == 0
        ):
            result.append(
                "".join(current).strip()
            )
            current = []

        else:
            current.append(char)

    if current:
        result.append(
            "".join(current).strip()
        )

    return result


def find_function_end(text, start):
    paren_depth = 0
    angle_depth = 0
    brace_depth = 0
    seen_paren = False

    for i in range(start, len(text)):
        char = text[i]

        if char == "(":
            paren_depth += 1
            seen_paren = True

        elif char == ")":
            paren_depth -= 1

        elif char == "<":
            angle_depth += 1

        elif char == ">":
            if angle_depth > 0:
                angle_depth -= 1

        elif char == "{":
            brace_depth += 1

        elif char == "}":
            if brace_depth > 0:
                brace_depth -= 1

        elif char == ";" and seen_paren:
            if (
                paren_depth == 0
                and angle_depth == 0
                and brace_depth == 0
            ):
                return i

    return len(text)


# ============================================================
# Overload helpers
# ============================================================

def method_signature_key(method):
    return (
        tuple(
            param.get("type")
            for param in method.get("params", [])
        ),
        method.get("return_type")
    )


def add_overload(table, name, method):
    existing = table.get(name)

    if existing is None:
        table[name] = method
        return

    if isinstance(existing, list):
        overloads = existing
    else:
        overloads = [existing]

    key = method_signature_key(method)

    for overload in overloads:
        if method_signature_key(overload) == key:
            return

    overloads.append(method)
    table[name] = overloads


def iter_overloads(method):
    if isinstance(method, list):
        return method

    return [method]


# ============================================================
# Generated engine API header
# ============================================================

def parse_generated_header():
    if not HEADER.exists():
        print(
            f"ERROR: Missing generated header: {HEADER}"
        )
        return []

    text = HEADER.read_text(
        encoding="utf-8"
    )

    entries = []

    pattern = re.compile(
        r'\{\s*"([^"]+)"\s*,\s*'
        r'"([^"]+)"\s*,\s*'
        r'"([^"]*)"\s*,\s*'
        r'"([^"]*)"\s*\}'
    )

    for match in pattern.finditer(text):
        entries.append({
            "name": match.group(1),
            "kind": match.group(2),
            "signature": match.group(3),
            "owner": match.group(4)
        })

    return entries


def parse_signature(signature):
    match = re.match(
        r"^(?:(\w+)[.:])?"
        r"(\w+)\s*\((.*?)\)"
        r"\s*(?:->\s*(.+))?$",
        signature.strip()
    )

    if not match:
        return None

    owner = match.group(1)
    name = match.group(2)
    params_text = match.group(3).strip()
    return_type = match.group(4)

    params = []

    if params_text:
        for index, param in enumerate(
            split_arguments(params_text)
        ):
            param = param.strip()

            param_match = re.match(
                r"(?:(.+?)\s+)?"
                r"([A-Za-z_]\w*)$",
                param
            )

            if param_match:
                possible_type = param_match.group(1)
                param_name = param_match.group(2)

                if possible_type:
                    lua_type = cpp_to_lua_type(
                        possible_type
                    )
                else:
                    lua_type = "any"

                params.append(
                    (param_name, lua_type)
                )

            else:
                params.append(
                    (
                        f"arg{index + 1}",
                        "any"
                    )
                )

    lua_return = (
        cpp_to_lua_type(return_type)
        if return_type
        else None
    )

    return {
        "owner": owner,
        "name": name,
        "params": params,
        "return_type": lua_return
    }


def parse_generated_api():
    result = {}

    for entry in parse_generated_header():
        signature = parse_signature(
            entry["signature"]
        )

        if not signature:
            continue

        owner = (
            entry["owner"]
            or signature["owner"]
        )

        if not owner:
            continue

        result.setdefault(
            owner,
            []
        )

        result[owner].append({
            "name": entry["name"],
            "kind": entry["kind"],
            "params": signature["params"],
            "return_type": signature["return_type"]
        })

    return result


# ============================================================
# Header lookup
# ============================================================

def find_included_header(
    binding_path,
    include_name
):
    include_name = include_name.strip()

    local = (
        binding_path.parent
        / include_name
    )

    if local.exists():
        return local

    core = (
        ENGINE_CORE_DIR
        / include_name
    )

    if core.exists():
        return core

    for candidate in ENGINE_CORE_DIR.rglob(
        include_name
    ):
        if candidate.is_file():
            return candidate

    return None


def get_included_headers(
    binding_path,
    text
):
    headers = []

    pattern = re.compile(
        r'^\s*#include\s*[<"]'
        r'([^">]+)'
        r'[">]',
        re.MULTILINE
    )

    for match in pattern.finditer(text):
        include_name = match.group(1)

        if not include_name.endswith(
            (".h", ".hpp")
        ):
            continue

        header = find_included_header(
            binding_path,
            include_name
        )

        if (
            header
            and header not in headers
        ):
            headers.append(header)

    return headers


# ============================================================
# C++ class declaration lookup
# ============================================================

def find_class_body(
    header_text,
    class_name
):
    pattern = re.compile(
        r"\bclass\s+"
        r"(?:[A-Za-z_]\w*\s+)*"
        + re.escape(class_name)
        + r"\s*"
        r"(?:\s*:\s*[^{]+)?"
        r"\s*\{"
    )

    match = pattern.search(
        header_text
    )

    if not match:
        return None

    open_brace = header_text.find(
        "{",
        match.start()
    )

    if open_brace == -1:
        return None

    close_brace = find_matching_brace(
        header_text,
        open_brace
    )

    if close_brace == -1:
        return None

    return header_text[
        open_brace + 1:
        close_brace
    ]


# ============================================================
# C++ declaration parsing
# ============================================================

def clean_cpp_type(type_name):
    type_name = type_name.strip()

    type_name = re.sub(
        r"\b(static|virtual|inline|"
        r"constexpr|explicit)\b",
        "",
        type_name
    )

    type_name = re.sub(
        r"\s+",
        " ",
        type_name
    ).strip()

    return type_name


def parse_cpp_parameters(
    parameters_text
):
    params = []

    if not parameters_text.strip():
        return params

    for index, param in enumerate(
        split_arguments(parameters_text)
    ):
        param = param.strip()

        if not param:
            continue

        param = re.split(
            r"\s*=\s*",
            param,
            maxsplit=1
        )[0].strip()

        match = re.match(
            r"(.+?)\s+"
            r"([A-Za-z_]\w*)$",
            param
        )

        if match:
            cpp_type = clean_cpp_type(
                match.group(1)
            )
            name = match.group(2)

        else:
            cpp_type = clean_cpp_type(
                param
            )
            name = f"arg{index + 1}"

        params.append({
            "name": name,
            "type": cpp_to_lua_type(
                cpp_type
            )
        })

    return params


def find_cpp_methods(
    header_text,
    class_name,
    method_name
):
    body = find_class_body(
        header_text,
        class_name
    )

    if body is None:
        return []

    pattern = re.compile(
        r"""
        (?:
            static\s+
        )?
        (?:
            virtual\s+
        )?
        (?:
            inline\s+
        )?
        (?:
            constexpr\s+
        )?
        (?P<return_type>
            [A-Za-z_][\w:<>,\s*&]*
        )
        \s+
        """
        + re.escape(method_name)
        + r"""
        \s*
        \(
            (?P<parameters>
                [^()]*
            )
        \)
        \s*
        (?:const\s*)?
        (?:override\s*)?
        (?:=\s*[^;]+)?
        ;
        """,
        re.VERBOSE
    )

    methods = []

    for match in pattern.finditer(body):
        return_type = clean_cpp_type(
            match.group("return_type")
        )

        methods.append({
            "return_type": cpp_to_lua_type(
                return_type
            ),
            "params": parse_cpp_parameters(
                match.group("parameters")
            )
        })

    return methods


def find_cpp_method_overloads(
    binding_path,
    binding_text,
    class_name,
    method_name
):
    headers = get_included_headers(
        binding_path,
        binding_text
    )

    preferred = []

    for header in headers:
        if (
            header.stem.lower()
            == class_name.lower()
        ):
            preferred.append(header)

    ordered = preferred + [
        header
        for header in headers
        if header not in preferred
    ]

    for header in ordered:
        try:
            text = strip_comments(
                header.read_text(
                    encoding="utf-8",
                    errors="ignore"
                )
            )
        except OSError:
            continue

        methods = find_cpp_methods(
            text,
            class_name,
            method_name
        )

        if methods:
            return methods

    return []


# ============================================================
# Lambda parsing
# ============================================================

def parse_lambda_parameters(
    expression
):
    match = re.search(
        r"\[[^\]]*\]\s*"
        r"\((.*?)\)",
        expression,
        re.S
    )

    if not match:
        return []

    return parse_cpp_parameters(
        match.group(1)
    )


def parse_lambda_return(
    expression
):
    match = re.search(
        r"\]\s*\([^)]*\)\s*"
        r"->\s*"
        r"([A-Za-z_][\w:<>,\s*&]*)",
        expression
    )

    if not match:
        return None

    return cpp_to_lua_type(
        clean_cpp_type(
            match.group(1)
        )
    )


# ============================================================
# Binding parsing
# ============================================================

def parse_add_function_expression(
    binding_path,
    binding_text,
    class_name,
    name,
    expression,
    static=False
):
    expression = expression.strip()

    # --------------------------------------------------------
    # Lambda
    # --------------------------------------------------------

    if re.search(
        r"\[[^\]]*\]\s*\(",
        expression
    ):
        return [{
            "params": parse_lambda_parameters(
                expression
            ),
            "return_type": parse_lambda_return(
                expression
            )
        }]

    # --------------------------------------------------------
    # Function pointers / overloads
    #
    # The C++ header is the authoritative source for:
    #   - parameter names
    #   - parameter types
    #   - return type
    #   - all overloads
    # --------------------------------------------------------

    pointer_matches = re.findall(
        r"&\s*"
        r"([A-Za-z_]\w*)"
        r"::"
        r"([A-Za-z_]\w*)",
        expression
    )

    if pointer_matches:

        results = []

        seen = set()

        for owner, method_name in pointer_matches:

            methods = find_cpp_method_overloads(
                binding_path,
                binding_text,
                owner,
                method_name
            )

            for method in methods:

                key = method_signature_key(
                    method
                )

                if key in seen:
                    continue

                seen.add(key)
                results.append(method)

        if results:
            return results

    # --------------------------------------------------------
    # Fallback
    # --------------------------------------------------------

    return [{
        "params": [],
        "return_type": None
    }]


def parse_binding_classes(
    binding_path,
    text
):
    classes = {}

    begin_pattern = re.compile(
        r"\.beginClass\s*<\s*"
        r"([A-Za-z_]\w*)"
        r"\s*>\s*\(\s*"
        r'"([^"]+)"\s*\)'
    )

    for match in begin_pattern.finditer(text):

        cpp_class = match.group(1)
        lua_class = match.group(2)
        start = match.end()

        end_match = re.search(
            r"\.endClass\s*\(\s*\)",
            text[start:]
        )

        if end_match:
            block = text[
                start:
                start + end_match.start()
            ]
        else:
            block = text[start:]

        classes.setdefault(
            lua_class,
            {
                "cpp_class": cpp_class,
                "base": None,
                "methods": {},
                "static_methods": {},
                "properties": {}
            }
        )

        parse_binding_block(
            binding_path,
            text,
            block,
            cpp_class,
            classes[lua_class]
        )

    derive_pattern = re.compile(
        r'\.deriveClass\s*<\s*'
        r'([A-Za-z_]\w*)'
        r'\s*,\s*'
        r'([A-Za-z_]\w*)'
        r'\s*>\s*\(\s*'
        r'"([^"]+)"\s*\)'
    )

    for match in derive_pattern.finditer(text):

        cpp_class = match.group(1)
        base_class = match.group(2)
        lua_class = match.group(3)
        start = match.end()

        end_match = re.search(
            r"\.endClass\s*\(\s*\)",
            text[start:]
        )

        if end_match:
            block = text[
                start:
                start + end_match.start()
            ]
        else:
            block = text[start:]

        classes.setdefault(
            lua_class,
            {
                "cpp_class": cpp_class,
                "base": base_class,
                "methods": {},
                "static_methods": {},
                "properties": {}
            }
        )

        classes[lua_class]["base"] = base_class

        parse_binding_block(
            binding_path,
            text,
            block,
            cpp_class,
            classes[lua_class]
        )

    return classes

def parse_binding_namespaces(text):
    namespaces = {}

    begin_pattern = re.compile(
        r'\.beginNamespace\s*\(\s*'
        r'"([^"]+)"\s*\)'
    )

    for match in begin_pattern.finditer(text):

        namespace_name = match.group(1)
        start = match.end()

        end_match = re.search(
            r'\.endNamespace\s*\(\s*\)',
            text[start:]
        )

        if not end_match:
            continue

        block = text[
            start:
            start + end_match.start()
        ]

        properties = {}

        variable_pattern = re.compile(
            r'\.addVariable\s*'
            r'\(\s*"([^"]+)"\s*,',
            re.S
        )

        for variable_match in variable_pattern.finditer(
            block
        ):
            name = variable_match.group(1)

            properties[name] = "any"

        if properties:
            namespaces[namespace_name] = properties

    return namespaces

def parse_binding_block(
    binding_path,
    full_text,
    block,
    cpp_class,
    class_info
):
    parse_binding_functions(
        binding_path,
        full_text,
        block,
        cpp_class,
        class_info,
        static=False
    )

    parse_binding_functions(
        binding_path,
        full_text,
        block,
        cpp_class,
        class_info,
        static=True
    )

    static_property_pattern = re.compile(
        r'\.addStaticProperty\s*'
        r'\(\s*"([^"]+)"\s*,',
        re.S
    )

    for match in static_property_pattern.finditer(
        block
    ):
        name = match.group(1)
        start = match.end()

        end = find_function_end(
            block,
            start
        )

        expression = block[
            start:end
        ]

        return_type = parse_lambda_return(
            expression
        )

        if return_type is None:
            return_type = "any"

        class_info[
            "properties"
        ][name] = return_type

    variable_pattern = re.compile(
        r'\.addVariable\s*'
        r'\(\s*"([^"]+)"\s*,',
        re.S
    )

    for match in variable_pattern.finditer(
        block
    ):
        name = match.group(1)

        class_info[
            "properties"
        ].setdefault(
            name,
            "any"
        )


def parse_binding_functions(
    binding_path,
    full_text,
    block,
    cpp_class,
    class_info,
    static
):
    method_name = (
        "addStaticFunction"
        if static
        else "addFunction"
    )

    pattern = re.compile(
        r"\."
        + method_name
        + r"\s*\(\s*"
        r'"([^"]+)"\s*,',
        re.S
    )

    for match in pattern.finditer(block):

        name = match.group(1)
        start = match.end()

        paren_depth = 1
        angle_depth = 0
        brace_depth = 0
        end = start

        for i in range(
            start,
            len(block)
        ):
            char = block[i]

            if char == "(":
                paren_depth += 1

            elif char == ")":
                paren_depth -= 1

            elif char == "<":
                angle_depth += 1

            elif char == ">":
                if angle_depth > 0:
                    angle_depth -= 1

            elif char == "{":
                brace_depth += 1

            elif char == "}":
                if brace_depth > 0:
                    brace_depth -= 1

            if (
                char == ")"
                and paren_depth == 0
                and angle_depth == 0
                and brace_depth == 0
            ):
                end = i
                break

        expression = block[
            start:end
        ]

        methods = parse_add_function_expression(
            binding_path,
            full_text,
            cpp_class,
            name,
            expression,
            static
        )

        target = (
            class_info["static_methods"]
            if static
            else class_info["methods"]
        )

        if static:
            class_info["methods"].pop(
                name,
                None
            )

        for method in methods:
            add_overload(
                target,
                name,
                method
            )


def parse_bindings():
    classes = {}
    namespaces = {}

    if not BINDING_DIR.exists():
        return classes, namespaces

    for path in sorted(
        BINDING_DIR.glob("*.cpp")
    ):
        try:
            text = path.read_text(
                encoding="utf-8",
                errors="ignore"
            )
        except OSError:
            continue

        text = strip_comments(text)

        found = parse_binding_classes(
            path,
            text
        )

        for name, info in found.items():

            if name not in classes:
                classes[name] = info
                continue

            existing = classes[name]

            for method_name, method in (
                info["methods"].items()
            ):
                for overload in iter_overloads(
                    method
                ):
                    add_overload(
                        existing["methods"],
                        method_name,
                        overload
                    )

            for method_name, method in (
                info["static_methods"].items()
            ):
                existing["methods"].pop(
                    method_name,
                    None
                )

                for overload in iter_overloads(
                    method
                ):
                    add_overload(
                        existing["static_methods"],
                        method_name,
                        overload
                    )

            existing["properties"].update(
                info["properties"]
            )

            if info["base"]:
                existing["base"] = info["base"]

        found_namespaces = parse_binding_namespaces(
            text
        )

        for name, properties in found_namespaces.items():
            namespaces.setdefault(
                name,
                {}
            ).update(properties)

    return classes, namespaces


# ============================================================
# Global Lua functions
# ============================================================

def parse_global_functions():
    return {
        "RegisterEvent": [
            ("self", "any"),
            ("event", "string"),
            ("methodName", "string"),
            ("tag?", "string")
        ],
        "RegisterEngineEvent": [
            ("self", "any"),
            ("methodName", "string"),
            ("tag?", "string")
        ]
    }


# ============================================================
# DoriaxScript conventions
# ============================================================

def add_doriax_script(classes):
    classes.setdefault(
        "DoriaxScript",
        {
            "cpp_class": "DoriaxScript",
            "base": None,
            "methods": {},
            "static_methods": {},
            "properties": {}
        }
    )

    script = classes["DoriaxScript"]

    script["properties"].setdefault(
        "entity",
        "number"
    )

    script["properties"].setdefault(
        "scene",
        "Scene"
    )

    script["properties"].setdefault(
        "properties",
        "table"
    )


# ============================================================
# Merge generated header API
# ============================================================

def merge_generated_api(
    classes,
    generated
):
    for class_name, methods in generated.items():

        classes.setdefault(
            class_name,
            {
                "cpp_class": class_name,
                "base": None,
                "methods": {},
                "static_methods": {},
                "properties": {}
            }
        )

        class_info = classes[class_name]

        for method in methods:

            name = method["name"]

            info = {
                "params": [
                    {
                        "name": param_name,
                        "type": param_type
                    }
                    for param_name, param_type
                    in method["params"]
                ],
                "return_type": method[
                    "return_type"
                ]
            }

            if method["kind"] == "Constant":

                class_info[
                    "properties"
                ].setdefault(
                    name,
                    method["return_type"]
                    or "any"
                )

                continue

            # ------------------------------------------------
            # The Lua binding is authoritative for methods.
            #
            # If the binding already knows this method,
            # do NOT duplicate it using the generated header.
            # ------------------------------------------------

            if (
                name in class_info["methods"]
                or name in class_info["static_methods"]
            ):
                continue

            if method["kind"] in {
                "StaticMethod",
                "Static Function",
                "StaticFunction"
            }:

                class_info[
                    "static_methods"
                ][name] = info

            else:

                class_info[
                    "methods"
                ][name] = info


# ============================================================
# Output helpers
# ============================================================

def emit_param_annotations(
    params
):
    lines = []

    for param in params:

        name = param["name"]
        lua_type = (
            param["type"]
            or "any"
        )

        lines.append(
            f"---@param {name} {lua_type}"
        )

    return lines


def emit_return_annotation(
    return_type
):
    if return_type:
        return [
            f"---@return {return_type}"
        ]

    return []


def emit_method(
    lines,
    class_name,
    method_name,
    method,
    static
):
    lines.extend(
        emit_param_annotations(
            method.get(
                "params",
                []
            )
        )
    )

    lines.extend(
        emit_return_annotation(
            method.get(
                "return_type"
            )
        )
    )

    separator = "." if static else ":"

    lines.append(
        f"function "
        f"{class_name}"
        f"{separator}"
        f"{method_name}("
        + ", ".join(
            param["name"]
            for param in method.get(
                "params",
                []
            )
        )
        + ") end"
    )

    lines.append("")


def emit_class(
    name,
    info
):
    lines = []

    lines.append(
        f"---@class {name}"
    )

    base = info.get("base")

    if base:
        lines.append(
            f"---@field _base {base}"
        )

    properties = info.get(
        "properties",
        {}
    )

    for property_name, property_type in sorted(
        properties.items()
    ):
        lines.append(
            f"---@field "
            f"{property_name} "
            f"{property_type}"
        )

    lines.append(
        f"{name} = {{}}"
    )

    lines.append("")

    # --------------------------------------------------------
    # Instance methods
    # --------------------------------------------------------

    for method_name, method in sorted(
        info.get(
            "methods",
            {}
        ).items()
    ):

        for overload in iter_overloads(
            method
        ):
            emit_method(
                lines,
                name,
                method_name,
                overload,
                static=False
            )

    # --------------------------------------------------------
    # Static methods
    # --------------------------------------------------------

    for method_name, method in sorted(
        info.get(
            "static_methods",
            {}
        ).items()
    ):

        for overload in iter_overloads(
            method
        ):
            emit_method(
                lines,
                name,
                method_name,
                overload,
                static=True
            )

    # --------------------------------------------------------
    # Static properties
    # --------------------------------------------------------

    for property_name, property_type in sorted(
        properties.items()
    ):
        lines.append(
            f"{name}.{property_name} = nil"
        )

    lines.append("")

    return lines


def emit_namespaces(namespaces):
    lines = []

    for namespace_name in sorted(namespaces):

        lines.append(
            f"---@class {namespace_name}"
        )

        for property_name, property_type in sorted(
            namespaces[namespace_name].items()
        ):
            lines.append(
                f"---@field "
                f"{property_name} "
                f"{property_type}"
            )

        lines.append(
            f"{namespace_name} = {{}}"
        )

        for property_name in sorted(
            namespaces[namespace_name]
        ):
            lines.append(
                f"{namespace_name}."
                f"{property_name} = nil"
            )

        lines.append("")

    return lines

def emit_globals():
    lines = []

    globals_api = parse_global_functions()

    for name, params in globals_api.items():

        for param_name, param_type in params:
            lines.append(
                f"---@param "
                f"{param_name} "
                f"{param_type}"
            )

        lines.append(
            f"function {name}("
            + ", ".join(
                param_name
                for param_name, _ in params
            )
            + ") end"
        )

        lines.append("")

    return lines


# ============================================================
# Manual known APIs
# ============================================================

def emit_manual_known_apis(
    classes
):
    log = classes.setdefault(
        "Log",
        {
            "cpp_class": "Log",
            "base": None,
            "methods": {},
            "static_methods": {},
            "properties": {}
        }
    )

    for name in [
        "print",
        "verbose",
        "debug",
        "warn",
        "error"
    ]:
        log["static_methods"][name] = {
            "params": [
                {
                    "name": "text",
                    "type": "string"
                }
            ],
            "return_type": None
        }

    input_class = classes.setdefault(
        "Input",
        {
            "cpp_class": "Input",
            "base": None,
            "methods": {},
            "static_methods": {},
            "properties": {}
        }
    )

    key_constants = [
        "KEY_UNKNOWN",
        "KEY_SPACE",
        "KEY_APOSTROPHE",
        "KEY_COMMA",
        "KEY_MINUS",
        "KEY_PERIOD",
        "KEY_SLASH",
        "KEY_0",
        "KEY_1",
        "KEY_2",
        "KEY_3",
        "KEY_4",
        "KEY_5",
        "KEY_6",
        "KEY_7",
        "KEY_8",
        "KEY_9",
        "KEY_SEMICOLON",
        "KEY_EQUAL",
        "KEY_A",
        "KEY_B",
        "KEY_C",
        "KEY_D",
        "KEY_E",
        "KEY_F",
        "KEY_G",
        "KEY_H",
        "KEY_I",
        "KEY_J",
        "KEY_K",
        "KEY_L",
        "KEY_M",
        "KEY_N",
        "KEY_O",
        "KEY_P",
        "KEY_Q",
        "KEY_R",
        "KEY_S",
        "KEY_T",
        "KEY_U",
        "KEY_V",
        "KEY_W",
        "KEY_X",
        "KEY_Y",
        "KEY_Z",
        "KEY_LEFT",
        "KEY_RIGHT",
        "KEY_UP",
        "KEY_DOWN",
        "KEY_ESCAPE",
        "KEY_ENTER",
        "KEY_TAB",
        "KEY_BACKSPACE",
        "KEY_INSERT",
        "KEY_DELETE",
        "KEY_RIGHT_SHIFT",
        "KEY_LEFT_SHIFT",
        "KEY_RIGHT_CONTROL",
        "KEY_LEFT_CONTROL",
        "KEY_RIGHT_ALT",
        "KEY_LEFT_ALT"
    ]

    for name in key_constants:
        input_class[
            "properties"
        ].setdefault(
            name,
            "number"
        )


# ============================================================
# Main
# ============================================================

def main():
    print(
        "Reading generated API..."
    )

    generated = parse_generated_api()

    print(
        "Reading Lua bindings..."
    )

    classes, namespaces = parse_bindings()

    print(
        "Merging generated API..."
    )

    merge_generated_api(
        classes,
        generated
    )

    add_doriax_script(
        classes
    )

    emit_manual_known_apis(
        classes
    )

    output = []

    output.append(
        "-- ============================================================"
    )

    output.append(
        "-- Doriax Lua API for Lua Language Server"
    )

    output.append(
        "-- Generated automatically. Do not edit manually."
    )

    output.append(
        "-- ============================================================"
    )

    output.append("")

    output.extend(
        emit_globals()
    )
    
    output.extend(
        emit_namespaces(namespaces)
    )

    for class_name in sorted(classes):
        output.extend(
            emit_class(
                class_name,
                classes[class_name]
            )
        )

    OUTPUT.parent.mkdir(
        parents=True,
        exist_ok=True
    )

    OUTPUT.write_text(
        "\n".join(output),
        encoding="utf-8"
    )

    print(
        f"Generated {OUTPUT} "
        f"({len(classes)} classes)"
    )


if __name__ == "__main__":
    main()