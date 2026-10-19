# GameUpdate.md

## GameUpdate Documentation

## Overview
This text acts as a placeholder for the `GameUpdate` function. The `GameUpdate` function serves as the core per-frame tick dispatcher for the M.U.G.E.N engine during matches, coordinating entity states, input queues, AI decision trees, physics updates, animations, projectiles, and camera tracking.

## Key responsibilities
* **Frame State Management:** Updates active player flags, evaluates round conditions, and dispatches game mode state transitions (Arcade, Survival, Win screens).
* **Input & AI Dispatch:** Processes input command circular buffers, updates controller keyboard states, and runs AI message routines and decision loops for active fighters.
* **Physics & Subsystem Updates:** Manages character frame ticks, projectile trajectories, collision detection updates (`GameClsnUpdate`), background layer scrolling, and afterimages.

## Return Value (if applicable)
Returns `1` if a match state transition or demo exit condition is triggered, otherwise returns `0`.
