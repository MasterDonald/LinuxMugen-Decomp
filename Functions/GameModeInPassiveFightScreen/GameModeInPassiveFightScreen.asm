                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameModeInPassiveFightScreen()
             undefined         <UNASSIGNED>   <RETURN>
                             GameModeInPassiveFightScreen                    XREF[9]:     Entry Point(*),
                                                                                          GameLoop:0808ff40(c),
                                                                                          GameLoop:08090371(c),
                                                                                          GameLoop:0809103e(c),
                                                                                          GameUpdate:080915b7(c),
                                                                                          CameraMoveP:0809442f(c),
                                                                                          PlayerKBUpdate:080abd78(c),
                                                                                          PlayerKBUpdate:080abe55(c),
                                                                                          PlayerSCtrlApplyElem:080bf8e5(c)
        0809dc30 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dc35 8b 90 dc        MOV        EDX,dword ptr [EAX + 0xcedc]
                 ce 00 00
        0809dc3b 31 c0           XOR        EAX,EAX
        0809dc3d 83 ea 05        SUB        EDX,0x5
        0809dc40 83 fa 02        CMP        EDX,0x2
        0809dc43 0f 96 c0        SETBE      AL
        0809dc46 c3              RET
