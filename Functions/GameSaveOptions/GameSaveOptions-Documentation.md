# GameSaveOptions.md

## GameSaveOptions Documentation

## Overview
This function saves the engine and gameplay configuration options back to `data/mugen.cfg`, persisting user modifications to difficulty, match settings, audio volumes, team rules, joystick types, and player key/joystick bindings.

## Key responsabilities
* **Configuration File Writing:** Opens `data/mugen.cfg` for writing using text parser utility functions (`TPReadFileForWrite`, `TPGroupSeek`, `TPPrintf`).
* **Parameter Serialization:** Writes current engine settings, volumes, and rule parameters into their respective configuration groups.
* **Key & Joystick Export:** Copies active player key bindings and pad configurations into temporary buffers, converts internal key codes back to configuration text formats, and saves them via `PlayerSaveKeys`.

## Return Value (if applicable)
This function does not return a value (`void`), but terminates execution via `ErrorExit` if writing to the configuration file fails.
