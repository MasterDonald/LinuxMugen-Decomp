# GameDemoUpdate.md

## GameDemoUpdate Documentation

## Overview
The `GameDemoUpdate` function manages demo mode presentation timing, screen fade-out transitions, and loop sequence resetting when the engine runs in attract/demo mode.

## Key responsibilities
* **Round State Verification:** Checks if the match is in the conclusion/over phase (`round_state == 2`).
* **Fade Transitions:** Calculates and applies master palette fading (`MasterPalMul`) during the final ticks of a demo presentation.
* **Demo Cycling:** Increments demo loop counters and resets storyboard triggers when presentation loops reach their maximum limit.
* **Timer Progression:** Advances internal demo tick counters.

## Return Value
Returns `1` if the demo presentation cycle has completed or reached its transition mark, or `0` otherwise.
