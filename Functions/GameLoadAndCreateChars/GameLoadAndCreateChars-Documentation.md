# GameLoadAndCreateChars.md

## GameLoadAndCreateChars Documentation

## Overview
The `GameLoadAndCreateChars` function is responsible for loading player character caches, initializing character instances via `PlayerNew`, restoring persistent player variables, configuring palettes, setting up key configurations, and registering player entities into active match arrays.

## Key responsibilities
* **Cache Loading:** Loads character data caches using `PlayerCacheLoad` and tracks loading duration ticks.
* **Player Initialization:** Instantiates new player objects via `PlayerNew` for each active team member.
* **Persistent State Restoration:** Restores saved player persistent variables and color palettes.
* **Slot & Palette Flag Registration:** Configures group visibility flags and registers active entities into the match player array.

## Return Value
Returns `1` if all characters are successfully loaded and created, or `0` if an error occurs (such as a loading failure).
