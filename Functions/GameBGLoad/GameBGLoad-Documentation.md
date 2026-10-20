# GameBGLoad.md

## GameBGLoad Documentation

## Overview
This function loads stage background configuration and asset data from the stage definition file (.def) during stage initialization in LINUXMUGEN.

## Key responsabilities
* **Stage Configuration Reading:** Opens and parses the stage definition file using text parser routines (`TPReadFile`, `TPGroupSeek`, `TPGetValue`).
* **Background Asset Parsing:** Reads background layer specifications using `BGArrayReadTP` and assigns the resulting handle to the stage background container.
* **Error Handling & Cleanup:** Formats descriptive error messages into the scratch buffer if opening or reading the background data fails, and frees parser resources upon successful loading.

## Return Value (if applicable)
Returns `true` (`1`) if the background definition and assets are successfully loaded; otherwise returns `false` (`0`).
