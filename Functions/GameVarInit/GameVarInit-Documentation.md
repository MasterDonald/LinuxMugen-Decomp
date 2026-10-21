# GameVarInit.md

## GameVarInit Documentation

## Overview
The `GameVarInit` function initializes the core engine global structure (`g`), verifies file system write permissions, checks software expiration dates against build timestamps, allocates essential video surfaces, sprite priority arrays, animation containers, afterimage buffers, and system clipboards.

## Key responsibilities
* **Environment & Permissions:** Retrieves the current working directory and validates write access by creating and removing a temporary file (`_mugen__.tmp`).
* **Expiration Check:** Compares system time against expiration limits using date comparison routines.
* **Video & Surface Allocation:** Allocates primary and secondary video screen buffers (`V_AllocDepth`) and clears the display context.
* **Asset & Subsystem Allocation:** Initializes priority sprite arrays, persistent animation structures, afterimage buffers, palette group memory, and input circular buffers.
* **Clipboard & System Defaults:** Sets up default game variables, timer counters, random seed generation, and system clipboard handles.

## Return Value
Returns `1` if all subsystems and allocations succeed successfully, or `0` if any initialization step fails (triggering a full cleanup via `GameVarDeInit`).
