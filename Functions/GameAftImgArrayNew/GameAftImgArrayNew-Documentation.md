# GameAftImgArrayNew.md

## GameAftImgArrayNew Documentation

## Overview
The `GameAftImgArrayNew` function is responsible for allocating and initializing a dynamic array container for afterimage (`aftimg`) effect structures used during character animation and special effects rendering.

## Key responsibilities
* **Container Allocation:** Allocates a new array container of specified size using `ArrayNew`, where each element is `0x7c` (124) bytes.
* **Element Initialization:** Iterates through the requested count, clearing local buffers and invoking `AftImgInit` to set up individual afterimage structures.
* **Error Handling:** Automatically releases allocated memory via `GameAftImgArrayFree` and returns `0` if any initialization step fails.
* **Array Population:** Adds each successfully initialized afterimage structure into the array container using `ArrayAdd`.

## Return Value
Returns a pointer to the newly allocated and populated afterimage array container, or `0` (`NULL`) upon failure.
