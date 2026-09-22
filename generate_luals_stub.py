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
    # Remove common C++ qualifiers
    type_name = re.sub(r"\bconst\b", "", type_name)
    type_name = type_name.replace("&", "").replace("*", "")
    type_name = re.sub(r"\s+", " ", type_name).strip()
    # Primitive types
    if type_name in {
        "bool"
    }:
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
    if type_name in {
        "void"
    }:
        return None
    # std::vector<T>
    vector_match = re.match(
        r"(?:std::)?vector\s*<\s*(.+?)\s*>$",
        type_name
    )
    if vector_match:
        element_type = cpp_to_lua_type(vector_match.group(1))
        if element_type:
            return element_type + "[]"
        return "any[]"
    # Known engine classes
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
    # Unknown engine/user type:
    # Preserve the type name instead of turning everything into any.
    simple = type_name.split("::")[-1]
    if re.match(r"^[A-Za-z_]\w*$", simple):
        return simple
    return "any"
# ============================================================
# Small parsing helpers
# ============================================================
def strip_comments(text):
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.S)
    text = re.sub(r"//.*", "", text)
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
def find_matching_paren(text, open_pos):
    depth = 0
    for i in range(open_pos, len(text)):
        char = text[i]
        if char == "(":
            depth += 1
        elif char == ")":
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
            result.append("".join(current).strip())
            current = []
        else:
            current.append(char)
    if current:
        result.append("".join(current).strip())
    return result
def find_function_end(text, start):
    """
    Find the end of a C++/LuaBridge expression.
    This is deliberately simple and bounded to the local binding
    expression. It does NOT scan the entire repository.
    """
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
            if paren_depth == 0 and angle_depth == 0 and brace_depth == 0:
                return i
    return len(text)
# ============================================================
# Generated engine API header
# ============================================================
def parse_generated_header():
    if not HEADER.exists():
        print(f"ERROR: Missing generated header: {HEADER}")
        return []
    text = HEADER.read_text(encoding="utf-8")
    entries = []
    # Example:
    #
    # {"getTime", "Method", "TimedAction:getTime() -> float", "TimedAction"}
    #
    pattern = re.compile(
        r'\{\s*"([^"]+)"\s*,\s*"([^"]+)"\s*,\s*"([^"]*)"\s*,\s*"([^"]*)"\s*\}'
    )
    for match in pattern.finditer(text):
        name = match.group(1)
        kind = match.group(2)
        signature = match.group(3)
        owner = match.group(4)
        entries.append({
            "name": name,
            "kind": kind,
            "signature": signature,
            "owner": owner
        })
    return entries
