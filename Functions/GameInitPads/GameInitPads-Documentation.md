# GameInitPads.md

## GameInitPads Documentation

## Overview
This function initializes and configures gamepad and joystick input devices for players in LINUXMUGEN, handling default mapping resets, hardware device initialization, and input subsystem reinitialization.

## Key responsabilities
* **Default Configuration Loading:** Copies Player 1 and Player 2 default gamepad mapping blocks into active memory.
* **Input Validation & Sanitization:** Clears unassigned input structures and removes zero-key assignments via `PlayerKeysRemoveZero`.
* **Hardware Setup:** Deinitializes previous pad instances, initializes controllers via `DeviceInit` and `PadInit`, and validates input subsystem readiness.

## Return Value (if applicable)
This function returns `void`, but terminates execution with an error message via `ErrorExitM` if input reinitialization fails.
