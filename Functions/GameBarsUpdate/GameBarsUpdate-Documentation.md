# GameBarsUpdate.md

## GameBarsUpdate Documentation

## Overview
This function updates the state of the heads-up display (HUD) elements—specifically life bars and power bars—for active combatants and helpers during each frame of a match in LINUXMUGEN.

## Key responsabilities
* **Entity Pointer Retrieval:** Fetches active character and helper entity references from match state tables.
* **Life Bar State Updates:** Invokes `GameLifeBarUpdate` for primary players and validates/updates any active secondary helper entities.
* **Power Bar State Updates:** Triggers `GamePowerBarUpdate` for primary fighters to refresh gauge animations and values.

## Return Value (if applicable)
This function does not return a value (`void`).
