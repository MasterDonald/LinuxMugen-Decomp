# GameFGDraw.md

## GameFGDraw Documentation

## Overview
This text acts as a placeholder for the `GameFGDraw` function, which is responsible for rendering the foreground layers of the stage background array during match gameplay.

## Key responsibilities
* **Layer Rendering:** Invokes the background array drawing routine (`BGArrayDrawLayer`) to render foreground graphics.
* **Handle Management:** Retrieves the active background element array handle from the global engine stage structure.
* **Foreground Targeting:** Specifies layer index `1` to render foreground stage elements over characters and stage objects.

## Return Value
This function does not return a value (`void`).
