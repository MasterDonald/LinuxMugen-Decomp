# GameClsnUpdate.md

## GameClsnUpdate Documentation

## Overview
The `GameClsnUpdate` function manages the comprehensive collision update pipeline for a match. It compiles active entities, handles character pushing, processes melee hit/guard determinations, evaluates projectile collisions, and executes hit resolution routines.

## Key responsibilities
* **Active Entity Compilation:** Scans active player and helper slots, filtering valid active entities into the collision processing list.
* **Push & Proximity Checks:** Evaluates character positioning and resolves mutual push boxes between opposing fighters using `PlayerPushCheck` and `PlayerAreEnemies`.
* **Hit & Reversal Detection:** Checks for reversals, standard hits (`PlayerCheckP1HitP2`, `Player1HitP2`), and processes hit effects.
* **Projectile Interactions:** Manages projectile-to-character and projectile-to-projectile collision detection and execution routines.

## Return Value
This function does not return a value (`void`).
