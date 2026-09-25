# Doriax LuaLS API Stub Generator

Generate Lua Language Server (LuaLS) API definitions for the Doriax game engine, providing IntelliSense, autocomplete, type information, diagnostics, and API navigation when developing Doriax Lua scripts in VS Code.

## Overview

This repository provides a Python-based generator for creating a LuaLS API definition file for the Doriax game engine.

The generator combines information from Doriax's generated engine API metadata with the actual LuaBridge bindings used by the engine.

The result is a generated Lua API stub:

    doriax-api/doriax.lua

This file can be added to a VS Code workspace so LuaLS can understand the Doriax API while editing Lua scripts.

## Features

- Generates a LuaLS-compatible API definition for Doriax.
- Reads Doriax's generated API metadata from `build/generated/engine_api_suggestions.h`.
- Inspects Doriax LuaBridge bindings under `engine/core/script/binding/`.
- Resolves exposed C++ methods from the headers referenced by the binding files.
- Resolves C++ parameter names and types from the corresponding engine headers.
- Resolves C++ return types for Lua-exposed methods.
- Supports overloaded C++ methods and generates separate LuaLS signatures for each overload.
- Supports instance methods.
- Supports static methods.
- Supports static properties.
- Supports engine constants.
- Supports LuaBridge constructors.
- Supports inherited classes.
- Supports LuaBridge namespaces and namespace variables.
- Converts common C++ types to LuaLS types.
- Converts `std::vector<T>` to Lua array types where possible.
- Includes globally registered Lua functions that are not represented as normal LuaBridge class methods.
- Provides LuaLS definitions for APIs exposed directly by Doriax's scripting system.
- Keeps the generated API definition separate from the actual game scripts.

## Why This Exists

Doriax exposes its engine functionality to Lua through several mechanisms.

A portion of the API is represented in:

    build/generated/engine_api_suggestions.h

However, the generated API metadata does not necessarily contain every Lua-visible API.

Additional functionality is registered directly through LuaBridge bindings and other scripting-related engine code.

For example, a Doriax script can use APIs such as:

    RegisterEngineEvent(self, "onUpdate")

    Log.print("Hello")

    if Input.isKeyPressed(Input.KEY_RIGHT) then
        local object = Object(self.scene, self.entity)
        object.position = object.position + Vector3(1, 0, 0)
    end

These APIs may work correctly at runtime while LuaLS reports them as undefined if their definitions are not available to the language server.

This project generates the missing editor-side definitions by combining the generated API metadata with the actual engine bindings.

## How It Works

The generator uses two primary sources.

### Generated Engine API

The generator reads:

    build/generated/engine_api_suggestions.h

This provides information about APIs already described by Doriax's API-generation system, including classes, methods, constants, parameters, and return types.

### LuaBridge Bindings

The generator also reads the LuaBridge binding files located under:

    engine/core/script/binding/

These files contain the registrations that expose C++ functionality to Lua.

For example, a binding may contain:

    .addStaticFunction("isKeyPressed", &Input::isKeyPressed)

The generator follows this binding to the corresponding C++ header and resolves the actual declaration:

    static bool isKeyPressed(int key);

This can then be represented in LuaLS as:

    ---@param key number
    ---@return boolean
    function Input.isKeyPressed(key) end

### LuaBridge Namespaces

Doriax also exposes constants and other values through LuaBridge namespaces.

For example:

    .beginNamespace("RayFilter")
        .addVariable("BODY_2D", RayFilter::BODY_2D)
        .addVariable("BODY_3D", RayFilter::BODY_3D)
    .endNamespace()

The generator detects these namespace registrations and generates corresponding LuaLS definitions:

    ---@class RayFilter
    ---@field BODY_2D any
    ---@field BODY_3D any
    RayFilter = {}
    RayFilter.BODY_2D = nil
    RayFilter.BODY_3D = nil

This allows LuaLS to recognize namespace-based APIs such as:

    local hit = ray:intersects(
        scene,
        RayFilter.BODY_3D,
        entity
    )

The same mechanism also handles other namespaces exposed through the bindings, such as:

    ReflectionProbeMode.DYNAMIC
    ReflectionProbeMode.STATIC

