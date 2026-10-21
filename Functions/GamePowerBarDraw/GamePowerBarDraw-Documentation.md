# GamePowerBarDraw.md

## GamePowerBarDraw Documentation

## Overview
The `GamePowerBarDraw` function is responsible for calculating and rendering the power bar meter for a player during a match, managing dynamic fill percentages, widescreen coordinate adjustments, and visual sprite/effect rendering via fight drawing routines.

## Key responsibilities
* **Screen Mode Adjustment:** Scales bar dimensions according to the active widescreen display mode flag (`g->system.screen_mode_flag`).
* **Value Calculation:** Computes current power fill ratio relative to maximum capacity and determines orientation and bounds.
* **Drawing Area Setup:** Configures clipping boundaries using `W_Define` based on the calculated bar fill length.
* **Sprite Rendering:** Triggers fight system explod and draw routines (`SysExplodCreateDraw_Fight`) to render the power bar graphics on screen.

## Return Value
This function does not return a value (`void`).
