# GameReloadStage.md

## GameReloadStage Documentation

## Overview
This function handles the complete reloading sequence of a stage during combat matches in LINUXMUGEN, including screen clearing, loading text rendering, asset cleanup, stage reloading, audio reinitialization, and match state resetting.

## Key responsabilities
* **Visual Loading Screen:** Clears the rendering surface and draws the on-screen "Loading" indicator text using the default system font.
* **Subsystem Cleanup:** Clears active palettes, unloads previous stage resources, flushes player caches, and deinitializes fight data.
* **Stage & Audio Initialization:** Re-loads stage geometry and background assets, measures loading duration ticks, restores background music tracks, and resets match states.

## Return Value (if applicable)
Returns `1` (`true`) if the stage and fight data are successfully reloaded; otherwise returns `0` (`false`).
