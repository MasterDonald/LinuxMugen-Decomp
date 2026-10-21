# GameFreeFightData.md

## GameFreeFightData Documentation

## Overview
The `GameFreeFightData` function is responsible for releasing and cleaning up all match-specific fight assets, including loaded fonts, animation script containers, sprite arrays, sound containers, and player explod array allocations when unloading a match.

## Key responsibilities
* **Font Cleanup:** Iterates through match font handles and releases them via `FontFree`, while protecting the primary system font handle.
* **Animation & Sprite Deallocation:** Frees animation script containers (`AnimRCFree`) and sprite arrays (`SpriteArrayFree`) for both general match data and fight FX.
* **Sound Container Cleanup:** Frees fight and common sound container handles (`SndArrayFree`).
* **Explod Array Release:** Cleans up Player 1 and Player 2 active explod array containers (`ExplodArrayFree`).

## Return Value
This function does not return a value (`void`).
