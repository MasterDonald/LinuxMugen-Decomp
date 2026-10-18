# GameLoadSystem.md

# GameLoadSystem Documentation

## Overview
`GameLoadSystem` handles the loading of essential system assets, script definitions, and resource containers required before entering menu or gameplay loops.

## Key Responsibilities
* **Path Resolution:** Reads critical configuration keys from the configuration handle for select screens (`select.def`), logo storyboards, and intro storyboards.
* **Core Containers:** 
  * Loads the system sprite container (`SffLoad`) from the configured `.sff` path.
  * Loads the system sound container (`SndLoad`) from the configured `.snd` path.
  * Loads the global animation script (`AirLoad`) from the configured `.air` path.
* **Font Array Loading:** Iterates through font indices `0` through `9`, dynamically loading font asset files into `g->assets.fonts` using `FontLoad`.

## Return Value
* Returns `1` upon successful asset loading, or `0` if critical system files (such as system sprites or global animation scripts) fail to load.
