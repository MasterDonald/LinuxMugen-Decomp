                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GamePlay()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x101   local_101c                              XREF[1]:     0809d4b2(*)
             undefined         Stack[-0x201   local_201c                              XREF[3]:     0809d12f(*),
                                                                                                   0809d500(*),
                                                                                                   0809d5be(*)
             undefined         Stack[-0x301   local_301c                              XREF[3]:     0809d140(*),
                                                                                                   0809d529(*),
                                                                                                   0809d5d2(*)
             undefined         Stack[-0x401   local_401c                              XREF[3]:     0809d153(*),
                                                                                                   0809d40c(*),
                                                                                                   0809d5e6(*)
             undefined4        Stack[-0x402   local_4020                              XREF[4]:     0809d22e(W),
                                                                                                   0809d24e(R),
                                                                                                   0809d281(R),
                                                                                                   0809d28f(W)
             undefined4        Stack[-0x402   local_4024                              XREF[3]:     0809d236(W),
                                                                                                   0809d26a(R),
                                                                                                   0809d285(W)
             undefined4        Stack[-0x403   local_4038                              XREF[1]:     0809d2cf(W)
             undefined4        Stack[-0x403   local_403c                              XREF[6]:     0809d1ec(*),
                                                                                                   0809d2d9(*),
                                                                                                   0809d2fa(*),
                                                                                                   0809d37c(*),
                                                                                                   0809d3e9(*),
                                                                                                   0809d4bf(*)
                             GamePlay                                        XREF[1]:     MainLoop:0809cd20(c)
        0809d120 55              PUSH       EBP
        0809d121 57              PUSH       EDI
        0809d122 56              PUSH       ESI
        0809d123 53              PUSH       EBX
        0809d124 bb ff 0f        MOV        EBX,0xfff
                 00 00
        0809d129 81 ec 1c        SUB        ESP,0x401c
                 40 00 00
        0809d12f 8d 84 24        LEA        EAX=>local_201c,[ESP + 0x2010]
                 10 20 00 00
        0809d136 55              PUSH       EBP
        0809d137 53              PUSH       EBX
        0809d138 6a 00           PUSH       0x0
        0809d13a 50              PUSH       EAX
        0809d13b e8 60 3d        CALL       memset                                           void * memset(void * __s, int __
                 14 00
        0809d140 8d 84 24        LEA        EAX=>local_301c,[ESP + 0x1020]
                 20 10 00 00
        0809d147 83 c4 0c        ADD        ESP,0xc
        0809d14a 53              PUSH       EBX
        0809d14b 6a 00           PUSH       0x0
        0809d14d 50              PUSH       EAX
        0809d14e e8 4d 3d        CALL       memset                                           void * memset(void * __s, int __
                 14 00
        0809d153 8d 44 24 20     LEA        EAX=>local_401c,[ESP + 0x20]
        0809d157 83 c4 0c        ADD        ESP,0xc
        0809d15a 53              PUSH       EBX
        0809d15b 6a 00           PUSH       0x0
        0809d15d 50              PUSH       EAX
        0809d15e e8 3d 3d        CALL       memset                                           void * memset(void * __s, int __
                 14 00
        0809d163 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d168 83 c4 10        ADD        ESP,0x10
        0809d16b 8b b8 f0        MOV        EDI,dword ptr [EAX + 0x1d5f0]
                 d5 01 00
        0809d171 c7 80 f4        MOV        dword ptr [EAX + 0x14af4],0x1
                 4a 01 00
                 01 00 00 00
        0809d17b 85 ff           TEST       EDI,EDI
        0809d17d 74 05           JZ         LAB_0809d184
        0809d17f e8 4c 6c        CALL       GameUnloadSystemSprSnd                           undefined GameUnloadSystemSprSnd()
                 03 00
                             LAB_0809d184                                    XREF[1]:     0809d17d(j)
        0809d184 e8 b7 28        CALL       LogPreMatch                                      undefined LogPreMatch()
                 00 00
        0809d189 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d18e 8b 15 08        MOV        EDX,dword ptr [Ticks]                            = ??
                 0c 2c 08
        0809d194 89 90 24        MOV        dword ptr [EAX + 0x20724],EDX
                 07 02 00
        0809d19a e8 b1 0a        CALL       GameLoadStage                                    undefined GameLoadStage()
                 00 00
        0809d19f 85 c0           TEST       EAX,EAX
        0809d1a1 0f 84 66        JZ         LAB_0809d30d
                 01 00 00
        0809d1a7 e8 24 17        CALL       GameStgInitFightData                             undefined GameStgInitFightData()
                 00 00
        0809d1ac 85 c0           TEST       EAX,EAX
        0809d1ae 0f 84 59        JZ         LAB_0809d30d
                 01 00 00
        0809d1b4 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d1b9 8b 15 08        MOV        EDX,dword ptr [Ticks]                            = ??
                 0c 2c 08
        0809d1bf 8b b0 24        MOV        ESI,dword ptr [EAX + 0x20724]
                 07 02 00
        0809d1c5 29 f2           SUB        EDX,ESI
        0809d1c7 89 90 24        MOV        dword ptr [EAX + 0x20724],EDX
                 07 02 00
        0809d1cd 53              PUSH       EBX
        0809d1ce 53              PUSH       EBX
        0809d1cf 8b 88 dc        MOV        ECX,dword ptr [EAX + 0x1bbdc]
                 bb 01 00
        0809d1d5 51              PUSH       ECX
        0809d1d6 8b 90 d4        MOV        EDX,dword ptr [EAX + 0x1bbd4]
                 bb 01 00
        0809d1dc 52              PUSH       EDX
        0809d1dd e8 be d0        CALL       GameSetVol                                       undefined GameSetVol()
                 01 00
        0809d1e2 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d1e7 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809d1ec 89 04 24        MOV        dword ptr [ESP]=>local_403c,EAX
        0809d1ef e8 bc 80        CALL       BGMStart                                         undefined BGMStart()
                 fe ff
                             LAB_0809d1f4                                    XREF[1]:     0809d3f1(j)
        0809d1f4 83 c4 10        ADD        ESP,0x10
        0809d1f7 bb 01 00        MOV        EBX,0x1
                 00 00
        0809d1fc e8 9f 76        CALL       KBBufferClear                                    undefined KBBufferClear()
                 fb ff
        0809d201 e8 da 7d        CALL       PadPoll                                          undefined PadPoll()
                 fb ff
        0809d206 e8 65 81        CALL       PadBufClear                                      undefined PadBufClear()
                 fb ff
        0809d20b e8 b0 6e        CALL       UInpRefreshFlags                                 undefined UInpRefreshFlags()
                 fb ff
        0809d210 e8 2b 71        CALL       UInpBufClear                                     undefined UInpBufClear()
                 fb ff
        0809d215 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d21a 05 e0 ce        ADD        EAX,0xcee0
                 00 00
        0809d21f 90              NOP
                             LAB_0809d220                                    XREF[1]:     0809d22c(j)
        0809d220 c7 00 00        MOV        dword ptr [EAX],0x0
                 00 00 00
        0809d226 05 9c 1a        ADD        EAX,0x1a9c
                 00 00
        0809d22b 4b              DEC        EBX
        0809d22c 79 f2           JNS        LAB_0809d220
        0809d22e c7 44 24        MOV        dword ptr [ESP + local_4020],0xcee0
                 0c e0 ce
                 00 00
        0809d236 c7 44 24        MOV        dword ptr [ESP + local_4024],0x0
                 08 00 00
                 00 00
        0809d23e bd 10 04        MOV        EBP,0x10410
                 01 00
        0809d243 bb 01 00        MOV        EBX,0x1
                 00 00
                             LAB_0809d248                                    XREF[1]:     0809d293(j)
        0809d248 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        0809d24e 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_4020]
        0809d252 fc              CLD
        0809d253 8b 14 30        MOV        EDX,dword ptr [EAX + ESI*0x1]
        0809d256 8d 7c 35 08     LEA        EDI,[EBP + ESI*0x1 + 0x8]
        0809d25a b9 17 00        MOV        ECX,0x17
                 00 00
        0809d25f 83 c5 5c        ADD        EBP,0x5c
        0809d262 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809d265 c1 e0 03        SHL        EAX,0x3
        0809d268 29 d0           SUB        EAX,EDX
        0809d26a 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_4024]
        0809d26e 8d 84 82        LEA        EAX,[EDX + EAX*0x4 + 0xcee0]
                 e0 ce 00 00
        0809d275 81 c2 9c        ADD        EDX,0x1a9c
                 1a 00 00
        0809d27b 8d 74 30 0c     LEA        ESI,[EAX + ESI*0x1 + 0xc]
        0809d27f f3 a5           MOVSD.REP  ES:EDI,ESI
        0809d281 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_4020]
        0809d285 89 54 24 08     MOV        dword ptr [ESP + local_4024],EDX
        0809d289 05 9c 1a        ADD        EAX,0x1a9c
                 00 00
        0809d28e 4b              DEC        EBX
        0809d28f 89 44 24 0c     MOV        dword ptr [ESP + local_4020],EAX
        0809d293 79 b3           JNS        LAB_0809d248
        0809d295 e8 56 1b        CALL       GameMatchReset                                   undefined GameMatchReset()
                 00 00
        0809d29a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809d2a0 8b 82 84        MOV        EAX,dword ptr [EDX + 0x1e684]
                 e6 01 00
        0809d2a6 8b aa bc        MOV        EBP,dword ptr [EDX + 0x1d5bc]
                 d5 01 00
        0809d2ac 8d 0c 80        LEA        ECX,[EAX + EAX*0x4]
        0809d2af 01 e9           ADD        ECX,EBP
        0809d2b1 83 f9 09        CMP        ECX,0x9
        0809d2b4 7f 05           JG         LAB_0809d2bb
        0809d2b6 b9 0a 00        MOV        ECX,0xa
                 00 00
                             LAB_0809d2bb                                    XREF[1]:     0809d2b4(j)
        0809d2bb 83 ec 0c        SUB        ESP,0xc
        0809d2be 51              PUSH       ECX
        0809d2bf e8 4c de        CALL       TimerSetSyncFPS                                  undefined TimerSetSyncFPS()
                 fd ff
        0809d2c4 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d2c9 db 80 04        FILD       dword ptr [EAX + 0x4204]
                 42 00 00
        0809d2cf d9 5c 24 04     FSTP       float ptr [ESP + local_4038]
        0809d2d3 db 80 00        FILD       dword ptr [EAX + 0x4200]
                 42 00 00
        0809d2d9 d9 1c 24        FSTP       float ptr [ESP]=>local_403c
        0809d2dc e8 6f 70        CALL       CameraMoveAbs                                    undefined CameraMoveAbs()
                 ff ff
        0809d2e1 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d2e6 c7 80 80        MOV        dword ptr [EAX + 0x1d380],0x1
                 d3 01 00
                 01 00 00 00
        0809d2f0 c7 80 7c        MOV        dword ptr [EAX + 0x1d37c],0x1
                 d3 01 00
                 01 00 00 00
        0809d2fa c7 04 24        MOV        dword ptr [ESP]=>local_403c,0x4
                 04 00 00 00
        0809d301 e8 ba 2a        CALL       GameLoop                                         undefined GameLoop()
                 ff ff
        0809d306 83 c4 10        ADD        ESP,0x10
        0809d309 85 c0           TEST       EAX,EAX
        0809d30b 75 07           JNZ        LAB_0809d314
                             LAB_0809d30d                                    XREF[2]:     0809d1a1(j), 0809d1ae(j)
        0809d30d 31 c0           XOR        EAX,EAX
        0809d30f e9 03 03        JMP        LAB_0809d617
                 00 00
                             LAB_0809d314                                    XREF[1]:     0809d30b(j)
        0809d314 e8 c7 b6        CALL       PalGrpResetPalette                               undefined PalGrpResetPalette()
                 01 00
        0809d319 83 ec 0c        SUB        ESP,0xc
        0809d31c 6a ff           PUSH       -0x1
        0809d31e e8 1d a3        CALL       SndIDStop                                        undefined SndIDStop()
                 fb ff
        0809d323 e8 18 29        CALL       LogMatch                                         undefined LogMatch()
                 00 00
        0809d328 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809d32e 83 c4 10        ADD        ESP,0x10
        0809d331 8b bb 18        MOV        EDI,dword ptr [EBX + 0x1d518]
                 d5 01 00
        0809d337 85 ff           TEST       EDI,EDI
        0809d339 0f 84 1b        JZ         LAB_0809d55a
                 02 00 00
        0809d33f 8b b3 d4        MOV        ESI,dword ptr [EBX + 0x104d4]
                 04 01 00
        0809d345 85 f6           TEST       ESI,ESI
        0809d347 0f 85 0d        JNZ        LAB_0809d55a
                 02 00 00
        0809d34d 8b 83 cc        MOV        EAX,dword ptr [EBX + 0xcecc]
                 ce 00 00
        0809d353 85 c0           TEST       EAX,EAX
        0809d355 0f 84 ff        JZ         LAB_0809d55a
                 01 00 00
        0809d35b 39 83 14        CMP        dword ptr [EBX + 0x1d514],EAX
                 d5 01 00
        0809d361 0f 84 c9        JZ         LAB_0809d430
                 00 00 00
        0809d367 53              PUSH       EBX
        0809d368 53              PUSH       EBX
        0809d369 6a 00           PUSH       0x0
        0809d36b 6a 00           PUSH       0x0
        0809d36d e8 2e cf        CALL       GameSetVol                                       undefined GameSetVol()
                 01 00
        0809d372 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d377 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809d37c 89 04 24        MOV        dword ptr [ESP]=>local_403c,EAX
        0809d37f e8 3c 80        CALL       BGMPause                                         undefined BGMPause()
                 fe ff
        0809d384 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d389 83 c4 10        ADD        ESP,0x10
        0809d38c 8b 88 4c        MOV        ECX,dword ptr [EAX + 0xae4c]
                 ae 00 00
        0809d392 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
        0809d39c 85 c9           TEST       ECX,ECX
        0809d39e 74 56           JZ         LAB_0809d3f6
        0809d3a0 e8 5b 08        CALL       ContinueScreen                                   undefined ContinueScreen()
                 00 00
        0809d3a5 85 c0           TEST       EAX,EAX
        0809d3a7 0f 84 a7        JZ         LAB_0809d554
                 01 00 00
        0809d3ad a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d3b2 8b 90 d0        MOV        EDX,dword ptr [EAX + 0x104d0]
                 04 01 00
        0809d3b8 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x0
                 04 01 00
                 00 00 00 00
        0809d3c2 85 d2           TEST       EDX,EDX
        0809d3c4 0f 85 86        JNZ        LAB_0809d550
                 01 00 00
        0809d3ca 55              PUSH       EBP
        0809d3cb 55              PUSH       EBP
        0809d3cc 8b b8 dc        MOV        EDI,dword ptr [EAX + 0x1bbdc]
                 bb 01 00
        0809d3d2 57              PUSH       EDI
        0809d3d3 8b b0 d4        MOV        ESI,dword ptr [EAX + 0x1bbd4]
                 bb 01 00
        0809d3d9 56              PUSH       ESI
        0809d3da e8 c1 ce        CALL       GameSetVol                                       undefined GameSetVol()
                 01 00
        0809d3df a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d3e4 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809d3e9 89 04 24        MOV        dword ptr [ESP]=>local_403c,EAX
        0809d3ec e8 ef 80        CALL       BGMResume                                        undefined BGMResume()
                 fe ff
        0809d3f1 e9 fe fd        JMP        LAB_0809d1f4
                 ff ff
                             LAB_0809d3f6                                    XREF[1]:     0809d39e(j)
        0809d3f6 8b 98 50        MOV        EBX,dword ptr [EAX + 0xbe50]
                 be 00 00
        0809d3fc 85 db           TEST       EBX,EBX
        0809d3fe 0f 84 4c        JZ         LAB_0809d550
                 01 00 00
        0809d404 05 54 be        ADD        EAX,0xbe54
                 00 00
        0809d409 51              PUSH       ECX
        0809d40a 51              PUSH       ECX
        0809d40b 50              PUSH       EAX
        0809d40c 8d 44 24 1c     LEA        EAX=>local_401c,[ESP + 0x1c]
        0809d410 50              PUSH       EAX
        0809d411 e8 ba 31        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809d416 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d41b 83 c4 10        ADD        ESP,0x10
        0809d41e 89 c3           MOV        EBX,EAX
        0809d420 c7 80 44        MOV        dword ptr [EAX + 0x8d44],0x0
                 8d 00 00
                 00 00 00 00
        0809d42a e9 2b 01        JMP        LAB_0809d55a
                 00 00
        0809d42f 90              ??         90h
                             LAB_0809d430                                    XREF[1]:     0809d361(j)
        0809d430 e8 cb ec        CALL       ArcadeListEnemiesLeft                            undefined ArcadeListEnemiesLeft()
                 fe ff
        0809d435 89 c3           MOV        EBX,EAX
        0809d437 e8 34 eb        CALL       ArcadeListGetCurSize                             undefined ArcadeListGetCurSize()
                 fe ff
        0809d43c 39 c3           CMP        EBX,EAX
        0809d43e 0f 8f 10        JG         LAB_0809d554
                 01 00 00
        0809d444 83 ec 0c        SUB        ESP,0xc
        0809d447 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d44c 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809d451 50              PUSH       EAX
        0809d452 e8 e9 86        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
        0809d457 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809d45d 83 c4 10        ADD        ESP,0x10
        0809d460 8b 93 cc        MOV        EDX,dword ptr [EBX + 0xcecc]
                 ce 00 00
        0809d466 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809d469 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809d46c 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809d46f 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809d472 c1 e0 03        SHL        EAX,0x3
        0809d475 29 d0           SUB        EAX,EDX
        0809d477 8b 93 d0        MOV        EDX,dword ptr [EBX + 0x52d0]
                 52 00 00
        0809d47d 8b 8c 83        MOV        ECX,dword ptr [EBX + EAX*0x4 + 0xb460]
                 60 b4 00 00
        0809d484 8d 04 cd        LEA        EAX,[ECX*0x8 + 0x0]
                 00 00 00 00
        0809d48b 29 c8           SUB        EAX,ECX
        0809d48d c1 e0 07        SHL        EAX,0x7
        0809d490 01 c8           ADD        EAX,ECX
        0809d492 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809d495 8d 04 41        LEA        EAX,[ECX + EAX*0x2]
        0809d498 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809d49b 8d b0 27        LEA        ESI,[EAX + 0x6027]
                 60 00 00
        0809d4a1 80 b8 27        CMP        byte ptr [EAX + 0x6027],0x0
                 60 00 00 00
        0809d4a8 74 2e           JZ         LAB_0809d4d8
        0809d4aa 05 0a 20        ADD        EAX,0x200a
                 00 00
        0809d4af 52              PUSH       EDX
        0809d4b0 56              PUSH       ESI
        0809d4b1 50              PUSH       EAX
        0809d4b2 8d 9c 24        LEA        EBX=>local_101c,[ESP + 0x301c]
                 1c 30 00 00
        0809d4b9 53              PUSH       EBX
        0809d4ba e8 81 3c        CALL       joindirfile                                      undefined joindirfile()
                 fb ff
        0809d4bf 89 1c 24        MOV        dword ptr [ESP]=>local_403c,EBX
        0809d4c2 e8 39 ff        CALL       fileexist                                        undefined fileexist()
                 fe ff
        0809d4c7 83 c4 10        ADD        ESP,0x10
        0809d4ca 85 c0           TEST       EAX,EAX
        0809d4cc 74 05           JZ         LAB_0809d4d3
        0809d4ce 50              PUSH       EAX
        0809d4cf 50              PUSH       EAX
        0809d4d0 53              PUSH       EBX
        0809d4d1 eb 2d           JMP        LAB_0809d500
                             LAB_0809d4d3                                    XREF[1]:     0809d4cc(j)
        0809d4d3 55              PUSH       EBP
        0809d4d4 55              PUSH       EBP
        0809d4d5 56              PUSH       ESI
        0809d4d6 eb 28           JMP        LAB_0809d500
                             LAB_0809d4d8                                    XREF[1]:     0809d4a8(j)
        0809d4d8 8b bb 50        MOV        EDI,dword ptr [EBX + 0xad50]
                 ad 00 00
        0809d4de 85 ff           TEST       EDI,EDI
        0809d4e0 74 0b           JZ         LAB_0809d4ed
        0809d4e2 e8 49 01        CALL       ArcadeWinScreen                                  undefined ArcadeWinScreen()
                 00 00
        0809d4e7 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809d4ed                                    XREF[1]:     0809d4e0(j)
        0809d4ed 8b b3 4c        MOV        ESI,dword ptr [EBX + 0x9d4c]
                 9d 00 00
        0809d4f3 85 f6           TEST       ESI,ESI
        0809d4f5 74 1f           JZ         LAB_0809d516
        0809d4f7 8d 83 50        LEA        EAX,[EBX + 0x9d50]
                 9d 00 00
        0809d4fd 51              PUSH       ECX
        0809d4fe 51              PUSH       ECX
        0809d4ff 50              PUSH       EAX
                             LAB_0809d500                                    XREF[2]:     0809d4d1(j), 0809d4d6(j)
        0809d500 8d 84 24        LEA        EAX=>local_201c,[ESP + 0x201c]
                 1c 20 00 00
        0809d507 50              PUSH       EAX
        0809d508 e8 c3 30        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809d50d 83 c4 10        ADD        ESP,0x10
        0809d510 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809d516                                    XREF[1]:     0809d4f5(j)
        0809d516 8b 93 48        MOV        EDX,dword ptr [EBX + 0x8d48]
                 8d 00 00
        0809d51c 85 d2           TEST       EDX,EDX
        0809d51e 74 1f           JZ         LAB_0809d53f
        0809d520 50              PUSH       EAX
        0809d521 50              PUSH       EAX
        0809d522 8d 83 4c        LEA        EAX,[EBX + 0x8d4c]
                 8d 00 00
        0809d528 50              PUSH       EAX
        0809d529 8d 84 24        LEA        EAX=>local_301c,[ESP + 0x101c]
                 1c 10 00 00
        0809d530 50              PUSH       EAX
        0809d531 e8 9a 30        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809d536 83 c4 10        ADD        ESP,0x10
        0809d539 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809d53f                                    XREF[1]:     0809d51e(j)
        0809d53f c7 83 44        MOV        dword ptr [EBX + 0x8d44],0x0
                 8d 00 00
                 00 00 00 00
        0809d549 eb 09           JMP        LAB_0809d554
        0809d54b 90              ??         90h
        0809d54c 8d              ??         8Dh
        0809d54d 74              ??         74h    t
        0809d54e 26              ??         26h    &
        0809d54f 00              ??         00h
                             LAB_0809d550                                    XREF[2]:     0809d3c4(j), 0809d3fe(j)
        0809d550 89 c3           MOV        EBX,EAX
        0809d552 eb 06           JMP        LAB_0809d55a
                             LAB_0809d554                                    XREF[3]:     0809d3a7(j), 0809d43e(j),
                                                                                          0809d549(j)
        0809d554 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809d55a                                    XREF[5]:     0809d339(j), 0809d347(j),
                                                                                          0809d355(j), 0809d42a(j),
                                                                                          0809d552(j)
        0809d55a 8b ab 18        MOV        EBP,dword ptr [EBX + 0x1d518]
                 d5 01 00
        0809d560 85 ed           TEST       EBP,EBP
        0809d562 74 3a           JZ         LAB_0809d59e
        0809d564 8b bb d4        MOV        EDI,dword ptr [EBX + 0x104d4]
                 04 01 00
        0809d56a 85 ff           TEST       EDI,EDI
        0809d56c 75 30           JNZ        LAB_0809d59e
        0809d56e 8b b3 d0        MOV        ESI,dword ptr [EBX + 0xced0]
                 ce 00 00
        0809d574 85 f6           TEST       ESI,ESI
        0809d576 74 26           JZ         LAB_0809d59e
        0809d578 83 ec 0c        SUB        ESP,0xc
        0809d57b 8d 83 a8        LEA        EAX,[EBX + 0x42a8]
                 42 00 00
        0809d581 50              PUSH       EAX
        0809d582 e8 b9 85        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
        0809d587 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d58c 83 c4 10        ADD        ESP,0x10
        0809d58f 8b 98 cc        MOV        EBX,dword ptr [EAX + 0xadcc]
                 ad 00 00
        0809d595 85 db           TEST       EBX,EBX
        0809d597 74 05           JZ         LAB_0809d59e
        0809d599 e8 92 02        CALL       SurvivalResultsScreen                            undefined SurvivalResultsScreen()
                 00 00
                             LAB_0809d59e                                    XREF[4]:     0809d562(j), 0809d56c(j),
                                                                                          0809d576(j), 0809d597(j)
        0809d59e e8 bd b3        CALL       PalGrpClear                                      undefined PalGrpClear()
                 01 00
        0809d5a3 e8 58 15        CALL       GameStgDeInitFightData                           undefined GameStgDeInitFightData()
                 00 00
        0809d5a8 e8 83 11        CALL       GameUnloadStage                                  undefined GameUnloadStage()
                 00 00
        0809d5ad 83 ec 0c        SUB        ESP,0xc
        0809d5b0 6a 3c           PUSH       0x3c
        0809d5b2 e8 59 db        CALL       TimerSetSyncFPS                                  undefined TimerSetSyncFPS()
                 fd ff
        0809d5b7 5a              POP        EDX
        0809d5b8 59              POP        ECX
        0809d5b9 68 0b 6f        PUSH       s_scene_08276f06+5                               = "scene"
                 27 08
        0809d5be 8d 84 24        LEA        EAX=>local_201c,[ESP + 0x201c]
                 1c 20 00 00
        0809d5c5 50              PUSH       EAX
        0809d5c6 e8 c5 27        CALL       PlayCutscene                                     undefined PlayCutscene()
                 00 00
        0809d5cb 5d              POP        EBP
        0809d5cc 58              POP        EAX
        0809d5cd 68 0b 6f        PUSH       s_scene_08276f06+5                               = "scene"
                 27 08
        0809d5d2 8d 84 24        LEA        EAX=>local_301c,[ESP + 0x101c]
                 1c 10 00 00
        0809d5d9 50              PUSH       EAX
        0809d5da e8 b1 27        CALL       PlayCutscene                                     undefined PlayCutscene()
                 00 00
        0809d5df 5e              POP        ESI
        0809d5e0 5f              POP        EDI
        0809d5e1 68 0b 6f        PUSH       s_scene_08276f06+5                               = "scene"
                 27 08
        0809d5e6 8d 44 24 1c     LEA        EAX=>local_401c,[ESP + 0x1c]
        0809d5ea 50              PUSH       EAX
        0809d5eb e8 a0 27        CALL       PlayCutscene                                     undefined PlayCutscene()
                 00 00
        0809d5f0 e8 4b 65        CALL       GameReloadSystemSprSnd                           undefined GameReloadSystemSprSnd()
                 03 00
        0809d5f5 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d5fa 59              POP        ECX
        0809d5fb 5b              POP        EBX
        0809d5fc 8b 90 dc        MOV        EDX,dword ptr [EAX + 0x1bbdc]
                 bb 01 00
        0809d602 52              PUSH       EDX
        0809d603 8b 80 d4        MOV        EAX,dword ptr [EAX + 0x1bbd4]
                 bb 01 00
        0809d609 50              PUSH       EAX
        0809d60a e8 91 cc        CALL       GameSetVol                                       undefined GameSetVol()
                 01 00
        0809d60f 83 c4 10        ADD        ESP,0x10
        0809d612 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_0809d617                                    XREF[1]:     0809d30f(j)
        0809d617 81 c4 1c        ADD        ESP,0x401c
                 40 00 00
        0809d61d 5b              POP        EBX
        0809d61e 5e              POP        ESI
        0809d61f 5f              POP        EDI
        0809d620 5d              POP        EBP
        0809d621 c3              RET
