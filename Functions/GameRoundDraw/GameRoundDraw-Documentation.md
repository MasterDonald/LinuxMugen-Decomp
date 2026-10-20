# GameRoundDraw.md

## GameRoundDraw Documentation

## Overview
This function manages the rendering and visual presentation of round-specific elements, announcements, combat counters, and UI notifications (such as "ROUND 1", "FIGHT!", and win count indicators) during active gameplay loops.

## Key responsibilities
* **Round Announcement Rendering:** Triggers and positions visual explods and text banners for round progression (e.g., round start, warning text).
* **Win Icon & Score Display:** Evaluates round winners and formats player win counts and round statistics for on-screen HUD rendering.
* **Sprite & Explod Management:** Coordinates with `SysExplodCreate_Fight` and `ExplodArrayDraw` to render dynamic fight graphics and screen overlays.

## Return Value
Returns `void`.
