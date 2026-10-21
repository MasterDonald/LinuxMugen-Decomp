# GameSurvivalResultsUpdate.md

## GameSurvivalResultsUpdate Documentation

## Overview
The `GameSurvivalResultsUpdate` function manages the state machine, timing, palette fading transitions, string formatting, and graphical rendering updates for the survival mode results screen.

## Key responsibilities
* **Phase State Machine Handling:** Controls the sequence of survival results screen phases (fade-in, hold duration, and fade-out).
* **Palette Color Multiplying:** Updates master palette lighting and color multipliers (`MasterPalMul`) during transition effects.
* **Results Text Formatting:** Formats and copies survival statistics and round/match counts into text buffers using `sprintf` and `strcpy`.
* **Screen Element Spawning:** Instantiates visual elements and HUD overlays for the survival results presentation via `SysExplodCreate_Sys`.

## Return Value
This function does not return a value (`void`).
