        0809e73c 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809e742 e8 f9 73        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
        0809e74d c7 44 24        MOV        dword ptr [ESP + local_14],0x1
                 18 01 00
                 00 00
        0809e75e 3b 91 54        CMP        EDX,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809e764 0f 8f 37        JG         LAB_0809e8a1
                 01 00 00
        0809e76a bf 64 cf        MOV        EDI,0x1cf64
                 01 00
        0809e76f c7 44 24        MOV        dword ptr [ESP + local_18],0x4
                 04 04 00
                 00 00
                             LAB_0809e777                                    XREF[1]:     0809e89b(j)
        0809e777 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        0809e77b 85 c0           TEST       EAX,EAX
        0809e77d 0f 84 f5        JZ         LAB_0809e878
                 00 00 00
        0809e783 8b 98 58        MOV        EBX,dword ptr [EAX + 0x158]
                 01 00 00
        0809e789 85 db           TEST       EBX,EBX
        0809e78b 74 17           JZ         LAB_0809e7a4
        0809e796 e8 35 2e        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        0809e79e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809e7a4                                    XREF[1]:     0809e78b(j)
        0809e7a4 8d 71 04        LEA        ESI,[ECX + 0x4]
        0809e7a7 8b 1c 37        MOV        EBX,dword ptr [EDI + ESI*0x1]
        0809e7aa 8b 53 10        MOV        EDX,dword ptr [EBX + 0x10]
        0809e7ad 83 fa ff        CMP        EDX,-0x1
        0809e7b0 74 4a           JZ         LAB_0809e7fc
        0809e7c5 8b 53 14        MOV        EDX,dword ptr [EBX + 0x14]
        0809e7ce c1 e2 06        SHL        EDX,0x6
        0809e7d1 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e7d4 8b 53 18        MOV        EDX,dword ptr [EBX + 0x18]
        0809e7d7 01 c8           ADD        EAX,ECX
        0809e7df c1 e2 04        SHL        EDX,0x4
        0809e7e2 8d 84 02        LEA        EAX,[EDX + EAX*0x1 + 0xd05c]
                 5c d0 00 00
        0809e7ea 8b 04 37        MOV        EAX,dword ptr [EDI + ESI*0x1]
        0809e7ee e8 ad 1b        CALL       PlayerSavePersistVars                            undefined PlayerSavePersistVars()
                 01 00
        0809e7f6 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809e7fc                                    XREF[1]:     0809e7b0(j)
        0809e7fc 8b 54 0f 04     MOV        EDX,dword ptr [EDI + ECX*0x1 + 0x4]
        0809e800 83 cb ff        OR         EBX,0xffffffff
        0809e803 8b 02           MOV        EAX,dword ptr [EDX]
        0809e805 85 c0           TEST       EAX,EAX
        0809e809 8b b2 24        MOV        ESI,dword ptr [EDX + 0x2624]
                 26 00 00
        0809e80f 85 f6           TEST       ESI,ESI
        0809e811 75 23           JNZ        LAB_0809e836
        0809e813 8b 98 a8        MOV        EBX,dword ptr [EAX + 0x10a8]
                 10 00 00
        0809e819 8b 81 cc        MOV        EAX,dword ptr [ECX + 0xcecc]
                 ce 00 00
        0809e81f 39 42 0c        CMP        dword ptr [EDX + 0xc],EAX
        0809e822 75 10           JNZ        LAB_0809e834
        0809e824 8b a9 84        MOV        EBP,dword ptr [ECX + 0xe984]
                 e9 00 00
        0809e82a 8b b1 e8        MOV        ESI,dword ptr [ECX + 0xcee8]
                 ce 00 00
        0809e830 01 f5           ADD        EBP,ESI
                             LAB_0809e834                                    XREF[1]:     0809e822(j)
        0809e834 31 ed           XOR        EBP,EBP
        0809e839 8b 4c 0f 04     MOV        ECX,dword ptr [EDI + ECX*0x1 + 0x4]
        0809e83e e8 3d 17        CALL       PlayerFree                                       undefined PlayerFree()
                 01 00
        0809e846 83 fb ff        CMP        EBX,-0x1
        0809e849 74 0c           JZ         LAB_0809e857
        0809e84f e8 fc e0        CALL       PlayerCacheFreePriority                          undefined PlayerCacheFreePriorit
                 00 00
                             LAB_0809e857                                    XREF[1]:     0809e849(j)
        0809e857 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e861 8d 42 04        LEA        EAX,[EDX + 0x4]
        0809e864 c7 84 08        MOV        dword ptr [EAX + ECX*0x1 + 0x1ce60],0x0
                 60 ce 01
                 00 00 00
        0809e86f c7 04 07        MOV        dword ptr [EDI + EAX*0x1],0x0
                 00 00 00 00
        0809e880 46              INC        ESI
        0809e881 83 c0 04        ADD        EAX,0x4
        0809e890 83 c7 04        ADD        EDI,0x4
        0809e895 3b 91 54        CMP        EDX,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809e89b 0f 8e d6        JLE        LAB_0809e777
                 fe ff ff
        0809e8a4 8b 99 50        MOV        EBX,dword ptr [ECX + 0x1bb50]
                 bb 01 00
        0809e8ab e8 10 db        CALL       BGArrayFree                                      undefined BGArrayFree()
                 fa ff
        0809e8b8 c7 80 50        MOV        dword ptr [EAX + 0x1bb50],0x0
                 bb 01 00
                 00 00 00 00
        0809e8c6 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameMatchReset()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[5,1]:   0809f090(W),
                                                                                                   0809f094(R),
                                                                                                   0809f09d(R),
                                                                                                   0809f0a1(W),
                                                                                                   0809f0a9(R),
                                                                                                   0809f098(W)
             undefined4        Stack[-0x28]:4 local_28                                XREF[1]:     0809efb3(R)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[3]:     0809ef79(*),
                                                                                                   0809efaa(*),
                                                                                                   0809efb6(R)
             undefined4        Stack[-0x30]:4 local_30                                XREF[2]:     0809ee73(W),
                                                                                                   0809ee77(R)
             undefined4        Stack[-0x38]:4 local_38                                XREF[2]:     0809f0a5(W),
                                                                                                   0809f0ad(R)
             undefined4        Stack[-0x40]:4 local_40                                XREF[1]:     0809f065(*)
             undefined4        Stack[-0x4c]:4 local_4c                                XREF[3]:     0809ee3e(*),
                                                                                                   0809ee4a(*),
                                                                                                   0809ee56(*)
                             GameMatchReset                                  XREF[3]:     Entry Point(*),
                                                                                          GamePlay:0809d295(c),
                                                                                          GameReloadStage:0809edd0(c)
        0809edf0 55              PUSH       EBP
        0809edf1 57              PUSH       EDI
        0809edf2 56              PUSH       ESI
        0809edf3 53              PUSH       EBX
        0809edf4 83 ec 2c        SUB        ESP,0x2c
        0809edf7 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809edfc 8b 90 cc        MOV        EDX,dword ptr [EAX + 0xcecc]
                 ce 00 00
        0809ee02 85 d2           TEST       EDX,EDX
        0809ee04 74 1a           JZ         LAB_0809ee20
        0809ee06 83 ec 0c        SUB        ESP,0xc
        0809ee09 b8 02 00        MOV        EAX,0x2
                 00 00
        0809ee0e 29 d0           SUB        EAX,EDX
        0809ee10 50              PUSH       EAX
        0809ee11 e8 fa 14        CALL       TeamResetPersistVars                             undefined TeamResetPersistVars()
                 01 00
        0809ee16 83 c4 10        ADD        ESP,0x10
        0809ee19 eb 0a           JMP        LAB_0809ee25
        0809ee1b 90              ??         90h
        0809ee1c 8d              ??         8Dh
        0809ee1d 74              ??         74h    t
        0809ee1e 26              ??         26h    &
        0809ee1f 00              ??         00h
                             LAB_0809ee20                                    XREF[1]:     0809ee04(j)
        0809ee20 e8 cb 14        CALL       GameResetPersistVars                             undefined GameResetPersistVars()
                 01 00
                             LAB_0809ee25                                    XREF[1]:     0809ee19(j)
        0809ee25 83 ec 0c        SUB        ESP,0xc
        0809ee28 be 50 e9        MOV        ESI,0xe950
                 00 00
        0809ee2d bb 60 e9        MOV        EBX,0xe960
                 00 00
        0809ee32 bf 01 00        MOV        EDI,0x1
                 00 00
        0809ee37 6a 00           PUSH       0x0
        0809ee39 e8 72 1e        CALL       TeamReorderAll                                   undefined TeamReorderAll()
                 01 00
        0809ee3e c7 04 24        MOV        dword ptr [ESP]=>local_4c,0x1
                 01 00 00 00
        0809ee45 e8 66 1e        CALL       TeamReorderAll                                   undefined TeamReorderAll()
                 01 00
        0809ee4a c7 04 24        MOV        dword ptr [ESP]=>local_4c,0x0
                 00 00 00 00
        0809ee51 e8 1a 16        CALL       GameLoadAndActivateTeam                          undefined GameLoadAndActivateTea
                 01 00
        0809ee56 c7 04 24        MOV        dword ptr [ESP]=>local_4c,0x1
                 01 00 00 00
        0809ee5d e8 0e 16        CALL       GameLoadAndActivateTeam                          undefined GameLoadAndActivateTea
                 01 00
        0809ee62 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809ee68 83 c4 10        ADD        ESP,0x10
        0809ee6b 89 ca           MOV        EDX,ECX
        0809ee6d 8d 42 0c        LEA        EAX,[EDX + 0xc]
        0809ee70 8d 6a 18        LEA        EBP,[EDX + 0x18]
        0809ee73 89 44 24 0c     MOV        dword ptr [ESP + local_30],EAX
                             LAB_0809ee77                                    XREF[1]:     0809eed2(j)
        0809ee77 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_30]
        0809ee7b c7 04 03        MOV        dword ptr [EBX + EAX*0x1],0x3f800000
                 00 00 80 3f
        0809ee82 81 c3 9c        ADD        EBX,0x1a9c
                 1a 00 00
        0809ee88 c7 82 5c        MOV        dword ptr [EDX + 0xe95c],0x0
                 e9 00 00
                 00 00 00 00
        0809ee92 c7 82 60        MOV        dword ptr [EDX + 0xe960],0x0
                 e9 00 00
                 00 00 00 00
        0809ee9c c7 82 64        MOV        dword ptr [EDX + 0xe964],0x0
                 e9 00 00
                 00 00 00 00
        0809eea6 c7 04 2e        MOV        dword ptr [ESI + EBP*0x1],0x1
                 01 00 00 00
        0809eead 81 c6 9c        ADD        ESI,0x1a9c
                 1a 00 00
        0809eeb3 8b 81 d4        MOV        EAX,dword ptr [ECX + 0x139d4]
                 39 01 00
        0809eeb9 89 82 70        MOV        dword ptr [EDX + 0xe970],EAX
                 e9 00 00
        0809eebf 8b 81 d8        MOV        EAX,dword ptr [ECX + 0x139d8]
                 39 01 00
        0809eec5 89 82 74        MOV        dword ptr [EDX + 0xe974],EAX
                 e9 00 00
        0809eecb 81 c2 9c        ADD        EDX,0x1a9c
                 1a 00 00
        0809eed1 4f              DEC        EDI
        0809eed2 79 a3           JNS        LAB_0809ee77
        0809eed4 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809eeda 83 b9 e4        CMP        dword ptr [ECX + 0xcee4],0x1
                 ce 00 00 01
        0809eee1 7f 0d           JG         LAB_0809eef0
        0809eee3 83 b9 80        CMP        dword ptr [ECX + 0xe980],0x1
                 e9 00 00 01
        0809eeea 0f 8e 87        JLE        LAB_0809ef77
                 00 00 00
                             LAB_0809eef0                                    XREF[1]:     0809eee1(j)
        0809eef0 31 ff           XOR        EDI,EDI
                             LAB_0809eef2                                    XREF[1]:     0809ef71(j)
        0809eef2 8d 04 7f        LEA        EAX,[EDI + EDI*0x2]
        0809eef5 ba 01 00        MOV        EDX,0x1
                 00 00
        0809eefa 29 fa           SUB        EDX,EDI
        0809eefc 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809eeff 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809ef02 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809ef05 c1 e0 03        SHL        EAX,0x3
        0809ef08 29 f8           SUB        EAX,EDI
        0809ef0a 8d 1c 85        LEA        EBX,[EAX*0x4 + 0x0]
                 00 00 00 00
        0809ef11 8d 83 50        LEA        EAX,[EBX + 0xe950]
                 e9 00 00
        0809ef17 c7 44 08        MOV        dword ptr [EAX + ECX*0x1 + 0xc],0x7d
                 0c 7d 00
                 00 00
        0809ef1f c7 44 08        MOV        dword ptr [EAX + ECX*0x1 + 0x18],0x0
                 18 00 00
                 00 00
        0809ef27 c7 44 08        MOV        dword ptr [EAX + ECX*0x1 + 0x10],0x43898000
                 10 00 80
                 89 43
        0809ef2f c7 44 08        MOV        dword ptr [EAX + ECX*0x1 + 0x14],0x3f19999a
                 14 9a 99
                 19 3f
        0809ef37 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809ef3a 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ef3d 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ef40 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ef43 c1 e0 03        SHL        EAX,0x3
        0809ef46 29 d0           SUB        EAX,EDX
        0809ef48 8b 84 81        MOV        EAX,dword ptr [ECX + EAX*0x4 + 0xcee4]
                 e4 ce 00 00
        0809ef4f 83 f8 01        CMP        EAX,0x1
        0809ef52 7e 07           JLE        LAB_0809ef5b
        0809ef54 89 84 19        MOV        dword ptr [ECX + EBX*0x1 + 0xe970],EAX
                 70 e9 00 00
                             LAB_0809ef5b                                    XREF[1]:     0809ef52(j)
        0809ef5b a1 74 7a        MOV        EAX,[g]
                 28 08
        0809ef60 47              INC        EDI
        0809ef61 89 c1           MOV        ECX,EAX
        0809ef63 83 ff 01        CMP        EDI,0x1
        0809ef66 c7 84 03        MOV        dword ptr [EBX + EAX*0x1 + 0xe974],0x0
                 74 e9 00
                 00 00 00
        0809ef71 0f 8e 7b        JLE        LAB_0809eef2
                 ff ff ff
                             LAB_0809ef77                                    XREF[1]:     0809eeea(j)
        0809ef77 31 ff           XOR        EDI,EDI
        0809ef79 8d 54 24 10     LEA        EDX=>local_2c,[ESP + 0x10]
        0809ef7d eb 07           JMP        LAB_0809ef86
        0809ef7f 90              ??         90h
                             LAB_0809ef80                                    XREF[1]:     0809efb1(j)
        0809ef80 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809ef86                                    XREF[1]:     0809ef7d(j)
        0809ef86 8d 04 7f        LEA        EAX,[EDI + EDI*0x2]
        0809ef89 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809ef8c 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809ef8f 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809ef92 c1 e0 03        SHL        EAX,0x3
        0809ef95 29 f8           SUB        EAX,EDI
        0809ef97 c1 e0 02        SHL        EAX,0x2
        0809ef9a db 84 08        FILD       dword ptr [EAX + ECX*0x1 + 0xcef4]
                 f4 ce 00 00
        0809efa1 db 84 01        FILD       dword ptr [ECX + EAX*0x1 + 0xe970]
                 70 e9 00 00
        0809efa8 de f9           FDIVP
        0809efaa d9 1c ba        FSTP       float ptr [EDX + EDI*0x4]=>local_2c
        0809efad 47              INC        EDI
        0809efae 83 ff 01        CMP        EDI,0x1
        0809efb1 7e cd           JLE        LAB_0809ef80
        0809efb3 d9 42 04        FLD        float ptr [EDX + local_28]
        0809efb6 d9 44 24 10     FLD        float ptr [ESP + local_2c]
        0809efba d9 e8           FLD1
        0809efbc d9 c9           FXCH
        0809efbe de f2           FDIVRP     ST2,ST0
        0809efc0 31 ff           XOR        EDI,EDI
        0809efc2 d8 d1           FCOM
        0809efc4 df e0           FNSTSW     AX
        0809efc6 9e              SAHF
        0809efc7 76 07           JBE        LAB_0809efd0
        0809efc9 dc f1           FDIVR      ST1,ST0
        0809efcb bf 01 00        MOV        EDI,0x1
                 00 00
                             LAB_0809efd0                                    XREF[1]:     0809efc7(j)
        0809efd0 d9 c0           FLD        ST0
        0809efd2 8d 04 7f        LEA        EAX,[EDI + EDI*0x2]
        0809efd5 8b 2d 74        MOV        EBP,dword ptr [g]
                 7a 28 08
        0809efdb de f2           FDIVRP     ST2,ST0
        0809efdd d9 c9           FXCH
        0809efdf 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809efe2 8d 75 0c        LEA        ESI,[EBP + 0xc]
        0809efe5 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809efe8 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809efeb c1 e0 03        SHL        EAX,0x3
        0809efee 29 f8           SUB        EAX,EDI
        0809eff0 d9 9c 86        FSTP       float ptr [ESI + EAX*0x4 + 0xe960]
                 60 e9 00 00
        0809eff7 8b 85 d0        MOV        EAX,dword ptr [EBP + 0xced0]
                 ce 00 00
        0809effd 85 c0           TEST       EAX,EAX
        0809efff 0f 84 c5        JZ         LAB_0809f0ca
                 00 00 00
        0809f005 8d 78 ff        LEA        EDI,[EAX + -0x1]
        0809f008 8d 4d 04        LEA        ECX,[EBP + 0x4]
        0809f00b 8d 04 7f        LEA        EAX,[EDI + EDI*0x2]
        0809f00e 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f011 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f014 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f017 c1 e0 03        SHL        EAX,0x3
        0809f01a 29 f8           SUB        EAX,EDI
        0809f01c 8d 14 85        LEA        EDX,[EAX*0x4 + 0x0]
                 00 00 00 00
        0809f023 8d 9a e0        LEA        EBX,[EDX + 0xcee0]
                 ce 00 00
        0809f029 c7 84 15        MOV        dword ptr [EBP + EDX*0x1 + 0xe970],0xf423f
                 70 e9 00
                 00 3f 42
        0809f034 8b 04 0b        MOV        EAX,dword ptr [EBX + ECX*0x1]
        0809f037 83 f8 01        CMP        EAX,0x1
        0809f03a 7f 27           JG         LAB_0809f063
        0809f03c dd d8           FSTP       ST0
        0809f03e ba 01 00        MOV        EDX,0x1
                 00 00
        0809f043 29 fa           SUB        EDX,EDI
        0809f045 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809f048 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f04b 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f04e 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f051 c1 e0 03        SHL        EAX,0x3
        0809f054 29 d0           SUB        EAX,EDX
        0809f056 c7 84 85        MOV        dword ptr [EBP + EAX*0x4 + 0xe970],0x1
                 70 e9 00
                 00 01 00
        0809f061 eb 69           JMP        LAB_0809f0cc
                             LAB_0809f063                                    XREF[1]:     0809f03a(j)
        0809f063 48              DEC        EAX
        0809f064 50              PUSH       EAX
        0809f065 db 04 24        FILD       dword ptr [ESP]=>local_40
        0809f068 db 04 0b        FILD       dword ptr [EBX + ECX*0x1]
        0809f06b d9 c9           FXCH
        0809f06d dc 0d 58        FMUL       double ptr [DAT_08278758]                        = 9Ah
                 87 27 08
        0809f073 58              POP        EAX
        0809f074 dc 2d 48        FSUBR      double ptr [DAT_08279648]
                 96 27 08
        0809f07a d9 9c 16        FSTP       float ptr [ESI + EDX*0x1 + 0xe960]
                 60 e9 00 00
        0809f081 d9 c1           FLD        ST1
        0809f083 81 c2 50        ADD        EDX,0xe950
                 e9 00 00
        0809f089 de f1           FDIVRP
        0809f08b db 04 32        FILD       dword ptr [EDX + ESI*0x1]
        0809f08e de c9           FMULP
        0809f090 d9 7c 24 20     FNSTCW     word ptr [ESP + local_1c]
        0809f094 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_1c]
        0809f098 c6 44 24        MOV        byte ptr [ESP + local_1c+0x1],0xc
                 21 0c
        0809f09d d9 6c 24 20     FLDCW      word ptr [ESP + local_1c]
        0809f0a1 89 44 24 20     MOV        dword ptr [ESP + local_1c],EAX
        0809f0a5 db 5c 24 04     FISTP      dword ptr [ESP + local_38]
        0809f0a9 d9 6c 24 20     FLDCW      word ptr [ESP + local_1c]
        0809f0ad 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_38]
        0809f0b1 89 04 32        MOV        dword ptr [EDX + ESI*0x1],EAX
        0809f0b4 8d 45 10        LEA        EAX,[EBP + 0x10]
        0809f0b7 db 04 0b        FILD       dword ptr [EBX + ECX*0x1]
        0809f0ba d8 25 40        FSUB       float ptr [DAT_08279640]
                 96 27 08
        0809f0c0 de f9           FDIVP
        0809f0c2 d8 0c 02        FMUL       float ptr [EDX + EAX*0x1]
        0809f0c5 d9 1c 02        FSTP       float ptr [EDX + EAX*0x1]
        0809f0c8 eb 02           JMP        LAB_0809f0cc
                             LAB_0809f0ca                                    XREF[1]:     0809efff(j)
        0809f0ca dd d8           FSTP       ST0
                             LAB_0809f0cc                                    XREF[2]:     0809f061(j), 0809f0c8(j)
        0809f0cc 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f0d2 8b 99 30        MOV        EBX,dword ptr [ECX + 0x20730]
                 07 02 00
        0809f0d8 85 db           TEST       EBX,EBX
        0809f0da 74 1c           JZ         LAB_0809f0f8
        0809f0dc 8d 04 7f        LEA        EAX,[EDI + EDI*0x2]
        0809f0df 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f0e2 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f0e5 8d 04 87        LEA        EAX,[EDI + EAX*0x4]
        0809f0e8 c1 e0 03        SHL        EAX,0x3
        0809f0eb 29 f8           SUB        EAX,EDI
        0809f0ed c7 84 81        MOV        dword ptr [ECX + EAX*0x4 + 0xe96c],0x3f800000
                 6c e9 00
                 00 00 00
                             LAB_0809f0f8                                    XREF[1]:     0809f0da(j)
        0809f0f8 89 c8           MOV        EAX,ECX
        0809f0fa bb 01 00        MOV        EBX,0x1
                 00 00
        0809f0ff 3b 98 54        CMP        EBX,dword ptr [EAX + 0x1ce54]
                 ce 01 00
        0809f105 7f 41           JG         LAB_0809f148
        0809f107 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        0809f10d ba 64 cf        MOV        EDX,0x1cf64
                 01 00
                             LAB_0809f112                                    XREF[1]:     0809f146(j)
        0809f112 8b 44 02 04     MOV        EAX,dword ptr [EDX + EAX*0x1 + 0x4]
        0809f116 85 c0           TEST       EAX,EAX
        0809f118 74 20           JZ         LAB_0809f13a
        0809f11a c7 80 80        MOV        dword ptr [EAX + 0x180],0x0
                 01 00 00
                 00 00 00 00
        0809f124 c7 80 78        MOV        dword ptr [EAX + 0x178],0x0
                 01 00 00
                 00 00 00 00
        0809f12e c7 80 2c        MOV        dword ptr [EAX + 0x342c],0x0
                 34 00 00
                 00 00 00 00
        0809f138 89 f1           MOV        ECX,ESI
                             LAB_0809f13a                                    XREF[1]:     0809f118(j)
        0809f13a 89 c8           MOV        EAX,ECX
        0809f13c 43              INC        EBX
        0809f13d 83 c2 04        ADD        EDX,0x4
        0809f140 3b 98 54        CMP        EBX,dword ptr [EAX + 0x1ce54]
                 ce 01 00
        0809f146 7e ca           JLE        LAB_0809f112
                             LAB_0809f148                                    XREF[1]:     0809f105(j)
        0809f148 bb 09 00        MOV        EBX,0x9
                 00 00
        0809f14d e8 be 00        CALL       GameRoundReset                                   undefined GameRoundReset()
                 00 00
        0809f152 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f157 31 d2           XOR        EDX,EDX
        0809f159 c7 80 18        MOV        dword ptr [EAX + 0x1d518],0x0
                 d5 01 00
                 00 00 00 00
        0809f163 c7 80 5c        MOV        dword ptr [EAX + 0x1d45c],0x0
                 d4 01 00
                 00 00 00 00
        0809f16d c7 80 18        MOV        dword ptr [EAX + 0x1d418],0x1
                 d4 01 00
                 01 00 00 00
        0809f177 c7 80 20        MOV        dword ptr [EAX + 0x1d420],0x0
                 d4 01 00
                 00 00 00 00
        0809f181 c7 80 1c        MOV        dword ptr [EAX + 0x1d41c],0x0
                 d4 01 00
                 00 00 00 00
        0809f18b c7 80 28        MOV        dword ptr [EAX + 0x1d428],0x0
                 d4 01 00
                 00 00 00 00
                             LAB_0809f195                                    XREF[1]:     0809f1c5(j)
        0809f195 c7 84 10        MOV        dword ptr [EAX + EDX*0x1 + 0x1d48c],0xffffffff
                 8c d4 01
                 00 ff ff
        0809f1a0 c7 84 10        MOV        dword ptr [EAX + EDX*0x1 + 0x1d464],0xffffffff
                 64 d4 01
                 00 ff ff
        0809f1ab c7 84 10        MOV        dword ptr [EAX + EDX*0x1 + 0x1d4dc],0xffffffff
                 dc d4 01
                 00 ff ff
        0809f1b6 c7 84 10        MOV        dword ptr [EAX + EDX*0x1 + 0x1d4b4],0xffffffff
                 b4 d4 01
                 00 ff ff
        0809f1c1 83 c2 04        ADD        EDX,0x4
        0809f1c4 4b              DEC        EBX
        0809f1c5 79 ce           JNS        LAB_0809f195
        0809f1c7 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809f1cd 31 c0           XOR        EAX,EAX
        0809f1cf fc              CLD
        0809f1d0 81 c7 5c        ADD        EDI,0x1cc5c
                 cc 01 00
        0809f1d6 b9 06 00        MOV        ECX,0x6
                 00 00
        0809f1db f3 ab           STOSD.REP  ES:EDI
        0809f1dd a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f1e2 83 ec 0c        SUB        ESP,0xc
        0809f1e5 c7 80 84        MOV        dword ptr [EAX + 0x1d384],0x0
                 d3 01 00
                 00 00 00 00
        0809f1ef 8b 90 50        MOV        EDX,dword ptr [EAX + 0x1bb50]
                 bb 01 00
        0809f1f5 52              PUSH       EDX
        0809f1f6 e8 85 dc        CALL       BGArrayReset                                     undefined BGArrayReset()
                 fa ff
        0809f1fb 83 c4 3c        ADD        ESP,0x3c
        0809f1fe 5b              POP        EBX
        0809f1ff 5e              POP        ESI
        0809f200 5f              POP        EDI
        0809f201 5d              POP        EBP
        0809f202 c3              RET
