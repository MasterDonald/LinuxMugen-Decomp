# GameMatchReset.md

## GameMatchReset Documentation

## Overview
This text acts as a placeholder for the `GameMatchReset` function. It is responsible for re-initializing and resetting all match state variables, team configurations, fighter entities, life/power pools, handicaps, and stage background scroll parameters at the beginning of a new match or round restart.

## Key responsibilities
* **Persistence & Team Setup:** Clears or resets match persistence variables depending on whether arcade or training/versus mode is active, then reorders and loads active teams.
* **Combat Balancing & Scaling:** Calculates life ratios between competing teams, applies handicap scaling factors, and handles survival mode difficulty scaling.
* **State & Entity Reset:** Resets active stage entity flags, clears round/match status timers, resets win/loss history arrays, and reinitializes background animation arrays.

## Return Value (if applicable)
This function does not return a value (`void`).
