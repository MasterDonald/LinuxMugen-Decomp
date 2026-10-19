# GameLoadFightData.md

## GameLoadFightData Documentation

## Overview
This text acts as a placeholder for the `GameLoadFightData` function. It is responsible for parsing the main fight configuration definition file (`fight.def`) and loading all necessary combat assets, including sprites (`.sff`), sounds (`.snd`), animation scripts (`.air`), fonts, and UI elements (lifebars, powerbars, round displays, and win icons) required for a match.

## Key responsabilities
* **Asset Loading:** Locates and loads core fight data files such as fighter sprites, sound effects, fight special effects (`fightfx`), and common audio resources.
* **UI Layout Initialization:** Parses layout metrics, positions, and explod configurations for standard, simul, and turns match modes.
* **Container Allocation:** Initializes active sprite and system explosion arrays for both players prior to entering the match loop.

## Return Value (if applicable)
Returns `1` if all fight data files and user interface definitions load and allocate successfully; returns `0` if any file fails to open, read, or allocate.
