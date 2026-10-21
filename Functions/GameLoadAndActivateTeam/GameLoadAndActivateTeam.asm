                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoadAndActivateTeam()
             undefined         <UNASSIGNED>   <RETURN>
                             GameLoadAndActivateTeam                         XREF[4]:     Entry Point(*),
                                                                                          GameNextRound:0809ebd9(c),
                                                                                          GameMatchReset:0809ee51(c),
                                                                                          GameMatchReset:0809ee5d(c)
        080b0470 55              PUSH       EBP
        080b0471 57              PUSH       EDI
        080b0472 83 cf ff        OR         EDI,0xffffffff
        080b0475 56              PUSH       ESI
        080b0476 53              PUSH       EBX
        080b0477 83 ec 0c        SUB        ESP,0xc
        080b047a a1 74 7a        MOV        EAX,[g]
                 28 08
        080b047f 8b 74 24 20     MOV        ESI,dword ptr [ESP + Stack[0x4]]
        080b0483 8d 14 76        LEA        EDX,[ESI + ESI*0x2]
        080b0486 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        080b048d 8d 14 96        LEA        EDX,[ESI + EDX*0x4]
        080b0490 8d 14 96        LEA        EDX,[ESI + EDX*0x4]
        080b0493 8d 14 96        LEA        EDX,[ESI + EDX*0x4]
        080b0496 c1 e2 03        SHL        EDX,0x3
        080b0499 29 f2           SUB        EDX,ESI
        080b049b 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        080b049e 8b 8a e0        MOV        ECX,dword ptr [EDX + 0xcee0]
                 ce 00 00
        080b04a4 8d 04 49        LEA        EAX,[ECX + ECX*0x2]
        080b04a7 c1 e0 03        SHL        EAX,0x3
        080b04aa 29 c8           SUB        EAX,ECX
        080b04ac 8d ac 82        LEA        EBP,[EDX + EAX*0x4 + 0xceec]
                 ec ce 00 00
        080b04b3 e8 a8 84        CALL       PalGrpClear                                      undefined PalGrpClear()
                 00 00
        080b04b8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080b04bd 83 c0 04        ADD        EAX,0x4
        080b04c0 8b 04 03        MOV        EAX,dword ptr [EBX + EAX*0x1]
        080b04c3 85 c0           TEST       EAX,EAX
        080b04c5 74 06           JZ         LAB_080b04cd
        080b04c7 8b b8 78        MOV        EDI,dword ptr [EAX + 0x178]
                 01 00 00
                             LAB_080b04cd                                    XREF[1]:     080b04c5(j)
        080b04cd 83 ec 0c        SUB        ESP,0xc
        080b04d0 56              PUSH       ESI
        080b04d1 e8 fa 04        CALL       GameFreeChars                                    undefined GameFreeChars()
                 00 00
        080b04d6 83 c4 10        ADD        ESP,0x10
        080b04d9 85 c0           TEST       EAX,EAX
        080b04db 75 05           JNZ        LAB_080b04e2
        080b04dd e8 1e ce        CALL       ErrorExit                                        undefined ErrorExit()
                 fd ff
                             LAB_080b04e2                                    XREF[1]:     080b04db(j)
        080b04e2 83 ec 0c        SUB        ESP,0xc
        080b04e5 56              PUSH       ESI
        080b04e6 e8 25 01        CALL       GameLoadAndCreateChars                           undefined GameLoadAndCreateChars()
                 00 00
        080b04eb 83 c4 10        ADD        ESP,0x10
        080b04ee 85 c0           TEST       EAX,EAX
        080b04f0 75 05           JNZ        LAB_080b04f7
        080b04f2 e8 09 ce        CALL       ErrorExit                                        undefined ErrorExit()
                 fd ff
                             LAB_080b04f7                                    XREF[1]:     080b04f0(j)
        080b04f7 83 ff ff        CMP        EDI,-0x1
        080b04fa 74 21           JZ         LAB_080b051d
        080b04fc a1 74 7a        MOV        EAX,[g]
                 28 08
        080b0501 83 c0 04        ADD        EAX,0x4
        080b0504 8b 04 03        MOV        EAX,dword ptr [EBX + EAX*0x1]
        080b0507 85 c0           TEST       EAX,EAX
        080b0509 74 12           JZ         LAB_080b051d
        080b050b 89 b8 84        MOV        dword ptr [EAX + 0x184],EDI
                 01 00 00
        080b0511 89 b8 80        MOV        dword ptr [EAX + 0x180],EDI
                 01 00 00
        080b0517 89 b8 78        MOV        dword ptr [EAX + 0x178],EDI
                 01 00 00
                             LAB_080b051d                                    XREF[2]:     080b04fa(j), 080b0509(j)
        080b051d 8d 3c 76        LEA        EDI,[ESI + ESI*0x2]
        080b0520 e8 0b 82        CALL       PalGrpBuildFight                                 undefined PalGrpBuildFight()
                 00 00
        080b0525 c1 e7 03        SHL        EDI,0x3
        080b0528 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080b052e 29 f7           SUB        EDI,ESI
        080b0530 89 ee           MOV        ESI,EBP
        080b0532 fc              CLD
        080b0533 8d 3c bd        LEA        EDI,[EDI*0x4 + 0x10410]
                 10 04 01 00
        080b053a 01 cf           ADD        EDI,ECX
        080b053c b9 17 00        MOV        ECX,0x17
                 00 00
        080b0541 83 c7 08        ADD        EDI,0x8
        080b0544 f3 a5           MOVSD.REP  ES:EDI,ESI
        080b0546 83 c4 0c        ADD        ESP,0xc
        080b0549 5b              POP        EBX
        080b054a 5e              POP        ESI
        080b054b 5f              POP        EDI
        080b054c 5d              POP        EBP
        080b054d e9 0e 00        JMP        GameActivateAI                                   undefined GameActivateAI()
                 00 00
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
