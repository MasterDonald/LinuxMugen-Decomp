                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSndPlay()
             undefined         <UNASSIGNED>   <RETURN>
                             gcc2_compiled.                                  XREF[20]:    Entry Point(*),
                             GameSndPlay                                                  CharacterSelectScreen:0808761e(c
                                                                                          CharacterSelectScreen:080876ef(c
                                                                                          CharacterSelectScreen:08087764(c
                                                                                          CharacterSelectScreen:08087a0c(c
                                                                                          CharacterSelectScreen:08088488(c
                                                                                          GamePowerBarUpdate:08096cc8(c),
                                                                                          ModeSelect:080a079b(c),
                                                                                          ModeSelect:080a080b(c),
                                                                                          ModeSelect:080a0943(c),
                                                                                          OptionsScreen:080a1d88(c),
                                                                                          OptionsScreen:080a1de6(c),
                                                                                          OptionsScreen:080a259a(c),
                                                                                          OptionsScreen:080a25cd(c),
                                                                                          OptionsScreen:080a261f(c),
                                                                                          OptionsScreen:080a2656(c),
                                                                                          OptionsScreen:080a268e(c),
                                                                                          OptionsScreen:080a26cd(c),
                                                                                          OptionsScreen:080a27ea(c),
                                                                                          OptionsScreen:080a283a(c), [more]
        080b9fd0 83 ec 18        SUB        ESP,0x18
        080b9fd3 8b 44 24 28     MOV        EAX,dword ptr [ESP + Stack[0x10]]
        080b9fd7 50              PUSH       EAX
        080b9fd8 8b 4c 24 28     MOV        ECX,dword ptr [ESP + Stack[0xc]]
        080b9fdc 51              PUSH       ECX
        080b9fdd 8b 54 24 28     MOV        EDX,dword ptr [ESP + Stack[0x8]]
        080b9fe1 52              PUSH       EDX
        080b9fe2 8b 44 24 28     MOV        EAX,dword ptr [ESP + Stack[0x4]]
        080b9fe6 50              PUSH       EAX
        080b9fe7 6a ff           PUSH       -0x1
        080b9fe9 e8 12 00        CALL       GameSndPlayID                                    undefined GameSndPlayID()
                 00 00
        080b9fee 83 c4 2c        ADD        ESP,0x2c
        080b9ff1 c3              RET
