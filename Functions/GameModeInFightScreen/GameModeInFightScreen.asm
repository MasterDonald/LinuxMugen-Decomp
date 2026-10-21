                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameModeInFightScreen()
             undefined         <UNASSIGNED>   <RETURN>
                             GameModeInFightScreen                           XREF[3]:     Entry Point(*),
                                                                                          DrawToScreen:0808db20(c),
                                                                                          ExplodDraw:0808dfd7(c)
        0809dc10 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dc15 8b 90 dc        MOV        EDX,dword ptr [EAX + 0xcedc]
                 ce 00 00
        0809dc1b 31 c0           XOR        EAX,EAX
        0809dc1d 83 ea 04        SUB        EDX,0x4
        0809dc20 83 fa 03        CMP        EDX,0x3
        0809dc23 0f 96 c0        SETBE      AL
        0809dc26 c3              RET
