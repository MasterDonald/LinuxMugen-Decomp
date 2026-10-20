# GameRoundWinner.md

## GameRoundWinner Documentation

## Overview
This function retrieves the winning player or outcome status of the current round from the global match state structure.

## Key responsibilities
* **Round Winner Retrieval:** Accesses the stored winner identifier for the active round.
* **State Reporting:** Provides the round conclusion result to other subsystems and match management functions.

## Return Value
Returns an `int` representing the round winner (e.g., `0` for draw/none, `1` for Player 1, `2` for Player 2, etc.).
