# GameSndPlay.md

## GameSndPlay Documentation

## Overview
This function acts as a convenient wrapper for triggering sound effects in LINUXMUGEN by forwarding sound group, item number, volume, and panning parameters to the core sound playback handler.

## Key responsabilities
* **Sound Playboard Forwarding:** Passes sound parameters directly to `GameSndPlayID`.
* **Default ID Assignment:** Automatically supplies a default sound identifier of -1 for standard sound triggers.

## Return Value (if applicable)
This function does not return a value (`void`).
