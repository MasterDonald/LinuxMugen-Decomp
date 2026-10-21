# GameResetPersistVars.md

## GameResetPersistVars Documentation

## Overview
The `GameResetPersistVars` function is responsible for clearing and resetting persistent variables across both competing teams when starting a new match, round, or resetting state configurations.

## Key responsibilities
* **Team 0 Persistence Reset:** Invokes the team reset routine for the first team/player index (`0`).
* **Team 1 Persistence Reset:** Invokes the team reset routine for the second team/player index (`1`).

## Return Value
This function does not return a value (`void`).
