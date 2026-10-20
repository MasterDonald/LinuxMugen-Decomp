# GameRoundUpdate.md

## GameRoundUpdate Documentation

## Overview
This function manages the core round update loop and state machine for M.U.G.E.N matches, handling round phase transitions (intro, fighting, round over, win icons, fading, and match conclusion).

## Key responsibilities
* **Round Phase State Machine:** Processes the active round state (intro animations, active combat, KO/time-over decisions, win counter updates, and screen fading).
* **Player State & Health Management:** Updates player positions, checks player health/status, manages afterimages, and triggers state changes upon round events.
* **Timer & Audio Synchronization:** Controls round countdown timers, triggers announcer voice lines (e.g., "Round 1, Fight!", "KO", time warnings), and adjusts master/music volumes during dramatic finishes.
* **Match Progression:** Coordinates with `GameRoundResetPlayerPos`, `GameRoundWinner`, `GameMatchWinner`, and `GameNextRound` to advance the match toward subsequent rounds or the win screen.

## Return Value
Returns `1` if the match/round sequence requests a transition or exit, otherwise `0`.
