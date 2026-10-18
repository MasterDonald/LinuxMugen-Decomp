# MainLoop.md

# MainLoop Documentation

## Overview
`MainLoop` controls the high-level flow of the application, managing intro storyboards, game mode selection, character select screens, arcade ladders, survival teams, and match execution loops.

## Key Responsibilities
* **Intro & Mode Initialization:** Checks intro playback flags to trigger the `IntroScreen()`, resets persistent variables via `GameResetPersistVars()`, and routes the player through `ModeSelect()`.
* **Arcade & Survival Setup:** 
  * Builds arcade opponent lists (`ArcadeListBuild()`) and initializes team precache routines when arcade mode is active.
  * Sets up random teams via `SurvivalBuildRandomTeam()` when survival mode is enabled.
* **Match Execution Loop:** Manages match counters (`g->match.arcade_match_index`, `g->match.total_matches_played`), triggers Versus screens (`VersusScreen()`), executes gameplay (`GamePlay()`), and updates arcade win tallies (`g->score.arcade_wins_count`).
* **Cleanup Routines:** Handles precache cancellations, character palette release cycles, and clean exits when returning to titles or closing modes.
