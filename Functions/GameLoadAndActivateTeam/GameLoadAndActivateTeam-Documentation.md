# GameLoadAndActivateTeam.md

## GameLoadAndActivateTeam Documentation

## Overview
The `GameLoadAndActivateTeam` function manages the complete loading, resetting, and activation lifecycle for a team during match initialization and round transitions.

## Key responsibilities
* **Palette & Character Reset:** Clears existing palette group mappings via `PalGrpClear` and frees existing character instances using `GameFreeChars`.
* **Character Loading & Creation:** Invokes `GameLoadAndCreateChars` to load character caches and instantiate new player objects.
* **Health & Meter Restoration:** Preserves and restores active player health, power, and gauge values across round resets.
* **Fight Group & AI Activation:** Rebuilds fight palette groups via `PalGrpBuildFight`, updates active team configuration structures, and activates AI routines via `GameActivateAI`.

## Return Value
This function does not return a value (`void`).
