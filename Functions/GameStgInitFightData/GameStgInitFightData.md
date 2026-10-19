# GameStgInitFightData.md

## GameStgInitFightData Documentation

## Overview
The `GameStgInitFightData` function initializes fighter-specific assets, configuration data, and sprite containers for all active participants in a match. It iterates through team rosters, parses character definition files, resolves sprite asset paths, and loads SFF sprite lists into the engine's match structure.

## Key responsibilities
* **Team Iteration & Validation:** Loops through active players/teams to verify member counts and ensure compatibility with current game mode rules (such as survival modes).
* **Asset Path Resolution:** Parses system explod parameters and constructs file paths for individual character definition and sprite files (`.sff`) using directory join utilities.
* **Sprite Loading & Registration:** Opens character definition files using the text parser, extracts sprite references, and populates the match fighter sprite handle arrays.

## Return Value
Returns `1` upon successfully completing fight data initialization for all active participants.
