# GameAftImgReset.md

## GameAftImgReset Documentation

## Overview
The `GameAftImgReset` function iterates through an afterimage (`aftimg`) dynamic array container and resets the active status flags and internal timers for every stored afterimage element.

## Key responsibilities
* **Container Validation & Iteration:** Loops through each item stored in the array container up to its total element count.
* **Item Access:** Retrieves individual afterimage structure pointers using `ArrayAccessGrpItem`.
* **State Reset:** Resets the internal timer (`+0x18`) and active status flag (`+0x8`) of each afterimage structure to `0`.

## Return Value
This function does not return a value (`void`).
