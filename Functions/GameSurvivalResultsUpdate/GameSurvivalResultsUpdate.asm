                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSurvivalResultsUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x120   local_120                               XREF[1]:     08092119(*)
             undefined4        Stack[-0x130   local_130                               XREF[1]:     080920ea(W)
             undefined4        Stack[-0x134   local_134                               XREF[1]:     080920f2(W)
             undefined4        Stack[-0x138   local_138                               XREF[1]:     080920fa(W)
                             GameSurvivalResultsUpdate                       XREF[1]:     GameUpdate:08091530(c)
        08091fc0 55              PUSH       EBP
        08091fc1 57              PUSH       EDI
        08091fc2 56              PUSH       ESI
        08091fc3 53              PUSH       EBX
        08091fc4 81 ec 0c        SUB        ESP,0x10c
                 01 00 00
        08091fca 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08091fd0 8d ba cc        LEA        EDI,[EDX + 0xadcc]
                 ad 00 00
        08091fd6 eb 08           JMP        LAB_08091fe0
                             LAB_08091fd8                                    XREF[1]:     080920dc(j)
        08091fd8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08091fde 89 f6           MOV        ESI,ESI
                             LAB_08091fe0                                    XREF[1]:     08091fd6(j)
        08091fe0 8b 82 04        MOV        EAX,dword ptr [EDX + 0x1d504]
                 d5 01 00
        08091fe6 31 ed           XOR        EBP,EBP
        08091fe8 8b b2 08        MOV        ESI,dword ptr [EDX + 0x1d508]
                 d5 01 00
        08091fee 83 f8 01        CMP        EAX,0x1
        08091ff1 74 7d           JZ         LAB_08092070
        08091ff3 83 f8 01        CMP        EAX,0x1
        08091ff6 7f 09           JG         LAB_08092001
        08091ff8 85 c0           TEST       EAX,EAX
        08091ffa 74 14           JZ         LAB_08092010
        08091ffc e9 d9 00        JMP        LAB_080920da
                 00 00
                             LAB_08092001                                    XREF[1]:     08091ff6(j)
        08092001 83 f8 02        CMP        EAX,0x2
        08092004 0f 84 86        JZ         LAB_08092090
                 00 00 00
        0809200a e9 cb 00        JMP        LAB_080920da
                 00 00
        0809200f 90              ??         90h
                             LAB_08092010                                    XREF[1]:     08091ffa(j)
        08092010 8b 5f 74        MOV        EBX,dword ptr [EDI + 0x74]
        08092013 39 de           CMP        ESI,EBX
        08092015 7d 18           JGE        LAB_0809202f
        08092017 89 f2           MOV        EDX,ESI
        08092019 c1 e2 08        SHL        EDX,0x8
        0809201c 51              PUSH       ECX
        0809201d 89 d0           MOV        EAX,EDX
        0809201f c1 fa 1f        SAR        EDX,0x1f
        08092022 f7 fb           IDIV       EBX
        08092024 50              PUSH       EAX
        08092025 50              PUSH       EAX
        08092026 50              PUSH       EAX
        08092027 e8 44 3a        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        0809202c 83 c4 10        ADD        ESP,0x10
                             LAB_0809202f                                    XREF[1]:     08092015(j)
        0809202f 39 de           CMP        ESI,EBX
        08092031 0f 85 a3        JNZ        LAB_080920da
                 00 00 00
        08092037 bd 01 00        MOV        EBP,0x1
                 00 00
        0809203c 52              PUSH       EDX
        0809203d 68 00 01        PUSH       0x100
                 00 00
        08092042 68 00 01        PUSH       0x100
                 00 00
        08092047 68 00 01        PUSH       0x100
                 00 00
        0809204c e8 1f 3a        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        08092051 a1 74 7a        MOV        EAX,[g]
                 28 08
        08092056 83 c4 10        ADD        ESP,0x10
        08092059 c7 80 04        MOV        dword ptr [EAX + 0x1d504],0x1
                 d5 01 00
                 01 00 00 00
        08092063 c7 80 08        MOV        dword ptr [EAX + 0x1d508],0x0
                 d5 01 00
                 00 00 00 00
        0809206d eb 6b           JMP        LAB_080920da
        0809206f 90              ??         90h
                             LAB_08092070                                    XREF[1]:     08091ff1(j)
        08092070 3b 77 70        CMP        ESI,dword ptr [EDI + 0x70]
        08092073 75 65           JNZ        LAB_080920da
        08092075 c7 82 04        MOV        dword ptr [EDX + 0x1d504],0x2
                 d5 01 00
                 02 00 00 00
        0809207f c7 82 08        MOV        dword ptr [EDX + 0x1d508],0x0
                 d5 01 00
                 00 00 00 00
        08092089 bd 01 00        MOV        EBP,0x1
                 00 00
        0809208e eb 4a           JMP        LAB_080920da
                             LAB_08092090                                    XREF[1]:     08092004(j)
        08092090 8b 5f 78        MOV        EBX,dword ptr [EDI + 0x78]
        08092093 39 de           CMP        ESI,EBX
        08092095 7d 21           JGE        LAB_080920b8
        08092097 89 f2           MOV        EDX,ESI
        08092099 c1 e2 08        SHL        EDX,0x8
        0809209c 50              PUSH       EAX
        0809209d 89 d0           MOV        EAX,EDX
        0809209f c1 fa 1f        SAR        EDX,0x1f
        080920a2 f7 fb           IDIV       EBX
        080920a4 89 c1           MOV        ECX,EAX
        080920a6 b8 00 01        MOV        EAX,0x100
                 00 00
        080920ab 29 c8           SUB        EAX,ECX
        080920ad 50              PUSH       EAX
        080920ae 50              PUSH       EAX
        080920af 50              PUSH       EAX
        080920b0 e8 bb 39        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        080920b5 83 c4 10        ADD        ESP,0x10
                             LAB_080920b8                                    XREF[1]:     08092095(j)
        080920b8 39 de           CMP        ESI,EBX
        080920ba 75 1e           JNZ        LAB_080920da
        080920bc 51              PUSH       ECX
        080920bd 6a 00           PUSH       0x0
        080920bf 6a 00           PUSH       0x0
        080920c1 6a 00           PUSH       0x0
        080920c3 e8 a8 39        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        080920c8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080920cd 83 c4 10        ADD        ESP,0x10
        080920d0 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
                             LAB_080920da                                    XREF[7]:     08091ffc(j), 0809200a(j),
                                                                                          08092031(j), 0809206d(j),
                                                                                          08092073(j), 0809208e(j),
                                                                                          080920ba(j)
        080920da 85 ed           TEST       EBP,EBP
        080920dc 0f 85 f6        JNZ        LAB_08091fd8
                 fe ff ff
        080920e2 83 ec 30        SUB        ESP,0x30
        080920e5 8d 77 40        LEA        ESI,[EDI + 0x40]
        080920e8 89 e0           MOV        EAX,ESP
        080920ea c7 44 24        MOV        dword ptr [ESP + local_130],0x80
                 1c 80 00
                 00 00
        080920f2 c7 44 24        MOV        dword ptr [ESP + local_134],0x80
                 18 80 00
                 00 00
        080920fa c7 44 24        MOV        dword ptr [ESP + local_138],0x80
                 14 80 00
                 00 00
        08092102 52              PUSH       EDX
        08092103 6a 00           PUSH       0x0
        08092105 6a ff           PUSH       -0x1
        08092107 50              PUSH       EAX
        08092108 e8 03 6c        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 02 00
        0809210d 83 c4 0c        ADD        ESP,0xc
        08092110 e8 ab 69        CALL       PalGrpSetMul                                     undefined PalGrpSetMul()
                 02 00
        08092115 83 c4 28        ADD        ESP,0x28
        08092118 56              PUSH       ESI
        08092119 8d 5c 24 0c     LEA        EBX=>local_120,[ESP + 0xc]
        0809211d 53              PUSH       EBX
        0809211e e8 ad e4        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08092123 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08092129 83 c4 0c        ADD        ESP,0xc
        0809212c 8b 82 d0        MOV        EAX,dword ptr [EDX + 0xced0]
                 ce 00 00
        08092132 8b ac 82        MOV        EBP,dword ptr [EDX + EAX*0x4 + 0x1d418]
                 18 d4 01 00
        08092139 55              PUSH       EBP
        0809213a 53              PUSH       EBX
        0809213b 56              PUSH       ESI
        0809213c e8 df 2c        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        08092141 83 c4 0c        ADD        ESP,0xc
        08092144 8d 47 04        LEA        EAX,[EDI + 0x4]
        08092147 6a 00           PUSH       0x0
        08092149 6a 00           PUSH       0x0
        0809214b 50              PUSH       EAX
        0809214c e8 7f db        CALL       SysExplodCreate_Sys                              undefined SysExplodCreate_Sys()
                 ff ff
        08092151 59              POP        ECX
        08092152 5f              POP        EDI
        08092153 53              PUSH       EBX
        08092154 56              PUSH       ESI
        08092155 e8 76 e4        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809215a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809215f 81 c4 1c        ADD        ESP,0x11c
                 01 00 00
        08092165 8b 90 08        MOV        EDX,dword ptr [EAX + 0x1d508]
                 d5 01 00
        0809216b 42              INC        EDX
        0809216c 89 90 08        MOV        dword ptr [EAX + 0x1d508],EDX
                 d5 01 00
        08092172 5b              POP        EBX
        08092173 5e              POP        ESI
        08092174 5f              POP        EDI
        08092175 5d              POP        EBP
        08092176 c3              RET
