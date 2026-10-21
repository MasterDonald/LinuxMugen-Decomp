# GameActivateAI.md

## GameActivateAI Documentation

## Overview
The `GameActivateAI` function iterates through all competing teams and their respective active characters, enabling or configuring artificial intelligence (AI) control flags based on global engine settings and demo mode states.

## Key responsibilities
* **AI & Demo Flag Checks:** Evaluates whether global AI control or demo mode is enabled (`ai_enabled_flag` or `demo_mode_flag`).
* **Team & Member Iteration:** Loops through both teams and their active member configuration blocks.
* **AI State Assignment:** Sets the AI control flag on active player entities when AI or demo mode is active.

## Return Value
This function does not return a value (`void`).
