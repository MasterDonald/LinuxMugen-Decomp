# GameFreeChars.md

## GameFreeChars Documentation

## Overview
The `GameFreeChars` function is responsible for safely deallocating character entities, freeing player dependencies, saving persistent variables, and releasing cache memory for all active fighters belonging to a specified team during match resets or cleanup phases.

## Key responsibilities
* **Team Member Iteration:** Iterates through active members of the specified team using team index configurations.
* **Persistent Variable Saving:** Saves fighter persistent variables before deallocation.
* **Dependency & Memory Cleanup:** Invokes player dependency deallocation, frees player structures via `PlayerFree`, and releases player cache memory via `PlayerCacheFree`.
* **Slot Reset:** Clears entity allocation slots and player array references in the global engine context.

## Return Value
Returns `1` upon successful completion of character deallocation.
