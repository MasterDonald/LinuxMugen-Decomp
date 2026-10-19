                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameStgDeInitFightData()
             undefined         <UNASSIGNED>   <RETURN>
                             GameStgDeInitFightData                          XREF[3]:     Entry Point(*),
                                                                                          GamePlay:0809d5a3(c),
                                                                                          GameReloadStage:0809ed50(c)
        0809eb00 55              PUSH       EBP
        0809eb01 31 ed           XOR        EBP,EBP
        0809eb03 57              PUSH       EDI
        0809eb04 56              PUSH       ESI
        0809eb05 53              PUSH       EBX
        0809eb06 83 ec 0c        SUB        ESP,0xc
        0809eb09 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809eb0f 81 c7 24        ADD        EDI,0x10524
                 05 01 00
                             LAB_0809eb15                                    XREF[1]:     0809eb4b(j)
        0809eb15 89 e8           MOV        EAX,EBP
        0809eb17 be 03 00        MOV        ESI,0x3
                 00 00
        0809eb1c c1 e0 04        SHL        EAX,0x4
        0809eb1f 8d 98 b0        LEA        EBX,[EAX + 0x45b0]
                 45 00 00
                             LAB_0809eb25                                    XREF[1]:     0809eb45(j)
        0809eb25 8b 44 1f 00     MOV        EAX,dword ptr [EDI + EBX*0x1]
        0809eb29 85 c0           TEST       EAX,EAX
        0809eb2b 74 14           JZ         LAB_0809eb41
        0809eb2d 83 ec 0c        SUB        ESP,0xc
        0809eb30 50              PUSH       EAX
        0809eb31 e8 8a a0        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 fb ff
        0809eb36 83 c4 10        ADD        ESP,0x10
        0809eb39 c7 44 1f        MOV        dword ptr [EDI + EBX*0x1],0x0
                 00 00 00
                 00 00
                             LAB_0809eb41                                    XREF[1]:     0809eb2b(j)
        0809eb41 83 c3 04        ADD        EBX,0x4
        0809eb44 4e              DEC        ESI
        0809eb45 79 de           JNS        LAB_0809eb25
        0809eb47 45              INC        EBP
        0809eb48 83 fd 01        CMP        EBP,0x1
        0809eb4b 7e c8           JLE        LAB_0809eb15
        0809eb4d 83 c4 0c        ADD        ESP,0xc
        0809eb50 5b              POP        EBX
        0809eb51 5e              POP        ESI
        0809eb52 5f              POP        EDI
        0809eb53 5d              POP        EBP
        0809eb54 c3              RET
