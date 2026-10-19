# GameLoadStage.md

## GameLoadStage Documentation

## Overview
The `GameLoadStage` function is responsible for parsing, loading, and initializing stage definition files (`.def`) in LINUXMUGEN. It reads camera properties, player starting positions, scaling rules, boundary limitations, rendering offsets, shadow/reflection parameters, background music, and background layers required for a match.

## Key responsibilities
* **File Parsing & Validation:** Opens stage definition files via the text parser subsystem (`TPReadFile`), seeking mandatory configuration sections (`Camera`, `PlayerInfo`, `Scaling`, `Bound`, `StageInfo`) and handling missing property errors.
* **Stage Parameter Configuration:** Populates stage and camera tracking bounds, initial player spawn coordinates, floor Z-offsets, and aesthetic options like shadows and reflections.
* **Audio & Background Loading:** Configures and loads stage background music tracks (`BGMLoad`) and initializes background rendering structures via `GameBGLoad`.
* **Entity Allocation:** Instantiates stage-associated helper characters or background actors via `PlayerNew` and configures their initial palette mapping flags.

## Return Value
Returns `1` if the stage definition file and all associated assets load successfully, or `0` if file opening, parsing, background loading, or entity creation fails.
