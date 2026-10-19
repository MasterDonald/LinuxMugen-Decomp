# GameStgDeInitFightData.md

## GameStgDeInitFightData Documentation

## Overview
The `GameStgDeInitFightData` function handles the teardown and memory cleanup of match-specific fighter sprite resources when a match concludes or resets. It safely frees allocated sprite arrays for all active participants and clears their references.

## Key responsibilities
* **Participant Iteration:** Loops through all active player and team slots configured for the match.
* **Resource Release:** Checks for valid loaded sprite container handles and invokes `SpriteArrayFree` to release associated memory.
* **State Reset:** Zeroes out handle pointers to prevent dangling references after cleanup.

## Return Value
This function does not return a value (`void`).
