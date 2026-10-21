# GameFreePlayerDependencies.md

## GameFreePlayerDependencies Documentation

## Overview
The `GameFreePlayerDependencies` function cleans up and severs all references, bound targets, helper entities, and explods associated with a player character when that character is being freed or removed from a match.

## Key responsibilities
* **Explod Removal:** Removes all active screen explods associated with the player via `ExplodRemoveID`.
* **Bound Target Release:** Drops any targets currently bound to the player using `PlayerDropBoundTargets`.
* **Entity Iteration & Cleanup:** Iterates through all active stage/match entities to check for references to the target player, destroying associated helpers or resetting target pointers, target locks, and state references.

## Return Value
Returns `1` upon successful completion of dependency cleanup.
