# GameBGDraw.md

## GameBGDraw Documentation

## Overview
This function handles the rendering and offset updates of stage background layers and visual boundary letterboxing during match gameplay and screen transitions in LINUXMUGEN.

## Key responsabilities
* **Background Layer Movement:** Updates background array coordinates and scroll positions via `BGArrayMoveOffset`.
* **Background Drawing:** Renders active stage background layers using `BGArrayDrawLayer`.
* **Z-Offset Linkage:** Calculates dynamic floor Z-offsets linked to specific background elements.
* **Letterbox Border Rendering:** Fills screen border regions using `W_BoxFill` when background scrolling offsets extend beyond standard screen bounds.

## Return Value (if applicable)
This function does not return a value (`void`).
