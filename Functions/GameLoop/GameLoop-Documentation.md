# GameLoop.md

# GameLoop Documentation

## Overview
`GameLoop` governs the core per-frame execution cycle of the engine, managing real-time video surface blitting, frame rate throttling, input updates, and active frame simulation.

## Key Responsibilities
* **State & Color Mask Setup:** Computes 16-bit color masks using RGB shift variables (`_rgb_r_shift_16`, `_rgb_g_shift_16`, `_rgb_b_shift_16`) and initializes background offset variables.
* **Video Surface Management:** Dynamically checks `g->video.blit_mode` to toggle between primary and secondary surface handles (`V_SetBuf`).
* **Round & Stage Control:** Evaluates round reset flags (`g->match.round_reset_flag`) and stage reload flags (`g->match.stage_reload_flag`), canceling precache operations and executing `GameRoundReset()` or `GameReloadStage()` as needed.
* **Audio & Frame Tick Execution:** Polling and managing background music tracks (`BGMPoll`, `BGMPause`, `BGMResume`), updating game inputs (`GameInputUpdate`), running active frame physics/logic (`GameUpdate`), rendering to screen (`DrawToScreen`), and updating frame timing limits (`FrameSkipUpdate`).
