# GameVarLoadFonts.md

## GameVarLoadFonts Documentation

## Overview
This text acts as a placeholder for the `GameVarLoadFonts` function, which is responsible for loading the core system font assets required for rendering text throughout the M.U.G.E.N engine interface and debugging overlays.

## Key responsibilities
* **Primary Font Loading:** Loads the default 4x6 system font (`f-4x6.fnt`) and assigns its handle to the global asset structure.
* **Secondary Font Loading:** Loads the secondary 6x9 system font (`f-6x9.fnt`) and assigns its handle.
* **Error Handling & Teardown:** Triggers error flags and copies the filename into the scratch error buffer if either font fails to load, subsequently invoking `GameVarDeInit` to clean up resources.

## Return Value
Returns `1` if both system fonts are successfully loaded into memory, or `0` if font loading fails.
