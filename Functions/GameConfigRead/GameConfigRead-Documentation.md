# GameConfigRead.md

# GameConfigRead Documentation

## Overview
The `GameConfigRead` function is responsible for parsing the core configuration file (`mugen.cfg`) and loading user-defined options into the engine's global state (`g`).

## Key Responsibilities
* **File Handling:** Opens the configuration file specified by `config_path` using `ConfigOpen` and safely handles failure cases.
* **Core Rules & Multipliers:** Configures game type flags, attack-to-power multipliers, get-hit multipliers, and super target defense multipliers under the `[Options]` section.
* **Engine & Video Limits:** Sets operational caps and display parameters such as gamespeed, shadow rendering, afterimage maximums, layered sprites, explods, helpers, and screen resolution (`Width`, `Height`, `Depth`, `Fullscreen`, `BlitMode`).
* **Audio Subsystem Settings:** Initializes master volumes, WAV, MIDI, MP3, MOD, and CD volume levels alongside stereo panning options under the `[Sound]` section.
* **Input Configuration:** Sets up joystick flags, force feedback options, and invokes `LoadPlayerKeyConfig` for Player 1 and Player 2 key mappings.

## Return Value
* Returns `1` upon successful configuration parsing and closure, or `0` if opening the configuration file fails.
