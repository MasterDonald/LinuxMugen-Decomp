# LinuxMugen-Decomp
Decompilation of LINUXMUGEN (14.04.2002)

## About the project
LINUXMUGEN is an official beta port from DOSMUGEN made by Elecbyte which was initially released on the 1st of November, 2001. It received an update on the 14th of the same month and year (2001.11.14) before having it's last documented update on the 14th of April, 2002. The community has analyzed, tested and created content from the rest of versions, these being winmugen, mugen 1.0 and mugen 1.1 respectively.<br> *With the rise in popularity around UNIX, having a stable, native version of MUGEN on these systems is a potential great opportunity, thus the LINUXMUGEN Decompilation project was created.*

**The intention behind this project is for archival, patching, experimenting, exploiting and study purposes. If Elecbyte does not approve, this repository will be taken down. Additionally, this is meant to be taken as a "base" rather than a fully fledged result, expect mistakes as this is a one man operation (at least for now).**

## Navigation & Naming
When entering `Functions` folder:
* Each folder represents a LINUXMUGEN function.
* `{Function}.asm` => Ghidra's dissassembly.
* `{Function}-PseudoC.c` => Ghidra's pseudo-c code.
* `{Function}-Translation.c` => Refactorization of pseudo-c code (standard C).
* `{Function}-Documentation.md}` => Documentation of the function.

## Artificial Intelligence disclaimer
It's important to note LINUXMUGEN's decompilation is *heavily assisted by Large Language Models due to lack of time and the massive list of functions to decompile*. However, the process is not entirely automated by a harness such as [REA](https://github.com/morluto/rea). While decompilation speed would increase quite much, **transparency and manual checks are key parts of the project as small [LLM hallucinations](https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)) could snowball into massive mistakes given the project's magnitude and complexity.**<br>

**So, if you don't want to deal with AI generated code, I highly recommend you just stick to the provided dissassembly and pseudo-c code of Ghidra, thank you!**

## Decompilation pipeline
LINUXMUGEN's decompilation follows this pipeline:
1) Separate [Ghidra's](https://github.com/NationalSecurityAgency/ghidra) disassembly & pseudo c-code of X function.
2) Measure disassembly to pseudo c-code accuracy.
3) Map offsets used by pseudo c-code.
4) Translate/Refactor pseudo c-code into standard C code.
5) Measure pseudo c-code to standard C code accuracy.
6) Verify accuracy of disassembly, pseudo c-code, standard C code and offsets.
7) Document function purpose and usage.
8) Commit update.

## Function priority
The decompilation priority of functions is simple, if the function is generally more used than others, it gets decompiled first.

## PROGRESS
* 'GAME' Functions: 40/65 (61.54% done)
