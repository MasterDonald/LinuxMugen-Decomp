# GameLifeBarDraw.md

## GameLifeBarDraw Documentation

## Overview
This function manages the rendering and visual update of character health bars (life bars) during active M.U.G.E.N matches, handling current health proportions, damage smoothing effects (trailing red/white damage segments), and optional debug health value text displays.

## Key responsibilities
* **Health Bar Geometry & Scaling:** Computes current health bar widths relative to max health and screen resolution scaling.
* **Damage Flash & Trailing Bar Rendering:** Renders trailing damage effects and flashing segments when health is depleted or recovering.
* **Debug Health Statistics:** Optionally renders numerical health values and remaining health counters on screen when debug overlays are enabled.
* **Clipping & Viewport Management:** Utilizes clipping routines (`W_Define`) and font rendering utilities (`V_FontDraw`, `V_FontDrawRight`) to position and draw HUD components correctly.

## Return Value
Returns `void`.
