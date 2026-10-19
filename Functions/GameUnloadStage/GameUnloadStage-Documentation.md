# GameUnloadStage.md

## GameUnloadStage Documentation

## Overview
The `GameUnloadStage` function manages the full teardown, memory release, and state persistence cleanup when exiting or reloading a stage in LINUXMUGEN. It frees audio assets, handles persistent player variables, frees stage entities, and cleans up background rendering arrays.

## Key responsibilities
* **Audio Teardown:** Releases background music tracks currently playing via `BGMFree`.
* **Entity & Layer Cleanup:** Iterates through active stage layers and entities, updating player states and saving persistent match variables.
* **Memory & Cache Management:** Frees player allocations (`PlayerFree`), manages cache priority cleanup (`PlayerCacheFreePriority`), and deallocates background element structures (`BGArrayFree`).

## Return Value
This function does not return a value (`void`).