def parse_signature(signature):
    """
    Examples:
        Object:getWorldPosition() -> Vector3
        Object:setPosition(position)
        TimedAction:getTime() -> float
    """
    match = re.match(
        r"^(?:(\w+):)?(\w+)\s*\((.*?)\)\s*(?:->\s*(.+))?$",
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
        for index, param in enumerate(split_arguments(params_text)):
            param = param.strip()
            # Header suggestions sometimes only provide names.
            param_match = re.match(
                r"(?:(.+?)\s+)?([A-Za-z_]\w*)$",
                param
            )
            if param_match:
                possible_type = param_match.group(1)
                param_name = param_match.group(2)
                if possible_type:
                    lua_type = cpp_to_lua_type(possible_type)
                else:
                    lua_type = "any"
                params.append((param_name, lua_type))
            else:
                params.append((f"arg{index + 1}", "any"))
    lua_return = cpp_to_lua_type(return_type) if return_type else None
    return {
        "owner": owner,
        "name": name,
        "params": params,
        "return_type": lua_return
    }
def parse_generated_api():
    result = {}
    for entry in parse_generated_header():
        signature = parse_signature(entry["signature"])
        if not signature:
            continue
        owner = entry["owner"] or signature["owner"]
        if not owner:
            continue
        result.setdefault(owner, [])
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
def find_included_header(binding_path, include_name):
    """
    Resolve only a header explicitly included by a binding file.
    No repository-wide C++ indexing is performed.
    """
    include_name = include_name.strip()
    local = binding_path.parent / include_name
    if local.exists():
        return local
    core = ENGINE_CORE_DIR / include_name
    if core.exists():
        return core
    # Limited filename lookup.
    # This is one header at a time, not a global source scan.
    for candidate in ENGINE_CORE_DIR.rglob(include_name):
        if candidate.is_file():
            return candidate
    return None
def get_included_headers(binding_path, text):
    headers = []
    pattern = re.compile(
        r'^\s*#include\s*[<"]([^">]+)[">]',
        re.MULTILINE
    )
    for match in pattern.finditer(text):
        include_name = match.group(1)
        if not include_name.endswith((".h", ".hpp")):
            continue
        header = find_included_header(binding_path, include_name)
        if header and header not in headers:
            headers.append(header)
    return headers
# ============================================================
# C++ class declaration lookup
# ============================================================
def find_class_body(header_text, class_name):
    """
    Handles declarations such as:
        class Input {
        class DORIAX_API Input {
        class DORIAX_API Input : public Something {
        class Foo : public Bar {
    This was intentionally made tolerant of API/export macros.
    """
    pattern = re.compile(
        r"\bclass\s+"
        r"(?:[A-Za-z_]\w*\s+)*"
        + re.escape(class_name)
        + r"\s*"
        r"(?:\s*:\s*[^{]+)?"
        r"\s*\{"
    )
    match = pattern.search(header_text)
    if not match:
        return None
    open_brace = header_text.find("{", match.start())
    if open_brace == -1:
        return None
    close_brace = find_matching_brace(header_text, open_brace)
    if close_brace == -1:
        return None
    return header_text[open_brace + 1:close_brace]
# ============================================================
# C++ declaration parsing
# ============================================================
def clean_cpp_type(type_name):
    type_name = type_name.strip()
    type_name = re.sub(
        r"\b(static|virtual|inline|constexpr|explicit)\b",
        "",
        type_name
    )
    type_name = re.sub(r"\s+", " ", type_name).strip()
    return type_name
def parse_cpp_parameters(parameters_text):
    params = []
    if not parameters_text.strip():
        return params
    for index, param in enumerate(split_arguments(parameters_text)):
        param = param.strip()
        if not param:
            continue
        # Remove default value
        param = re.split(r"\s*=\s*", param, maxsplit=1)[0].strip()
        # Function pointer / complicated declarations:
        # keep them as any.
        match = re.match(
            r"(.+?)\s+([A-Za-z_]\w*)$",
            param
        )
        if match:
            cpp_type = clean_cpp_type(match.group(1))
            name = match.group(2)
        else:
            cpp_type = clean_cpp_type(param)
            name = f"arg{index + 1}"
        params.append({
            "name": name,
            "type": cpp_to_lua_type(cpp_type)
        })
    return params
def find_cpp_method(header_text, class_name, method_name):
    """
    Directed lookup:
        binding -> included header -> requested class -> requested method
    It never indexes every C++ method in the project.
    """
    body = find_class_body(header_text, class_name)
    if body is None:
        return None
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
        ([A-Za-z_][\w:<>,\s*&]+?)
        \s+
        """
        + re.escape(method_name)
        + r"""
        \s*
        \(
            ([^()]*(?:\([^()]*\)[^()]*)*)
        \)
        \s*
        (?:const\s*)?
        (?:override\s*)?
        ;
        """,
        re.VERBOSE
    )
    match = pattern.search(body)
    if not match:
        return None
    return_type = clean_cpp_type(match.group(1))
    params_text = match.group(2)
    return {
        "return_type": cpp_to_lua_type(return_type),
        "params": parse_cpp_parameters(params_text)
    }
# ============================================================
# Lambda parsing
# ============================================================
def parse_lambda_parameters(expression):
    """
    Extract:
        [] (const char* text)
        [] ()
        [x] (int value)
    """
    match = re.search(
        r"\[[^\]]*\]\s*\((.*?)\)",
        expression,
        re.S
    )
    if not match:
        return []
    return parse_cpp_parameters(match.group(1))
def parse_lambda_return(expression):
    """
    Extract explicit lambda return type:
        [] () -> int
        [] (const char* text) -> bool
    """
    match = re.search(
        r"\]\s*\([^)]*\)\s*->\s*([A-Za-z_][\w:<>,\s*&]*)",
        expression
    )
    if not match:
        return None
    return cpp_to_lua_type(clean_cpp_type(match.group(1)))
# ============================================================
# Binding parsing
# ============================================================
def parse_direct_method(
    binding_path,
    binding_text,
    class_name,
    method_name,
    static=False
):
    """
    Resolve:
        &Input::isKeyPressed
        &Log::print
        &File::open
    by looking only at headers included by this binding.
    """
    headers = get_included_headers(binding_path, binding_text)
    # Prefer the header whose filename matches the class.
    preferred = []
    for header in headers:
        if header.stem.lower() == class_name.lower():
            preferred.append(header)
    ordered = preferred + [
        header for header in headers
        if header not in preferred
    ]
    for header in ordered:
        try:
            text = strip_comments(
                header.read_text(encoding="utf-8", errors="ignore")
            )
        except OSError:
            continue
        method = find_cpp_method(
            text,
            class_name,
            method_name
        )
        if method:
            return method
    return None
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
    if re.search(r"\[[^\]]*\]\s*\(", expression):
        params = parse_lambda_parameters(expression)
        return_type = parse_lambda_return(expression)
        return {
            "params": params,
            "return_type": return_type
        }
    # --------------------------------------------------------
    # luabridge::overload<...>
    # --------------------------------------------------------
    overload_match = re.search(
        r"luabridge::overload\s*<(.+?)>\s*\(",
        expression,
        re.S
    )
    if overload_match:
        overload_body = overload_match.group(1)
        pointer_matches = re.findall(
            r"&\s*([A-Za-z_]\w*)::([A-Za-z_]\w*)",
            overload_body
        )
        if pointer_matches:
            # LuaLS cannot represent C++ overload sets perfectly
            # in this generated stub. Use the first real declaration.
            for owner, method_name in pointer_matches:
                method = parse_direct_method(
                    binding_path,
                    binding_text,
                    owner,
                    method_name,
                    static
                )
                if method:
                    return method
        # Some overload expressions can be inferred directly from
        # their visible types, but if not, fall through to any.
        return {
            "params": [],
            "return_type": None
        }
    # --------------------------------------------------------
    # Direct pointer
    #
    #   &Input::isKeyPressed
    #   &Log::print
    # --------------------------------------------------------
    pointer_match = re.search(
        r"&\s*([A-Za-z_]\w*)::([A-Za-z_]\w*)",
        expression
    )
    if pointer_match:
        owner = pointer_match.group(1)
        method_name = pointer_match.group(2)
        method = parse_direct_method(
            binding_path,
            binding_text,
            owner,
            method_name,
            static
        )
        if method:
            return method
    # --------------------------------------------------------
    # Function name without class
    # --------------------------------------------------------
    return {
        "params": [],
        "return_type": None
    }
def parse_binding_classes(binding_path, text):
    classes = {}
    # --------------------------------------------------------
    # beginClass<Class>("Class")
    # --------------------------------------------------------
    begin_pattern = re.compile(
        r"\.beginClass\s*<\s*([A-Za-z_]\w*)\s*>\s*\(\s*"
        r'"([^"]+)"\s*\)'
    )
    for match in begin_pattern.finditer(text):
        cpp_class = match.group(1)
        lua_class = match.group(2)
        start = match.end()
        # Search only until the matching .endClass().
        end_match = re.search(
            r"\.endClass\s*\(\s*\)",
            text[start:]
        )
        if end_match:
            block = text[start:start + end_match.start()]
        else:
            block = text[start:]
        classes.setdefault(lua_class, {
            "cpp_class": cpp_class,
            "base": None,
            "methods": {},
            "static_methods": {},
            "properties": {}
        })
        parse_binding_block(
            binding_path,
            text,
            block,
            cpp_class,
            classes[lua_class]
        )
    # --------------------------------------------------------
    # deriveClass<Derived, Base>("Derived")
    # --------------------------------------------------------
    derive_pattern = re.compile(
        r'\.deriveClass\s*<\s*'
        r'([A-Za-z_]\w*)\s*,\s*'
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
            block = text[start:start + end_match.start()]
        else:
            block = text[start:]
        classes.setdefault(lua_class, {
            "cpp_class": cpp_class,
            "base": base_class,
            "methods": {},
            "static_methods": {},
            "properties": {}
        })
        classes[lua_class]["base"] = base_class
        parse_binding_block(
            binding_path,
            text,
            block,
            cpp_class,
            classes[lua_class]
        )
    return classes
def parse_binding_block(
    binding_path,
    full_text,
    block,
    cpp_class,
    class_info
):
    # --------------------------------------------------------
    # addFunction
    # --------------------------------------------------------
    parse_binding_functions(
        binding_path,
        full_text,
        block,
        cpp_class,
        class_info,
        static=False
    )
    # --------------------------------------------------------
    # addStaticFunction
    # --------------------------------------------------------
    parse_binding_functions(
        binding_path,
        full_text,
        block,
        cpp_class,
        class_info,
        static=True
    )
    # --------------------------------------------------------
    # addStaticProperty
    # --------------------------------------------------------
    static_property_pattern = re.compile(
        r'\.addStaticProperty\s*\(\s*"([^"]+)"\s*,',
        re.S
    )
    for match in static_property_pattern.finditer(block):
        name = match.group(1)
        start = match.end()
        # Capture only a small local expression.
        end = find_function_end(block, start)
        expression = block[start:end]
        return_type = parse_lambda_return(expression)
        if return_type is None:
            return_type = "any"
        class_info["properties"][name] = return_type
    # --------------------------------------------------------
    # addVariable
    # --------------------------------------------------------
    variable_pattern = re.compile(
        r'\.addVariable\s*\(\s*"([^"]+)"\s*,',
        re.S
    )
    for match in variable_pattern.finditer(block):
        name = match.group(1)
        class_info["properties"].setdefault(
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
        end = find_function_end(block, start)
        expression = block[start:end]
        info = parse_add_function_expression(
            binding_path,
            full_text,
            cpp_class,
            name,
            expression,
            static
        )
        if static:
            class_info["static_methods"][name] = info
        else:
            class_info["methods"][name] = info
def parse_bindings():
    classes = {}
    if not BINDING_DIR.exists():
        return classes
    for path in sorted(BINDING_DIR.glob("*.cpp")):
        try:
            text = path.read_text(
                encoding="utf-8",
                errors="ignore"
            )
        except OSError:
            continue
        text = strip_comments(text)
        found = parse_binding_classes(path, text)
        for name, info in found.items():
            if name not in classes:
                classes[name] = info
            else:
                existing = classes[name]
                existing["methods"].update(
                    info["methods"]
                )
                existing["static_methods"].update(
                    info["static_methods"]
                )
                existing["properties"].update(
                    info["properties"]
                )
                if info["base"]:
                    existing["base"] = info["base"]
    return classes
# ============================================================
# Global Lua functions
# ============================================================
def parse_global_functions():
    """
    These are registered directly with Lua and therefore don't
    appear as LuaBridge class methods.
    Verified engine API:
        RegisterEvent(self, event, methodName, tag?)
        RegisterEngineEvent(self, methodName, tag?)
    """
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
def merge_generated_api(classes, generated):
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
                "return_type": method["return_type"]
            }
            if method["kind"] == "Constant":
                class_info["properties"].setdefault(
                    name,
                    method["return_type"] or "any"
                )
            elif method["kind"] in {
                "StaticMethod",
                "Static Function",
                "StaticFunction"
            }:
                class_info["static_methods"].setdefault(
                    name,
                    info
                )
            else:
                class_info["methods"].setdefault(
                    name,
                    info
                )
# ============================================================
# Output
# ============================================================
def emit_param_annotations(params):
    lines = []
    for param in params:
        name = param["name"]
        lua_type = param["type"] or "any"
        lines.append(
            f"---@param {name} {lua_type}"
        )
    return lines
def emit_return_annotation(return_type):
    if return_type:
        return [
            f"---@return {return_type}"
        ]
    return []
def emit_class(name, info):
    lines = []

    lines.append(f"---@class {name}")

    base = info.get("base")

    if base:
        lines.append(f"---@field _base {base}")

    properties = info.get("properties", {})

    for property_name, property_type in sorted(
        properties.items()
    ):
        lines.append(
            f"---@field {property_name} {property_type}"
        )

    # IMPORTANT:
    # These APIs are globals in Doriax Lua.
    # Do NOT use "local" here.
    lines.append(
        f"{name} = {{}}"
    )

    lines.append("")

    # --------------------------------------------------------
    # Instance methods
    # --------------------------------------------------------

    for method_name, method in sorted(
        info.get("methods", {}).items()
    ):
        lines.extend(
            emit_param_annotations(
                method.get("params", [])
            )
        )

        lines.extend(
            emit_return_annotation(
                method.get("return_type")
            )
        )

        lines.append(
            f"function {name}:{method_name}("
            + ", ".join(
                p["name"]
                for p in method.get("params", [])
            )
            + ") end"
        )

        lines.append("")

    # --------------------------------------------------------
    # Static methods
    # --------------------------------------------------------

    for method_name, method in sorted(
        info.get("static_methods", {}).items()
    ):
        lines.extend(
            emit_param_annotations(
                method.get("params", [])
            )
        )

        lines.extend(
            emit_return_annotation(
                method.get("return_type")
            )
        )

        lines.append(
            f"function {name}.{method_name}("
            + ", ".join(
                p["name"]
                for p in method.get("params", [])
            )
            + ") end"
        )

        lines.append("")

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
def emit_globals():
    lines = []
    globals_api = parse_global_functions()
    for name, params in globals_api.items():
        for param_name, param_type in params:
            lines.append(
                f"---@param {param_name} {param_type}"
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
def emit_manual_known_apis(classes):
    """
    Small APIs that are registered outside the generated
    engine_api_suggestions.h and outside normal class bindings.
    These are kept here only when their registration mechanism
    is not represented by the normal parser.
    """
    # --------------------------------------------------------
    # Log
    #
    # Verified from CoreClassesLua.cpp:
    #
    # addStaticFunction("print", [] (const char* text) {...})
    # --------------------------------------------------------
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
    # --------------------------------------------------------
    # Input
    #
    # The actual method signatures come from Input.h through
    # the binding parser.
    #
    # The constants are registered as static properties and
    # are therefore numbers.
    # --------------------------------------------------------
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
    # These are known to be static integer key constants.
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
        input_class["properties"].setdefault(
            name,
            "number"
        )
# ============================================================
# Main
# ============================================================
def main():
    print("Reading generated API...")
    generated = parse_generated_api()
    print("Reading Lua bindings...")
    classes = parse_bindings()
    print("Merging generated API...")
    merge_generated_api(
        classes,
        generated
    )
    add_doriax_script(classes)
    emit_manual_known_apis(classes)
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
    # Globals first
    output.extend(
        emit_globals()
    )
    # Classes
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

