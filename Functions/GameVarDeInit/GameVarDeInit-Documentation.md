# GameVarDeInit.md

## GameVarDeInit Documentation

## Overview
The `GameVarDeInit` function is responsible for safely tearing down and releasing all globally allocated variable subsystems, asset containers, video surfaces, font handles, and internal buffers when shutting down the M.U.G.E.N engine or re-initializing state variables.

## Key responsabilities
* **Font Cleanup:** Releases handles for active system fonts.
* **Buffer & Memory Deallocation:** Uninitializes event circular buffers and frees dynamic memory blocks allocated for player explod arrays, sprite containers, and afterimage structures.
* **Video Surface Deallocation:** Safely checks and deallocates primary, secondary, and extra rendering surface handles via `V_DeAlloc`.
* **Global Context Termination:** Frees the primary global engine structure pointer (`g`) and sets it to `NULL` to prevent dangling references.

## Return Value
This function does not return a value (`void`).
