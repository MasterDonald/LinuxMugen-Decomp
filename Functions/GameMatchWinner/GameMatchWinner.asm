                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameMatchWinner()
             undefined         <UNASSIGNED>   <RETURN>
                             GameMatchWinner                                 XREF[7]:     Entry Point(*),
                                                                                          GameRoundUpdate:08092e75(c),
                                                                                          GameRoundUpdate:08092ea2(c),
                                                                                          GameRoundUpdate:08093233(c),
                                                                                          GameRoundUpdate:08093391(c),
                                                                                          GameRoundUpdate:080933ee(c),
                                                                                          SCtrlTrigEval:080cddc6(c)
        0809f970 57              PUSH       EDI
        0809f971 31 ff           XOR        EDI,EDI
        0809f973 56              PUSH       ESI
        0809f974 53              PUSH       EBX
        0809f975 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809f97b 8b 93 44        MOV        EDX,dword ptr [EBX + 0x1d444]
                 d4 01 00
        0809f981 83 fa 03        CMP        EDX,0x3
        0809f984 75 0e           JNZ        LAB_0809f994
        0809f986 8b 83 34        MOV        EAX,dword ptr [EBX + 0x14234]
                 42 01 00
        0809f98c 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        0809f992 7c 0b           JL         LAB_0809f99f
                             LAB_0809f994                                    XREF[1]:     0809f984(j)
        0809f994 31 c9           XOR        ECX,ECX
        0809f996 83 fa 02        CMP        EDX,0x2
        0809f999 0f 8f 8a        JG         LAB_0809fa29
                 00 00 00
                             LAB_0809f99f                                    XREF[1]:     0809f992(j)
        0809f99f 31 c0           XOR        EAX,EAX
        0809f9a1 e9 8e 00        JMP        LAB_0809fa34
                 00 00
                             LAB_0809f9a6                                    XREF[1]:     0809fa2c(j)
        0809f9a6 8b 83 24        MOV        EAX,dword ptr [EBX + 0x1d424]
                 d4 01 00
        0809f9ac 8b b4 8b        MOV        ESI,dword ptr [EBX + ECX*0x4 + 0x1d41c]
                 1c d4 01 00
        0809f9b3 85 c0           TEST       EAX,EAX
        0809f9b5 75 33           JNZ        LAB_0809f9ea
        0809f9b7 8d 41 01        LEA        EAX,[ECX + 0x1]
        0809f9ba 8b 93 48        MOV        EDX,dword ptr [EBX + 0x1d448]
                 d4 01 00
        0809f9c0 39 c2           CMP        EDX,EAX
        0809f9c2 74 25           JZ         LAB_0809f9e9
        0809f9c4 85 d2           TEST       EDX,EDX
        0809f9c6 75 22           JNZ        LAB_0809f9ea
        0809f9c8 8d 04 49        LEA        EAX,[ECX + ECX*0x2]
        0809f9cb 8b 93 28        MOV        EDX,dword ptr [EBX + 0x1d428]
                 d4 01 00
        0809f9d1 42              INC        EDX
        0809f9d2 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9d5 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9d8 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9db c1 e0 03        SHL        EAX,0x3
        0809f9de 29 c8           SUB        EAX,ECX
        0809f9e0 3b 94 83        CMP        EDX,dword ptr [EBX + EAX*0x4 + 0xe974]
                 74 e9 00 00
        0809f9e7 7e 01           JLE        LAB_0809f9ea
                             LAB_0809f9e9                                    XREF[1]:     0809f9c2(j)
        0809f9e9 46              INC        ESI
                             LAB_0809f9ea                                    XREF[3]:     0809f9b5(j), 0809f9c6(j),
                                                                                          0809f9e7(j)
        0809f9ea 8d 04 49        LEA        EAX,[ECX + ECX*0x2]
        0809f9ed 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9f0 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9f3 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f9f6 c1 e0 03        SHL        EAX,0x3
        0809f9f9 29 c8           SUB        EAX,ECX
        0809f9fb 3b b4 83        CMP        ESI,dword ptr [EBX + EAX*0x4 + 0xe970]
                 70 e9 00 00
        0809fa02 7c 24           JL         LAB_0809fa28
        0809fa04 85 ff           TEST       EDI,EDI
        0809fa06 75 08           JNZ        LAB_0809fa10
        0809fa08 8d 79 01        LEA        EDI,[ECX + 0x1]
        0809fa0b eb 1b           JMP        LAB_0809fa28
        0809fa0d 8d              ??         8Dh
        0809fa0e 76              ??         76h    v
        0809fa0f 00              ??         00h
                             LAB_0809fa10                                    XREF[1]:     0809fa06(j)
        0809fa10 8b 83 cc        MOV        EAX,dword ptr [EBX + 0xcecc]
                 ce 00 00
        0809fa16 85 c0           TEST       EAX,EAX
        0809fa18 74 09           JZ         LAB_0809fa23
        0809fa1a bf 03 00        MOV        EDI,0x3
                 00 00
        0809fa1f 29 c7           SUB        EDI,EAX
        0809fa21 eb 05           JMP        LAB_0809fa28
                             LAB_0809fa23                                    XREF[1]:     0809fa18(j)
        0809fa23 bf 01 00        MOV        EDI,0x1
                 00 00
                             LAB_0809fa28                                    XREF[3]:     0809fa02(j), 0809fa0b(j),
                                                                                          0809fa21(j)
        0809fa28 41              INC        ECX
                             LAB_0809fa29                                    XREF[1]:     0809f999(j)
        0809fa29 83 f9 01        CMP        ECX,0x1
        0809fa2c 0f 8e 74        JLE        LAB_0809f9a6
                 ff ff ff
        0809fa32 89 f8           MOV        EAX,EDI
                             LAB_0809fa34                                    XREF[1]:     0809f9a1(j)
        0809fa34 5b              POP        EBX
        0809fa35 5e              POP        ESI
        0809fa36 5f              POP        EDI
        0809fa37 c3              RET
