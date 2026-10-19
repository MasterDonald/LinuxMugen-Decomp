# GameRoundResetPlayerPos.md

## GameRoundResetPlayerPos Documentation

## Overview
This text acts as a placeholder for the `GameRoundResetPlayerPos` function. It is responsible for resetting entity physics velocities at the start of a round, verifying and adjusting player facing directions relative to stage spawn configurations, and positioning all active fighters at their designated spawn coordinates.

## Key responsabilities
* **Physics Reset:** Clears velocity and acceleration attributes for active stage entity slots.
* **Facing Alignment:** Compares current entity facing orientation against match spawn settings, triggering `PlayerTurnAround` if a mismatch occurs.
* **Coordinate Initialization:** Sets initial X, Y, and Z position coordinates (along with backup tracking values) for all active fighters based on stage configuration tables.

## Return Value (if applicable)
Returns the final calculated spawn X coordinate integer value.
