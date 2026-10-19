# GameUnloadSystem.md

## GameUnloadSystem Documentation

## Overview
This function handles the comprehensive deallocation and cleanup of global system resources, including background element arrays, character select screen portrait data, loaded system fonts, global animation scripts, and primary sound and sprite containers.

## Key responsabilities
* **Background Cleanup:** Frees active system background layer and element arrays (`BGArrayFree`).
* **Select Data Deallocation:** Iterates through character select grid slots, frees individual portrait sprite arrays, and releases the select data block memory.
* **Font Resource Management:** Releases non-default system fonts loaded in memory (`FontFree`) while protecting the default system font.
* **Asset Release:** Frees global animation scripts (`.air`), sound containers (`.snd`), and sprite containers (`.sff`).

## Return Value (if applicable)
This function does not return a value (`void`).
