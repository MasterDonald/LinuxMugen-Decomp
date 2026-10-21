                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameWinScreenUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x30]:4 local_30                                XREF[1]:     08091f5f(W)
             undefined4        Stack[-0x34]:4 local_34                                XREF[1]:     08091f67(W)
             undefined4        Stack[-0x38]:4 local_38                                XREF[1]:     08091f6f(W)
                             GameWinScreenUpdate                             XREF[1]:     GameUpdate:08091527(c)
        08091e30 55              PUSH       EBP
        08091e31 57              PUSH       EDI
        08091e32 56              PUSH       ESI
        08091e33 53              PUSH       EBX
        08091e34 83 ec 0c        SUB        ESP,0xc
        08091e37 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08091e3d 8d ba 48        LEA        EDI,[EDX + 0x8d48]
                 8d 00 00
        08091e43 eb 0b           JMP        LAB_08091e50
                             LAB_08091e45                                    XREF[1]:     08091f54(j)
        08091e45 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08091e4b 90              NOP
        08091e4c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08091e50                                    XREF[1]:     08091e43(j)
        08091e50 8b 82 04        MOV        EAX,dword ptr [EDX + 0x1d504]
                 d5 01 00
        08091e56 31 ed           XOR        EBP,EBP
        08091e58 8b b2 08        MOV        ESI,dword ptr [EDX + 0x1d508]
                 d5 01 00
        08091e5e 83 f8 01        CMP        EAX,0x1
        08091e61 74 7f           JZ         LAB_08091ee2
        08091e63 83 f8 01        CMP        EAX,0x1
        08091e66 7f 09           JG         LAB_08091e71
        08091e68 85 c0           TEST       EAX,EAX
        08091e6a 74 14           JZ         LAB_08091e80
        08091e6c e9 e1 00        JMP        LAB_08091f52
                 00 00
                             LAB_08091e71                                    XREF[1]:     08091e66(j)
        08091e71 83 f8 02        CMP        EAX,0x2
        08091e74 0f 84 8b        JZ         LAB_08091f05
                 00 00 00
        08091e7a e9 d3 00        JMP        LAB_08091f52
                 00 00
        08091e7f 90              ??         90h
                             LAB_08091e80                                    XREF[1]:     08091e6a(j)
        08091e80 8b 9f 7c        MOV        EBX,dword ptr [EDI + 0x207c]
                 20 00 00
        08091e86 39 de           CMP        ESI,EBX
        08091e88 7d 18           JGE        LAB_08091ea2
        08091e8a 89 f2           MOV        EDX,ESI
        08091e8c c1 e2 08        SHL        EDX,0x8
        08091e8f 50              PUSH       EAX
        08091e90 89 d0           MOV        EAX,EDX
        08091e92 c1 fa 1f        SAR        EDX,0x1f
        08091e95 f7 fb           IDIV       EBX
        08091e97 50              PUSH       EAX
        08091e98 50              PUSH       EAX
        08091e99 50              PUSH       EAX
        08091e9a e8 d1 3b        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        08091e9f 83 c4 10        ADD        ESP,0x10
                             LAB_08091ea2                                    XREF[1]:     08091e88(j)
        08091ea2 39 de           CMP        ESI,EBX
        08091ea4 0f 85 a8        JNZ        LAB_08091f52
                 00 00 00
        08091eaa bd 01 00        MOV        EBP,0x1
                 00 00
        08091eaf 51              PUSH       ECX
        08091eb0 68 00 01        PUSH       0x100
                 00 00
        08091eb5 68 00 01        PUSH       0x100
                 00 00
        08091eba 68 00 01        PUSH       0x100
                 00 00
        08091ebf e8 ac 3b        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        08091ec4 a1 74 7a        MOV        EAX,[g]
                 28 08
        08091ec9 83 c4 10        ADD        ESP,0x10
        08091ecc c7 80 04        MOV        dword ptr [EAX + 0x1d504],0x1
                 d5 01 00
                 01 00 00 00
        08091ed6 c7 80 08        MOV        dword ptr [EAX + 0x1d508],0x0
                 d5 01 00
                 00 00 00 00
        08091ee0 eb 70           JMP        LAB_08091f52
                             LAB_08091ee2                                    XREF[1]:     08091e61(j)
        08091ee2 3b b7 78        CMP        ESI,dword ptr [EDI + 0x2078]
                 20 00 00
        08091ee8 75 68           JNZ        LAB_08091f52
        08091eea c7 82 04        MOV        dword ptr [EDX + 0x1d504],0x2
                 d5 01 00
                 02 00 00 00
        08091ef4 c7 82 08        MOV        dword ptr [EDX + 0x1d508],0x0
                 d5 01 00
                 00 00 00 00
        08091efe bd 01 00        MOV        EBP,0x1
                 00 00
        08091f03 eb 4d           JMP        LAB_08091f52
                             LAB_08091f05                                    XREF[1]:     08091e74(j)
        08091f05 8b 9f 80        MOV        EBX,dword ptr [EDI + 0x2080]
                 20 00 00
        08091f0b 39 de           CMP        ESI,EBX
        08091f0d 7d 21           JGE        LAB_08091f30
        08091f0f 52              PUSH       EDX
        08091f10 89 f2           MOV        EDX,ESI
        08091f12 c1 e2 08        SHL        EDX,0x8
        08091f15 89 d0           MOV        EAX,EDX
        08091f17 c1 fa 1f        SAR        EDX,0x1f
        08091f1a f7 fb           IDIV       EBX
        08091f1c 89 c1           MOV        ECX,EAX
        08091f1e b8 00 01        MOV        EAX,0x100
                 00 00
        08091f23 29 c8           SUB        EAX,ECX
        08091f25 50              PUSH       EAX
        08091f26 50              PUSH       EAX
        08091f27 50              PUSH       EAX
        08091f28 e8 43 3b        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        08091f2d 83 c4 10        ADD        ESP,0x10
                             LAB_08091f30                                    XREF[1]:     08091f0d(j)
        08091f30 39 de           CMP        ESI,EBX
        08091f32 75 1e           JNZ        LAB_08091f52
        08091f34 50              PUSH       EAX
        08091f35 6a 00           PUSH       0x0
        08091f37 6a 00           PUSH       0x0
        08091f39 6a 00           PUSH       0x0
        08091f3b e8 30 3b        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        08091f40 a1 74 7a        MOV        EAX,[g]
                 28 08
        08091f45 83 c4 10        ADD        ESP,0x10
        08091f48 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
                             LAB_08091f52                                    XREF[7]:     08091e6c(j), 08091e7a(j),
                                                                                          08091ea4(j), 08091ee0(j),
                                                                                          08091ee8(j), 08091f03(j),
                                                                                          08091f32(j)
        08091f52 85 ed           TEST       EBP,EBP
        08091f54 0f 85 eb        JNZ        LAB_08091e45
                 fe ff ff
        08091f5a 83 ec 30        SUB        ESP,0x30
        08091f5d 89 e0           MOV        EAX,ESP
        08091f5f c7 44 24        MOV        dword ptr [ESP + local_30],0x80
                 1c 80 00
                 00 00
        08091f67 c7 44 24        MOV        dword ptr [ESP + local_34],0x80
                 18 80 00
                 00 00
        08091f6f c7 44 24        MOV        dword ptr [ESP + local_38],0x80
                 14 80 00
                 00 00
        08091f77 55              PUSH       EBP
        08091f78 6a 00           PUSH       0x0
        08091f7a 6a ff           PUSH       -0x1
        08091f7c 50              PUSH       EAX
        08091f7d e8 8e 6d        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 02 00
        08091f82 83 c4 0c        ADD        ESP,0xc
        08091f85 e8 36 6b        CALL       PalGrpSetMul                                     undefined PalGrpSetMul()
                 02 00
        08091f8a 83 c4 2c        ADD        ESP,0x2c
        08091f8d 8d 87 0c        LEA        EAX,[EDI + 0x200c]
                 20 00 00
        08091f93 6a 00           PUSH       0x0
        08091f95 6a 00           PUSH       0x0
        08091f97 50              PUSH       EAX
        08091f98 e8 33 dd        CALL       SysExplodCreate_Sys                              undefined SysExplodCreate_Sys()
                 ff ff
        08091f9d a1 74 7a        MOV        EAX,[g]
                 28 08
        08091fa2 83 c4 1c        ADD        ESP,0x1c
        08091fa5 8b b0 08        MOV        ESI,dword ptr [EAX + 0x1d508]
                 d5 01 00
        08091fab 46              INC        ESI
        08091fac 89 b0 08        MOV        dword ptr [EAX + 0x1d508],ESI
                 d5 01 00
        08091fb2 5b              POP        EBX
        08091fb3 5e              POP        ESI
        08091fb4 5f              POP        EDI
        08091fb5 5d              POP        EBP
        08091fb6 c3              RET
