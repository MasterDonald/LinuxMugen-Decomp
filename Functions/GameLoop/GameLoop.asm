                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoop()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x30]:4 local_30                                XREF[1]:     08090164(R)
             undefined4        Stack[-0x34]:4 local_34                                XREF[2]:     0809016c(R),
                                                                                                   0809030c(R)
             undefined4        Stack[-0x38]:4 local_38                                XREF[2]:     08090174(R),
                                                                                                   08090314(R)
             undefined4        Stack[-0x3c]:4 local_3c                                XREF[3]:     08090145(*),
                                                                                                   0809017c(R),
                                                                                                   0809031c(R)
             undefined4        Stack[-0x40]:4 local_40                                XREF[2]:     08090184(R),
                                                                                                   08090324(R)
             undefined4        Stack[-0x44]:4 local_44                                XREF[1]:     08090332(R)
             undefined4        Stack[-0x440   local_440                               XREF[3]:     0809000e(W),
                                                                                                   08090018(R),
                                                                                                   08090032(W)
             undefined4        Stack[-0x444   local_444                               XREF[4]:     08090024(W),
                                                                                                   0809002e(R),
                                                                                                   0809003e(W),
                                                                                                   08090e7a(*)
             undefined4        Stack[-0x448   local_448                               XREF[9]:     0808fdf7(W),
                                                                                                   0808fdfb(RW),
                                                                                                   0808fe05(R),
                                                                                                   0808fe13(W),
                                                                                                   0808fe17(R),
                                                                                                   0808fe1f(W),
                                                                                                   0809065d(R),
                                                                                                   080908f6(RW),
                                                                                                   080908fa(R)
             undefined4        Stack[-0x44c   local_44c                               XREF[3]:     08090656(R),
                                                                                                   080908ed(RW),
                                                                                                   080908f1(R)
             undefined4        Stack[-0x450   local_450                               XREF[1]:     08090f2e(R)
             undefined4        Stack[-0x464   local_464                               XREF[4]:     080901d9(W),
                                                                                                   08090a57(*),
                                                                                                   08090e34(*),
                                                                                                   08090eaf(*)
             undefined4        Stack[-0x468   local_468                               XREF[1]:     080901e1(W)
             undefined         Stack[-0x47c   local_47c                               XREF[1]:     080901d5(*)
             undefined4        Stack[-0x480   local_480                               XREF[1]:     08090204(*)
                             gcc2_compiled.                                  XREF[4]:     Entry Point(*),
                             GameLoop                                                     GamePlay:0809d301(c),
                                                                                          ArcadeWinScreen:0809d80d(c),
                                                                                          SurvivalResultsScreen:0809da3a(c
        0808fdc0 55              PUSH       EBP
        0808fdc1 ba 1f 00        MOV        EDX,0x1f
                 00 00
        0808fdc6 57              PUSH       EDI
        0808fdc7 56              PUSH       ESI
        0808fdc8 53              PUSH       EBX
        0808fdc9 81 ec 3c        SUB        ESP,0x43c
                 04 00 00
        0808fdcf 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0808fdd5 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        0808fddb 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x4]]
                 50 04 00 00
        0808fde2 89 83 dc        MOV        dword ptr [EBX + 0xcedc],EAX
                 ce 00 00
        0808fde8 b8 3f 00        MOV        EAX,0x3f
                 00 00
        0808fded c7 83 d4        MOV        dword ptr [EBX + 0x104d4],0x0
                 04 01 00
                 00 00 00 00
        0808fdf7 89 54 24 04     MOV        dword ptr [ESP + local_448],EDX
        0808fdfb d3 64 24 04     SHL        dword ptr [ESP + local_448],CL
        0808fdff 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        0808fe05 8b 6c 24 04     MOV        EBP,dword ptr [ESP + local_448]
        0808fe09 d3 e0           SHL        EAX,CL
        0808fe0b 09 c5           OR         EBP,EAX
        0808fe0d 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        0808fe13 89 6c 24 04     MOV        dword ptr [ESP + local_448],EBP
        0808fe17 8b 7c 24 04     MOV        EDI,dword ptr [ESP + local_448]
        0808fe1b d3 e2           SHL        EDX,CL
        0808fe1d 09 d7           OR         EDI,EDX
        0808fe1f 89 7c 24 04     MOV        dword ptr [ESP + local_448],EDI
        0808fe23 83 bb 64        CMP        dword ptr [EBX + 0x1d564],0x4
                 d5 01 00 04
        0808fe2a c7 83 58        MOV        dword ptr [EBX + 0x1cc58],0x0
                 cc 01 00
                 00 00 00 00
        0808fe34 c7 83 54        MOV        dword ptr [EBX + 0x1cc54],0x0
                 cc 01 00
                 00 00 00 00
        0808fe3e 75 10           JNZ        LAB_0808fe50
        0808fe40 56              PUSH       ESI
        0808fe41 56              PUSH       ESI
        0808fe42 6a 00           PUSH       0x0
        0808fe44 8b 9b e0        MOV        EBX,dword ptr [EBX + 0x104e0]
                 04 01 00
        0808fe4a 53              PUSH       EBX
        0808fe4b eb 0e           JMP        LAB_0808fe5b
        0808fe4d 8d              ??         8Dh
        0808fe4e 76              ??         76h    v
        0808fe4f 00              ??         00h
                             LAB_0808fe50                                    XREF[1]:     0808fe3e(j)
        0808fe50 51              PUSH       ECX
        0808fe51 51              PUSH       ECX
        0808fe52 6a 00           PUSH       0x0
        0808fe54 8b 93 d8        MOV        EDX,dword ptr [EBX + 0x104d8]
                 04 01 00
        0808fe5a 52              PUSH       EDX
                             LAB_0808fe5b                                    XREF[1]:     0808fe4b(j)
        0808fe5b e8 40 d1        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        0808fe60 83 c4 10        ADD        ESP,0x10
        0808fe63 83 ec 0c        SUB        ESP,0xc
        0808fe66 6a 00           PUSH       0x0
        0808fe68 e8 23 dd        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        0808fe6d a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        0808fe72 48              DEC        EAX
        0808fe73 50              PUSH       EAX
        0808fe74 a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        0808fe79 48              DEC        EAX
        0808fe7a 50              PUSH       EAX
        0808fe7b 6a 00           PUSH       0x0
        0808fe7d 6a 00           PUSH       0x0
        0808fe7f e8 ec db        CALL       W_Define                                         undefined W_Define()
                 fe ff
        0808fe84 83 c4 20        ADD        ESP,0x20
        0808fe87 e8 b4 da        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 ff ff
        0808fe8c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0808fe92 8b 82 4c        MOV        EAX,dword ptr [EDX + 0x20b4c]
                 0b 02 00
        0808fe98 85 c0           TEST       EAX,EAX
        0808fe9a 74 25           JZ         LAB_0808fec1
        0808fe9c c7 82 14        MOV        dword ptr [EDX + 0x1cc14],0x7d0
                 cc 01 00
                 d0 07 00 00
        0808fea6 c7 82 48        MOV        dword ptr [EDX + 0x20b48],0x1
                 0b 02 00
                 01 00 00 00
        0808feb0 81 ba 10        CMP        dword ptr [EDX + 0x1cc10],0x270f
                 cc 01 00
                 0f 27 00 00
        0808feba 7e 2a           JLE        LAB_0808fee6
        0808febc e9 e1 11        JMP        LAB_080910a2
                 00 00
                             LAB_0808fec1                                    XREF[2]:     0808fe9a(j), 08091078(j)
        0808fec1 8b 82 58        MOV        EAX,dword ptr [EDX + 0x20b58]
                 0b 02 00
        0808fec7 85 c0           TEST       EAX,EAX
        0808fec9 74 1b           JZ         LAB_0808fee6
        0808fecb 83 f8 ff        CMP        EAX,-0x1
        0808fece 74 16           JZ         LAB_0808fee6
        0808fed0 89 82 14        MOV        dword ptr [EDX + 0x1cc14],EAX
                 cc 01 00
        0808fed6 c7 82 48        MOV        dword ptr [EDX + 0x20b48],0x1
                 0b 02 00
                 01 00 00 00
                             LAB_0808fee0                                    XREF[1]:     0809109c(j)
        0808fee0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0808fee6                                    XREF[3]:     0808feba(j), 0808fec9(j),
                                                                                          0808fece(j)
        0808fee6 8b aa 50        MOV        EBP,dword ptr [EDX + 0x20b50]
                 0b 02 00
        0808feec 85 ed           TEST       EBP,EBP
        0808feee 74 20           JZ         LAB_0808ff10
        0808fef0 e8 fb 5a        CALL       PrecacheRequestCancel                            undefined PrecacheRequestCancel()
                 04 00
        0808fef5 e8 d6 5b        CALL       PrecacheFinish                                   undefined PrecacheFinish()
                 04 00
        0808fefa e8 11 f3        CALL       GameRoundReset                                   undefined GameRoundReset()
                 00 00
        0808feff a1 74 7a        MOV        EAX,[g]
                 28 08
        0808ff04 89 c2           MOV        EDX,EAX
        0808ff06 c7 80 50        MOV        dword ptr [EAX + 0x20b50],0x0
                 0b 02 00
                 00 00 00 00
                             LAB_0808ff10                                    XREF[1]:     0808feee(j)
        0808ff10 8b ba 54        MOV        EDI,dword ptr [EDX + 0x20b54]
                 0b 02 00
        0808ff16 85 ff           TEST       EDI,EDI
        0808ff18 74 26           JZ         LAB_0808ff40
        0808ff1a e8 d1 5a        CALL       PrecacheRequestCancel                            undefined PrecacheRequestCancel()
                 04 00
        0808ff1f e8 ac 5b        CALL       PrecacheFinish                                   undefined PrecacheFinish()
                 04 00
        0808ff24 e8 b7 ed        CALL       GameReloadStage                                  undefined GameReloadStage()
                 00 00
        0808ff29 85 c0           TEST       EAX,EAX
        0808ff2b 0f 84 a0        JZ         LAB_080910d1
                 11 00 00
        0808ff31 a1 74 7a        MOV        EAX,[g]
                 28 08
        0808ff36 c7 80 54        MOV        dword ptr [EAX + 0x20b54],0x0
                 0b 02 00
                 00 00 00 00
                             LAB_0808ff40                                    XREF[1]:     0808ff18(j)
        0808ff40 e8 eb dc        CALL       GameModeInPassiveFightScreen                     undefined GameModeInPassiveFight
                 00 00
        0808ff45 85 c0           TEST       EAX,EAX
        0808ff47 75 56           JNZ        LAB_0808ff9f
        0808ff49 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0808ff4f 8b b2 b8        MOV        ESI,dword ptr [EDX + 0x42b8]
                 42 00 00
        0808ff55 85 f6           TEST       ESI,ESI
        0808ff57 75 21           JNZ        LAB_0808ff7a
        0808ff59 80 ba 91        CMP        byte ptr [EDX + 0x1d391],0x0
                 d3 01 00 00
        0808ff60 74 18           JZ         LAB_0808ff7a
        0808ff62 83 ec 0c        SUB        ESP,0xc
        0808ff65 8d 82 a8        LEA        EAX,[EDX + 0x42a8]
                 42 00 00
        0808ff6b 50              PUSH       EAX
        0808ff6c e8 4f 54        CALL       BGMPause                                         undefined BGMPause()
                 ff ff
        0808ff71 83 c4 10        ADD        ESP,0x10
        0808ff74 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0808ff7a                                    XREF[2]:     0808ff57(j), 0808ff60(j)
        0808ff7a 8b 9a b8        MOV        EBX,dword ptr [EDX + 0x42b8]
                 42 00 00
        0808ff80 85 db           TEST       EBX,EBX
        0808ff82 74 21           JZ         LAB_0808ffa5
        0808ff84 80 ba 91        CMP        byte ptr [EDX + 0x1d391],0x0
                 d3 01 00 00
        0808ff8b 75 18           JNZ        LAB_0808ffa5
        0808ff8d 83 ec 0c        SUB        ESP,0xc
        0808ff90 8d 82 a8        LEA        EAX,[EDX + 0x42a8]
                 42 00 00
        0808ff96 50              PUSH       EAX
        0808ff97 e8 44 55        CALL       BGMResume                                        undefined BGMResume()
                 ff ff
        0808ff9c 83 c4 10        ADD        ESP,0x10
                             LAB_0808ff9f                                    XREF[1]:     0808ff47(j)
        0808ff9f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0808ffa5                                    XREF[2]:     0808ff82(j), 0808ff8b(j)
        0808ffa5 83 ec 0c        SUB        ESP,0xc
        0808ffa8 8d 82 a8        LEA        EAX,[EDX + 0x42a8]
                 42 00 00
        0808ffae 50              PUSH       EAX
        0808ffaf e8 2c 57        CALL       BGMPoll                                          undefined BGMPoll()
                 ff ff
        0808ffb4 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0808ffba 83 c4 10        ADD        ESP,0x10
        0808ffbd 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        0808ffc4 75 2e           JNZ        LAB_0808fff4
        0808ffc6 51              PUSH       ECX
        0808ffc7 51              PUSH       ECX
        0808ffc8 6a 00           PUSH       0x0
        0808ffca 8b 92 d8        MOV        EDX,dword ptr [EDX + 0x104d8]
                 04 01 00
        0808ffd0 52              PUSH       EDX
        0808ffd1 e8 ca cf        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        0808ffd6 5d              POP        EBP
        0808ffd7 58              POP        EAX
        0808ffd8 a1 74 7a        MOV        EAX,[g]
                 28 08
        0808ffdd 6a 01           PUSH       0x1
        0808ffdf 8b b8 50        MOV        EDI,dword ptr [EAX + 0x1bb50]
                 bb 01 00
        0808ffe5 57              PUSH       EDI
        0808ffe6 e8 c5 c7        CALL       BGArraySetViewScale                              undefined BGArraySetViewScale()
                 fb ff
        0808ffeb 83 c4 10        ADD        ESP,0x10
        0808ffee 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0808fff4                                    XREF[1]:     0808ffc4(j)
        0808fff4 83 ec 0c        SUB        ESP,0xc
        0808fff7 8b b2 f4        MOV        ESI,dword ptr [EDX + 0x104f4]
                 04 01 00
        0808fffd 56              PUSH       ESI
        0808fffe e8 ad 9b        CALL       PRSprArrayClear                                  undefined PRSprArrayClear()
                 fb ff
        08090003 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090008 8b 90 54        MOV        EDX,dword ptr [EAX + 0x1cc54]
                 cc 01 00
        0809000e 89 54 24 1c     MOV        dword ptr [ESP + local_440],EDX
        08090012 8b 90 44        MOV        EDX,dword ptr [EAX + 0x1cc44]
                 cc 01 00
        08090018 8b 5c 24 1c     MOV        EBX,dword ptr [ESP + local_440]
        0809001c 01 d3           ADD        EBX,EDX
        0809001e 8b 90 58        MOV        EDX,dword ptr [EAX + 0x1cc58]
                 cc 01 00
        08090024 89 54 24 18     MOV        dword ptr [ESP + local_444],EDX
        08090028 8b 90 48        MOV        EDX,dword ptr [EAX + 0x1cc48]
                 cc 01 00
        0809002e 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_444]
        08090032 89 5c 24 1c     MOV        dword ptr [ESP + local_440],EBX
        08090036 01 d1           ADD        ECX,EDX
        08090038 8b 90 24        MOV        EDX,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        0809003e 89 4c 24 18     MOV        dword ptr [ESP + local_444],ECX
        08090042 83 c4 10        ADD        ESP,0x10
        08090045 85 d2           TEST       EDX,EDX
        08090047 75 44           JNZ        LAB_0809008d
        08090049 8b a8 0c        MOV        EBP,dword ptr [EAX + 0x1d40c]
                 d4 01 00
        0809004f be 01 00        MOV        ESI,0x1
                 00 00
        08090054 c7 80 cc        MOV        dword ptr [EAX + 0x1d3cc],0xffffffff
                 d3 01 00
                 ff ff ff ff
        0809005e 85 ed           TEST       EBP,EBP
        08090060 7e 0e           JLE        LAB_08090070
        08090062 c7 80 cc        MOV        dword ptr [EAX + 0x1d3cc],0x1
                 d3 01 00
                 01 00 00 00
        0809006c eb 1f           JMP        LAB_0809008d
        0809006e 89              ??         89h
        0809006f f6              ??         F6h
                             LAB_08090070                                    XREF[2]:     08090060(j), 08090085(j)
        08090070 4e              DEC        ESI
        08090071 78 1a           JS         LAB_0809008d
        08090073 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090079 8d 04 f6        LEA        EAX,[ESI + ESI*0x8]
        0809007c 8b bc 82        MOV        EDI,dword ptr [EDX + EAX*0x4 + 0x1d3e8]
                 e8 d3 01 00
        08090083 85 ff           TEST       EDI,EDI
        08090085 7e e9           JLE        LAB_08090070
        08090087 89 b2 cc        MOV        dword ptr [EDX + 0x1d3cc],ESI
                 d3 01 00
                             LAB_0809008d                                    XREF[3]:     08090047(j), 0809006c(j),
                                                                                          08090071(j)
        0809008d e8 6e 38        CALL       GameInputUpdate                                  undefined GameInputUpdate()
                 00 00
        08090092 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090098 8b 8a 30        MOV        ECX,dword ptr [EDX + 0x1d430]
                 d4 01 00
        0809009e 85 c9           TEST       ECX,ECX
        080900a0 7e 27           JLE        LAB_080900c9
        080900a2 8b 9a 24        MOV        EBX,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080900a8 85 db           TEST       EBX,EBX
        080900aa 75 1d           JNZ        LAB_080900c9
        080900ac 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1d434]
                 d4 01 00
        080900b2 85 c0           TEST       EAX,EAX
        080900b4 7f 0a           JG         LAB_080900c0
        080900b6 01 c8           ADD        EAX,ECX
        080900b8 eb 09           JMP        LAB_080900c3
        080900ba 8d              ??         8Dh
        080900bb b6              ??         B6h
        080900bc 00              ??         00h
        080900bd 00              ??         00h
        080900be 00              ??         00h
        080900bf 00              ??         00h
                             LAB_080900c0                                    XREF[1]:     080900b4(j)
        080900c0 83 e8 64        SUB        EAX,0x64
                             LAB_080900c3                                    XREF[1]:     080900b8(j)
        080900c3 89 82 34        MOV        dword ptr [EDX + 0x1d434],EAX
                 d4 01 00
                             LAB_080900c9                                    XREF[2]:     080900a0(j), 080900aa(j)
        080900c9 8b 82 24        MOV        EAX,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080900cf 85 c0           TEST       EAX,EAX
        080900d1 75 0b           JNZ        LAB_080900de
        080900d3 e8 08 89        CALL       PalGrpResetPalette                               undefined PalGrpResetPalette()
                 02 00
        080900d8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080900de                                    XREF[1]:     080900d1(j)
        080900de 8b aa 24        MOV        EBP,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080900e4 85 ed           TEST       EBP,EBP
        080900e6 0f 85 e4        JNZ        LAB_080901d0
                 00 00 00
        080900ec 8b b2 cc        MOV        ESI,dword ptr [EDX + 0x1d3cc]
                 d3 01 00
        080900f2 83 fe ff        CMP        ESI,-0x1
        080900f5 0f 84 d5        JZ         LAB_080901d0
                 00 00 00
        080900fb 8d 04 f6        LEA        EAX,[ESI + ESI*0x8]
        080900fe 8d 5a 18        LEA        EBX,[EDX + 0x18]
        08090101 8d 34 85        LEA        ESI,[EAX*0x4 + 0x0]
                 00 00 00 00
        08090108 8d 8e d0        LEA        ECX,[ESI + 0x1d3d0]
                 d3 01 00
        0809010e 8b 04 19        MOV        EAX,dword ptr [ECX + EBX*0x1]
        08090111 85 c0           TEST       EAX,EAX
        08090113 0f 8e b7        JLE        LAB_080901d0
                 00 00 00
        08090119 8b ba 34        MOV        EDI,dword ptr [EDX + 0x1d434]
                 d4 01 00
        0809011f 85 ff           TEST       EDI,EDI
        08090121 75 0a           JNZ        LAB_0809012d
        08090123 48              DEC        EAX
        08090124 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809012a 89 04 19        MOV        dword ptr [ECX + EBX*0x1],EAX
                             LAB_0809012d                                    XREF[1]:     08090121(j)
        0809012d 8b 5c 11 18     MOV        EBX,dword ptr [ECX + EDX*0x1 + 0x18]
        08090131 85 db           TEST       EBX,EBX
        08090133 0f 84 97        JZ         LAB_080901d0
                 00 00 00
        08090139 8b 44 11 14     MOV        EAX,dword ptr [ECX + EDX*0x1 + 0x14]
        0809013d 85 c0           TEST       EAX,EAX
        0809013f 0f 84 8b        JZ         LAB_080901d0
                 00 00 00
        08090145 8d 84 24        LEA        EAX=>local_3c,[ESP + 0x410]
                 10 04 00 00
        0809014c 55              PUSH       EBP
        0809014d 6a 00           PUSH       0x0
        0809014f 68 00 0b        PUSH       0xb00
                 00 00
        08090154 50              PUSH       EAX
        08090155 e8 b6 8b        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 02 00
        0809015a 57              PUSH       EDI
        0809015b 68 80 00        PUSH       0x80
                 00 00
        08090160 6a 50           PUSH       0x50
        08090162 6a 50           PUSH       0x50
        08090164 8b 9c 24        MOV        EBX,dword ptr [ESP + local_30]
                 3c 04 00 00
        0809016b 53              PUSH       EBX
        0809016c 8b 8c 24        MOV        ECX,dword ptr [ESP + local_34]
                 3c 04 00 00
        08090173 51              PUSH       ECX
        08090174 8b 94 24        MOV        EDX,dword ptr [ESP + local_38]
                 3c 04 00 00
        0809017b 52              PUSH       EDX
        0809017c 8b 84 24        MOV        EAX,dword ptr [ESP + local_3c]
                 3c 04 00 00
        08090183 50              PUSH       EAX
        08090184 8b ac 24        MOV        EBP,dword ptr [ESP + local_40]
                 3c 04 00 00
        0809018b 55              PUSH       EBP
        0809018c e8 2f 89        CALL       PalGrpSetMul                                     undefined PalGrpSetMul()
                 02 00
        08090191 83 c4 30        ADD        ESP,0x30
        08090194 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809019a 8d 86 c0        LEA        EAX,[ESI + 0x1d3c0]
                 d3 01 00
        080901a0 68 c0 00        PUSH       0xc0
                 00 00
        080901a5 68 80 00        PUSH       0x80
                 00 00
        080901aa 68 80 00        PUSH       0x80
                 00 00
        080901af 8b 7c 10 20     MOV        EDI,dword ptr [EAX + EDX*0x1 + 0x20]
        080901b3 57              PUSH       EDI
        080901b4 8b 74 10 1c     MOV        ESI,dword ptr [EAX + EDX*0x1 + 0x1c]
        080901b8 56              PUSH       ESI
        080901b9 8b 5c 10 18     MOV        EBX,dword ptr [EAX + EDX*0x1 + 0x18]
        080901bd 53              PUSH       EBX
        080901be 8b 4c 10 14     MOV        ECX,dword ptr [EAX + EDX*0x1 + 0x14]
        080901c2 51              PUSH       ECX
        080901c3 8b 44 10 10     MOV        EAX,dword ptr [EAX + EDX*0x1 + 0x10]
        080901c7 50              PUSH       EAX
        080901c8 e8 f3 88        CALL       PalGrpSetMul                                     undefined PalGrpSetMul()
                 02 00
        080901cd 83 c4 20        ADD        ESP,0x20
                             LAB_080901d0                                    XREF[5]:     080900e6(j), 080900f5(j),
                                                                                          08090113(j), 08090133(j),
                                                                                          0809013f(j)
        080901d0 83 ec 30        SUB        ESP,0x30
        080901d3 89 e3           MOV        EBX,ESP
        080901d5 8d 44 24 04     LEA        EAX=>local_47c,[ESP + 0x4]
        080901d9 c7 44 24        MOV        dword ptr [ESP + local_464],0x1
                 1c 01 00
                 00 00
        080901e1 c7 44 24        MOV        dword ptr [ESP + local_468],0x0
                 18 00 00
                 00 00
        080901e9 55              PUSH       EBP
        080901ea 6a 00           PUSH       0x0
        080901ec 68 00 01        PUSH       0x100
                 00 00
        080901f1 50              PUSH       EAX
        080901f2 e8 19 8b        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 02 00
        080901f7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080901fc 05 54 bb        ADD        EAX,0x1bb54
                 01 00
        08090201 83 c4 0c        ADD        ESP,0xc
        08090204 89 03           MOV        dword ptr [EBX]=>local_480,EAX
        08090206 e8 05 8d        CALL       PalFXUpdate                                      undefined PalFXUpdate()
                 02 00
        0809020b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090211 83 c4 30        ADD        ESP,0x30
        08090214 89 d0           MOV        EAX,EDX
        08090216 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        0809021c 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090222 0f 8c e0        JL         LAB_08090308
                 00 00 00
        08090228 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809022f 90              NOP
                             LAB_08090230                                    XREF[1]:     08090302(j)
        08090230 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        08090234 85 c0           TEST       EAX,EAX
        08090236 74 0f           JZ         LAB_08090247
        08090238 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        0809023e b9 01 00        MOV        ECX,0x1
                 00 00
        08090243 85 ff           TEST       EDI,EDI
        08090245 75 02           JNZ        LAB_08090249
                             LAB_08090247                                    XREF[1]:     08090236(j)
        08090247 31 c9           XOR        ECX,ECX
                             LAB_08090249                                    XREF[1]:     08090245(j)
        08090249 85 c9           TEST       ECX,ECX
        0809024b 0f 84 a5        JZ         LAB_080902f6
                 00 00 00
        08090251 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        08090255 83 ec 0c        SUB        ESP,0xc
        08090258 8b 90 d8        MOV        EDX,dword ptr [EAX + 0x25d8]
                 25 00 00
        0809025e 52              PUSH       EDX
        0809025f 8b a8 d4        MOV        EBP,dword ptr [EAX + 0x25d4]
                 25 00 00
        08090265 55              PUSH       EBP
        08090266 8b b8 d0        MOV        EDI,dword ptr [EAX + 0x25d0]
                 25 00 00
        0809026c 57              PUSH       EDI
        0809026d 8b 88 cc        MOV        ECX,dword ptr [EAX + 0x25cc]
                 25 00 00
        08090273 51              PUSH       ECX
        08090274 8b 90 c8        MOV        EDX,dword ptr [EAX + 0x25c8]
                 25 00 00
        0809027a 52              PUSH       EDX
        0809027b e8 30 8c        CALL       PalGrpFlagIsNonZero                              undefined PalGrpFlagIsNonZero()
                 02 00
        08090280 83 c4 20        ADD        ESP,0x20
        08090283 85 c0           TEST       EAX,EAX
        08090285 74 69           JZ         LAB_080902f0
        08090287 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809028d 31 ff           XOR        EDI,EDI
        0809028f 89 d5           MOV        EBP,EDX
        08090291 8b 8a cc        MOV        ECX,dword ptr [EDX + 0x1d3cc]
                 d3 01 00
        08090297 83 f9 ff        CMP        ECX,-0x1
        0809029a 74 12           JZ         LAB_080902ae
        0809029c 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        080902a0 83 c0 0c        ADD        EAX,0xc
        080902a3 8b 84 88        MOV        EAX,dword ptr [EAX + ECX*0x4 + 0x1d0]
                 d0 01 00 00
        080902aa 85 c0           TEST       EAX,EAX
        080902ac 74 05           JZ         LAB_080902b3
                             LAB_080902ae                                    XREF[1]:     0809029a(j)
        080902ae bf 01 00        MOV        EDI,0x1
                 00 00
                             LAB_080902b3                                    XREF[1]:     080902ac(j)
        080902b3 57              PUSH       EDI
        080902b4 8d 45 04        LEA        EAX,[EBP + 0x4]
        080902b7 6a 00           PUSH       0x0
        080902b9 8b 14 03        MOV        EDX,dword ptr [EBX + EAX*0x1]
        080902bc 8b aa d8        MOV        EBP,dword ptr [EDX + 0x25d8]
                 25 00 00
        080902c2 55              PUSH       EBP
        080902c3 8b ba d4        MOV        EDI,dword ptr [EDX + 0x25d4]
                 25 00 00
        080902c9 57              PUSH       EDI
        080902ca 8b 8a d0        MOV        ECX,dword ptr [EDX + 0x25d0]
                 25 00 00
        080902d0 51              PUSH       ECX
        080902d1 8b aa cc        MOV        EBP,dword ptr [EDX + 0x25cc]
                 25 00 00
        080902d7 55              PUSH       EBP
        080902d8 8b ba c8        MOV        EDI,dword ptr [EDX + 0x25c8]
                 25 00 00
        080902de 57              PUSH       EDI
        080902df 8b 04 03        MOV        EAX,dword ptr [EBX + EAX*0x1]
        080902e2 05 dc 25        ADD        EAX,0x25dc
                 00 00
        080902e7 50              PUSH       EAX
        080902e8 e8 23 8c        CALL       PalFXUpdate                                      undefined PalFXUpdate()
                 02 00
        080902ed 83 c4 20        ADD        ESP,0x20
                             LAB_080902f0                                    XREF[1]:     08090285(j)
        080902f0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080902f6                                    XREF[1]:     0809024b(j)
        080902f6 4e              DEC        ESI
        080902f7 83 eb 04        SUB        EBX,0x4
        080902fa 89 d0           MOV        EAX,EDX
        080902fc 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090302 0f 8d 28        JGE        LAB_08090230
                 ff ff ff
                             LAB_08090308                                    XREF[1]:     08090222(j)
        08090308 6a 01           PUSH       0x1
        0809030a 6a 01           PUSH       0x1
        0809030c 8b b4 24        MOV        ESI,dword ptr [ESP + local_34]
                 28 04 00 00
        08090313 56              PUSH       ESI
        08090314 8b 9c 24        MOV        EBX,dword ptr [ESP + local_38]
                 28 04 00 00
        0809031b 53              PUSH       EBX
        0809031c 8b 8c 24        MOV        ECX,dword ptr [ESP + local_3c]
                 28 04 00 00
        08090323 51              PUSH       ECX
        08090324 8b 84 24        MOV        EAX,dword ptr [ESP + local_40]
                 28 04 00 00
        0809032b 50              PUSH       EAX
        0809032c 8d 82 90        LEA        EAX,[EDX + 0x1bb90]
                 bb 01 00
        08090332 8b ac 24        MOV        EBP,dword ptr [ESP + local_44]
                 28 04 00 00
        08090339 55              PUSH       EBP
        0809033a 50              PUSH       EAX
        0809033b e8 d0 8b        CALL       PalFXUpdate                                      undefined PalFXUpdate()
                 02 00
        08090340 83 c4 20        ADD        ESP,0x20
        08090343 e8 b8 0d        CALL       GameUpdate                                       undefined GameUpdate()
                 00 00
        08090348 85 c0           TEST       EAX,EAX
        0809034a 0f 85 ee        JNZ        LAB_0809103e
                 0c 00 00
        08090350 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090355 8b b8 24        MOV        EDI,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        0809035b 85 ff           TEST       EDI,EDI
        0809035d 75 12           JNZ        LAB_08090371
        0809035f 83 ec 0c        SUB        ESP,0xc
        08090362 8b b0 fc        MOV        ESI,dword ptr [EAX + 0x14afc]
                 4a 01 00
        08090368 56              PUSH       ESI
        08090369 e8 b2 d9        CALL       ExplodArrayUpdate                                undefined ExplodArrayUpdate()
                 ff ff
        0809036e 83 c4 10        ADD        ESP,0x10
                             LAB_08090371                                    XREF[1]:     0809035d(j)
        08090371 e8 ba d8        CALL       GameModeInPassiveFightScreen                     undefined GameModeInPassiveFight
                 00 00
        08090376 85 c0           TEST       EAX,EAX
        08090378 74 1b           JZ         LAB_08090395
        0809037a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090380 8b 9a 04        MOV        EBX,dword ptr [EDX + 0x1d504]
                 d5 01 00
        08090386 85 db           TEST       EBX,EBX
        08090388 75 56           JNZ        LAB_080903e0
        0809038a 83 ba 08        CMP        dword ptr [EDX + 0x1d508],0x1
                 d5 01 00 01
        08090391 75 4d           JNZ        LAB_080903e0
        08090393 eb 06           JMP        LAB_0809039b
                             LAB_08090395                                    XREF[1]:     08090378(j)
        08090395 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809039b                                    XREF[1]:     08090393(j)
        0809039b 8b 82 cc        MOV        EAX,dword ptr [EDX + 0x1d3cc]
                 d3 01 00
        080903a1 83 f8 ff        CMP        EAX,-0x1
        080903a4 74 0e           JZ         LAB_080903b4
        080903a6 8d 04 c0        LEA        EAX,[EAX + EAX*0x8]
        080903a9 8b 8c 82        MOV        ECX,dword ptr [EDX + EAX*0x4 + 0x1d3ec]
                 ec d3 01 00
        080903b0 85 c9           TEST       ECX,ECX
        080903b2 75 2c           JNZ        LAB_080903e0
                             LAB_080903b4                                    XREF[1]:     080903a4(j)
        080903b4 8b 82 24        MOV        EAX,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080903ba 85 c0           TEST       EAX,EAX
        080903bc 75 22           JNZ        LAB_080903e0
        080903be 8b aa 34        MOV        EBP,dword ptr [EDX + 0x1d434]
                 d4 01 00
        080903c4 85 ed           TEST       EBP,EBP
        080903c6 75 18           JNZ        LAB_080903e0
        080903c8 83 ec 0c        SUB        ESP,0xc
        080903cb 8b ba 50        MOV        EDI,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        080903d1 57              PUSH       EDI
        080903d2 e8 f9 c6        CALL       BGArrayUpdate                                    undefined BGArrayUpdate()
                 fb ff
        080903d7 83 c4 10        ADD        ESP,0x10
        080903da 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080903e0                                    XREF[5]:     08090388(j), 08090391(j),
                                                                                          080903b2(j), 080903bc(j),
                                                                                          080903c6(j)
        080903e0 8b b2 24        MOV        ESI,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080903e6 85 f6           TEST       ESI,ESI
        080903e8 75 21           JNZ        LAB_0809040b
        080903ea 8b 9a 34        MOV        EBX,dword ptr [EDX + 0x1d434]
                 d4 01 00
        080903f0 85 db           TEST       EBX,EBX
        080903f2 75 17           JNZ        LAB_0809040b
        080903f4 8b 82 18        MOV        EAX,dword ptr [EDX + 0x10518]
                 05 01 00
        080903fa 85 c0           TEST       EAX,EAX
        080903fc 7e 0d           JLE        LAB_0809040b
        080903fe 48              DEC        EAX
        080903ff 89 82 18        MOV        dword ptr [EDX + 0x10518],EAX
                 05 01 00
        08090405 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809040b                                    XREF[3]:     080903e8(j), 080903f2(j),
                                                                                          080903fc(j)
        0809040b 8b 8a f4        MOV        ECX,dword ptr [EDX + 0x14af4]
                 4a 01 00
        08090411 31 ed           XOR        EBP,EBP
        08090413 85 c9           TEST       ECX,ECX
        08090415 74 0e           JZ         LAB_08090425
        08090417 80 ba 94        CMP        byte ptr [EDX + 0x1d394],0x0
                 d3 01 00 00
        0809041e 75 05           JNZ        LAB_08090425
        08090420 bd 01 00        MOV        EBP,0x1
                 00 00
                             LAB_08090425                                    XREF[2]:     08090415(j), 0809041e(j)
        08090425 8b 82 a0        MOV        EAX,dword ptr [EDX + 0x1d3a0]
                 d3 01 00
        0809042b 85 c0           TEST       EAX,EAX
        0809042d 74 10           JZ         LAB_0809043f
        0809042f 8b ba bc        MOV        EDI,dword ptr [EDX + 0x1d3bc]
                 d3 01 00
        08090435 31 c0           XOR        EAX,EAX
        08090437 85 ff           TEST       EDI,EDI
        08090439 0f 94 c0        SETZ       AL
        0809043c 48              DEC        EAX
        0809043d 21 c5           AND        EBP,EAX
                             LAB_0809043f                                    XREF[1]:     0809042d(j)
        0809043f 8b b2 1c        MOV        ESI,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        08090445 85 f6           TEST       ESI,ESI
        08090447 0f 85 ad        JNZ        LAB_080904fa
                 00 00 00
        0809044d e8 2e 55        CALL       MasterPalProcessChanges                          undefined MasterPalProcessChange
                 fc ff
        08090452 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090458 8b 9a 18        MOV        EBX,dword ptr [EDX + 0x10518]
                 05 01 00
        0809045e 85 db           TEST       EBX,EBX
        08090460 75 67           JNZ        LAB_080904c9
        08090462 80 ba 95        CMP        byte ptr [EDX + 0x1d395],0x0
                 d3 01 00 00
        08090469 75 07           JNZ        LAB_08090472
        0809046b e8 40 4d        CALL       GameBGDraw                                       undefined GameBGDraw()
                 00 00
        08090470 eb 0d           JMP        LAB_0809047f
                             LAB_08090472                                    XREF[1]:     08090469(j)
        08090472 83 ec 0c        SUB        ESP,0xc
        08090475 6a 00           PUSH       0x0
        08090477 e8 14 d7        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        0809047c 83 c4 10        ADD        ESP,0x10
                             LAB_0809047f                                    XREF[1]:     08090470(j)
        0809047f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090485 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        0809048c 75 3b           JNZ        LAB_080904c9
        0809048e 51              PUSH       ECX
        0809048f 51              PUSH       ECX
        08090490 6a 00           PUSH       0x0
        08090492 8b 82 e0        MOV        EAX,dword ptr [EDX + 0x104e0]
                 04 01 00
        08090498 50              PUSH       EAX
        08090499 e8 92 cb        CALL       V_BufGetSurface                                  undefined V_BufGetSurface()
                 fe ff
        0809049e 5e              POP        ESI
        0809049f 5f              POP        EDI
        080904a0 50              PUSH       EAX
        080904a1 a1 74 7a        MOV        EAX,[g]
                 28 08
        080904a6 83 ec 0c        SUB        ESP,0xc
        080904a9 6a 00           PUSH       0x0
        080904ab 8b 98 d8        MOV        EBX,dword ptr [EAX + 0x104d8]
                 04 01 00
        080904b1 53              PUSH       EBX
        080904b2 e8 79 cb        CALL       V_BufGetSurface                                  undefined V_BufGetSurface()
                 fe ff
        080904b7 83 c4 14        ADD        ESP,0x14
        080904ba 50              PUSH       EAX
        080904bb e8 f0 2b        CALL       V_DoubleRes                                      undefined V_DoubleRes()
                 fc ff
        080904c0 83 c4 10        ADD        ESP,0x10
        080904c3 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080904c9                                    XREF[2]:     08090460(j), 0809048c(j)
        080904c9 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        080904d0 75 28           JNZ        LAB_080904fa
        080904d2 51              PUSH       ECX
        080904d3 51              PUSH       ECX
        080904d4 6a 02           PUSH       0x2
        080904d6 8b 92 50        MOV        EDX,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        080904dc 52              PUSH       EDX
        080904dd e8 ce c2        CALL       BGArraySetViewScale                              undefined BGArraySetViewScale()
                 fb ff
        080904e2 5f              POP        EDI
        080904e3 58              POP        EAX
        080904e4 a1 74 7a        MOV        EAX,[g]
                 28 08
        080904e9 6a 00           PUSH       0x0
        080904eb 8b b0 e0        MOV        ESI,dword ptr [EAX + 0x104e0]
                 04 01 00
        080904f1 56              PUSH       ESI
        080904f2 e8 a9 ca        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        080904f7 83 c4 10        ADD        ESP,0x10
                             LAB_080904fa                                    XREF[2]:     08090447(j), 080904d0(j)
        080904fa 85 ed           TEST       EBP,EBP
        080904fc 74 0d           JZ         LAB_0809050b
        080904fe 83 ec 0c        SUB        ESP,0xc
        08090501 6a 00           PUSH       0x0
        08090503 e8 08 4e        CALL       GameBarsDraw                                     undefined GameBarsDraw()
                 00 00
        08090508 83 c4 10        ADD        ESP,0x10
                             LAB_0809050b                                    XREF[1]:     080904fc(j)
        0809050b e8 b0 63        CALL       GameBarsUpdate                                   undefined GameBarsUpdate()
                 00 00
        08090510 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090516 89 d0           MOV        EAX,EDX
        08090518 8b 9a 1c        MOV        EBX,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        0809051e 85 db           TEST       EBX,EBX
        08090520 0f 85 55        JNZ        LAB_0809067b
                 01 00 00
        08090526 8b 8a 18        MOV        ECX,dword ptr [EDX + 0x10518]
                 05 01 00
        0809052c 85 c9           TEST       ECX,ECX
        0809052e 0f 85 47        JNZ        LAB_0809067b
                 01 00 00
        08090534 80 ba 92        CMP        byte ptr [EDX + 0x1d392],0x0
                 d3 01 00 00
        0809053b 0f 85 f5        JNZ        LAB_08090636
                 00 00 00
        08090541 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08090547 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        0809054d 7c 6c           JL         LAB_080905bb
        0809054f 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
                             LAB_08090556                                    XREF[1]:     080905b9(j)
        08090556 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        0809055a 85 c0           TEST       EAX,EAX
        0809055c 74 0f           JZ         LAB_0809056d
        0809055e 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        08090564 b9 01 00        MOV        ECX,0x1
                 00 00
        08090569 85 ff           TEST       EDI,EDI
        0809056b 75 02           JNZ        LAB_0809056f
                             LAB_0809056d                                    XREF[1]:     0809055c(j)
        0809056d 31 c9           XOR        ECX,ECX
                             LAB_0809056f                                    XREF[1]:     0809056b(j)
        0809056f 85 c9           TEST       ECX,ECX
        08090571 74 3a           JZ         LAB_080905ad
        08090573 8d 4a 04        LEA        ECX,[EDX + 0x4]
        08090576 8b 04 0b        MOV        EAX,dword ptr [EBX + ECX*0x1]
        08090579 80 b8 08        CMP        byte ptr [EAX + 0x208],0x0
                 02 00 00 00
        08090580 75 2b           JNZ        LAB_080905ad
        08090582 8b 80 98        MOV        EAX,dword ptr [EAX + 0x198]
                 01 00 00
        08090588 85 c0           TEST       EAX,EAX
        0809058a 74 21           JZ         LAB_080905ad
        0809058c 8d 82 a4        LEA        EAX,[EDX + 0x42a4]
                 42 00 00
        08090592 57              PUSH       EDI
        08090593 50              PUSH       EAX
        08090594 8d 82 90        LEA        EAX,[EDX + 0x4290]
                 42 00 00
        0809059a 50              PUSH       EAX
        0809059b 8b 14 0b        MOV        EDX,dword ptr [EBX + ECX*0x1]
        0809059e 52              PUSH       EDX
        0809059f e8 1c 6e        CALL       PlayerDrawShadow                                 undefined PlayerDrawShadow()
                 02 00
        080905a4 83 c4 10        ADD        ESP,0x10
        080905a7 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080905ad                                    XREF[3]:     08090571(j), 08090580(j),
                                                                                          0809058a(j)
        080905ad 4e              DEC        ESI
        080905ae 83 eb 04        SUB        EBX,0x4
        080905b1 89 d0           MOV        EAX,EDX
        080905b3 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080905b9 7d 9b           JGE        LAB_08090556
                             LAB_080905bb                                    XREF[1]:     0809054d(j)
        080905bb 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080905c1 89 d0           MOV        EAX,EDX
        080905c3 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080905c9 7c 53           JL         LAB_0809061e
        080905cb 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080905d2 89 df           MOV        EDI,EBX
                             LAB_080905d4                                    XREF[1]:     0809061c(j)
        080905d4 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        080905d8 85 c0           TEST       EAX,EAX
        080905da 74 0f           JZ         LAB_080905eb
        080905dc 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        080905e2 b9 01 00        MOV        ECX,0x1
                 00 00
        080905e7 85 c0           TEST       EAX,EAX
        080905e9 75 02           JNZ        LAB_080905ed
                             LAB_080905eb                                    XREF[1]:     080905da(j)
        080905eb 31 c9           XOR        ECX,ECX
                             LAB_080905ed                                    XREF[1]:     080905e9(j)
        080905ed 85 c9           TEST       ECX,ECX
        080905ef 74 1c           JZ         LAB_0809060d
        080905f1 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        080905f5 83 ec 0c        SUB        ESP,0xc
        080905f8 8b 90 1c        MOV        EDX,dword ptr [EAX + 0x21c]
                 02 00 00
        080905fe 52              PUSH       EDX
        080905ff e8 7c 93        CALL       ProjArrayDrawShadow                              undefined ProjArrayDrawShadow()
                 02 00
        08090604 83 c4 10        ADD        ESP,0x10
        08090607 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809060d                                    XREF[1]:     080905ef(j)
        0809060d 4e              DEC        ESI
        0809060e 83 eb 04        SUB        EBX,0x4
        08090611 83 ef 04        SUB        EDI,0x4
        08090614 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        0809061a 89 d0           MOV        EAX,EDX
        0809061c 7d b6           JGE        LAB_080905d4
                             LAB_0809061e                                    XREF[1]:     080905c9(j)
        0809061e 83 ec 0c        SUB        ESP,0xc
        08090621 8b 82 f8        MOV        EAX,dword ptr [EDX + 0x14af8]
                 4a 01 00
        08090627 50              PUSH       EAX
        08090628 e8 e3 db        CALL       ExplodArrayDrawShadow                            undefined ExplodArrayDrawShadow()
                 ff ff
        0809062d 83 c4 10        ADD        ESP,0x10
        08090630 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090636                                    XREF[1]:     0809053b(j)
        08090636 83 ec 0c        SUB        ESP,0xc
        08090639 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08090640 75 0e           JNZ        LAB_08090650
        08090642 b8 00 00        MOV        EAX,0x40000000
                 00 40
        08090647 eb 0c           JMP        LAB_08090655
        08090649 8d              ??         8Dh
        0809064a b4              ??         B4h
        0809064b 26              ??         26h    &
        0809064c 00              ??         00h
        0809064d 00              ??         00h
        0809064e 00              ??         00h
        0809064f 00              ??         00h
                             LAB_08090650                                    XREF[1]:     08090640(j)
        08090650 b8 00 00        MOV        EAX,0x3f800000
                 80 3f
                             LAB_08090655                                    XREF[1]:     08090647(j)
        08090655 50              PUSH       EAX
        08090656 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_44c]
        0809065a f7 d8           NEG        EAX
        0809065c 50              PUSH       EAX
        0809065d 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_448]
        08090661 f7 d8           NEG        EAX
        08090663 50              PUSH       EAX
        08090664 6a 02           PUSH       0x2
        08090666 8b ba f0        MOV        EDI,dword ptr [EDX + 0x104f0]
                 04 01 00
        0809066c 57              PUSH       EDI
        0809066d e8 7e 9c        CALL       AnimPerArrayDrawScaleGrp                         undefined AnimPerArrayDrawScaleG
                 fb ff
        08090672 83 c4 20        ADD        ESP,0x20
        08090675 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809067b                                    XREF[2]:     08090520(j), 0809052e(j)
        0809067b 8b b2 1c        MOV        ESI,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        08090681 85 f6           TEST       ESI,ESI
        08090683 0f 85 dc        JNZ        LAB_08090865
                 01 00 00
        08090689 8b 9a 18        MOV        EBX,dword ptr [EDX + 0x10518]
                 05 01 00
        0809068f 85 db           TEST       EBX,EBX
        08090691 7e 22           JLE        LAB_080906b5
        08090693 8b 8a 10        MOV        ECX,dword ptr [EDX + 0x10510]
                 05 01 00
        08090699 85 c9           TEST       ECX,ECX
        0809069b 74 18           JZ         LAB_080906b5
        0809069d 83 ec 0c        SUB        ESP,0xc
        080906a0 8b 82 14        MOV        EAX,dword ptr [EDX + 0x10514]
                 05 01 00
        080906a6 50              PUSH       EAX
        080906a7 e8 e4 d4        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        080906ac 83 c4 10        ADD        ESP,0x10
        080906af 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080906b5                                    XREF[2]:     08090691(j), 0809069b(j)
        080906b5 8b b2 64        MOV        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080906bb 89 d0           MOV        EAX,EDX
        080906bd 3b b2 68        CMP        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080906c3 7f 5f           JG         LAB_08090724
        080906c5 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080906cc 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_080906d0                                    XREF[1]:     08090722(j)
        080906d0 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        080906d4 85 c0           TEST       EAX,EAX
        080906d6 74 0f           JZ         LAB_080906e7
        080906d8 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        080906de b9 01 00        MOV        ECX,0x1
                 00 00
        080906e3 85 ff           TEST       EDI,EDI
        080906e5 75 02           JNZ        LAB_080906e9
                             LAB_080906e7                                    XREF[1]:     080906d6(j)
        080906e7 31 c9           XOR        ECX,ECX
                             LAB_080906e9                                    XREF[1]:     080906e5(j)
        080906e9 85 c9           TEST       ECX,ECX
        080906eb 74 29           JZ         LAB_08090716
        080906ed 8d 4a 04        LEA        ECX,[EDX + 0x4]
        080906f0 8b 04 0b        MOV        EAX,dword ptr [EBX + ECX*0x1]
        080906f3 8b 80 98        MOV        EAX,dword ptr [EAX + 0x198]
                 01 00 00
        080906f9 85 c0           TEST       EAX,EAX
        080906fb 74 19           JZ         LAB_08090716
        080906fd 57              PUSH       EDI
        080906fe 57              PUSH       EDI
        080906ff 68 00 00        PUSH       0x3f800000
                 80 3f
        08090704 8b 14 0b        MOV        EDX,dword ptr [EBX + ECX*0x1]
        08090707 52              PUSH       EDX
        08090708 e8 b3 6a        CALL       PlayerDrawAnim                                   undefined PlayerDrawAnim()
                 02 00
        0809070d 83 c4 10        ADD        ESP,0x10
        08090710 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090716                                    XREF[2]:     080906eb(j), 080906fb(j)
        08090716 46              INC        ESI
        08090717 83 c3 04        ADD        EBX,0x4
        0809071a 89 d0           MOV        EAX,EDX
        0809071c 3b b2 68        CMP        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08090722 7e ac           JLE        LAB_080906d0
                             LAB_08090724                                    XREF[1]:     080906c3(j)
        08090724 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        0809072a 89 d0           MOV        EAX,EDX
        0809072c 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090732 7c 56           JL         LAB_0809078a
        08090734 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809073b 89 df           MOV        EDI,EBX
        0809073d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08090740                                    XREF[1]:     08090788(j)
        08090740 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08090744 85 c0           TEST       EAX,EAX
        08090746 74 0f           JZ         LAB_08090757
        08090748 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809074e b9 01 00        MOV        ECX,0x1
                 00 00
        08090753 85 c0           TEST       EAX,EAX
        08090755 75 02           JNZ        LAB_08090759
                             LAB_08090757                                    XREF[1]:     08090746(j)
        08090757 31 c9           XOR        ECX,ECX
                             LAB_08090759                                    XREF[1]:     08090755(j)
        08090759 85 c9           TEST       ECX,ECX
        0809075b 74 1c           JZ         LAB_08090779
        0809075d 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        08090761 83 ec 0c        SUB        ESP,0xc
        08090764 8b 80 1c        MOV        EAX,dword ptr [EAX + 0x21c]
                 02 00 00
        0809076a 50              PUSH       EAX
        0809076b e8 a0 91        CALL       ProjArrayDraw                                    undefined ProjArrayDraw()
                 02 00
        08090770 83 c4 10        ADD        ESP,0x10
        08090773 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090779                                    XREF[1]:     0809075b(j)
        08090779 4e              DEC        ESI
        0809077a 83 eb 04        SUB        EBX,0x4
        0809077d 83 ef 04        SUB        EDI,0x4
        08090780 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090786 89 d0           MOV        EAX,EDX
        08090788 7d b6           JGE        LAB_08090740
                             LAB_0809078a                                    XREF[1]:     08090732(j)
        0809078a 51              PUSH       ECX
        0809078b 51              PUSH       ECX
        0809078c 6a 00           PUSH       0x0
        0809078e 8b 82 f8        MOV        EAX,dword ptr [EDX + 0x14af8]
                 4a 01 00
        08090794 50              PUSH       EAX
        08090795 e8 36 d7        CALL       ExplodArrayDraw                                  undefined ExplodArrayDraw()
                 ff ff
        0809079a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080907a0 83 c4 10        ADD        ESP,0x10
        080907a3 89 d0           MOV        EAX,EDX
        080907a5 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080907ab 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080907b1 7c 66           JL         LAB_08090819
        080907b3 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080907ba 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_080907c0                                    XREF[1]:     08090817(j)
        080907c0 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        080907c4 85 c0           TEST       EAX,EAX
        080907c6 74 0f           JZ         LAB_080907d7
        080907c8 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        080907ce b9 01 00        MOV        ECX,0x1
                 00 00
        080907d3 85 ff           TEST       EDI,EDI
        080907d5 75 02           JNZ        LAB_080907d9
                             LAB_080907d7                                    XREF[1]:     080907c6(j)
        080907d7 31 c9           XOR        ECX,ECX
                             LAB_080907d9                                    XREF[1]:     080907d5(j)
        080907d9 85 c9           TEST       ECX,ECX
        080907db 74 2e           JZ         LAB_0809080b
        080907dd 83 ec 0c        SUB        ESP,0xc
        080907e0 8b 54 13 04     MOV        EDX,dword ptr [EBX + EDX*0x1 + 0x4]
        080907e4 52              PUSH       EDX
        080907e5 e8 96 66        CALL       PlayerAftImgDraw                                 undefined PlayerAftImgDraw()
                 00 00
        080907ea 58              POP        EAX
        080907eb a1 74 7a        MOV        EAX,[g]
                 28 08
        080907f0 83 c0 04        ADD        EAX,0x4
        080907f3 8b 04 03        MOV        EAX,dword ptr [EBX + EAX*0x1]
        080907f6 8b b8 1c        MOV        EDI,dword ptr [EAX + 0x21c]
                 02 00 00
        080907fc 57              PUSH       EDI
        080907fd e8 9e 67        CALL       ProjArrayAftImgDraw                              undefined ProjArrayAftImgDraw()
                 00 00
        08090802 83 c4 10        ADD        ESP,0x10
        08090805 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809080b                                    XREF[1]:     080907db(j)
        0809080b 4e              DEC        ESI
        0809080c 83 eb 04        SUB        EBX,0x4
        0809080f 89 d0           MOV        EAX,EDX
        08090811 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090817 7d a7           JGE        LAB_080907c0
                             LAB_08090819                                    XREF[1]:     080907b1(j)
        08090819 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08090820 75 1c           JNZ        LAB_0809083e
        08090822 51              PUSH       ECX
        08090823 51              PUSH       ECX
        08090824 68 00 00        PUSH       0x40000000
                 00 40
        08090829 8b 82 f4        MOV        EAX,dword ptr [EDX + 0x104f4]
                 04 01 00
        0809082f 50              PUSH       EAX
        08090830 e8 db 95        CALL       PRSprArrayScale                                  undefined PRSprArrayScale()
                 fb ff
        08090835 83 c4 10        ADD        ESP,0x10
        08090838 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809083e                                    XREF[1]:     08090820(j)
        0809083e 83 ec 0c        SUB        ESP,0xc
        08090841 8b ba f4        MOV        EDI,dword ptr [EDX + 0x104f4]
                 04 01 00
        08090847 57              PUSH       EDI
        08090848 e8 83 95        CALL       PRSprArrayDraw                                   undefined PRSprArrayDraw()
                 fb ff
        0809084d 5b              POP        EBX
        0809084e a1 74 7a        MOV        EAX,[g]
                 28 08
        08090853 5e              POP        ESI
        08090854 6a 01           PUSH       0x1
        08090856 8b 88 f8        MOV        ECX,dword ptr [EAX + 0x14af8]
                 4a 01 00
        0809085c 51              PUSH       ECX
        0809085d e8 6e d6        CALL       ExplodArrayDraw                                  undefined ExplodArrayDraw()
                 ff ff
        08090862 83 c4 10        ADD        ESP,0x10
                             LAB_08090865                                    XREF[1]:     08090683(j)
        08090865 85 ed           TEST       EBP,EBP
        08090867 74 0d           JZ         LAB_08090876
        08090869 83 ec 0c        SUB        ESP,0xc
        0809086c 6a 01           PUSH       0x1
        0809086e e8 9d 4a        CALL       GameBarsDraw                                     undefined GameBarsDraw()
                 00 00
        08090873 83 c4 10        ADD        ESP,0x10
                             LAB_08090876                                    XREF[1]:     08090867(j)
        08090876 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809087b 8b 90 1c        MOV        EDX,dword ptr [EAX + 0x1cc1c]
                 cc 01 00
        08090881 85 d2           TEST       EDX,EDX
        08090883 75 0e           JNZ        LAB_08090893
        08090885 80 b8 96        CMP        byte ptr [EAX + 0x1d396],0x0
                 d3 01 00 00
        0809088c 75 05           JNZ        LAB_08090893
        0809088e e8 5d 4a        CALL       GameFGDraw                                       undefined GameFGDraw()
                 00 00
                             LAB_08090893                                    XREF[2]:     08090883(j), 0809088c(j)
        08090893 e8 a8 2c        CALL       GameRoundDraw                                    undefined GameRoundDraw()
                 00 00
        08090898 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809089e 8b 82 1c        MOV        EAX,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        080908a4 85 c0           TEST       EAX,EAX
        080908a6 75 7e           JNZ        LAB_08090926
        080908a8 8b ba 18        MOV        EDI,dword ptr [EDX + 0x10518]
                 05 01 00
        080908ae 85 ff           TEST       EDI,EDI
        080908b0 7e 22           JLE        LAB_080908d4
        080908b2 8b b2 10        MOV        ESI,dword ptr [EDX + 0x10510]
                 05 01 00
        080908b8 85 f6           TEST       ESI,ESI
        080908ba 75 18           JNZ        LAB_080908d4
        080908bc 83 ec 0c        SUB        ESP,0xc
        080908bf 8b 9a 14        MOV        EBX,dword ptr [EDX + 0x10514]
                 05 01 00
        080908c5 53              PUSH       EBX
        080908c6 e8 c5 d2        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        080908cb 83 c4 10        ADD        ESP,0x10
        080908ce 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080908d4                                    XREF[2]:     080908b0(j), 080908ba(j)
        080908d4 83 ec 0c        SUB        ESP,0xc
        080908d7 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        080908de 75 07           JNZ        LAB_080908e7
        080908e0 b8 00 00        MOV        EAX,0x40000000
                 00 40
        080908e5 eb 05           JMP        LAB_080908ec
                             LAB_080908e7                                    XREF[1]:     080908de(j)
        080908e7 b8 00 00        MOV        EAX,0x3f800000
                 80 3f
                             LAB_080908ec                                    XREF[1]:     080908e5(j)
        080908ec 50              PUSH       EAX
        080908ed f7 5c 24 18     NEG        dword ptr [ESP + local_44c]
        080908f1 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_44c]
        080908f5 51              PUSH       ECX
        080908f6 f7 5c 24 20     NEG        dword ptr [ESP + local_448]
        080908fa 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_448]
        080908fe 50              PUSH       EAX
        080908ff 6a 01           PUSH       0x1
        08090901 8b ba f0        MOV        EDI,dword ptr [EDX + 0x104f0]
                 04 01 00
        08090907 57              PUSH       EDI
        08090908 e8 e3 99        CALL       AnimPerArrayDrawScaleGrp                         undefined AnimPerArrayDrawScaleG
                 fb ff
        0809090d 83 c4 18        ADD        ESP,0x18
        08090910 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090915 6a 02           PUSH       0x2
        08090917 8b b0 f8        MOV        ESI,dword ptr [EAX + 0x14af8]
                 4a 01 00
        0809091d 56              PUSH       ESI
        0809091e e8 ad d5        CALL       ExplodArrayDraw                                  undefined ExplodArrayDraw()
                 ff ff
        08090923 83 c4 10        ADD        ESP,0x10
                             LAB_08090926                                    XREF[1]:     080908a6(j)
        08090926 85 ed           TEST       EBP,EBP
        08090928 74 0d           JZ         LAB_08090937
        0809092a 83 ec 0c        SUB        ESP,0xc
        0809092d 6a 02           PUSH       0x2
        0809092f e8 dc 49        CALL       GameBarsDraw                                     undefined GameBarsDraw()
                 00 00
        08090934 83 c4 10        ADD        ESP,0x10
                             LAB_08090937                                    XREF[1]:     08090928(j)
        08090937 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809093d 89 d0           MOV        EAX,EDX
        0809093f 8b 9a 1c        MOV        EBX,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        08090945 85 db           TEST       EBX,EBX
        08090947 0f 85 64        JNZ        LAB_08090db1
                 04 00 00
        0809094d 8b 8a 40        MOV        ECX,dword ptr [EDX + 0x20740]
                 07 02 00
        08090953 85 c9           TEST       ECX,ECX
        08090955 0f 84 e8        JZ         LAB_08090a43
                 00 00 00
        0809095b 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08090961 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090967 7c 62           JL         LAB_080909cb
        08090969 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08090970 89 df           MOV        EDI,EBX
                             LAB_08090972                                    XREF[1]:     080909c9(j)
        08090972 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08090976 85 c0           TEST       EAX,EAX
        08090978 74 0f           JZ         LAB_08090989
        0809097a 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        08090980 b9 01 00        MOV        ECX,0x1
                 00 00
        08090985 85 ed           TEST       EBP,EBP
        08090987 75 02           JNZ        LAB_0809098b
                             LAB_08090989                                    XREF[1]:     08090978(j)
        08090989 31 c9           XOR        ECX,ECX
                             LAB_0809098b                                    XREF[1]:     08090987(j)
        0809098b 85 c9           TEST       ECX,ECX
        0809098d 74 2b           JZ         LAB_080909ba
        0809098f 51              PUSH       ECX
        08090990 51              PUSH       ECX
        08090991 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08090998 75 07           JNZ        LAB_080909a1
        0809099a b8 00 00        MOV        EAX,0x40000000
                 00 40
        0809099f eb 05           JMP        LAB_080909a6
                             LAB_080909a1                                    XREF[1]:     08090998(j)
        080909a1 b8 00 00        MOV        EAX,0x3f800000
                 80 3f
                             LAB_080909a6                                    XREF[1]:     0809099f(j)
        080909a6 50              PUSH       EAX
        080909a7 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        080909ab 50              PUSH       EAX
        080909ac e8 ff 6f        CALL       PlayerDrawClsn                                   undefined PlayerDrawClsn()
                 02 00
        080909b1 83 c4 10        ADD        ESP,0x10
        080909b4 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080909ba                                    XREF[1]:     0809098d(j)
        080909ba 4e              DEC        ESI
        080909bb 83 eb 04        SUB        EBX,0x4
        080909be 83 ef 04        SUB        EDI,0x4
        080909c1 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080909c7 89 d0           MOV        EAX,EDX
        080909c9 7d a7           JGE        LAB_08090972
                             LAB_080909cb                                    XREF[1]:     08090967(j)
        080909cb 8b b2 68        MOV        ESI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080909d1 89 d0           MOV        EAX,EDX
        080909d3 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080909d9 7c 68           JL         LAB_08090a43
        080909db 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080909e2 89 df           MOV        EDI,EBX
                             LAB_080909e4                                    XREF[1]:     08090a41(j)
        080909e4 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        080909e8 85 c0           TEST       EAX,EAX
        080909ea 74 0f           JZ         LAB_080909fb
        080909ec 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        080909f2 b9 01 00        MOV        ECX,0x1
                 00 00
        080909f7 85 ed           TEST       EBP,EBP
        080909f9 75 02           JNZ        LAB_080909fd
                             LAB_080909fb                                    XREF[1]:     080909ea(j)
        080909fb 31 c9           XOR        ECX,ECX
                             LAB_080909fd                                    XREF[1]:     080909f9(j)
        080909fd 85 c9           TEST       ECX,ECX
        080909ff 74 31           JZ         LAB_08090a32
        08090a01 51              PUSH       ECX
        08090a02 51              PUSH       ECX
        08090a03 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08090a0a 75 07           JNZ        LAB_08090a13
        08090a0c b8 00 00        MOV        EAX,0x40000000
                 00 40
        08090a11 eb 05           JMP        LAB_08090a18
                             LAB_08090a13                                    XREF[1]:     08090a0a(j)
        08090a13 b8 00 00        MOV        EAX,0x3f800000
                 80 3f
                             LAB_08090a18                                    XREF[1]:     08090a11(j)
        08090a18 50              PUSH       EAX
        08090a19 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        08090a1d 8b 80 1c        MOV        EAX,dword ptr [EAX + 0x21c]
                 02 00 00
        08090a23 50              PUSH       EAX
        08090a24 e8 77 94        CALL       ProjArrayClsnDraw                                undefined ProjArrayClsnDraw()
                 02 00
        08090a29 83 c4 10        ADD        ESP,0x10
        08090a2c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090a32                                    XREF[1]:     080909ff(j)
        08090a32 4e              DEC        ESI
        08090a33 83 eb 04        SUB        EBX,0x4
        08090a36 83 ef 04        SUB        EDI,0x4
        08090a39 3b b2 64        CMP        ESI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08090a3f 89 d0           MOV        EAX,EDX
        08090a41 7d a1           JGE        LAB_080909e4
                             LAB_08090a43                                    XREF[2]:     08090955(j), 080909d9(j)
        08090a43 8b aa f4        MOV        EBP,dword ptr [EDX + 0x14af4]
                 4a 01 00
        08090a49 85 ed           TEST       EBP,EBP
        08090a4b 74 1f           JZ         LAB_08090a6c
        08090a4d 83 ec 0c        SUB        ESP,0xc
        08090a50 6a 01           PUSH       0x1
        08090a52 e8 39 43        CALL       ComboDisplay                                     undefined ComboDisplay()
                 00 00
        08090a57 c7 04 24        MOV        dword ptr [ESP]=>local_464,0x2
                 02 00 00 00
        08090a5e e8 2d 43        CALL       ComboDisplay                                     undefined ComboDisplay()
                 00 00
        08090a63 83 c4 10        ADD        ESP,0x10
        08090a66 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090a6c                                    XREF[1]:     08090a4b(j)
        08090a6c 8b ba 30        MOV        EDI,dword ptr [EDX + 0x1cc30]
                 cc 01 00
        08090a72 85 ff           TEST       EDI,EDI
        08090a74 0f 84 01        JZ         LAB_08090d7b
                 03 00 00
        08090a7a 83 ec 0c        SUB        ESP,0xc
        08090a7d 8b 1d b4        MOV        EBX,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090a83 bd 10 00        MOV        EBP,0x10
                 00 00
        08090a88 6a 00           PUSH       0x0
        08090a8a 8b b2 34        MOV        ESI,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090a90 56              PUSH       ESI
        08090a91 be 0c 00        MOV        ESI,0xc
                 00 00
        08090a96 53              PUSH       EBX
        08090a97 bb 08 00        MOV        EBX,0x8
                 00 00
        08090a9c 6a 00           PUSH       0x0
        08090a9e 6a 00           PUSH       0x0
        08090aa0 e8 1b f0        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
        08090aa5 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090aab 89 ea           MOV        EDX,EBP
        08090aad d3 e2           SHL        EDX,CL
        08090aaf b8 20 00        MOV        EAX,0x20
                 00 00
        08090ab4 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090aba d3 e0           SHL        EAX,CL
        08090abc 09 c2           OR         EDX,EAX
        08090abe 89 e8           MOV        EAX,EBP
        08090ac0 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090ac6 83 c4 14        ADD        ESP,0x14
        08090ac9 d3 e0           SHL        EAX,CL
        08090acb 09 c2           OR         EDX,EAX
        08090acd 8b 0d b4        MOV        ECX,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090ad3 52              PUSH       EDX
        08090ad4 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090ada 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090ae0 83 c0 04        ADD        EAX,0x4
        08090ae3 50              PUSH       EAX
        08090ae4 51              PUSH       ECX
        08090ae5 8b 92 34        MOV        EDX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090aeb 52              PUSH       EDX
        08090aec 6a 00           PUSH       0x0
        08090aee e8 6d f4        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090af3 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090af9 89 f2           MOV        EDX,ESI
        08090afb d3 e2           SHL        EDX,CL
        08090afd b8 18 00        MOV        EAX,0x18
                 00 00
        08090b02 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090b08 d3 e0           SHL        EAX,CL
        08090b0a 09 c2           OR         EDX,EAX
        08090b0c 89 f0           MOV        EAX,ESI
        08090b0e 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090b14 83 c4 14        ADD        ESP,0x14
        08090b17 d3 e0           SHL        EAX,CL
        08090b19 09 c2           OR         EDX,EAX
        08090b1b 52              PUSH       EDX
        08090b1c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090b22 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090b28 83 c0 09        ADD        EAX,0x9
        08090b2b 50              PUSH       EAX
        08090b2c a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        08090b31 50              PUSH       EAX
        08090b32 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090b38 83 c0 05        ADD        EAX,0x5
        08090b3b 50              PUSH       EAX
        08090b3c 6a 00           PUSH       0x0
        08090b3e e8 1d f4        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090b43 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090b49 89 da           MOV        EDX,EBX
        08090b4b d3 e2           SHL        EDX,CL
        08090b4d 89 e8           MOV        EAX,EBP
        08090b4f 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090b55 d3 e0           SHL        EAX,CL
        08090b57 09 c2           OR         EDX,EAX
        08090b59 89 d8           MOV        EAX,EBX
        08090b5b 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090b61 83 c4 14        ADD        ESP,0x14
        08090b64 d3 e0           SHL        EAX,CL
        08090b66 09 c2           OR         EDX,EAX
        08090b68 8b 3d b4        MOV        EDI,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090b6e 52              PUSH       EDX
        08090b6f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090b75 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090b7b 83 c0 0e        ADD        EAX,0xe
        08090b7e 50              PUSH       EAX
        08090b7f 57              PUSH       EDI
        08090b80 bf 04 00        MOV        EDI,0x4
                 00 00
        08090b85 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090b8b 83 c0 0a        ADD        EAX,0xa
        08090b8e 50              PUSH       EAX
        08090b8f 6a 00           PUSH       0x0
        08090b91 e8 ca f3        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090b96 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090b9c 89 fa           MOV        EDX,EDI
        08090b9e d3 e2           SHL        EDX,CL
        08090ba0 89 d8           MOV        EAX,EBX
        08090ba2 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090ba8 d3 e0           SHL        EAX,CL
        08090baa 09 c2           OR         EDX,EAX
        08090bac 89 f8           MOV        EAX,EDI
        08090bae 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090bb4 83 c4 14        ADD        ESP,0x14
        08090bb7 d3 e0           SHL        EAX,CL
        08090bb9 09 c2           OR         EDX,EAX
        08090bbb 8b 0d b4        MOV        ECX,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090bc1 52              PUSH       EDX
        08090bc2 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090bc8 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090bce 83 c0 13        ADD        EAX,0x13
        08090bd1 50              PUSH       EAX
        08090bd2 51              PUSH       ECX
        08090bd3 8b 82 34        MOV        EAX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090bd9 83 c0 0f        ADD        EAX,0xf
        08090bdc 50              PUSH       EAX
        08090bdd 6a 00           PUSH       0x0
        08090bdf e8 7c f3        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090be4 83 c4 14        ADD        ESP,0x14
        08090be7 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090bed 6a 00           PUSH       0x0
        08090bef 8d 42 ff        LEA        EAX,[EDX + -0x1]
        08090bf2 50              PUSH       EAX
        08090bf3 a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        08090bf8 50              PUSH       EAX
        08090bf9 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090bfe 8b 88 34        MOV        ECX,dword ptr [EAX + 0x1cc34]
                 cc 01 00
        08090c04 29 ca           SUB        EDX,ECX
        08090c06 4a              DEC        EDX
        08090c07 52              PUSH       EDX
        08090c08 6a 00           PUSH       0x0
        08090c0a e8 b1 ee        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
        08090c0f 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090c15 89 ea           MOV        EDX,EBP
        08090c17 d3 e2           SHL        EDX,CL
        08090c19 b8 20 00        MOV        EAX,0x20
                 00 00
        08090c1e 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090c24 d3 e0           SHL        EAX,CL
        08090c26 09 c2           OR         EDX,EAX
        08090c28 89 e8           MOV        EAX,EBP
        08090c2a 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090c30 83 c4 14        ADD        ESP,0x14
        08090c33 d3 e0           SHL        EAX,CL
        08090c35 09 c2           OR         EDX,EAX
        08090c37 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08090c3d 52              PUSH       EDX
        08090c3e 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090c44 89 d0           MOV        EAX,EDX
        08090c46 2b 81 34        SUB        EAX,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090c4c 83 e8 05        SUB        EAX,0x5
        08090c4f 50              PUSH       EAX
        08090c50 a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        08090c55 50              PUSH       EAX
        08090c56 8b 81 34        MOV        EAX,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090c5c 29 c2           SUB        EDX,EAX
        08090c5e 4a              DEC        EDX
        08090c5f 52              PUSH       EDX
        08090c60 6a 00           PUSH       0x0
        08090c62 e8 f9 f2        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090c67 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090c6d 89 f0           MOV        EAX,ESI
        08090c6f d3 e0           SHL        EAX,CL
        08090c71 ba 18 00        MOV        EDX,0x18
                 00 00
        08090c76 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090c7c d3 e2           SHL        EDX,CL
        08090c7e 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090c84 83 c4 14        ADD        ESP,0x14
        08090c87 d3 e6           SHL        ESI,CL
        08090c89 09 d0           OR         EAX,EDX
        08090c8b 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090c91 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08090c97 09 f0           OR         EAX,ESI
        08090c99 50              PUSH       EAX
        08090c9a 89 d0           MOV        EAX,EDX
        08090c9c 8b b1 34        MOV        ESI,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090ca2 29 f0           SUB        EAX,ESI
        08090ca4 8b 35 b4        MOV        ESI,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090caa 83 e8 0a        SUB        EAX,0xa
        08090cad 50              PUSH       EAX
        08090cae 56              PUSH       ESI
        08090caf 8b 81 34        MOV        EAX,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090cb5 29 c2           SUB        EDX,EAX
        08090cb7 83 ea 06        SUB        EDX,0x6
        08090cba 52              PUSH       EDX
        08090cbb 6a 00           PUSH       0x0
        08090cbd e8 9e f2        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090cc2 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090cc8 89 da           MOV        EDX,EBX
        08090cca d3 e2           SHL        EDX,CL
        08090ccc 89 e8           MOV        EAX,EBP
        08090cce 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090cd4 d3 e0           SHL        EAX,CL
        08090cd6 09 c2           OR         EDX,EAX
        08090cd8 89 d8           MOV        EAX,EBX
        08090cda 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090ce0 83 c4 14        ADD        ESP,0x14
        08090ce3 d3 e0           SHL        EAX,CL
        08090ce5 09 c2           OR         EDX,EAX
        08090ce7 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08090ced 52              PUSH       EDX
        08090cee 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090cf4 8b a9 34        MOV        EBP,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090cfa 89 d0           MOV        EAX,EDX
        08090cfc 29 e8           SUB        EAX,EBP
        08090cfe 8b 35 b4        MOV        ESI,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090d04 83 e8 0f        SUB        EAX,0xf
        08090d07 50              PUSH       EAX
        08090d08 56              PUSH       ESI
        08090d09 8b 81 34        MOV        EAX,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090d0f 29 c2           SUB        EDX,EAX
        08090d11 83 ea 0b        SUB        EDX,0xb
        08090d14 52              PUSH       EDX
        08090d15 6a 00           PUSH       0x0
        08090d17 e8 44 f2        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090d1c 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090d22 89 f8           MOV        EAX,EDI
        08090d24 d3 e0           SHL        EAX,CL
        08090d26 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090d2c 83 c4 14        ADD        ESP,0x14
        08090d2f d3 e3           SHL        EBX,CL
        08090d31 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090d37 09 d8           OR         EAX,EBX
        08090d39 d3 e7           SHL        EDI,CL
        08090d3b 09 f8           OR         EAX,EDI
        08090d3d 8b 3d b4        MOV        EDI,dword ptr [V_Width]                          = ??
                 08 2c 08
        08090d43 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08090d49 50              PUSH       EAX
        08090d4a 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090d50 8b a9 34        MOV        EBP,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090d56 89 d0           MOV        EAX,EDX
        08090d58 29 e8           SUB        EAX,EBP
        08090d5a 83 e8 14        SUB        EAX,0x14
        08090d5d 50              PUSH       EAX
        08090d5e 57              PUSH       EDI
        08090d5f 8b b1 34        MOV        ESI,dword ptr [ECX + 0x1cc34]
                 cc 01 00
        08090d65 29 f2           SUB        EDX,ESI
        08090d67 83 ea 10        SUB        EDX,0x10
        08090d6a 52              PUSH       EDX
        08090d6b 6a 00           PUSH       0x0
        08090d6d e8 ee f1        CALL       W_BoxFillTransSub16                              undefined W_BoxFillTransSub16()
                 fe ff
        08090d72 83 c4 20        ADD        ESP,0x20
        08090d75 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090d7b                                    XREF[1]:     08090a74(j)
        08090d7b 8b 9a 34        MOV        EBX,dword ptr [EDX + 0x20734]
                 07 02 00
        08090d81 85 db           TEST       EBX,EBX
        08090d83 74 2c           JZ         LAB_08090db1
        08090d85 8b 8a a0        MOV        ECX,dword ptr [EDX + 0x1d3a0]
                 d3 01 00
        08090d8b 85 c9           TEST       ECX,ECX
        08090d8d 74 0a           JZ         LAB_08090d99
        08090d8f 8b 82 c0        MOV        EAX,dword ptr [EDX + 0x1d3c0]
                 d3 01 00
        08090d95 85 c0           TEST       EAX,EAX
        08090d97 74 18           JZ         LAB_08090db1
                             LAB_08090d99                                    XREF[1]:     08090d8d(j)
        08090d99 83 ec 0c        SUB        ESP,0xc
        08090d9c 8b aa 2c        MOV        EBP,dword ptr [EDX + 0x2072c]
                 07 02 00
        08090da2 55              PUSH       EBP
        08090da3 e8 08 67        CALL       ShowDebugInfo                                    undefined ShowDebugInfo()
                 00 00
        08090da8 83 c4 10        ADD        ESP,0x10
        08090dab 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090db1                                    XREF[3]:     08090947(j), 08090d83(j),
                                                                                          08090d97(j)
        08090db1 8b ba 30        MOV        EDI,dword ptr [EDX + 0x1cc30]
                 cc 01 00
        08090db7 85 ff           TEST       EDI,EDI
        08090db9 74 5b           JZ         LAB_08090e16
        08090dbb 8b b2 24        MOV        ESI,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        08090dc1 85 f6           TEST       ESI,ESI
        08090dc3 75 51           JNZ        LAB_08090e16
        08090dc5 8b 82 38        MOV        EAX,dword ptr [EDX + 0x1cc38]
                 cc 01 00
        08090dcb 8b 9a 34        MOV        EBX,dword ptr [EDX + 0x1cc34]
                 cc 01 00
        08090dd1 89 c1           MOV        ECX,EAX
        08090dd3 01 d9           ADD        ECX,EBX
        08090dd5 85 c0           TEST       EAX,EAX
        08090dd7 89 8a 34        MOV        dword ptr [EDX + 0x1cc34],ECX
                 cc 01 00
        08090ddd 79 04           JNS        LAB_08090de3
        08090ddf 85 c9           TEST       ECX,ECX
        08090de1 78 17           JS         LAB_08090dfa
                             LAB_08090de3                                    XREF[1]:     08090ddd(j)
        08090de3 85 c0           TEST       EAX,EAX
        08090de5 7e 29           JLE        LAB_08090e10
        08090de7 8b 15 84        MOV        EDX,dword ptr [V_Height]                         = ??
                 08 2c 08
        08090ded 89 d0           MOV        EAX,EDX
        08090def c1 e8 1f        SHR        EAX,0x1f
        08090df2 01 c2           ADD        EDX,EAX
        08090df4 d1 fa           SAR        EDX,0x1
        08090df6 39 d1           CMP        ECX,EDX
        08090df8 7e 16           JLE        LAB_08090e10
                             LAB_08090dfa                                    XREF[1]:     08090de1(j)
        08090dfa a1 74 7a        MOV        EAX,[g]
                 28 08
        08090dff 89 c2           MOV        EDX,EAX
        08090e01 c7 80 30        MOV        dword ptr [EAX + 0x1cc30],0x0
                 cc 01 00
                 00 00 00 00
        08090e0b eb 09           JMP        LAB_08090e16
        08090e0d 8d              ??         8Dh
        08090e0e 76              ??         76h    v
        08090e0f 00              ??         00h
                             LAB_08090e10                                    XREF[2]:     08090de5(j), 08090df8(j)
        08090e10 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090e16                                    XREF[3]:     08090db9(j), 08090dc3(j),
                                                                                          08090e0b(j)
        08090e16 8b aa 24        MOV        EBP,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        08090e1c 85 ed           TEST       EBP,EBP
        08090e1e 75 29           JNZ        LAB_08090e49
        08090e20 8b ba 34        MOV        EDI,dword ptr [EDX + 0x1d434]
                 d4 01 00
        08090e26 85 ff           TEST       EDI,EDI
        08090e28 75 1f           JNZ        LAB_08090e49
        08090e2a 83 ec 0c        SUB        ESP,0xc
        08090e2d 6a 01           PUSH       0x1
        08090e2f e8 1c 42        CALL       ComboDisplayUpdate                               undefined ComboDisplayUpdate()
                 00 00
        08090e34 c7 04 24        MOV        dword ptr [ESP]=>local_464,0x2
                 02 00 00 00
        08090e3b e8 10 42        CALL       ComboDisplayUpdate                               undefined ComboDisplayUpdate()
                 00 00
        08090e40 83 c4 10        ADD        ESP,0x10
        08090e43 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090e49                                    XREF[2]:     08090e1e(j), 08090e28(j)
        08090e49 8b b2 24        MOV        ESI,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        08090e4f 85 f6           TEST       ESI,ESI
        08090e51 0f 84 0b        JZ         LAB_08090f62
                 01 00 00
        08090e57 8b 9a 88        MOV        EBX,dword ptr [EDX + 0x1d388]
                 d3 01 00
        08090e5d 85 db           TEST       EBX,EBX
        08090e5f 0f 85 fd        JNZ        LAB_08090f62
                 00 00 00
        08090e65 8b 8a e8        MOV        ECX,dword ptr [EDX + 0x1f6e8]
                 f6 01 00
        08090e6b 85 c9           TEST       ECX,ECX
        08090e6d 0f 85 e4        JNZ        LAB_08090f57
                 00 00 00
        08090e73 52              PUSH       EDX
        08090e74 52              PUSH       EDX
        08090e75 68 9f 86        PUSH       s_PAUSED_0827869f                                = "PAUSED"
                 27 08
        08090e7a 8d 5c 24 1c     LEA        EBX=>local_444,[ESP + 0x1c]
        08090e7e 53              PUSH       EBX
        08090e7f e8 9c 3f        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        08090e84 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090e8a ba 0a 00        MOV        EDX,0xa
                 00 00
        08090e8f d3 e2           SHL        EDX,CL
        08090e91 b8 14 00        MOV        EAX,0x14
                 00 00
        08090e96 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090e9c d3 e0           SHL        EAX,CL
        08090e9e 09 c2           OR         EDX,EAX
        08090ea0 b8 10 00        MOV        EAX,0x10
                 00 00
        08090ea5 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090eab d3 e0           SHL        EAX,CL
        08090ead 09 c2           OR         EDX,EAX
        08090eaf 89 14 24        MOV        dword ptr [ESP]=>local_464,EDX
        08090eb2 6a 1b           PUSH       0x1b
        08090eb4 68 b9 00        PUSH       0xb9
                 00 00
        08090eb9 6a 08           PUSH       0x8
        08090ebb 68 85 00        PUSH       0x85
                 00 00
        08090ec0 e8 1b e9        CALL       W_Box                                            undefined W_Box()
                 fe ff
        08090ec5 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        08090ecb ba 18 00        MOV        EDX,0x18
                 00 00
        08090ed0 d3 e2           SHL        EDX,CL
        08090ed2 b8 30 00        MOV        EAX,0x30
                 00 00
        08090ed7 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08090edd d3 e0           SHL        EAX,CL
        08090edf 09 c2           OR         EDX,EAX
        08090ee1 b8 1e 00        MOV        EAX,0x1e
                 00 00
        08090ee6 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090eec 83 c4 14        ADD        ESP,0x14
        08090eef d3 e0           SHL        EAX,CL
        08090ef1 09 c2           OR         EDX,EAX
        08090ef3 52              PUSH       EDX
        08090ef4 6a 1a           PUSH       0x1a
        08090ef6 68 b8 00        PUSH       0xb8
                 00 00
        08090efb 6a 09           PUSH       0x9
        08090efd 68 86 00        PUSH       0x86
                 00 00
        08090f02 e8 d9 e8        CALL       W_Box                                            undefined W_Box()
                 fe ff
        08090f07 83 c4 14        ADD        ESP,0x14
        08090f0a 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        08090f10 b8 03 00        MOV        EAX,0x3
                 00 00
        08090f15 d3 e0           SHL        EAX,CL
        08090f17 50              PUSH       EAX
        08090f18 6a 19           PUSH       0x19
        08090f1a 68 b7 00        PUSH       0xb7
                 00 00
        08090f1f 6a 0a           PUSH       0xa
        08090f21 68 87 00        PUSH       0x87
                 00 00
        08090f26 e8 85 ee        CALL       W_BoxFillTransAdd16_B50                          undefined W_BoxFillTransAdd16_B5
                 fe ff
        08090f2b 83 c4 14        ADD        ESP,0x14
        08090f2e 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_450]
        08090f32 50              PUSH       EAX
        08090f33 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090f38 6a 14           PUSH       0x14
        08090f3a 68 8e 00        PUSH       0x8e
                 00 00
        08090f3f 8b a8 ec        MOV        EBP,dword ptr [EAX + 0x104ec]
                 04 01 00
        08090f45 55              PUSH       EBP
        08090f46 53              PUSH       EBX
        08090f47 e8 84 10        CALL       V_FontDraw                                       undefined V_FontDraw()
                 fc ff
        08090f4c 83 c4 20        ADD        ESP,0x20
        08090f4f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08090f55 eb 0b           JMP        LAB_08090f62
                             LAB_08090f57                                    XREF[1]:     08090e6d(j)
        08090f57 e8 54 45        CALL       TrainingMenuDraw                                 undefined TrainingMenuDraw()
                 01 00
        08090f5c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090f62                                    XREF[3]:     08090e51(j), 08090e5f(j),
                                                                                          08090f55(j)
        08090f62 8b ba dc        MOV        EDI,dword ptr [EDX + 0x104dc]
                 04 01 00
        08090f68 85 ff           TEST       EDI,EDI
        08090f6a 74 60           JZ         LAB_08090fcc
        08090f6c 56              PUSH       ESI
        08090f6d 56              PUSH       ESI
        08090f6e 6a 00           PUSH       0x0
        08090f70 8b 9a dc        MOV        EBX,dword ptr [EDX + 0x104dc]
                 04 01 00
        08090f76 53              PUSH       EBX
        08090f77 e8 24 c0        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        08090f7c a0 61 0b        MOV        AL,[keypauseflag]                                = ??
                 2c 08
        08090f81 83 c4 10        ADD        ESP,0x10
        08090f84 84 c0           TEST       AL,AL
        08090f86 75 26           JNZ        LAB_08090fae
        08090f88 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090f8d 51              PUSH       ECX
        08090f8e 51              PUSH       ECX
        08090f8f 68 80 00        PUSH       0x80
                 00 00
        08090f94 68 80 00        PUSH       0x80
                 00 00
        08090f99 6a 00           PUSH       0x0
        08090f9b 6a 00           PUSH       0x0
        08090f9d 6a 00           PUSH       0x0
        08090f9f 8b 90 d8        MOV        EDX,dword ptr [EAX + 0x104d8]
                 04 01 00
        08090fa5 52              PUSH       EDX
        08090fa6 e8 e5 8e        CALL       W_PutSpriteTransAdd_B                            undefined W_PutSpriteTransAdd_B()
                 fc ff
        08090fab 83 c4 20        ADD        ESP,0x20
                             LAB_08090fae                                    XREF[1]:     08090f86(j)
        08090fae 50              PUSH       EAX
        08090faf 50              PUSH       EAX
        08090fb0 a1 74 7a        MOV        EAX,[g]
                 28 08
        08090fb5 6a 00           PUSH       0x0
        08090fb7 8b a8 d8        MOV        EBP,dword ptr [EAX + 0x104d8]
                 04 01 00
        08090fbd 55              PUSH       EBP
        08090fbe e8 dd bf        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        08090fc3 83 c4 10        ADD        ESP,0x10
        08090fc6 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090fcc                                    XREF[1]:     08090f6a(j)
        08090fcc 8b ba 48        MOV        EDI,dword ptr [EDX + 0x20b48]
                 0b 02 00
        08090fd2 85 ff           TEST       EDI,EDI
        08090fd4 75 0b           JNZ        LAB_08090fe1
        08090fd6 e8 85 a1        CALL       TimerWaitSync                                    undefined TimerWaitSync()
                 fe ff
        08090fdb 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08090fe1                                    XREF[1]:     08090fd4(j)
        08090fe1 8b b2 1c        MOV        ESI,dword ptr [EDX + 0x1cc1c]
                 cc 01 00
        08090fe7 85 f6           TEST       ESI,ESI
        08090fe9 75 0f           JNZ        LAB_08090ffa
        08090feb 8b 9a 0c        MOV        EBX,dword ptr [EDX + 0x1050c]
                 05 01 00
        08090ff1 85 db           TEST       EBX,EBX
        08090ff3 74 05           JZ         LAB_08090ffa
        08090ff5 e8 c6 1e        CALL       VRetrace                                         undefined VRetrace()
                 fc ff
                             LAB_08090ffa                                    XREF[2]:     08090fe9(j), 08090ff3(j)
        08090ffa e8 21 ca        CALL       DrawToScreen                                     undefined DrawToScreen()
                 ff ff
        08090fff a1 74 7a        MOV        EAX,[g]
                 28 08
        08091004 8b 88 1c        MOV        ECX,dword ptr [EAX + 0x1cc1c]
                 cc 01 00
        0809100a 85 c9           TEST       ECX,ECX
        0809100c 75 05           JNZ        LAB_08091013
        0809100e e8 bd 49        CALL       MasterPalFinishedDraw                            undefined MasterPalFinishedDraw()
                 fc ff
                             LAB_08091013                                    XREF[1]:     0809100c(j)
        08091013 e8 48 c9        CALL       FrameSkipUpdate                                  undefined FrameSkipUpdate()
                 ff ff
        08091018 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809101d 8b 90 24        MOV        EDX,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        08091023 c7 80 20        MOV        dword ptr [EAX + 0x1cc20],0x0
                 cc 01 00
                 00 00 00 00
        0809102d 85 d2           TEST       EDX,EDX
        0809102f 75 0d           JNZ        LAB_0809103e
        08091031 8b a8 10        MOV        EBP,dword ptr [EAX + 0x1cc10]
                 cc 01 00
        08091037 45              INC        EBP
        08091038 89 a8 10        MOV        dword ptr [EAX + 0x1cc10],EBP
                 cc 01 00
                             LAB_0809103e                                    XREF[2]:     0809034a(j), 0809102f(j)
        0809103e e8 ed cb        CALL       GameModeInPassiveFightScreen                     undefined GameModeInPassiveFight
                 00 00
        08091043 85 c0           TEST       EAX,EAX
        08091045 75 19           JNZ        LAB_08091060
        08091047 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809104d 8b ba 18        MOV        EDI,dword ptr [EDX + 0x1d518]
                 d5 01 00
        08091053 85 ff           TEST       EDI,EDI
        08091055 75 4b           JNZ        LAB_080910a2
        08091057 eb 0d           JMP        LAB_08091066
        08091059 8d              ??         8Dh
        0809105a b4              ??         B4h
        0809105b 26              ??         26h    &
        0809105c 00              ??         00h
        0809105d 00              ??         00h
        0809105e 00              ??         00h
        0809105f 00              ??         00h
                             LAB_08091060                                    XREF[1]:     08091045(j)
        08091060 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08091066                                    XREF[1]:     08091057(j)
        08091066 8b b2 d4        MOV        ESI,dword ptr [EDX + 0x104d4]
                 04 01 00
        0809106c 85 f6           TEST       ESI,ESI
        0809106e 75 32           JNZ        LAB_080910a2
        08091070 8b 9a 4c        MOV        EBX,dword ptr [EDX + 0x20b4c]
                 0b 02 00
        08091076 85 db           TEST       EBX,EBX
        08091078 0f 84 43        JZ         LAB_0808fec1
                 ee ff ff
        0809107e c7 82 14        MOV        dword ptr [EDX + 0x1cc14],0x7d0
                 cc 01 00
                 d0 07 00 00
        08091088 c7 82 48        MOV        dword ptr [EDX + 0x20b48],0x1
                 0b 02 00
                 01 00 00 00
        08091092 81 ba 10        CMP        dword ptr [EDX + 0x1cc10],0x270f
                 cc 01 00
                 0f 27 00 00
        0809109c 0f 8e 3e        JLE        LAB_0808fee0
                 ee ff ff
                             LAB_080910a2                                    XREF[3]:     0808febc(j), 08091055(j),
                                                                                          0809106e(j)
        080910a2 e8 89 49        CALL       PrecacheIsRunning                                undefined PrecacheIsRunning()
                 04 00
        080910a7 85 c0           TEST       EAX,EAX
        080910a9 74 2a           JZ         LAB_080910d5
        080910ab 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080910b1 8b 8a d4        MOV        ECX,dword ptr [EDX + 0x104d4]
                 04 01 00
        080910b7 85 c9           TEST       ECX,ECX
        080910b9 75 0a           JNZ        LAB_080910c5
        080910bb 8b 82 cc        MOV        EAX,dword ptr [EDX + 0xcecc]
                 ce 00 00
        080910c1 85 c0           TEST       EAX,EAX
        080910c3 75 16           JNZ        LAB_080910db
                             LAB_080910c5                                    XREF[1]:     080910b9(j)
        080910c5 e8 26 49        CALL       PrecacheRequestCancel                            undefined PrecacheRequestCancel()
                 04 00
        080910ca e8 01 4a        CALL       PrecacheFinish                                   undefined PrecacheFinish()
                 04 00
        080910cf eb 04           JMP        LAB_080910d5
                             LAB_080910d1                                    XREF[1]:     0808ff2b(j)
        080910d1 31 c0           XOR        EAX,EAX
        080910d3 eb 1f           JMP        LAB_080910f4
                             LAB_080910d5                                    XREF[2]:     080910a9(j), 080910cf(j)
        080910d5 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080910db                                    XREF[1]:     080910c3(j)
        080910db c7 82 dc        MOV        dword ptr [EDX + 0xcedc],0x0
                 ce 00 00
                 00 00 00 00
        080910e5 e8 56 c8        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 ff ff
        080910ea e8 11 49        CALL       MasterPalReset                                   undefined MasterPalReset()
                 fc ff
        080910ef b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_080910f4                                    XREF[1]:     080910d3(j)
        080910f4 81 c4 3c        ADD        ESP,0x43c
                 04 00 00
        080910fa 5b              POP        EBX
        080910fb 5e              POP        ESI
        080910fc 5f              POP        EDI
        080910fd 5d              POP        EBP
        080910fe c3              RET
