# GameMatchWinner.md

## GameMatchWinner Documentation

## Overview
The `GameMatchWinner` function evaluates the current match state, round victories, and win conditions across competing teams or players to determine if a match winner has been decided.

## Key responsibilities
* **State Verification:** Checks if the round state has concluded and whether timer thresholds are met.
* **Round Victory Tally:** Evaluates accumulated round wins for each team/player against required match win limits.
* **Special Mode Handling:** Accounts for arcade mode rules and tie-breaking conditions when multiple teams reach victory criteria simultaneously.

## Return Value
Returns the winning player/team identifier (e.g., `1` for Player 1, `2` for Player 2, or `3` for specific arcade match scenarios), or `0` if the match is still ongoing.
