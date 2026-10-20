# GameNextRound.md

## GameNextRound Documentation

## Overview
This function manages the transition between combat rounds in LINUXMUGEN, handling team member rotation in Simul or Turn modes, updating fighter health pools, generating survival mode opponent teams, and resetting round parameters.

## Key responsabilities
* **Round Progression:** Increments match round counters and evaluates round victory conditions via `GameRoundWinner`.
* **Team Member Rotation:** Manages team reordering (`TeamReorderAll`) and character loading (`GameLoadAndActivateTeam`) when active team members are defeated in multi-character modes.
* **Survival Mode Generation:** Triggers `SurvivalBuildRandomTeam` to populate subsequent opponent teams during survival arcade sessions.
* **Round Resetting:** Invokes `GameRoundReset` and resets display frame skip timers for the start of the new round.

## Return Value (if applicable)
This function does not return a value (`void`).
