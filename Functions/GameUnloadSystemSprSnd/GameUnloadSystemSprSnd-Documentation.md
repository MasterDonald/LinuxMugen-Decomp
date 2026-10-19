# GameUnloadSystemSprSnd.md

## GameUnloadSystemSprSnd Documentation

## Overview
This function handles the targeted deallocation of system background arrays and primary sprite container assets during specific engine state transitions or reloads.

## Key responsabilities
* **Background Array Cleanup:** Frees active system background layer and element arrays (`BGArrayFree`) and resets their respective handles to zero.
* **Sprite Asset Release:** Frees the primary loaded sprite container handle (`SpriteArrayFree`) and clears the pointer reference.

## Return Value (if applicable)
This function does not return a value (`void`).
