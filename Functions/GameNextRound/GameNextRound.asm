                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameNextRound()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[5,1]:   0809ec30(W),
                                                                                                   0809ec34(R),
                                                                                                   0809ec3d(R),
                                                                                                   0809ec41(W),
                                                                                                   0809ec49(R),
                                                                                                   0809ec38(W)
             undefined4        Stack[-0x18]:4 local_18                                XREF[2]:     0809ec45(W),
                                                                                                   0809ec4d(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[5]:     0809eb7b(*),
                                                                                                   0809eb92(*),
                                                                                                   0809ebe7(*),
                                                                                                   0809ec6e(*),
                                                                                                   0809ec7b(*)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[2]:     0809ebce(*),
                                                                                                   0809ebd6(*)
                             GameNextRound                                   XREF[2]:     Entry Point(*),
                                                                                          GameRoundUpdate:080934b8(c)
        0809eb60 55              PUSH       EBP
        0809eb61 31 ed           XOR        EBP,EBP
        0809eb63 57              PUSH       EDI
        0809eb64 56              PUSH       ESI
        0809eb65 53              PUSH       EBX
        0809eb66 83 ec 0c        SUB        ESP,0xc
        0809eb69 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809eb6e 8b 98 18        MOV        EBX,dword ptr [EAX + 0x1d418]
                 d4 01 00
        0809eb74 43              INC        EBX
        0809eb75 89 98 18        MOV        dword ptr [EAX + 0x1d418],EBX
                 d4 01 00
        0809eb7b c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x0
                 00 00 00 00
                             LAB_0809eb82                                    XREF[1]:     0809ec7e(j)
        0809eb82 e8 d9 0d        CALL       GameRoundWinner                                  undefined GameRoundWinner()
                 00 00
        0809eb87 8d 55 01        LEA        EDX,[EBP + 0x1]
        0809eb8a 39 d0           CMP        EAX,EDX
        0809eb8c 0f 84 dc        JZ         LAB_0809ec6e
                 00 00 00
        0809eb92 8b 04 24        MOV        EAX,dword ptr [ESP]=>local_1c
        0809eb95 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809eb9b 8d 1c 08        LEA        EBX,[EAX + ECX*0x1]
        0809eb9e 8b 83 e0        MOV        EAX,dword ptr [EBX + 0xcee0]
                 ce 00 00
        0809eba4 40              INC        EAX
        0809eba5 3b 83 e4        CMP        EAX,dword ptr [EBX + 0xcee4]
                 ce 00 00
        0809ebab 7d 3a           JGE        LAB_0809ebe7
        0809ebad 83 ec 0c        SUB        ESP,0xc
        0809ebb0 6a 00           PUSH       0x0
        0809ebb2 e8 d9 ef        CALL       W_Cls                                            undefined W_Cls()
                 fd ff
        0809ebb7 e8 84 ed        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 fe ff
        0809ebbc e8 5f ee        CALL       DrawToScreen                                     undefined DrawToScreen()
                 fe ff
        0809ebc1 8b 8b e0        MOV        ECX,dword ptr [EBX + 0xcee0]
                 ce 00 00
        0809ebc7 41              INC        ECX
        0809ebc8 89 8b e0        MOV        dword ptr [EBX + 0xcee0],ECX
                 ce 00 00
        0809ebce 89 2c 24        MOV        dword ptr [ESP]=>local_2c,EBP
        0809ebd1 e8 da 20        CALL       TeamReorderAll                                   undefined TeamReorderAll()
                 01 00
        0809ebd6 89 2c 24        MOV        dword ptr [ESP]=>local_2c,EBP
        0809ebd9 e8 92 18        CALL       GameLoadAndActivateTeam                          undefined GameLoadAndActivateTea
                 01 00
        0809ebde 83 c4 10        ADD        ESP,0x10
        0809ebe1 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809ebe7                                    XREF[1]:     0809ebab(j)
        0809ebe7 8b 14 24        MOV        EDX,dword ptr [ESP]=>local_1c
        0809ebea 31 db           XOR        EBX,EBX
        0809ebec 8d 04 0a        LEA        EAX,[EDX + ECX*0x1]
        0809ebef 8b 90 e0        MOV        EDX,dword ptr [EAX + 0xcee0]
                 ce 00 00
        0809ebf5 8d b8 e0        LEA        EDI,[EAX + 0xcee0]
                 ce 00 00
        0809ebfb 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809ebfe c1 e0 03        SHL        EAX,0x3
        0809ec01 29 d0           SUB        EAX,EDX
        0809ec03 8d 74 87 0c     LEA        ESI,[EDI + EAX*0x4 + 0xc]
        0809ec07 3b 5e 08        CMP        EBX,dword ptr [ESI + 0x8]
        0809ec0a 7d 62           JGE        LAB_0809ec6e
        0809ec0c eb 08           JMP        LAB_0809ec16
        0809ec0e 89              ??         89h
        0809ec0f f6              ??         F6h
                             LAB_0809ec10                                    XREF[1]:     0809ec6c(j)
        0809ec10 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809ec16                                    XREF[1]:     0809ec0c(j)
        0809ec16 8d 14 9b        LEA        EDX,[EBX + EBX*0x4]
        0809ec19 43              INC        EBX
        0809ec1a 8d 46 0c        LEA        EAX,[ESI + 0xc]
        0809ec1d 8b 04 90        MOV        EAX,dword ptr [EAX + EDX*0x4]
        0809ec20 8b 94 81        MOV        EDX,dword ptr [ECX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        0809ec27 db 42 50        FILD       dword ptr [EDX + 0x50]
        0809ec2a d8 8f 8c        FMUL       float ptr [EDI + 0x1a8c]
                 1a 00 00
        0809ec30 d9 7c 24 08     FNSTCW     word ptr [ESP + local_14]
        0809ec34 8b 4c 24 08     MOV        ECX,dword ptr [ESP + local_14]
        0809ec38 c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 09 0c
        0809ec3d d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        0809ec41 89 4c 24 08     MOV        dword ptr [ESP + local_14],ECX
        0809ec45 db 5c 24 04     FISTP      dword ptr [ESP + local_18]
        0809ec49 d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        0809ec4d 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        0809ec51 89 82 64        MOV        dword ptr [EDX + 0x164],EAX
                 01 00 00
        0809ec57 89 82 6c        MOV        dword ptr [EDX + 0x16c],EAX
                 01 00 00
        0809ec5d 89 82 68        MOV        dword ptr [EDX + 0x168],EAX
                 01 00 00
        0809ec63 89 82 60        MOV        dword ptr [EDX + 0x160],EAX
                 01 00 00
        0809ec69 3b 5e 08        CMP        EBX,dword ptr [ESI + 0x8]
        0809ec6c 7c a2           JL         LAB_0809ec10
                             LAB_0809ec6e                                    XREF[2]:     0809eb8c(j), 0809ec0a(j)
        0809ec6e 8b 14 24        MOV        EDX,dword ptr [ESP]=>local_1c
        0809ec71 45              INC        EBP
        0809ec72 81 c2 9c        ADD        EDX,0x1a9c
                 1a 00 00
        0809ec78 83 fd 01        CMP        EBP,0x1
        0809ec7b 89 14 24        MOV        dword ptr [ESP]=>local_1c,EDX
        0809ec7e 0f 8e fe        JLE        LAB_0809eb82
                 fe ff ff
        0809ec84 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809ec8a ba 02 00        MOV        EDX,0x2
                 00 00
        0809ec8f 8b 99 d0        MOV        EBX,dword ptr [ECX + 0xced0]
                 ce 00 00
        0809ec95 85 db           TEST       EBX,EBX
        0809ec97 74 31           JZ         LAB_0809ecca
        0809ec99 50              PUSH       EAX
        0809ec9a 89 d0           MOV        EAX,EDX
        0809ec9c 6a 00           PUSH       0x0
        0809ec9e 29 d8           SUB        EAX,EBX
        0809eca0 50              PUSH       EAX
        0809eca1 8b a9 d0        MOV        EBP,dword ptr [ECX + 0xced0]
                 ce 00 00
        0809eca7 29 ea           SUB        EDX,EBP
        0809eca9 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809ecac 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ecaf 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ecb2 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ecb5 c1 e0 03        SHL        EAX,0x3
        0809ecb8 29 d0           SUB        EAX,EDX
        0809ecba 8d 84 81        LEA        EAX,[ECX + EAX*0x4 + 0xcee0]
                 e0 ce 00 00
        0809ecc1 50              PUSH       EAX
        0809ecc2 e8 59 d4        CALL       SurvivalBuildRandomTeam                          undefined SurvivalBuildRandomTea
                 fe ff
        0809ecc7 83 c4 10        ADD        ESP,0x10
                             LAB_0809ecca                                    XREF[1]:     0809ec97(j)
        0809ecca e8 41 05        CALL       GameRoundReset                                   undefined GameRoundReset()
                 00 00
        0809eccf e8 6c ec        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 fe ff
        0809ecd4 83 c4 0c        ADD        ESP,0xc
        0809ecd7 5b              POP        EBX
        0809ecd8 5e              POP        ESI
        0809ecd9 5f              POP        EDI
        0809ecda 5d              POP        EBP
        0809ecdb c3              RET
