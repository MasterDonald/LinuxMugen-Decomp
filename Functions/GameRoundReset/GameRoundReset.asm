                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameRoundReset()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[5,1]:   0809f4c2(W),
                                                                                                   0809f4c6(R),
                                                                                                   0809f4cf(R),
                                                                                                   0809f4d3(W),
                                                                                                   0809f4db(R),
                                                                                                   0809f4ca(W)
             undefined4        Stack[-0x18]:4 local_18                                XREF[2]:     0809f4d7(W),
                                                                                                   0809f4df(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[2]:     0809f347(W),
                                                                                                   0809f3da(R)
             undefined4        Stack[-0x20]:4 local_20                                XREF[3]:     0809f221(W),
                                                                                                   0809f550(R),
                                                                                                   0809f5aa(R)
             undefined4        Stack[-0x24]:4 local_24                                XREF[2]:     0809f462(W),
                                                                                                   0809f4a7(R)
             undefined4        Stack[-0x28]:4 local_28                                XREF[4]:     0809f641(W),
                                                                                                   0809f6a4(R),
                                                                                                   0809f6c7(R),
                                                                                                   0809f6e0(W)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[4]:     0809f649(W),
                                                                                                   0809f67d(R),
                                                                                                   0809f6cb(R),
                                                                                                   0809f6e4(W)
             undefined4        Stack[-0x30]:4 local_30                                XREF[4]:     0809f651(W),
                                                                                                   0809f668(R),
                                                                                                   0809f6cf(R),
                                                                                                   0809f6e8(W)
             undefined4        Stack[-0x34]:4 local_34                                XREF[2]:     0809f568(W),
                                                                                                   0809f596(R)
             undefined4        Stack[-0x38]:4 local_38                                XREF[4]:     0809f524(W),
                                                                                                   0809f560(R),
                                                                                                   0809f5a2(R),
                                                                                                   0809f5c8(R)
             undefined4        Stack[-0x3c]:4 local_3c                                XREF[6]:     0809f528(W),
                                                                                                   0809f540(R),
                                                                                                   0809f564(R),
                                                                                                   0809f5be(R),
                                                                                                   0809f5cc(R),
                                                                                                   0809f5e5(W)
             undefined4        Stack[-0x40]:4 local_40                                XREF[5]:     0809f530(W),
                                                                                                   0809f54c(R),
                                                                                                   0809f5a6(R),
                                                                                                   0809f5d0(R),
                                                                                                   0809f5e9(W)
             undefined4        Stack[-0x44]:4 local_44                                XREF[4]:     0809f538(W),
                                                                                                   0809f55c(R),
                                                                                                   0809f5d4(R),
                                                                                                   0809f5ed(W)
             undefined4        Stack[-0x48]:4 local_48                                XREF[4]:     0809f315(W),
                                                                                                   0809f320(R),
                                                                                                   0809f420(R),
                                                                                                   0809f42a(W)
             undefined4        Stack[-0x50]:4 local_50                                XREF[1]:     0809f5ba(*)
             undefined4        Stack[-0x58]:4 local_58                                XREF[1]:     0809f6fb(W)
             undefined4        Stack[-0x5c]:4 local_5c                                XREF[2]:     0809f705(*),
                                                                                                   0809f7bc(*)
                             GameRoundReset                                  XREF[7]:     Entry Point(*),
                                                                                          GameLoop:0808fefa(c),
                                                                                          ContinueScreenLoop:080979c6(c),
                                                                                          ArcadeWinScreen:0809d64b(c),
                                                                                          SurvivalResultsScreen:0809d864(c
                                                                                          GameNextRound:0809ecca(c),
                                                                                          GameMatchReset:0809f14d(c)
        0809f210 55              PUSH       EBP
        0809f211 57              PUSH       EDI
        0809f212 56              PUSH       ESI
        0809f213 53              PUSH       EBX
        0809f214 83 ec 48        SUB        ESP,0x48
        0809f217 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f21c 05 18 04        ADD        EAX,0x10418
                 01 00
        0809f221 89 44 24 38     MOV        dword ptr [ESP + local_20],EAX
        0809f225 6a ff           PUSH       -0x1
        0809f227 e8 14 84        CALL       SndIDStop                                        undefined SndIDStop()
                 fb ff
        0809f22c 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809f232 83 c4 10        ADD        ESP,0x10
        0809f235 8b 82 3c        MOV        EAX,dword ptr [EDX + 0x1423c]
                 42 01 00
        0809f23b 8b aa 84        MOV        EBP,dword ptr [EDX + 0x13984]
                 39 01 00
        0809f241 89 82 40        MOV        dword ptr [EDX + 0x1d440],EAX
                 d4 01 00
        0809f247 8b 82 80        MOV        EAX,dword ptr [EDX + 0x1e680]
                 e6 01 00
        0809f24d 40              INC        EAX
        0809f24e 0f af c5        IMUL       EAX,EBP
        0809f251 48              DEC        EAX
        0809f252 c7 82 24        MOV        dword ptr [EDX + 0x1d424],0x0
                 d4 01 00
                 00 00 00 00
        0809f25c c7 82 60        MOV        dword ptr [EDX + 0x1d460],0x0
                 d4 01 00
                 00 00 00 00
        0809f266 c7 82 2c        MOV        dword ptr [EDX + 0x1d42c],0x0
                 d4 01 00
                 00 00 00 00
        0809f270 c7 82 34        MOV        dword ptr [EDX + 0x1d434],0x0
                 d4 01 00
                 00 00 00 00
        0809f27a c7 82 30        MOV        dword ptr [EDX + 0x1d430],0x0
                 d4 01 00
                 00 00 00 00
        0809f284 c7 82 38        MOV        dword ptr [EDX + 0x1d438],0x0
                 d4 01 00
                 00 00 00 00
        0809f28e c7 82 3c        MOV        dword ptr [EDX + 0x1d43c],0x0
                 d4 01 00
                 00 00 00 00
        0809f298 c7 82 44        MOV        dword ptr [EDX + 0x1d444],0x0
                 d4 01 00
                 00 00 00 00
        0809f2a2 c7 82 48        MOV        dword ptr [EDX + 0x1d448],0x0
                 d4 01 00
                 00 00 00 00
        0809f2ac c7 82 4c        MOV        dword ptr [EDX + 0x1d44c],0x0
                 d4 01 00
                 00 00 00 00
        0809f2b6 c7 82 50        MOV        dword ptr [EDX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        0809f2c0 89 82 54        MOV        dword ptr [EDX + 0x1d454],EAX
                 d4 01 00
        0809f2c6 c7 82 58        MOV        dword ptr [EDX + 0x1d458],0x0
                 d4 01 00
                 00 00 00 00
        0809f2d0 83 ba b8        CMP        dword ptr [EDX + 0xceb8],0x3
                 ce 00 00 03
        0809f2d7 74 14           JZ         LAB_0809f2ed
        0809f2d9 8b ba a0        MOV        EDI,dword ptr [EDX + 0x1d3a0]
                 d3 01 00
        0809f2df 85 ff           TEST       EDI,EDI
        0809f2e1 75 0a           JNZ        LAB_0809f2ed
        0809f2e3 8b b2 d0        MOV        ESI,dword ptr [EDX + 0xced0]
                 ce 00 00
        0809f2e9 85 f6           TEST       ESI,ESI
        0809f2eb 74 0f           JZ         LAB_0809f2fc
                             LAB_0809f2ed                                    XREF[2]:     0809f2d7(j), 0809f2e1(j)
        0809f2ed a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f2f2 c7 80 54        MOV        dword ptr [EAX + 0x1d454],0xffffffff
                 d4 01 00
                 ff ff ff ff
                             LAB_0809f2fc                                    XREF[1]:     0809f2eb(j)
        0809f2fc 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f302 bd 01 00        MOV        EBP,0x1
                 00 00
        0809f307 89 c8           MOV        EAX,ECX
        0809f309 3b a9 54        CMP        EBP,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809f30f 0f 8f 25        JG         LAB_0809f43a
                 01 00 00
        0809f315 c7 44 24        MOV        dword ptr [ESP + local_48],0x1cf64
                 04 64 cf
                 01 00
        0809f31d 8d 76 00        LEA        ESI,[ESI]
                             LAB_0809f320                                    XREF[1]:     0809f434(j)
        0809f320 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_48]
        0809f324 8b 7c 02 04     MOV        EDI,dword ptr [EDX + EAX*0x1 + 0x4]
        0809f328 85 ff           TEST       EDI,EDI
        0809f32a 0f 84 f0        JZ         LAB_0809f420
                 00 00 00
        0809f330 8b 5f 1c        MOV        EBX,dword ptr [EDI + 0x1c]
        0809f333 85 db           TEST       EBX,EBX
        0809f335 0f 85 c5        JNZ        LAB_0809f400
                 00 00 00
        0809f33b 8b 87 60        MOV        EAX,dword ptr [EDI + 0x160]
                 01 00 00
        0809f341 8b b7 2c        MOV        ESI,dword ptr [EDI + 0x262c]
                 26 00 00
        0809f347 89 44 24 30     MOV        dword ptr [ESP + local_1c],EAX
        0809f34b 83 ec 0c        SUB        ESP,0xc
        0809f34e 8b 9f 78        MOV        EBX,dword ptr [EDI + 0x178]
                 01 00 00
        0809f354 57              PUSH       EDI
        0809f355 e8 86 1c        CALL       PlayerReset                                      undefined PlayerReset()
                 01 00
        0809f35a 58              POP        EAX
        0809f35b 5a              POP        EDX
        0809f35c 68 0c 17        PUSH       0x170c
                 00 00
        0809f361 57              PUSH       EDI
        0809f362 e8 c9 23        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        0809f367 5a              POP        EDX
        0809f368 8b 87 60        MOV        EAX,dword ptr [EDI + 0x960]
                 09 00 00
        0809f36e 59              POP        ECX
        0809f36f 50              PUSH       EAX
        0809f370 8d 87 48        LEA        EAX,[EDI + 0x248]
                 02 00 00
        0809f376 50              PUSH       EAX
        0809f377 e8 14 46        CALL       KBIRefreshKeyflags                               undefined KBIRefreshKeyflags()
                 fb ff
        0809f37c 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f382 89 b7 2c        MOV        dword ptr [EDI + 0x262c],ESI
                 26 00 00
        0809f388 89 9f 80        MOV        dword ptr [EDI + 0x180],EBX
                 01 00 00
        0809f38e 89 9f 78        MOV        dword ptr [EDI + 0x178],EBX
                 01 00 00
        0809f394 8b 99 a0        MOV        EBX,dword ptr [ECX + 0x1d3a0]
                 d3 01 00
        0809f39a 83 c4 10        ADD        ESP,0x10
        0809f39d 85 db           TEST       EBX,EBX
        0809f39f 74 1a           JZ         LAB_0809f3bb
        0809f3a1 8b 87 74        MOV        EAX,dword ptr [EDI + 0x174]
                 01 00 00
        0809f3a7 8b 00           MOV        EAX,dword ptr [EAX]
        0809f3a9 89 87 80        MOV        dword ptr [EDI + 0x180],EAX
                 01 00 00
        0809f3af 89 87 84        MOV        dword ptr [EDI + 0x184],EAX
                 01 00 00
        0809f3b5 89 87 78        MOV        dword ptr [EDI + 0x178],EAX
                 01 00 00
                             LAB_0809f3bb                                    XREF[1]:     0809f39f(j)
        0809f3bb 8b 57 10        MOV        EDX,dword ptr [EDI + 0x10]
        0809f3be 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809f3c1 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f3c4 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f3c7 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809f3ca c1 e0 03        SHL        EAX,0x3
        0809f3cd 29 d0           SUB        EAX,EDX
        0809f3cf 8b 8c 81        MOV        ECX,dword ptr [ECX + EAX*0x4 + 0xe968]
                 68 e9 00 00
        0809f3d6 85 c9           TEST       ECX,ECX
        0809f3d8 75 0a           JNZ        LAB_0809f3e4
        0809f3da 8b 54 24 30     MOV        EDX,dword ptr [ESP + local_1c]
        0809f3de 89 97 60        MOV        dword ptr [EDI + 0x160],EDX
                 01 00 00
                             LAB_0809f3e4                                    XREF[1]:     0809f3d8(j)
        0809f3e4 8b 87 60        MOV        EAX,dword ptr [EDI + 0x160]
                 01 00 00
        0809f3ea 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f3f0 89 87 6c        MOV        dword ptr [EDI + 0x16c],EAX
                 01 00 00
        0809f3f6 89 87 68        MOV        dword ptr [EDI + 0x168],EAX
                 01 00 00
        0809f3fc eb 22           JMP        LAB_0809f420
        0809f3fe 89              ??         89h
        0809f3ff f6              ??         F6h
                             LAB_0809f400                                    XREF[1]:     0809f335(j)
        0809f400 8b 97 58        MOV        EDX,dword ptr [EDI + 0x158]
                 01 00 00
        0809f406 85 d2           TEST       EDX,EDX
        0809f408 74 16           JZ         LAB_0809f420
        0809f40a 50              PUSH       EAX
        0809f40b 50              PUSH       EAX
        0809f40c 6a 00           PUSH       0x0
        0809f40e 8b 77 08        MOV        ESI,dword ptr [EDI + 0x8]
        0809f411 56              PUSH       ESI
        0809f412 e8 b9 21        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        0809f417 83 c4 10        ADD        ESP,0x10
        0809f41a 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809f420                                    XREF[3]:     0809f32a(j), 0809f3fc(j),
                                                                                          0809f408(j)
        0809f420 8b 5c 24 04     MOV        EBX,dword ptr [ESP + local_48]
        0809f424 45              INC        EBP
        0809f425 83 c3 04        ADD        EBX,0x4
        0809f428 89 c8           MOV        EAX,ECX
        0809f42a 89 5c 24 04     MOV        dword ptr [ESP + local_48],EBX
        0809f42e 3b a9 54        CMP        EBP,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809f434 0f 8e e6        JLE        LAB_0809f320
                 fe ff ff
                             LAB_0809f43a                                    XREF[1]:     0809f30f(j)
        0809f43a 31 f6           XOR        ESI,ESI
        0809f43c eb 08           JMP        LAB_0809f446
        0809f43e 89              ??         89h
        0809f43f f6              ??         F6h
                             LAB_0809f440                                    XREF[1]:     0809f511(j)
        0809f440 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809f446                                    XREF[1]:     0809f43c(j)
        0809f446 8d 04 76        LEA        EAX,[ESI + ESI*0x2]
        0809f449 31 ed           XOR        EBP,EBP
        0809f44b 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        0809f44e 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        0809f451 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        0809f454 c1 e0 03        SHL        EAX,0x3
        0809f457 29 f0           SUB        EAX,ESI
        0809f459 8d 04 81        LEA        EAX,[ECX + EAX*0x4]
        0809f45c 8d 98 e0        LEA        EBX,[EAX + 0xcee0]
                 ce 00 00
        0809f462 89 5c 24 28     MOV        dword ptr [ESP + local_24],EBX
        0809f466 8b 90 e0        MOV        EDX,dword ptr [EAX + 0xcee0]
                 ce 00 00
        0809f46c 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809f46f c1 e0 03        SHL        EAX,0x3
        0809f472 29 d0           SUB        EAX,EDX
        0809f474 8d 5c 83 0c     LEA        EBX,[EBX + EAX*0x4 + 0xc]
        0809f478 3b 6b 08        CMP        EBP,dword ptr [EBX + 0x8]
        0809f47b 0f 8d 8c        JGE        LAB_0809f50d
                 00 00 00
        0809f481 eb 0d           JMP        LAB_0809f490
                             LAB_0809f483                                    XREF[1]:     0809f507(j)
        0809f483 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f489 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_0809f490                                    XREF[1]:     0809f481(j)
        0809f490 8d 54 ad 00     LEA        EDX,[EBP + EBP*0x4]
        0809f494 8d 43 0c        LEA        EAX,[EBX + 0xc]
        0809f497 db 81 7c        FILD       dword ptr [ECX + 0x1e67c]
                 e6 01 00
        0809f49d 8b 04 90        MOV        EAX,dword ptr [EAX + EDX*0x4]
        0809f4a0 8b bc 81        MOV        EDI,dword ptr [ECX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        0809f4a7 8b 44 24 28     MOV        EAX,dword ptr [ESP + local_24]
        0809f4ab db 47 50        FILD       dword ptr [EDI + 0x50]
        0809f4ae d8 88 8c        FMUL       float ptr [EAX + 0x1a8c]
                 1a 00 00
        0809f4b4 de c9           FMULP
        0809f4b6 d8 0d 24        FMUL       float ptr [DAT_08278824]                         = 0Ah
                 88 27 08
        0809f4bc d8 05 40        FADD       float ptr [DAT_08279640]
                 96 27 08
        0809f4c2 d9 7c 24 38     FNSTCW     word ptr [ESP + local_14]
        0809f4c6 8b 54 24 38     MOV        EDX,dword ptr [ESP + local_14]
        0809f4ca c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 39 0c
        0809f4cf d9 6c 24 38     FLDCW      word ptr [ESP + local_14]
        0809f4d3 89 54 24 38     MOV        dword ptr [ESP + local_14],EDX
        0809f4d7 db 5c 24 34     FISTP      dword ptr [ESP + local_18]
        0809f4db d9 6c 24 38     FLDCW      word ptr [ESP + local_14]
        0809f4df 8b 44 24 34     MOV        EAX,dword ptr [ESP + local_18]
        0809f4e3 89 87 64        MOV        dword ptr [EDI + 0x164],EAX
                 01 00 00
        0809f4e9 39 87 60        CMP        dword ptr [EDI + 0x160],EAX
                 01 00 00
        0809f4ef 7e 12           JLE        LAB_0809f503
        0809f4f1 89 87 6c        MOV        dword ptr [EDI + 0x16c],EAX
                 01 00 00
        0809f4f7 89 87 68        MOV        dword ptr [EDI + 0x168],EAX
                 01 00 00
        0809f4fd 89 87 60        MOV        dword ptr [EDI + 0x160],EAX
                 01 00 00
                             LAB_0809f503                                    XREF[1]:     0809f4ef(j)
        0809f503 45              INC        EBP
        0809f504 3b 6b 08        CMP        EBP,dword ptr [EBX + 0x8]
        0809f507 0f 8c 76        JL         LAB_0809f483
                 ff ff ff
                             LAB_0809f50d                                    XREF[1]:     0809f47b(j)
        0809f50d 46              INC        ESI
        0809f50e 83 fe 01        CMP        ESI,0x1
        0809f511 0f 8e 29        JLE        LAB_0809f440
                 ff ff ff
        0809f517 31 f6           XOR        ESI,ESI
        0809f519 e8 62 03        CALL       GameRoundResetPlayerPos                          undefined GameRoundResetPlayerPo
                 00 00
        0809f51e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f524 89 4c 24 14     MOV        dword ptr [ESP + local_38],ECX
        0809f528 c7 44 24        MOV        dword ptr [ESP + local_3c],0xe970
                 10 70 e9
                 00 00
        0809f530 c7 44 24        MOV        dword ptr [ESP + local_40],0x0
                 0c 00 00
                 00 00
        0809f538 c7 44 24        MOV        dword ptr [ESP + local_44],0x0
                 08 00 00
                 00 00
                             LAB_0809f540                                    XREF[1]:     0809f5f4(j)
        0809f540 8b 5c 24 10     MOV        EBX,dword ptr [ESP + local_3c]
        0809f544 c7 44 0b        MOV        dword ptr [EBX + ECX*0x1 + 0x8],0x0
                 08 00 00
                 00 00
        0809f54c 8b 7c 24 0c     MOV        EDI,dword ptr [ESP + local_40]
        0809f550 8b 6c 24 2c     MOV        EBP,dword ptr [ESP + local_20]
        0809f554 8b 44 3d 08     MOV        EAX,dword ptr [EBP + EDI*0x1 + 0x8]
        0809f558 85 c0           TEST       EAX,EAX
        0809f55a 7e 46           JLE        LAB_0809f5a2
        0809f55c 8b 7c 24 08     MOV        EDI,dword ptr [ESP + local_44]
        0809f560 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_38]
        0809f564 8b 5c 24 10     MOV        EBX,dword ptr [ESP + local_3c]
        0809f568 89 4c 24 18     MOV        dword ptr [ESP + local_34],ECX
        0809f56c 8d 54 bd 0c     LEA        EDX,[EBP + EDI*0x4 + 0xc]
        0809f570 89 c5           MOV        EBP,EAX
                             LAB_0809f572                                    XREF[1]:     0809f59e(j)
        0809f572 8b 02           MOV        EAX,dword ptr [EDX]
        0809f574 8b bc 81        MOV        EDI,dword ptr [ECX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        0809f57b 85 ff           TEST       EDI,EDI
        0809f57d 74 1b           JZ         LAB_0809f59a
        0809f57f db 87 60        FILD       dword ptr [EDI + 0x160]
                 01 00 00
        0809f585 db 87 64        FILD       dword ptr [EDI + 0x164]
                 01 00 00
        0809f58b 8d 41 08        LEA        EAX,[ECX + 0x8]
        0809f58e de f9           FDIVP
        0809f590 d8 04 03        FADD       float ptr [EBX + EAX*0x1]
        0809f593 d9 1c 03        FSTP       float ptr [EBX + EAX*0x1]
        0809f596 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_34]
                             LAB_0809f59a                                    XREF[1]:     0809f57d(j)
        0809f59a 83 c2 14        ADD        EDX,0x14
        0809f59d 4d              DEC        EBP
        0809f59e 75 d2           JNZ        LAB_0809f572
        0809f5a0 eb 04           JMP        LAB_0809f5a6
                             LAB_0809f5a2                                    XREF[1]:     0809f55a(j)
        0809f5a2 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_38]
                             LAB_0809f5a6                                    XREF[1]:     0809f5a0(j)
        0809f5a6 8b 6c 24 0c     MOV        EBP,dword ptr [ESP + local_40]
        0809f5aa 8b 44 24 2c     MOV        EAX,dword ptr [ESP + local_20]
        0809f5ae 8b 54 28 08     MOV        EDX,dword ptr [EAX + EBP*0x1 + 0x8]
        0809f5b2 85 d2           TEST       EDX,EDX
        0809f5b4 7e 16           JLE        LAB_0809f5cc
        0809f5b6 52              PUSH       EDX
        0809f5b7 8d 41 08        LEA        EAX,[ECX + 0x8]
        0809f5ba db 04 24        FILD       dword ptr [ESP]=>local_50
        0809f5bd 5a              POP        EDX
        0809f5be 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_3c]
        0809f5c2 d8 3c 02        FDIVR      float ptr [EDX + EAX*0x1]
        0809f5c5 d9 1c 02        FSTP       float ptr [EDX + EAX*0x1]
        0809f5c8 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_38]
                             LAB_0809f5cc                                    XREF[1]:     0809f5b4(j)
        0809f5cc 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_3c]
        0809f5d0 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_40]
        0809f5d4 8b 6c 24 08     MOV        EBP,dword ptr [ESP + local_44]
        0809f5d8 81 c2 9c        ADD        EDX,0x1a9c
                 1a 00 00
        0809f5de 83 c0 5c        ADD        EAX,0x5c
        0809f5e1 83 c5 17        ADD        EBP,0x17
        0809f5e4 46              INC        ESI
        0809f5e5 89 54 24 10     MOV        dword ptr [ESP + local_3c],EDX
        0809f5e9 89 44 24 0c     MOV        dword ptr [ESP + local_40],EAX
        0809f5ed 89 6c 24 08     MOV        dword ptr [ESP + local_44],EBP
        0809f5f1 83 fe 01        CMP        ESI,0x1
        0809f5f4 0f 8e 46        JLE        LAB_0809f540
                 ff ff ff
        0809f5fa bd 01 00        MOV        EBP,0x1
                 00 00
        0809f5ff 89 c8           MOV        EAX,ECX
        0809f601 3b a9 54        CMP        EBP,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809f607 7f 2d           JG         LAB_0809f636
        0809f609 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809f60f ba 64 cf        MOV        EDX,0x1cf64
                 01 00
                             LAB_0809f614                                    XREF[1]:     0809f634(j)
        0809f614 8b 44 02 04     MOV        EAX,dword ptr [EDX + EAX*0x1 + 0x4]
        0809f618 85 c0           TEST       EAX,EAX
        0809f61a 74 0c           JZ         LAB_0809f628
        0809f61c c7 80 0c        MOV        dword ptr [EAX + 0xe0c],0x0
                 0e 00 00
                 00 00 00 00
        0809f626 89 d9           MOV        ECX,EBX
                             LAB_0809f628                                    XREF[1]:     0809f61a(j)
        0809f628 45              INC        EBP
        0809f629 83 c2 04        ADD        EDX,0x4
        0809f62c 89 c8           MOV        EAX,ECX
        0809f62e 3b a9 54        CMP        EBP,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809f634 7e de           JLE        LAB_0809f614
                             LAB_0809f636                                    XREF[1]:     0809f607(j)
        0809f636 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809f63c bb 64 cf        MOV        EBX,0x1cf64
                 01 00
        0809f641 c7 44 24        MOV        dword ptr [ESP + local_28],0x1e650
                 24 50 e6
                 01 00
        0809f649 c7 44 24        MOV        dword ptr [ESP + local_2c],0x1e640
                 20 40 e6
                 01 00
        0809f651 c7 44 24        MOV        dword ptr [ESP + local_30],0x1e620
                 1c 20 e6
                 01 00
        0809f659 bd 03 00        MOV        EBP,0x3
                 00 00
        0809f65e 89 f6           MOV        ESI,ESI
                             LAB_0809f660                                    XREF[1]:     0809f6ec(j)
        0809f660 8b 7c 0b 04     MOV        EDI,dword ptr [EBX + ECX*0x1 + 0x4]
        0809f664 85 ff           TEST       EDI,EDI
        0809f666 74 5f           JZ         LAB_0809f6c7
        0809f668 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_30]
        0809f66c 8b 74 08 14     MOV        ESI,dword ptr [EAX + ECX*0x1 + 0x14]
        0809f670 83 fe ff        CMP        ESI,-0x1
        0809f673 74 08           JZ         LAB_0809f67d
        0809f675 89 b7 2c        MOV        dword ptr [EDI + 0x262c],ESI
                 26 00 00
        0809f67b 89 d1           MOV        ECX,EDX
                             LAB_0809f67d                                    XREF[1]:     0809f673(j)
        0809f67d 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_2c]
        0809f681 8b 74 08 14     MOV        ESI,dword ptr [EAX + ECX*0x1 + 0x14]
        0809f685 83 fe ff        CMP        ESI,-0x1
        0809f688 74 1a           JZ         LAB_0809f6a4
        0809f68a 89 b7 6c        MOV        dword ptr [EDI + 0x16c],ESI
                 01 00 00
        0809f690 89 b7 68        MOV        dword ptr [EDI + 0x168],ESI
                 01 00 00
        0809f696 89 b7 60        MOV        dword ptr [EDI + 0x160],ESI
                 01 00 00
        0809f69c 89 b7 64        MOV        dword ptr [EDI + 0x164],ESI
                 01 00 00
        0809f6a2 89 d1           MOV        ECX,EDX
                             LAB_0809f6a4                                    XREF[1]:     0809f688(j)
        0809f6a4 8b 44 24 24     MOV        EAX,dword ptr [ESP + local_28]
        0809f6a8 8b 74 08 14     MOV        ESI,dword ptr [EAX + ECX*0x1 + 0x14]
        0809f6ac 83 fe ff        CMP        ESI,-0x1
        0809f6af 74 16           JZ         LAB_0809f6c7
        0809f6b1 8b 87 70        MOV        EAX,dword ptr [EDI + 0x170]
                 01 00 00
        0809f6b7 89 d1           MOV        ECX,EDX
        0809f6b9 89 30           MOV        dword ptr [EAX],ESI
        0809f6bb 89 b7 80        MOV        dword ptr [EDI + 0x180],ESI
                 01 00 00
        0809f6c1 89 b7 84        MOV        dword ptr [EDI + 0x184],ESI
                 01 00 00
                             LAB_0809f6c7                                    XREF[2]:     0809f666(j), 0809f6af(j)
        0809f6c7 8b 7c 24 24     MOV        EDI,dword ptr [ESP + local_28]
        0809f6cb 8b 74 24 20     MOV        ESI,dword ptr [ESP + local_2c]
        0809f6cf 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_30]
        0809f6d3 83 c7 04        ADD        EDI,0x4
        0809f6d6 83 c6 04        ADD        ESI,0x4
        0809f6d9 83 c0 04        ADD        EAX,0x4
        0809f6dc 83 c3 04        ADD        EBX,0x4
        0809f6df 4d              DEC        EBP
        0809f6e0 89 7c 24 24     MOV        dword ptr [ESP + local_28],EDI
        0809f6e4 89 74 24 20     MOV        dword ptr [ESP + local_2c],ESI
        0809f6e8 89 44 24 1c     MOV        dword ptr [ESP + local_30],EAX
        0809f6ec 0f 89 6e        JNS        LAB_0809f660
                 ff ff ff
        0809f6f2 db 81 04        FILD       dword ptr [ECX + 0x4204]
                 42 00 00
        0809f6f8 83 ec 10        SUB        ESP,0x10
        0809f6fb d9 5c 24 04     FSTP       float ptr [ESP + local_58]
        0809f6ff db 81 00        FILD       dword ptr [ECX + 0x4200]
                 42 00 00
        0809f705 d9 1c 24        FSTP       float ptr [ESP]=>local_5c
        0809f708 e8 43 4c        CALL       CameraMoveAbs                                    undefined CameraMoveAbs()
                 ff ff
        0809f70d a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f712 c7 80 58        MOV        dword ptr [EAX + 0x1cc58],0x0
                 cc 01 00
                 00 00 00 00
        0809f71c c7 80 54        MOV        dword ptr [EAX + 0x1cc54],0x0
                 cc 01 00
                 00 00 00 00
        0809f726 5d              POP        EBP
        0809f727 8b b8 f0        MOV        EDI,dword ptr [EAX + 0x104f0]
                 04 01 00
        0809f72d 57              PUSH       EDI
        0809f72e e8 4d aa        CALL       AnimPerArrayClear                                undefined AnimPerArrayClear()
                 fa ff
        0809f733 83 c4 0c        ADD        ESP,0xc
        0809f736 6a 00           PUSH       0x0
        0809f738 6a 00           PUSH       0x0
        0809f73a 6a 00           PUSH       0x0
        0809f73c e8 ef 62        CALL       MasterPalAdd                                     undefined MasterPalAdd()
                 fb ff
        0809f741 83 c4 0c        ADD        ESP,0xc
        0809f744 6a 00           PUSH       0x0
        0809f746 6a 00           PUSH       0x0
        0809f748 6a 00           PUSH       0x0
        0809f74a e8 21 63        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fb ff
        0809f74f a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f754 83 c4 10        ADD        ESP,0x10
        0809f757 c6 80 96        MOV        byte ptr [EAX + 0x1d396],0x0
                 d3 01 00 00
        0809f75e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809f764 c7 80 8c        MOV        dword ptr [EAX + 0x1d38c],0x0
                 d3 01 00
                 00 00 00 00
        0809f76e c7 80 90        MOV        dword ptr [EAX + 0x1d390],0x0
                 d3 01 00
                 00 00 00 00
        0809f778 66 c7 80        MOV        word ptr [EAX + 0x1d394],0x0
                 94 d3 01
                 00 00 00
        0809f781 8b b1 fc        MOV        ESI,dword ptr [ECX + 0x41fc]
                 41 00 00
        0809f787 85 f6           TEST       ESI,ESI
        0809f789 74 18           JZ         LAB_0809f7a3
        0809f78b 83 ec 0c        SUB        ESP,0xc
        0809f78e 8b 99 50        MOV        EBX,dword ptr [ECX + 0x1bb50]
                 bb 01 00
        0809f794 53              PUSH       EBX
        0809f795 e8 e6 d6        CALL       BGArrayReset                                     undefined BGArrayReset()
                 fa ff
        0809f79a 83 c4 10        ADD        ESP,0x10
        0809f79d 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809f7a3                                    XREF[1]:     0809f789(j)
        0809f7a3 83 ec 0c        SUB        ESP,0xc
        0809f7a6 8d 81 54        LEA        EAX,[ECX + 0x1bb54]
                 bb 01 00
        0809f7ac 50              PUSH       EAX
        0809f7ad e8 1e 97        CALL       PalFXReset                                       undefined PalFXReset()
                 01 00
        0809f7b2 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f7b7 05 90 bb        ADD        EAX,0x1bb90
                 01 00
        0809f7bc 89 04 24        MOV        dword ptr [ESP]=>local_5c,EAX
        0809f7bf e8 0c 97        CALL       PalFXReset                                       undefined PalFXReset()
                 01 00
        0809f7c4 e8 17 92        CALL       PalGrpResetPalette                               undefined PalGrpResetPalette()
                 01 00
        0809f7c9 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f7ce 59              POP        ECX
        0809f7cf 8b 90 fc        MOV        EDX,dword ptr [EAX + 0x104fc]
                 04 01 00
        0809f7d5 52              PUSH       EDX
        0809f7d6 e8 55 75        CALL       GameAftImgReset                                  undefined GameAftImgReset()
                 ff ff
        0809f7db 58              POP        EAX
        0809f7dc a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f7e1 8b a8 f8        MOV        EBP,dword ptr [EAX + 0x14af8]
                 4a 01 00
        0809f7e7 55              PUSH       EBP
        0809f7e8 e8 53 f0        CALL       ExplodArrayReset                                 undefined ExplodArrayReset()
                 fe ff
        0809f7ed a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f7f2 5f              POP        EDI
        0809f7f3 8b b0 fc        MOV        ESI,dword ptr [EAX + 0x14afc]
                 4a 01 00
        0809f7f9 56              PUSH       ESI
        0809f7fa e8 41 f0        CALL       ExplodArrayReset                                 undefined ExplodArrayReset()
                 fe ff
        0809f7ff 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809f805 31 c0           XOR        EAX,EAX
        0809f807 fc              CLD
        0809f808 c7 87 cc        MOV        dword ptr [EDI + 0x1d3cc],0xffffffff
                 d3 01 00
                 ff ff ff ff
        0809f812 c7 87 0c        MOV        dword ptr [EDI + 0x1d40c],0x0
                 d4 01 00
                 00 00 00 00
        0809f81c c7 87 e8        MOV        dword ptr [EDI + 0x1d3e8],0x0
                 d3 01 00
                 00 00 00 00
        0809f826 b9 06 00        MOV        ECX,0x6
                 00 00
        0809f82b 81 c7 5c        ADD        EDI,0x1cc5c
                 cc 01 00
        0809f831 f3 ab           STOSD.REP  ES:EDI
        0809f833 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809f839 b9 06 00        MOV        ECX,0x6
                 00 00
        0809f83e 81 c7 1c        ADD        EDI,0x1d51c
                 d5 01 00
        0809f844 83 c4 4c        ADD        ESP,0x4c
        0809f847 f3 ab           STOSD.REP  ES:EDI
        0809f849 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809f84f b9 06 00        MOV        ECX,0x6
                 00 00
        0809f854 81 c7 34        ADD        EDI,0x1d534
                 d5 01 00
        0809f85a f3 ab           STOSD.REP  ES:EDI
        0809f85c a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f861 c6 05 61        MOV        byte ptr [keypauseflag],0x0                      = ??
                 0b 2c 08 00
        0809f868 c7 80 24        MOV        dword ptr [EAX + 0x1cc24],0x0
                 cc 01 00
                 00 00 00 00
        0809f872 5b              POP        EBX
        0809f873 5e              POP        ESI
        0809f874 5f              POP        EDI
        0809f875 5d              POP        EBP
        0809f876 c3              RET
