                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameResetOptions()
             undefined         <UNASSIGNED>   <RETURN>
                             GameResetOptions                                XREF[3]:     Entry Point(*),
                                                                                          GameInit:080991ab(c),
                                                                                          OptionsScreen:080a205b(c)
        080d4ea0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4ea5 c7 80 78        MOV        dword ptr [EAX + 0x1e678],0x4
                 e6 01 00
                 04 00 00 00
        080d4eaf c7 80 7c        MOV        dword ptr [EAX + 0x1e67c],0x64
                 e6 01 00
                 64 00 00 00
        080d4eb9 c7 80 80        MOV        dword ptr [EAX + 0x1e680],0x63
                 e6 01 00
                 63 00 00 00
        080d4ec3 c7 80 84        MOV        dword ptr [EAX + 0x1e684],0x0
                 e6 01 00
                 00 00 00 00
        080d4ecd c7 80 88        MOV        dword ptr [EAX + 0x1e688],0x32
                 e6 01 00
                 32 00 00 00
        080d4ed7 c7 80 8c        MOV        dword ptr [EAX + 0x1e68c],0x32
                 e6 01 00
                 32 00 00 00
        080d4ee1 c3              RET
