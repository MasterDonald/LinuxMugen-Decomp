# GamePowerBarUpdate.md

## GamePowerBarUpdate Documentation

## Overview
The `GamePowerBarUpdate` function manages the smooth visual interpolation of a player's power gauge meter during combat, updating displayed values toward the target power level and triggering audio cues when milestone power thresholds are reached.

## Key responsibilities
* **Pause & Slowdown Checks:** Halts gauge interpolation when the match is paused or during round slowdown effects.
* **Value Interpolation:** Smoothly increments or decrements the current displayed power bar value toward the actual player power pool.
* **Audio Milestones:** Detects when power crosses 1000-unit thresholds (up to level 9) and triggers corresponding sound effects via `GameSndPlay`.

## Return Value
Returns the updated power level ratio or tracked milestone index integer.
