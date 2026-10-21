                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameFreePlayerDependencies()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[1]:     080b0bcf(*)
                             GameFreePlayerDependencies                      XREF[2]:     Entry Point(*),
                                                                                          GameFreeChars:080b0ade(c)
        080b0b50 55              PUSH       EBP
        080b0b51 57              PUSH       EDI
        080b0b52 56              PUSH       ESI
        080b0b53 53              PUSH       EBX
        080b0b54 83 ec 10        SUB        ESP,0x10
        080b0b57 a1 74 7a        MOV        EAX,[g]
                 28 08
        080b0b5c 8b 74 24 24     MOV        ESI,dword ptr [ESP + Stack[0x4]]
        080b0b60 6a ff           PUSH       -0x1
        080b0b62 8b 6e 04        MOV        EBP,dword ptr [ESI + 0x4]
        080b0b65 55              PUSH       EBP
        080b0b66 8b b8 f8        MOV        EDI,dword ptr [EAX + 0x14af8]
                 4a 01 00
        080b0b6c 57              PUSH       EDI
        080b0b6d e8 ae e9        CALL       ExplodRemoveID                                   undefined ExplodRemoveID()
                 fd ff
        080b0b72 59              POP        ECX
        080b0b73 5b              POP        EBX
        080b0b74 6a 00           PUSH       0x0
        080b0b76 56              PUSH       ESI
        080b0b77 e8 24 60        CALL       PlayerDropBoundTargets                           undefined PlayerDropBoundTargets()
                 00 00
        080b0b7c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080b0b82 83 c4 10        ADD        ESP,0x10
        080b0b85 89 d0           MOV        EAX,EDX
        080b0b87 8b b8 64        MOV        EDI,dword ptr [EAX + 0x1d164]
                 d1 01 00
        080b0b8d 3b b8 68        CMP        EDI,dword ptr [EAX + 0x1d168]
                 d1 01 00
        080b0b93 0f 8f 07        JG         LAB_080b0ca0
                 01 00 00
        080b0b99 8d 2c bd        LEA        EBP,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
                             LAB_080b0ba0                                    XREF[1]:     080b0c9a(j)
        080b0ba0 8b 5c 05 04     MOV        EBX,dword ptr [EBP + EAX*0x1 + 0x4]
        080b0ba4 39 f3           CMP        EBX,ESI
        080b0ba6 0f 84 e2        JZ         LAB_080b0c8e
                 00 00 00
        080b0bac 85 db           TEST       EBX,EBX
        080b0bae 0f 84 da        JZ         LAB_080b0c8e
                 00 00 00
        080b0bb4 39 b3 24        CMP        dword ptr [EBX + 0x2624],ESI
                 26 00 00
        080b0bba 75 24           JNZ        LAB_080b0be0
        080b0bbc 52              PUSH       EDX
        080b0bbd 6a ff           PUSH       -0x1
        080b0bbf 8b 4b 04        MOV        ECX,dword ptr [EBX + 0x4]
        080b0bc2 51              PUSH       ECX
        080b0bc3 8b 90 f8        MOV        EDX,dword ptr [EAX + 0x14af8]
                 4a 01 00
        080b0bc9 52              PUSH       EDX
        080b0bca e8 51 e9        CALL       ExplodRemoveID                                   undefined ExplodRemoveID()
                 fd ff
        080b0bcf 89 1c 24        MOV        dword ptr [ESP]=>local_2c,EBX
        080b0bd2 e8 59 7d        CALL       HelperDestroy                                    undefined HelperDestroy()
                 fe ff
        080b0bd7 83 c4 10        ADD        ESP,0x10
        080b0bda e9 a9 00        JMP        LAB_080b0c88
                 00 00
        080b0bdf 90              ??         90h
                             LAB_080b0be0                                    XREF[1]:     080b0bba(j)
        080b0be0 8b 86 94        MOV        EAX,dword ptr [ESI + 0x1394]
                 13 00 00
        080b0be6 85 c0           TEST       EAX,EAX
        080b0be8 74 18           JZ         LAB_080b0c02
        080b0bea c7 40 18        MOV        dword ptr [EAX + 0x18],0x0
                 00 00 00 00
        080b0bf1 c7 40 08        MOV        dword ptr [EAX + 0x8],0x0
                 00 00 00 00
        080b0bf8 c7 86 94        MOV        dword ptr [ESI + 0x1394],0x0
                 13 00 00
                 00 00 00 00
                             LAB_080b0c02                                    XREF[1]:     080b0be8(j)
        080b0c02 8b 06           MOV        EAX,dword ptr [ESI]
        080b0c04 8b 80 cc        MOV        EAX,dword ptr [EAX + 0x11cc]
                 11 00 00
        080b0c0a 39 83 c0        CMP        dword ptr [EBX + 0x13c0],EAX
                 13 00 00
        080b0c10 75 0a           JNZ        LAB_080b0c1c
        080b0c12 c7 83 c0        MOV        dword ptr [EBX + 0x13c0],0x0
                 13 00 00
                 00 00 00 00
                             LAB_080b0c1c                                    XREF[1]:     080b0c10(j)
        080b0c1c 8b 86 e8        MOV        EAX,dword ptr [ESI + 0xbe8]
                 0b 00 00
        080b0c22 39 83 ec        CMP        dword ptr [EBX + 0xbec],EAX
                 0b 00 00
        080b0c28 75 14           JNZ        LAB_080b0c3e
        080b0c2a c7 83 ec        MOV        dword ptr [EBX + 0xbec],0x0
                 0b 00 00
                 00 00 00 00
        080b0c34 c7 83 f0        MOV        dword ptr [EBX + 0xbf0],0xffffffff
                 0b 00 00
                 ff ff ff ff
                             LAB_080b0c3e                                    XREF[1]:     080b0c28(j)
        080b0c3e 39 b3 24        CMP        dword ptr [EBX + 0x3424],ESI
                 34 00 00
        080b0c44 75 0a           JNZ        LAB_080b0c50
        080b0c46 c7 83 24        MOV        dword ptr [EBX + 0x3424],0x0
                 34 00 00
                 00 00 00 00
                             LAB_080b0c50                                    XREF[1]:     080b0c44(j)
        080b0c50 39 b3 28        CMP        dword ptr [EBX + 0x3428],ESI
                 34 00 00
        080b0c56 75 0a           JNZ        LAB_080b0c62
        080b0c58 c7 83 28        MOV        dword ptr [EBX + 0x3428],0x0
                 34 00 00
                 00 00 00 00
                             LAB_080b0c62                                    XREF[1]:     080b0c56(j)
        080b0c62 39 b3 54        CMP        dword ptr [EBX + 0x3454],ESI
                 34 00 00
        080b0c68 75 1e           JNZ        LAB_080b0c88
        080b0c6a 8b 83 30        MOV        EAX,dword ptr [EBX + 0x3430]
                 34 00 00
        080b0c70 85 c0           TEST       EAX,EAX
        080b0c72 74 14           JZ         LAB_080b0c88
        080b0c74 c7 83 30        MOV        dword ptr [EBX + 0x3430],0x0
                 34 00 00
                 00 00 00 00
        080b0c7e c7 83 54        MOV        dword ptr [EBX + 0x3454],0x0
                 34 00 00
                 00 00 00 00
                             LAB_080b0c88                                    XREF[3]:     080b0bda(j), 080b0c68(j),
                                                                                          080b0c72(j)
        080b0c88 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b0c8e                                    XREF[2]:     080b0ba6(j), 080b0bae(j)
        080b0c8e 89 d0           MOV        EAX,EDX
        080b0c90 47              INC        EDI
        080b0c91 83 c5 04        ADD        EBP,0x4
        080b0c94 3b b8 68        CMP        EDI,dword ptr [EAX + 0x1d168]
                 d1 01 00
        080b0c9a 0f 8e 00        JLE        LAB_080b0ba0
                 ff ff ff
                             LAB_080b0ca0                                    XREF[1]:     080b0b93(j)
        080b0ca0 83 c4 0c        ADD        ESP,0xc
        080b0ca3 b8 01 00        MOV        EAX,0x1
                 00 00
        080b0ca8 5b              POP        EBX
        080b0ca9 5e              POP        ESI
        080b0caa 5f              POP        EDI
        080b0cab 5d              POP        EBP
        080b0cac c3              RET
