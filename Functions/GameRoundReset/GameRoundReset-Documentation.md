# GameRoundReset.md

## GameRoundReset Documentation

## Overview
This text acts as a placeholder for the `GameRoundReset` function. It is responsible for resetting individual round parameters, re-centering camera coordinates, resetting player states and health pools according to handicap scaling, clearing visual particle/afterimage effects, and restarting round timers.

## Key responsabilities
* **Round Timing & State Initialization:** Stops active audio streams, initializes round time limits, and resets round phase counters and win streaks.
* **Fighter State & Health Adjustment:** Resets individual character entities, restores default controller states, applies team health scaling multipliers, and recalculates health ratios.
* **Subsystem & Effect Resets:** Resets camera position, background scroll layers, palette manipulation effects, particle/afterimage containers, and explod tracking arrays.

## Return Value (if applicable)
This function does not return a value (`void`).
