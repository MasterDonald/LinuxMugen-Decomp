# GameInputUpdate.md

## GameInputUpdate Documentation

## Overview
The `GameInputUpdate` function handles per-frame polling of hardware input devices (keyboard and gamepads), processes debug shortcuts, manages training/pause menus, and updates player control states during active matches.

## Key Responsibilities
* **Device Polling:** Queries keyboard buffers (`KBPoll`, `KBkbhit`, `KBgetchraw`) and joystick/pad states (`PadPoll`, `PadHit`, `PadGet`).
* **Debug & Training Commands:** Processes shortcut keys for life adjustment, state changes, frame stepping, and clipboard clearing when the game is paused.
* **Screen Capture:** Monitors and triggers screen snapshot requests (`ScreenSnap`) based on user input flags.

## Return Value
Returns `0` upon successful completion of input processing for the current frame.
