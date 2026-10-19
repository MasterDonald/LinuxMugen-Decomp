# GameReloadSystemSprSnd.md

## GameReloadSystemSprSnd Documentation

## Overview
This function verifies and reloads core system assets—including the primary sprite container (.sff), primary sound container (.snd), and system background arrays (TitleBG, VersusBG, SelectBG, and OptionBG)—if they have been previously unloaded or cleared.

## Key responsabilities
* **Sprite Container Verification:** Checks if the primary sprite handle is null and reloads it from file if path information is present.
* **Sound Container Verification:** Checks if the primary sound handle is null and reloads it from file if path information is present.
* **Background Array Reloading:** Parses the system definition file (`system.def`) and re-initializes any unallocated system background elements (`BGArrayReadTP`).
* **Error Handling:** Triggers fatal error exits (`ErrorExitM`) if file loading or memory allocation fails during the reload process.

## Return Value (if applicable)
This function does not return a value (`void`).
