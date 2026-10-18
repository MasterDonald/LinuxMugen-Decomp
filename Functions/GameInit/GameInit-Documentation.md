# GameInit.md

# GameInit Documentation

## Overview
`GameInit` serves as the primary bootstrap routine for the engine. It initializes hardware drivers, allocates the global memory state `g`, parses command-line arguments, and boots up all major graphics, audio, input, and system subsystems.

## Key Responsibilities
* **Memory Allocation:** Invokes `ElecInit()` and allocates the central `GlobalState` structure (`g`) using `ecalloc(1, sizeof(GlobalState))`.
* **Configuration & Arguments:** Calls `GameConfigRead` to load `data/mugen.cfg` and processes command-line flags for debugging, logging, network arguments, and AI overrides.
* **Subsystem Initialization:** 
  * Sets up the high-precision timer (`TimerInit`).
  * Initializes the keyboard driver (`KBInit`), repeat rates, and LED locks.
  * Sets up default key configurations and input handling (`UInpInit`).
  * Configures sound drivers and hardware mixing rates (`SndInit`, `MP3Init`).
  * Initializes the rendering pipeline and sets screen resolutions via `G_Init`, `G_SetRenderMode`, and `G_SetMode` with fallback prompts.
* **Asset & State Finalization:** Loads font assets, resets options, and triggers `GameLoadSystem(g)` to load system-level definitions and assets.
