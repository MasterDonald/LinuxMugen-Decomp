                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameRoundResetPlayerPos()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x10]:4 local_10                                XREF[1]:     0809f919(*)
                             GameRoundResetPlayerPos                         XREF[4]:     Entry Point(*),
                                                                                          GameRoundUpdate:08092625(c),
                                                                                          GameRoundUpdate:080929ef(c),
                                                                                          GameRoundReset:0809f519(c)
        0809f880 57              PUSH       EDI
        0809f881 bf 03 00        MOV        EDI,0x3
                 00 00
        0809f886 56              PUSH       ESI
        0809f887 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809f88d 53              PUSH       EBX
        0809f88e 89 d3           MOV        EBX,EDX
        0809f890 b9 64 cf        MOV        ECX,0x1cf64
                 01 00
                             LAB_0809f895                                    XREF[1]:     0809f8c1(j)
        0809f895 8b 44 11 04     MOV        EAX,dword ptr [ECX + EDX*0x1 + 0x4]
        0809f899 85 c0           TEST       EAX,EAX
        0809f89b 74 20           JZ         LAB_0809f8bd
        0809f89d c7 80 bc        MOV        dword ptr [EAX + 0x1bc],0x0
                 01 00 00
                 00 00 00 00
        0809f8a7 c7 80 b8        MOV        dword ptr [EAX + 0x1b8],0x0
                 01 00 00
                 00 00 00 00
        0809f8b1 c7 80 b4        MOV        dword ptr [EAX + 0x1b4],0x0
                 01 00 00
                 00 00 00 00
        0809f8bb 89 da           MOV        EDX,EBX
                             LAB_0809f8bd                                    XREF[1]:     0809f89b(j)
        0809f8bd 83 c1 04        ADD        ECX,0x4
        0809f8c0 4f              DEC        EDI
        0809f8c1 79 d2           JNS        LAB_0809f895
        0809f8c3 bf 01 00        MOV        EDI,0x1
                 00 00
        0809f8c8 eb 0c           JMP        LAB_0809f8d6
        0809f8ca 8d              ??         8Dh
        0809f8cb b6              ??         B6h
        0809f8cc 00              ??         00h
        0809f8cd 00              ??         00h
        0809f8ce 00              ??         00h
        0809f8cf 00              ??         00h
                             LAB_0809f8d0                                    XREF[1]:     0809f953(j)
        0809f8d0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809f8d6                                    XREF[1]:     0809f8c8(j)
        0809f8d6 8d 34 bd        LEA        ESI,[EDI*0x4 + 0x0]
                 00 00 00 00
        0809f8dd 8b 9c 16        MOV        EBX,dword ptr [ESI + EDX*0x1 + 0x1cf64]
                 64 cf 01 00
        0809f8e4 85 db           TEST       EBX,EBX
        0809f8e6 74 67           JZ         LAB_0809f94f
        0809f8e8 8b 83 90        MOV        EAX,dword ptr [EBX + 0x190]
                 01 00 00
        0809f8ee 39 84 16        CMP        dword ptr [ESI + EDX*0x1 + 0x4250],EAX
                 50 42 00 00
        0809f8f5 74 12           JZ         LAB_0809f909
        0809f8f7 83 ec 0c        SUB        ESP,0xc
        0809f8fa 53              PUSH       EBX
        0809f8fb e8 c0 22        CALL       PlayerTurnAround                                 undefined PlayerTurnAround()
                 01 00
        0809f900 83 c4 10        ADD        ESP,0x10
        0809f903 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809f909                                    XREF[1]:     0809f8f5(j)
        0809f909 83 c2 14        ADD        EDX,0x14
        0809f90c 8b 84 32        MOV        EAX,dword ptr [EDX + ESI*0x1 + 0x420c]
                 0c 42 00 00
        0809f913 05 a0 00        ADD        EAX,0xa0
                 00 00
        0809f918 50              PUSH       EAX
        0809f919 db 04 24        FILD       dword ptr [ESP]=>local_10
        0809f91c 58              POP        EAX
        0809f91d d9 93 9c        FST        float ptr [EBX + 0x19c]
                 01 00 00
        0809f923 d9 9b a8        FSTP       float ptr [EBX + 0x1a8]
                 01 00 00
        0809f929 db 84 32        FILD       dword ptr [EDX + ESI*0x1 + 0x421c]
                 1c 42 00 00
        0809f930 d9 93 a0        FST        float ptr [EBX + 0x1a0]
                 01 00 00
        0809f936 d9 9b ac        FSTP       float ptr [EBX + 0x1ac]
                 01 00 00
        0809f93c db 84 32        FILD       dword ptr [EDX + ESI*0x1 + 0x422c]
                 2c 42 00 00
        0809f943 d9 93 a4        FST        float ptr [EBX + 0x1a4]
                 01 00 00
        0809f949 d9 9b b0        FSTP       float ptr [EBX + 0x1b0]
                 01 00 00
                             LAB_0809f94f                                    XREF[1]:     0809f8e6(j)
        0809f94f 47              INC        EDI
        0809f950 83 ff 04        CMP        EDI,0x4
        0809f953 0f 8e 77        JLE        LAB_0809f8d0
                 ff ff ff
        0809f959 5b              POP        EBX
        0809f95a 5e              POP        ESI
        0809f95b 5f              POP        EDI
        0809f95c c3              RET
