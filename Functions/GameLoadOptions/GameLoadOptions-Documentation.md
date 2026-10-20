# GameLoadOptions.md

## GameLoadOptions Documentation

## Overview
This function loads engine and gameplay configuration options from `data/mugen.cfg`, including game speed, difficulty, audio volumes, motif paths, player key bindings, and joystick configurations.

## Key responsabilities
* **Configuration File Parsing:** Opens and reads `data/mugen.cfg` using text parser utilities (`TPReadFile`, `TPGroupSeek`, `TPGetValueInt`).
* **System & Motif Setup:** Resolves motif file paths and splits directory/filename components for system initialization.
* **Input Configuration Loading:** Loads keyboard and joystick bindings for Player 1 and Player 2, sanitizes zero assignments, and initializes input pads and setup routines.

## Return Value (if applicable)
Returns status or terminates execution via `ErrorExit` or `ErrorExitM` if configuration loading or input initialization fails.