Namespace variables are currently represented as `any` values because their C++ types are not yet resolved by the namespace parser.

### Overloaded Methods

Doriax contains C++ methods with multiple overloads that may be exposed through LuaBridge.

For example, a C++ class may provide:

    bool contains(const Vector3& v) const;
    bool contains(const AABB& other) const;

The generator resolves the corresponding C++ declarations and generates separate LuaLS signatures:

    ---@param v Vector3
    ---@return boolean
    function AABB:contains(v) end

    ---@param other AABB
    ---@return boolean
    function AABB:contains(other) end

This allows LuaLS to provide accurate parameter information and type checking for overloaded Doriax APIs.

The generator uses the C++ declarations to recover the actual parameter names and types rather than relying only on the LuaBridge binding expression.

For example, an overloaded static method such as:

    static Quaternion lookRotation(const Vector3& forward);
    static Quaternion lookRotation(
        const Vector3& forward,
        const Vector3& up);

is generated as:

    ---@param forward Vector3
    ---@return Quaternion
    function Quaternion.lookRotation(forward) end

    ---@param forward Vector3
    ---@param up Vector3
    ---@return Quaternion
    function Quaternion.lookRotation(forward, up) end

## Directed C++ Lookup

The generator deliberately does not build a global index of the entire Doriax C++ codebase.

Instead, it follows a directed lookup process:

    LuaBridge binding
          |
          v
    Included C++ header
          |
          v
    Exposed class
          |
          v
    Specific exposed method
          |
          v
    LuaLS definition

This keeps generation lightweight and avoids expensive repository-wide C++ parsing.

Only headers relevant to the LuaBridge bindings being processed are inspected.

Namespace registrations use a similar directed approach:

    LuaBridge namespace
          |
          v
    Namespace variables
          |
          v
    LuaLS namespace definition

## Repository Structure

    .
    ├── generate_luals_stub.py
    └── doriax-api/
        └── doriax.lua

### generate_luals_stub.py

The Python generator responsible for producing the LuaLS API definition.

It:

1. Reads the generated Doriax API metadata.
2. Reads the LuaBridge binding sources.
3. Identifies Lua-exposed classes, namespaces, and functions.
4. Follows bindings to the relevant C++ headers.
5. Resolves C++ method signatures, including overloads.
6. Detects namespace variables exposed through LuaBridge.
7. Converts C++ types into LuaLS types.
8. Generates the final Lua API definition.

### doriax-api/doriax.lua

The generated LuaLS API definition.

This file exists for development tools and static analysis. It is not the runtime implementation of the Doriax engine.

The generated file should generally not be edited manually. Changes should be made to the generator or to the underlying Doriax API/bindings.

## VS Code Setup

Add the generated API directory to the VS Code workspace settings.

For example:

    {
      "Lua.workspace.library": [
        "/Users/username/Documents/2026/Doriax/doriax-api"
      ]
    }

Once configured, LuaLS can provide:

- Autocomplete
- Parameter hints
- Type information
- Undefined API diagnostics
- Field and method completion
- API navigation
- Basic static analysis

Because these APIs are exposed globally by Doriax, Lua scripts do not need to use `require()` to access them.

## Generating the API

Run the generator from the repository directory:

    python3 generate_luals_stub.py

The generator writes:

    doriax-api/doriax.lua

After regenerating the file, reload the Lua Language Server in VS Code if the changes are not picked up automatically.

## Example Doriax Script

A Doriax Lua script can contain code such as:

    local PlayerController = {
        properties = {
            {
                name = "speed",
                displayName = "Speed",
                type = "float",
                default = 5.0
            }
        }
    }

    function PlayerController:init()
        RegisterEngineEvent(self, "onUpdate")
    end

    function PlayerController:onUpdate()
        if Input.isKeyPressed(Input.KEY_RIGHT) then
            local object = Object(self.scene, self.entity)

            object.position =
                object.position +
                Vector3(Engine.deltatime * 5.0, 0, 0)

            Log.print("Moving right")
        end
    end

    return PlayerController

