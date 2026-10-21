# GameAftImgCount.md

## GameAftImgCount Documentation

## Overview
The `GameAftImgCount` function iterates through an afterimage (`aftimg`) dynamic array container, evaluates each element's active status flag, and returns the total count of currently active afterimages.

## Key responsibilities
* **Array Iteration:** Loops through each item stored in the provided array container up to its element count.
* **Item Access:** Retrieves individual afterimage structure pointers using `ArrayAccessGrpItem`.
* **Status Evaluation:** Checks the status/active flag at offset `+0x8` of each afterimage structure.
* **Active Counting:** Increments and returns the tally of active afterimage instances.

## Return Value
Returns an integer representing the total number of active afterimages found in the array container.
