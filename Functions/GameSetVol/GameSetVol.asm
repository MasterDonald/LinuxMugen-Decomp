                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSetVol()
             undefined         <UNASSIGNED>   <RETURN>
                             GameSetVol                                      XREF[10]:    Entry Point(*),
                                                                                          BGMLoadAndStart:08085aec(c),
                                                                                          GameRoundUpdate:080933bd(c),
                                                                                          GameInit:08099338(c),
                                                                                          GamePlay:0809d1dd(c),
                                                                                          GamePlay:0809d36d(c),
                                                                                          GamePlay:0809d3da(c),
                                                                                          GamePlay:0809d60a(c),
                                                                                          GameReloadStage:0809edb9(c),
                                                                                          ModeSelect:080a036d(c)
        080ba2a0 57              PUSH       EDI
        080ba2a1 56              PUSH       ESI
        080ba2a2 53              PUSH       EBX
        080ba2a3 8b 5c 24 10     MOV        EBX,dword ptr [ESP + Stack[0x4]]
        080ba2a7 8b 4c 24 14     MOV        ECX,dword ptr [ESP + Stack[0x8]]
        080ba2ab 83 fb ff        CMP        EBX,-0x1
        080ba2ae 74 26           JZ         LAB_080ba2d6
        080ba2b0 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080ba2b6 89 df           MOV        EDI,EBX
        080ba2b8 8b 9e 88        MOV        EBX,dword ptr [ESI + 0x1e688]
                 e6 01 00
        080ba2be 0f af fb        IMUL       EDI,EBX
        080ba2c1 bb 1f 85        MOV        EBX,0x51eb851f
                 eb 51
        080ba2c6 89 f8           MOV        EAX,EDI
        080ba2c8 f7 eb           IMUL       EBX
        080ba2ca c1 ff 1f        SAR        EDI,0x1f
        080ba2cd 89 d3           MOV        EBX,EDX
        080ba2cf c1 fb 04        SAR        EBX,0x4
        080ba2d2 29 fb           SUB        EBX,EDI
        080ba2d4 eb 06           JMP        LAB_080ba2dc
                             LAB_080ba2d6                                    XREF[1]:     080ba2ae(j)
        080ba2d6 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_080ba2dc                                    XREF[1]:     080ba2d4(j)
        080ba2dc 83 f9 ff        CMP        ECX,-0x1
        080ba2df 74 1e           JZ         LAB_080ba2ff
        080ba2e1 89 cf           MOV        EDI,ECX
        080ba2e3 8b 8e 8c        MOV        ECX,dword ptr [ESI + 0x1e68c]
                 e6 01 00
        080ba2e9 0f af f9        IMUL       EDI,ECX
        080ba2ec b9 1f 85        MOV        ECX,0x51eb851f
                 eb 51
        080ba2f1 89 f8           MOV        EAX,EDI
        080ba2f3 f7 e9           IMUL       ECX
        080ba2f5 c1 ff 1f        SAR        EDI,0x1f
        080ba2f8 89 d1           MOV        ECX,EDX
        080ba2fa c1 f9 04        SAR        ECX,0x4
        080ba2fd 29 f9           SUB        ECX,EDI
                             LAB_080ba2ff                                    XREF[1]:     080ba2df(j)
        080ba2ff 8b 96 cc        MOV        EDX,dword ptr [ESI + 0x1bbcc]
                 bb 01 00
        080ba305 85 d2           TEST       EDX,EDX
        080ba307 74 17           JZ         LAB_080ba320
        080ba309 89 4c 24 14     MOV        dword ptr [ESP + Stack[0x8]],ECX
        080ba30d 89 5c 24 10     MOV        dword ptr [ESP + Stack[0x4]],EBX
        080ba311 5b              POP        EBX
        080ba312 5e              POP        ESI
        080ba313 5f              POP        EDI
        080ba314 e9 e7 d9        JMP        SndSetVol                                        undefined SndSetVol()
                 f9 ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        080ba319 8d              ??         8Dh
        080ba31a b4              ??         B4h
        080ba31b 26              ??         26h    &
        080ba31c 00              ??         00h
        080ba31d 00              ??         00h
        080ba31e 00              ??         00h
        080ba31f 00              ??         00h
                             LAB_080ba320                                    XREF[1]:     080ba307(j)
        080ba320 5b              POP        EBX
        080ba321 5e              POP        ESI
        080ba322 5f              POP        EDI
        080ba323 c3              RET
