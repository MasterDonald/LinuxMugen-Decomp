# GamePlay.md

## GamePlay Documentation

## Overview
The `GamePlay` function manages the core match execution lifecycle in LINUXMUGEN. It handles pre-match loading (stages, fight data, and audio), runs the main gameplay loop via `GameLoop`, processes match results, manages arcade ladder progression, continue screens, cutscenes, and post-match resource cleanup.

## Key responsibilities
* **Match Initialization:** Unloads system sprites if needed, logs pre-match state, records start ticks, and loads the stage and fight data.
* **Audio & Timing Management:** Initializes audio volumes, starts background music tracks, and configures synchronization frame rates and initial camera positions.
* **Gameplay Execution & Flow Control:** Executes the main frame loop (`GameLoop`), monitors win/loss states, handles continue screens, and manages arcade ladder progression or survival mode results.
* **Resource Cleanup & Cutscenes:** Cleans up fight data, unloads stages, resets frame sync rates, plays ending or victory cutscenes, and reloads system assets upon match completion.

## Return Value
Returns `1` if the match and subsequent post-match sequences complete successfully, or `0` if stage loading or initialization fails.