With the generated stub installed, LuaLS can recognize APIs such as:

    RegisterEngineEvent
    Input
    Input.isKeyPressed
    Input.KEY_RIGHT
    Object
    Object.position
    Vector3
    Engine.deltatime
    Log
    Log.print

instead of treating them as unknown globals or fields.

## Type Mapping

The generator converts common C++ types into LuaLS-compatible types.

| C++ Type | LuaLS Type |
|---|---|
| `bool` | `boolean` |
| `int` | `number` |
| `float` | `number` |
| `double` | `number` |
| `size_t` | `number` |
| `std::string` | `string` |
| `Vector2` | `Vector2` |
| `Vector3` | `Vector3` |
| `Vector4` | `Vector4` |
| `Quaternion` | `Quaternion` |
| `Color` | `Color` |
| `std::vector<T>` | `T[]` |

Unknown engine types are preserved where possible rather than automatically converting everything to `any`.

## Global Engine Functions

Some Doriax Lua functionality is registered directly as global functions rather than as LuaBridge class members.

The generator includes definitions for functions such as:

    RegisterEvent(self, event, methodName, tag)
    RegisterEngineEvent(self, methodName, tag)

The optional tag parameter is represented as optional LuaLS metadata, allowing calls such as:

    RegisterEngineEvent(self, "onUpdate")

without producing a missing-parameter diagnostic.

## Logging API

The Doriax logging interface is exposed through the global `Log` API.

The generated definitions include functions such as:

    Log.print("Hello")
    Log.verbose("Details")
    Log.debug("Debug information")
    Log.warn("Warning")
    Log.error("Error")

The text parameter is represented as a Lua `string`.

## Input API

The generator can expose input functions and constants registered by Doriax.

For example:

    Input.isKeyPressed(Input.KEY_RIGHT)

The corresponding C++ declaration:

    static bool isKeyPressed(int key);

is represented as:

    ---@param key number
    ---@return boolean
    function Input.isKeyPressed(key) end

Keyboard constants such as `Input.KEY_RIGHT` are represented as numeric values.

## Doriax Editor Scripts

One of the primary use cases is improving editor support for scripts generated or edited through the Doriax Editor.

These scripts can use engine functionality such as:

    RegisterEngineEvent(self, "onUpdate")
    Log.print(...)
    Input.isKeyPressed(...)
    Object(self.scene, self.entity)
    Vector3(...)
    Engine.deltatime

Without an API stub, LuaLS may not know that these globals, classes, methods, and properties exist.

The generated `doriax.lua` file provides that missing development-time information.

## Separation From Runtime Code

The generated file is an editor/tooling artifact.

It does not replace the Doriax runtime bindings and does not need to be loaded by the game.

The actual Lua API continues to come from the Doriax engine.

The purpose of this repository is simply to make that API visible to LuaLS.

## Design Goals

The generator is intentionally designed around a few principles:

### Fast generation

Avoid scanning and indexing the entire Doriax C++ source tree.

### Source-driven API information

Prefer information from the actual Doriax bindings and C++ declarations instead of maintaining a large manually written API list.

### Minimal maintenance

When Doriax adds or changes a Lua binding, the generator should be able to discover as much of the change as possible automatically.

### Editor-focused output

The output is optimized for LuaLS and development-time tooling rather than runtime execution.

### No engine modifications

The project does not require modifications to the Doriax engine itself.

## Current Status

Early-stage tooling.

The generator currently covers a growing portion of the Doriax Lua API, including APIs exposed through the generated engine metadata, LuaBridge classes, and LuaBridge namespaces.

It can resolve C++ method signatures and overloaded methods from the relevant engine headers, allowing the generated LuaLS definitions to more closely match the actual Lua-facing API.

It can also detect namespace variables registered through LuaBridge, providing LuaLS definitions for namespace-based constants and enum-like APIs.

Additional bindings and engine features may be added as they are discovered.

The long-term goal is to provide broad LuaLS coverage while keeping the generator:

- Fast
- Deterministic
- Lightweight
- Easy to understand
- Closely tied to the actual Doriax source
- Free from repository-wide C++ indexing

## Related Project

Doriax:

    https://github.com/Doriax/Doriax

This repository is intended to complement Doriax by providing improved Lua development tooling for editors that support LuaLS.