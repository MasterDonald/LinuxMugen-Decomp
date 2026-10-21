# GameAftImgArrayFree.md

## GameAftImgArrayFree Documentation

## Overview
The `GameAftImgArrayFree` function is responsible for deinitializing and freeing all individual afterimage (`aftimg`) structures stored within a dynamic array container before releasing the container itself.

## Key responsibilities
* **Pointer Validation:** Checks whether the provided array handle pointer is valid (non-zero).
* **Element Deinitialization:** Iterates through all items stored in the array container, retrieving each item via `ArrayAccessGrpItem` and calling `AftImgDeInit` on it.
* **Container Release:** Frees the dynamic array container memory using `ArrayFree`.

## Return Value
Returns the result status from `ArrayFree`, or an unmodified register state if the input pointer was null.
