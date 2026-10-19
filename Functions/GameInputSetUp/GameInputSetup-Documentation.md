# GameInputSetup.md

## GameInputSetup Documentation

## Overview
The `GameInputSetup` function initializes and maps player control bindings for keyboards and gamepads by loading default configurations, validating array bounds, and registering them with the engine's internal input system.

## Key Responsibilities
* **Device Iteration:** Loops through available input hardware categories (keyboard and gamepad controllers).
* **Mapping and Translation:** Translates raw hardware scancodes and button indices using engine translation routines (`KBToUInp`, `PadToUInp`).
* **Safety Assertions:** Validates mapping indices to prevent buffer overflows using `__assert_fail`.
* **Subsystem Reinitialization:** Passes the compiled key map to `UInpSetKeyMap` and reinitializes the input handler via `UInpReInit`.

## Return Value
Returns `true` (`1`) if the key map is successfully set and reinitialized; otherwise, returns `false` (`0`).
