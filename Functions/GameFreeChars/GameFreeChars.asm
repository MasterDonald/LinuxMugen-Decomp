                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameFreeChars()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[3]:     080b09fa(W),
                                                                                                   080b0a1d(R),
                                                                                                   080b0b2c(R)
             undefined4        Stack[-0x18]:4 local_18                                XREF[5]:     080b09e1(W),
                                                                                                   080b0a16(R),
                                                                                                   080b0b23(R),
                                                                                                   080b0b28(W),
                                                                                                   080b0b30(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[2]:     080b0a5a(*),
                                                                                                   080b0aa0(R)
                             GameFreeChars                                   XREF[2]:     Entry Point(*),
                                                                                          GameLoadAndActivateTeam:080b04d1
        080b09d0 55              PUSH       EBP
        080b09d1 57              PUSH       EDI
        080b09d2 56              PUSH       ESI
        080b09d3 53              PUSH       EBX
        080b09d4 83 ec 0c        SUB        ESP,0xc
        080b09d7 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080b09dd 8b 54 24 20     MOV        EDX,dword ptr [ESP + Stack[0x4]]
        080b09e1 c7 44 24        MOV        dword ptr [ESP + local_18],0x0
                 04 00 00
                 00 00
        080b09e9 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        080b09ec c1 e0 03        SHL        EAX,0x3
        080b09ef 29 d0           SUB        EAX,EDX
        080b09f1 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        080b09f4 8d 90 18        LEA        EDX,[EAX + 0x10418]
                 04 01 00
        080b09fa 89 54 24 08     MOV        dword ptr [ESP + local_14],EDX
        080b09fe 31 d2           XOR        EDX,EDX
        080b0a00 3b 90 20        CMP        EDX,dword ptr [EAX + 0x10420]
                 04 01 00
        080b0a06 0f 8d 31        JGE        LAB_080b0b3d
                 01 00 00
        080b0a0c eb 08           JMP        LAB_080b0a16
        080b0a0e 89              ??         89h
        080b0a0f f6              ??         F6h
                             LAB_080b0a10                                    XREF[1]:     080b0b37(j)
        080b0a10 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080b0a16                                    XREF[1]:     080b0a0c(j)
        080b0a16 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        080b0a1a 8d 14 80        LEA        EDX,[EAX + EAX*0x4]
        080b0a1d 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_14]
        080b0a21 83 c0 0c        ADD        EAX,0xc
        080b0a24 8b 2c 90        MOV        EBP,dword ptr [EAX + EDX*0x4]
        080b0a27 8d 34 ad        LEA        ESI,[EBP*0x4 + 0x1cf60]
                 60 cf 01 00
        080b0a2e 8b 44 0e 04     MOV        EAX,dword ptr [ESI + ECX*0x1 + 0x4]
        080b0a32 85 c0           TEST       EAX,EAX
        080b0a34 0f 84 e9        JZ         LAB_080b0b23
                 00 00 00
        080b0a3a 8b 98 58        MOV        EBX,dword ptr [EAX + 0x158]
                 01 00 00
        080b0a40 85 db           TEST       EBX,EBX
        080b0a42 74 13           JZ         LAB_080b0a57
        080b0a44 52              PUSH       EDX
        080b0a45 52              PUSH       EDX
        080b0a46 6a 00           PUSH       0x0
        080b0a48 55              PUSH       EBP
        080b0a49 e8 82 0b        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 00 00
        080b0a4e 83 c4 10        ADD        ESP,0x10
        080b0a51 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080b0a57                                    XREF[1]:     080b0a42(j)
        080b0a57 8d 79 04        LEA        EDI,[ECX + 0x4]
        080b0a5a 89 34 24        MOV        dword ptr [ESP]=>local_1c,ESI
        080b0a5d 8b 1c 3e        MOV        EBX,dword ptr [ESI + EDI*0x1]
        080b0a60 8b 53 10        MOV        EDX,dword ptr [EBX + 0x10]
        080b0a63 83 fa ff        CMP        EDX,-0x1
        080b0a66 74 4e           JZ         LAB_080b0ab6
        080b0a68 50              PUSH       EAX
        080b0a69 50              PUSH       EAX
        080b0a6a 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        080b0a6d 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0a70 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0a73 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0a76 c1 e0 03        SHL        EAX,0x3
        080b0a79 29 d0           SUB        EAX,EDX
        080b0a7b 8b 53 14        MOV        EDX,dword ptr [EBX + 0x14]
        080b0a7e 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        080b0a81 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        080b0a84 c1 e2 06        SHL        EDX,0x6
        080b0a87 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0a8a 8b 53 18        MOV        EDX,dword ptr [EBX + 0x18]
        080b0a8d 01 c8           ADD        EAX,ECX
        080b0a8f 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        080b0a92 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        080b0a95 c1 e2 04        SHL        EDX,0x4
        080b0a98 8d 84 02        LEA        EAX,[EDX + EAX*0x1 + 0xd05c]
                 5c d0 00 00
        080b0a9f 50              PUSH       EAX
        080b0aa0 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_1c]
        080b0aa4 8b 14 3a        MOV        EDX,dword ptr [EDX + EDI*0x1]
        080b0aa7 52              PUSH       EDX
        080b0aa8 e8 f3 f8        CALL       PlayerSavePersistVars                            undefined PlayerSavePersistVars()
                 ff ff
        080b0aad 83 c4 10        ADD        ESP,0x10
        080b0ab0 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080b0ab6                                    XREF[1]:     080b0a66(j)
        080b0ab6 8b 44 0e 04     MOV        EAX,dword ptr [ESI + ECX*0x1 + 0x4]
        080b0aba 83 cf ff        OR         EDI,0xffffffff
        080b0abd 8b 00           MOV        EAX,dword ptr [EAX]
        080b0abf 85 c0           TEST       EAX,EAX
        080b0ac1 74 06           JZ         LAB_080b0ac9
        080b0ac3 8b b8 a8        MOV        EDI,dword ptr [EAX + 0x10a8]
                 10 00 00
                             LAB_080b0ac9                                    XREF[1]:     080b0ac1(j)
        080b0ac9 8d 34 ad        LEA        ESI,[EBP*0x4 + 0x0]
                 00 00 00 00
        080b0ad0 83 ec 0c        SUB        ESP,0xc
        080b0ad3 8d 9e 60        LEA        EBX,[ESI + 0x1cf60]
                 cf 01 00
        080b0ad9 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        080b0add 50              PUSH       EAX
        080b0ade e8 6d 00        CALL       GameFreePlayerDependencies                       undefined GameFreePlayerDependen
                 00 00
        080b0ae3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080b0ae8 5d              POP        EBP
        080b0ae9 83 c0 04        ADD        EAX,0x4
        080b0aec 8b 0c 03        MOV        ECX,dword ptr [EBX + EAX*0x1]
        080b0aef 51              PUSH       ECX
        080b0af0 e8 8b f4        CALL       PlayerFree                                       undefined PlayerFree()
                 ff ff
        080b0af5 83 c4 10        ADD        ESP,0x10
        080b0af8 83 ff ff        CMP        EDI,-0x1
        080b0afb 74 0c           JZ         LAB_080b0b09
        080b0afd 83 ec 0c        SUB        ESP,0xc
        080b0b00 57              PUSH       EDI
        080b0b01 e8 2a be        CALL       PlayerCacheFree                                  undefined PlayerCacheFree()
                 ff ff
        080b0b06 83 c4 10        ADD        ESP,0x10
                             LAB_080b0b09                                    XREF[1]:     080b0afb(j)
        080b0b09 a1 74 7a        MOV        EAX,[g]
                 28 08
        080b0b0e 83 c0 04        ADD        EAX,0x4
        080b0b11 c7 84 30        MOV        dword ptr [EAX + ESI*0x1 + 0x1ce60],0x0
                 60 ce 01
                 00 00 00
        080b0b1c c7 04 03        MOV        dword ptr [EBX + EAX*0x1],0x0
                 00 00 00 00
                             LAB_080b0b23                                    XREF[1]:     080b0a34(j)
        080b0b23 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_18]
        080b0b27 42              INC        EDX
        080b0b28 89 54 24 04     MOV        dword ptr [ESP + local_18],EDX
        080b0b2c 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
        080b0b30 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        080b0b34 3b 42 08        CMP        EAX,dword ptr [EDX + 0x8]
        080b0b37 0f 8c d3        JL         LAB_080b0a10
                 fe ff ff
                             LAB_080b0b3d                                    XREF[1]:     080b0a06(j)
        080b0b3d 83 c4 0c        ADD        ESP,0xc
        080b0b40 b8 01 00        MOV        EAX,0x1
                 00 00
        080b0b45 5b              POP        EBX
        080b0b46 5e              POP        ESI
        080b0b47 5f              POP        EDI
        080b0b48 5d              POP        EBP
        080b0b49 c3              RET
