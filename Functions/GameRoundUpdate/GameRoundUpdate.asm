                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameRoundUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x24]:4 local_24                                XREF[2]:     08092284(W),
                                                                                                   08092492(R)
             undefined4        Stack[-0x28]:4 local_28                                XREF[2]:     0809227c(W),
                                                                                                   08092485(R)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[3]:     08092274(W),
                                                                                                   080923e2(*),
                                                                                                   08092434(*)
             undefined4        Stack[-0x34]:4 local_34                                XREF[2]:     0809229c(W),
                                                                                                   0809252f(R)
             undefined4        Stack[-0x38]:4 local_38                                XREF[2]:     08092294(W),
                                                                                                   0809252b(R)
             undefined4        Stack[-0x3c]:4 local_3c                                XREF[1]:     0809228c(W)
             undefined4        Stack[-0x40]:4 local_40                                XREF[17]:    0809226a(W),
                                                                                                   0809287d(R),
                                                                                                   08092977(R),
                                                                                                   080929cc(R),
                                                                                                   08092a74(R),
                                                                                                   08092ab5(R),
                                                                                                   08092b8d(R),
                                                                                                   08092bda(R),
                                                                                                   08092c17(R),
                                                                                                   08092c37(R),
                                                                                                   08092d4b(R),
                                                                                                   08092ee8(R),
                                                                                                   08093005(R),
                                                                                                   080930a8(R),
                                                                                                   080930ed(R),
                                                                                                   0809310d(R),
                                                                                                   0809312e(R)
             undefined4        Stack[-0x44]:4 local_44                                XREF[5]:     08092f0f(W),
                                                                                                   08092fb6(R),
                                                                                                   08092fc0(W),
                                                                                                   08092ff1(W),
                                                                                                   08092ff9(R)
             undefined4        Stack[-0x48]:4 local_48                                XREF[16]:    080922ba(W),
                                                                                                   0809234a(RW),
                                                                                                   0809236a(W),
                                                                                                   08092477(RW),
                                                                                                   08092de4(W),
                                                                                                   08092e6f(R),
                                                                                                   08092e7c(R),
                                                                                                   08092e96(R),
                                                                                                   08092eba(R),
                                                                                                   08092ec9(W),
                                                                                                   08092ed2(R),
                                                                                                   0809324f(W),
                                                                                                   08093253(R),
                                                                                                   080932b4(R),
                                                                                                   08093314(W),
                                                                                                   08093340(RW)
             undefined4        Stack[-0x4c]:4 local_4c                                XREF[3]:     080922a4(W),
                                                                                                   080934c6(W),
                                                                                                   08093528(R)
             undefined4        Stack[-0x50]:4 local_50                                XREF[2]:     08092266(W),
                                                                                                   080922c7(R)
             undefined4        Stack[-0x54]:4 local_54                                XREF[2]:     080923a9(W),
                                                                                                   08092400(R)
             undefined4        Stack[-0x58]:4 local_58                                XREF[3]:     08092f60(W),
                                                                                                   08092fa3(W),
                                                                                                   08092fba(R)
             undefined4        Stack[-0x5c]:4 local_5c                                XREF[4]:     08092f34(W),
                                                                                                   08092f38(R),
                                                                                                   08092fc4(R),
                                                                                                   08092fcf(W)
             undefined4        Stack[-0x60]:4 local_60                                XREF[4]:     08092dec(W),
                                                                                                   08092e13(R),
                                                                                                   08092ebe(R),
                                                                                                   08092ece(W)
             undefined4        Stack[-0x64]:4 local_64                                XREF[4]:     08092391(W),
                                                                                                   0809241c(R),
                                                                                                   08092445(R),
                                                                                                   0809245a(W)
             undefined4        Stack[-0x68]:4 local_68                                XREF[4]:     08092399(W),
                                                                                                   08092411(R),
                                                                                                   08092449(R),
                                                                                                   0809245e(W)
             undefined4        Stack[-0x6c]:4 local_6c                                XREF[4]:     080923a1(W),
                                                                                                   080923b0(R),
                                                                                                   0809244d(R),
                                                                                                   08092462(W)
             undefined4        Stack[-0x70]:4 local_70                                XREF[2]:     0809235e(W),
                                                                                                   0809238d(R)
             undefined4        Stack[-0x74]:4 local_74                                XREF[4]:     08092362(W),
                                                                                                   08092372(R),
                                                                                                   08092470(R),
                                                                                                   0809247b(W)
             undefined4        Stack[-0x78]:4 local_78                                XREF[5]:     080922ac(W),
                                                                                                   0809230d(R),
                                                                                                   08092328(R),
                                                                                                   0809233f(R),
                                                                                                   0809234e(W)
             undefined4        Stack[-0x8c]:4 local_8c                                XREF[2]:     0809278e(*),
                                                                                                   08092e54(*)
                             GameRoundUpdate                                 XREF[1]:     GameUpdate:080914f1(c)
        08092250 55              PUSH       EBP
        08092251 57              PUSH       EDI
        08092252 56              PUSH       ESI
        08092253 53              PUSH       EBX
        08092254 83 ec 6c        SUB        ESP,0x6c
        08092257 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809225c 89 c5           MOV        EBP,EAX
        0809225e 89 c1           MOV        ECX,EAX
        08092260 8d 90 d4        LEA        EDX,[EAX + 0x139d4]
                 39 01 00
        08092266 89 44 24 2c     MOV        dword ptr [ESP + local_50],EAX
        0809226a 89 54 24 3c     MOV        dword ptr [ESP + local_40],EDX
        0809226e 81 c5 24        ADD        EBP,0x10424
                 04 01 00
        08092274 c7 44 24        MOV        dword ptr [ESP + local_2c],0xffffffff
                 50 ff ff
                 ff ff
        0809227c c7 44 24        MOV        dword ptr [ESP + local_28],0xffffffff
                 54 ff ff
                 ff ff
        08092284 c7 44 24        MOV        dword ptr [ESP + local_24],0xffffffff
                 58 ff ff
                 ff ff
        0809228c c7 44 24        MOV        dword ptr [ESP + local_3c],0x0
                 40 00 00
                 00 00
        08092294 c7 44 24        MOV        dword ptr [ESP + local_38],0x0
                 44 00 00
                 00 00
        0809229c c7 44 24        MOV        dword ptr [ESP + local_34],0x0
                 48 00 00
                 00 00
        080922a4 c7 44 24        MOV        dword ptr [ESP + local_4c],0x0
                 30 00 00
                 00 00
        080922ac c7 44 24        MOV        dword ptr [ESP + local_78],0x4
                 04 04 00
                 00 00
        080922b4 81 c1 18        ADD        ECX,0x10418
                 04 01 00
        080922ba c7 44 24        MOV        dword ptr [ESP + local_48],0x1
                 34 01 00
                 00 00
                             LAB_080922c2                                    XREF[1]:     08092352(j)
        080922c2 31 ff           XOR        EDI,EDI
        080922c4 8b 41 08        MOV        EAX,dword ptr [ECX + 0x8]
        080922c7 8b 5c 24 2c     MOV        EBX,dword ptr [ESP + local_50]
        080922cb 39 c7           CMP        EDI,EAX
        080922cd 7d 59           JGE        LAB_08092328
        080922cf eb 06           JMP        LAB_080922d7
                             LAB_080922d1                                    XREF[1]:     08092326(j)
        080922d1 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080922d7                                    XREF[1]:     080922cf(j)
        080922d7 8d 04 bf        LEA        EAX,[EDI + EDI*0x4]
        080922da 8b 44 85 00     MOV        EAX,dword ptr [EBP + EAX*0x4]
        080922de 8b b4 83        MOV        ESI,dword ptr [EBX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        080922e5 8b 86 60        MOV        EAX,dword ptr [ESI + 0x160]
                 01 00 00
        080922eb 8b 9e 24        MOV        EBX,dword ptr [ESI + 0xe24]
                 0e 00 00
        080922f1 89 c2           MOV        EDX,EAX
        080922f3 c1 e2 05        SHL        EDX,0x5
        080922f6 29 c2           SUB        EDX,EAX
        080922f8 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        080922fb c1 e2 03        SHL        EDX,0x3
        080922fe 89 d0           MOV        EAX,EDX
        08092300 c1 fa 1f        SAR        EDX,0x1f
        08092303 f7 be 64        IDIV       dword ptr [ESI + 0x164]
                 01 00 00
        08092309 31 d2           XOR        EDX,EDX
        0809230b 85 db           TEST       EBX,EBX
        0809230d 8b 5c 24 04     MOV        EBX,dword ptr [ESP + local_78]
        08092311 0f 95 c2        SETNZ      DL
        08092314 8b 74 1c 40     MOV        ESI,dword ptr [ESP + EBX*0x1 + 0x40]
        08092318 47              INC        EDI
        08092319 01 f0           ADD        EAX,ESI
        0809231b 01 d0           ADD        EAX,EDX
        0809231d 89 44 1c 40     MOV        dword ptr [ESP + EBX*0x1 + 0x40],EAX
        08092321 8b 41 08        MOV        EAX,dword ptr [ECX + 0x8]
        08092324 39 c7           CMP        EDI,EAX
        08092326 7c a9           JL         LAB_080922d1
                             LAB_08092328                                    XREF[1]:     080922cd(j)
        08092328 8b 5c 24 04     MOV        EBX,dword ptr [ESP + local_78]
        0809232c 83 c5 5c        ADD        EBP,0x5c
        0809232f 83 c1 5c        ADD        ECX,0x5c
        08092332 8b 54 1c 40     MOV        EDX,dword ptr [ESP + EBX*0x1 + 0x40]
        08092336 89 c3           MOV        EBX,EAX
        08092338 89 d0           MOV        EAX,EDX
        0809233a c1 fa 1f        SAR        EDX,0x1f
        0809233d f7 fb           IDIV       EBX
        0809233f 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_78]
        08092343 89 44 14 40     MOV        dword ptr [ESP + EDX*0x1 + 0x40],EAX
        08092347 83 c2 04        ADD        EDX,0x4
        0809234a ff 4c 24 34     DEC        dword ptr [ESP + local_48]
        0809234e 89 54 24 04     MOV        dword ptr [ESP + local_78],EDX
        08092352 0f 89 6a        JNS        LAB_080922c2
                 ff ff ff
        08092358 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809235e 89 5c 24 0c     MOV        dword ptr [ESP + local_70],EBX
        08092362 c7 44 24        MOV        dword ptr [ESP + local_74],0x0
                 08 00 00
                 00 00
        0809236a c7 44 24        MOV        dword ptr [ESP + local_48],0x1
                 34 01 00
                 00 00
                             LAB_08092372                                    XREF[1]:     0809247f(j)
        08092372 8b 4c 24 08     MOV        ECX,dword ptr [ESP + local_74]
        08092376 31 ff           XOR        EDI,EDI
        08092378 8d 04 19        LEA        EAX,[ECX + EBX*0x1]
        0809237b 8d a8 18        LEA        EBP,[EAX + 0x10418]
                 04 01 00
        08092381 3b b8 20        CMP        EDI,dword ptr [EAX + 0x10420]
                 04 01 00
        08092387 0f 8d e3        JGE        LAB_08092470
                 00 00 00
        0809238d 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_70]
        08092391 c7 44 24        MOV        dword ptr [ESP + local_64],0xfffffffc
                 18 fc ff
                 ff ff
        08092399 c7 44 24        MOV        dword ptr [ESP + local_68],0x10
                 14 10 00
                 00 00
        080923a1 c7 44 24        MOV        dword ptr [ESP + local_6c],0x0
                 10 00 00
                 00 00
        080923a9 89 4c 24 28     MOV        dword ptr [ESP + local_54],ECX
        080923ad 8d 76 00        LEA        ESI,[ESI]
                             LAB_080923b0                                    XREF[1]:     0809246a(j)
        080923b0 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_6c]
        080923b4 8b 44 2a 0c     MOV        EAX,dword ptr [EDX + EBP*0x1 + 0xc]
        080923b8 8b b4 83        MOV        ESI,dword ptr [EBX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        080923bf 85 f6           TEST       ESI,ESI
        080923c1 74 16           JZ         LAB_080923d9
        080923c3 8b 86 58        MOV        EAX,dword ptr [ESI + 0x158]
                 01 00 00
        080923c9 85 c0           TEST       EAX,EAX
        080923cb 74 0c           JZ         LAB_080923d9
        080923cd 8b 56 1c        MOV        EDX,dword ptr [ESI + 0x1c]
        080923d0 b8 01 00        MOV        EAX,0x1
                 00 00
        080923d5 85 d2           TEST       EDX,EDX
        080923d7 74 02           JZ         LAB_080923db
                             LAB_080923d9                                    XREF[2]:     080923c1(j), 080923cb(j)
        080923d9 31 c0           XOR        EAX,EAX
                             LAB_080923db                                    XREF[1]:     080923d7(j)
        080923db 85 c0           TEST       EAX,EAX
        080923dd 74 66           JZ         LAB_08092445
        080923df 8b 46 0c        MOV        EAX,dword ptr [ESI + 0xc]
        080923e2 8d 54 24 50     LEA        EDX=>local_2c,[ESP + 0x50]
        080923e6 c1 e0 02        SHL        EAX,0x2
        080923e9 83 3c 10 ff     CMP        dword ptr [EAX + EDX*0x1],-0x1
        080923ed 75 07           JNZ        LAB_080923f6
        080923ef c7 04 10        MOV        dword ptr [EAX + EDX*0x1],0x1
                 01 00 00 00
                             LAB_080923f6                                    XREF[1]:     080923ed(j)
        080923f6 83 7d 00 01     CMP        dword ptr [EBP],0x1
        080923fa 75 2b           JNZ        LAB_08092427
        080923fc 85 ff           TEST       EDI,EDI
        080923fe 7e 27           JLE        LAB_08092427
        08092400 8b 5c 24 28     MOV        EBX,dword ptr [ESP + local_54]
        08092404 8b 83 d4        MOV        EAX,dword ptr [EBX + 0x1e6d4]
                 e6 01 00
        0809240a 85 c0           TEST       EAX,EAX
        0809240c 75 19           JNZ        LAB_08092427
        0809240e 8d 45 0c        LEA        EAX,[EBP + 0xc]
        08092411 8b 54 24 14     MOV        EDX,dword ptr [ESP + local_68]
        08092415 8b 14 02        MOV        EDX,dword ptr [EDX + EAX*0x1]
        08092418 85 d2           TEST       EDX,EDX
        0809241a 74 0b           JZ         LAB_08092427
        0809241c 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_64]
        08092420 8b 14 02        MOV        EDX,dword ptr [EDX + EAX*0x1]
        08092423 85 d2           TEST       EDX,EDX
        08092425 74 1e           JZ         LAB_08092445
                             LAB_08092427                                    XREF[4]:     080923fa(j), 080923fe(j),
                                                                                          0809240c(j), 0809241a(j)
        08092427 8b 86 24        MOV        EAX,dword ptr [ESI + 0xe24]
                 0e 00 00
        0809242d 85 c0           TEST       EAX,EAX
        0809242f 74 12           JZ         LAB_08092443
        08092431 8b 56 0c        MOV        EDX,dword ptr [ESI + 0xc]
        08092434 8d 44 24 50     LEA        EAX=>local_2c,[ESP + 0x50]
        08092438 89 cb           MOV        EBX,ECX
        0809243a c7 04 90        MOV        dword ptr [EAX + EDX*0x4],0x0
                 00 00 00 00
        08092441 eb 02           JMP        LAB_08092445
                             LAB_08092443                                    XREF[1]:     0809242f(j)
        08092443 89 cb           MOV        EBX,ECX
                             LAB_08092445                                    XREF[3]:     080923dd(j), 08092425(j),
                                                                                          08092441(j)
        08092445 8b 74 24 18     MOV        ESI,dword ptr [ESP + local_64]
        08092449 8b 54 24 14     MOV        EDX,dword ptr [ESP + local_68]
        0809244d 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_6c]
        08092451 83 c6 14        ADD        ESI,0x14
        08092454 83 c2 14        ADD        EDX,0x14
        08092457 83 c0 14        ADD        EAX,0x14
        0809245a 89 74 24 18     MOV        dword ptr [ESP + local_64],ESI
        0809245e 89 54 24 14     MOV        dword ptr [ESP + local_68],EDX
        08092462 89 44 24 10     MOV        dword ptr [ESP + local_6c],EAX
        08092466 47              INC        EDI
        08092467 3b 7d 08        CMP        EDI,dword ptr [EBP + 0x8]
        0809246a 0f 8c 40        JL         LAB_080923b0
                 ff ff ff
                             LAB_08092470                                    XREF[1]:     08092387(j)
        08092470 8b 7c 24 08     MOV        EDI,dword ptr [ESP + local_74]
        08092474 83 c7 5c        ADD        EDI,0x5c
        08092477 ff 4c 24 34     DEC        dword ptr [ESP + local_48]
        0809247b 89 7c 24 08     MOV        dword ptr [ESP + local_74],EDI
        0809247f 0f 89 ed        JNS        LAB_08092372
                 fe ff ff
        08092485 8b 54 24 54     MOV        EDX,dword ptr [ESP + local_28]
        08092489 83 fa ff        CMP        EDX,-0x1
        0809248c 0f 84 30        JZ         LAB_080925c2
                 01 00 00
        08092492 8b 44 24 58     MOV        EAX,dword ptr [ESP + local_24]
        08092496 83 f8 ff        CMP        EAX,-0x1
        08092499 0f 84 23        JZ         LAB_080925c2
                 01 00 00
        0809249f 85 d2           TEST       EDX,EDX
        080924a1 74 23           JZ         LAB_080924c6
        080924a3 85 c0           TEST       EAX,EAX
        080924a5 74 1f           JZ         LAB_080924c6
        080924a7 c7 83 4c        MOV        dword ptr [EBX + 0x1d44c],0x2
                 d4 01 00
                 02 00 00 00
        080924b1 c7 83 48        MOV        dword ptr [EBX + 0x1d448],0x0
                 d4 01 00
                 00 00 00 00
        080924bb 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080924c1 e9 fc 00        JMP        LAB_080925c2
                 00 00
                             LAB_080924c6                                    XREF[2]:     080924a1(j), 080924a5(j)
        080924c6 85 d2           TEST       EDX,EDX
        080924c8 74 26           JZ         LAB_080924f0
        080924ca c7 83 4c        MOV        dword ptr [EBX + 0x1d44c],0x1
                 d4 01 00
                 01 00 00 00
        080924d4 c7 83 48        MOV        dword ptr [EBX + 0x1d448],0x2
                 d4 01 00
                 02 00 00 00
        080924de 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080924e4 e9 d9 00        JMP        LAB_080925c2
                 00 00
        080924e9 8d              ??         8Dh
        080924ea b4              ??         B4h
        080924eb 26              ??         26h    &
        080924ec 00              ??         00h
        080924ed 00              ??         00h
        080924ee 00              ??         00h
        080924ef 00              ??         00h
                             LAB_080924f0                                    XREF[1]:     080924c8(j)
        080924f0 85 c0           TEST       EAX,EAX
        080924f2 74 1f           JZ         LAB_08092513
        080924f4 c7 83 4c        MOV        dword ptr [EBX + 0x1d44c],0x1
                 d4 01 00
                 01 00 00 00
        080924fe c7 83 48        MOV        dword ptr [EBX + 0x1d448],0x1
                 d4 01 00
                 01 00 00 00
        08092508 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809250e e9 af 00        JMP        LAB_080925c2
                 00 00
                             LAB_08092513                                    XREF[1]:     080924f2(j)
        08092513 8b b3 54        MOV        ESI,dword ptr [EBX + 0x1d454]
                 d4 01 00
        08092519 85 f6           TEST       ESI,ESI
        0809251b 0f 85 a1        JNZ        LAB_080925c2
                 00 00 00
        08092521 c7 83 4c        MOV        dword ptr [EBX + 0x1d44c],0x3
                 d4 01 00
                 03 00 00 00
        0809252b 8b 54 24 44     MOV        EDX,dword ptr [ESP + local_38]
        0809252f 8b 44 24 48     MOV        EAX,dword ptr [ESP + local_34]
        08092533 39 c2           CMP        EDX,EAX
        08092535 7e 19           JLE        LAB_08092550
        08092537 c7 83 48        MOV        dword ptr [EBX + 0x1d448],0x1
                 d4 01 00
                 01 00 00 00
        08092541 51              PUSH       ECX
        08092542 6a 04           PUSH       0x4
        08092544 6a 00           PUSH       0x0
        08092546 6a 01           PUSH       0x1
        08092548 eb 3a           JMP        LAB_08092584
        0809254a 8d              ??         8Dh
        0809254b b6              ??         B6h
        0809254c 00              ??         00h
        0809254d 00              ??         00h
        0809254e 00              ??         00h
        0809254f 00              ??         00h
                             LAB_08092550                                    XREF[1]:     08092535(j)
        08092550 39 c2           CMP        EDX,EAX
        08092552 7d 40           JGE        LAB_08092594
        08092554 c7 83 48        MOV        dword ptr [EBX + 0x1d448],0x2
                 d4 01 00
                 02 00 00 00
        0809255e 83 bb 44        CMP        dword ptr [EBX + 0x1d444],0x3
                 d4 01 00 03
        08092565 74 16           JZ         LAB_0809257d
        08092567 8b 83 20        MOV        EAX,dword ptr [EBX + 0x1d420]
                 d4 01 00
        0809256d 83 f8 09        CMP        EAX,0x9
        08092570 7f 0b           JG         LAB_0809257d
        08092572 c7 84 83        MOV        dword ptr [EBX + EAX*0x4 + 0x1d48c],0x4
                 8c d4 01
                 00 04 00
                             LAB_0809257d                                    XREF[2]:     08092565(j), 08092570(j)
        0809257d 52              PUSH       EDX
        0809257e 6a 04           PUSH       0x4
        08092580 6a 00           PUSH       0x0
        08092582 6a 02           PUSH       0x2
                             LAB_08092584                                    XREF[1]:     08092548(j)
        08092584 e8 d7 4d        CALL       WinIconCheck                                     undefined WinIconCheck()
                 00 00
        08092589 83 c4 10        ADD        ESP,0x10
        0809258c 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092592 eb 2e           JMP        LAB_080925c2
                             LAB_08092594                                    XREF[1]:     08092552(j)
        08092594 50              PUSH       EAX
        08092595 6a 04           PUSH       0x4
        08092597 6a 00           PUSH       0x0
        08092599 6a 01           PUSH       0x1
        0809259b e8 c0 4d        CALL       WinIconCheck                                     undefined WinIconCheck()
                 00 00
        080925a0 83 c4 0c        ADD        ESP,0xc
        080925a3 6a 04           PUSH       0x4
        080925a5 6a 00           PUSH       0x0
        080925a7 6a 02           PUSH       0x2
        080925a9 e8 b2 4d        CALL       WinIconCheck                                     undefined WinIconCheck()
                 00 00
        080925ae a1 74 7a        MOV        EAX,[g]
                 28 08
        080925b3 83 c4 10        ADD        ESP,0x10
        080925b6 89 c3           MOV        EBX,EAX
        080925b8 c7 80 48        MOV        dword ptr [EAX + 0x1d448],0x0
                 d4 01 00
                 00 00 00 00
                             LAB_080925c2                                    XREF[7]:     0809248c(j), 08092499(j),
                                                                                          080924c1(j), 080924e4(j),
                                                                                          0809250e(j), 0809251b(j),
                                                                                          08092592(j)
        080925c2 8b ab 2c        MOV        EBP,dword ptr [EBX + 0x1cc2c]
                 cc 01 00
        080925c8 85 ed           TEST       EBP,EBP
        080925ca 74 10           JZ         LAB_080925dc
        080925cc c7 83 4c        MOV        dword ptr [EBX + 0x1d44c],0x0
                 d4 01 00
                 00 00 00 00
        080925d6 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080925dc                                    XREF[1]:     080925ca(j)
        080925dc 83 bb 44        CMP        dword ptr [EBX + 0x1d444],0x1
                 d4 01 00 01
        080925e3 76 10           JBE        LAB_080925f5
        080925e5 c7 83 5c        MOV        dword ptr [EBX + 0x1d45c],0x0
                 d4 01 00
                 00 00 00 00
        080925ef 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080925f5                                    XREF[1]:     080925e3(j)
        080925f5 8b bb 5c        MOV        EDI,dword ptr [EBX + 0x1d45c]
                 d4 01 00
        080925fb 85 ff           TEST       EDI,EDI
        080925fd 0f 84 12        JZ         LAB_08092815
                 02 00 00
        08092603 8b b3 30        MOV        ESI,dword ptr [EBX + 0x1cc30]
                 cc 01 00
        08092609 85 f6           TEST       ESI,ESI
        0809260b 0f 85 04        JNZ        LAB_08092815
                 02 00 00
        08092611 c7 83 5c        MOV        dword ptr [EBX + 0x1d45c],0x0
                 d4 01 00
                 00 00 00 00
        0809261b c7 83 44        MOV        dword ptr [EBX + 0x1d444],0x2
                 d4 01 00
                 02 00 00 00
        08092625 e8 56 d2        CALL       GameRoundResetPlayerPos                          undefined GameRoundResetPlayerPo
                 00 00
        0809262a 51              PUSH       ECX
        0809262b 68 00 01        PUSH       0x100
                 00 00
        08092630 68 00 01        PUSH       0x100
                 00 00
        08092635 68 00 01        PUSH       0x100
                 00 00
        0809263a e8 31 34        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        0809263f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08092645 83 c4 10        ADD        ESP,0x10
        08092648 8b 0d 84        MOV        ECX,dword ptr [V_Height]                         = ??
                 08 2c 08
        0809264e c7 82 50        MOV        dword ptr [EDX + 0x1d450],0xffffffff
                 d4 01 00
                 ff ff ff ff
        08092658 c7 82 30        MOV        dword ptr [EDX + 0x1cc30],0x1
                 cc 01 00
                 01 00 00 00
        08092662 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08092669 74 09           JZ         LAB_08092674
        0809266b 89 c8           MOV        EAX,ECX
        0809266d c1 e8 1f        SHR        EAX,0x1f
        08092670 01 c1           ADD        ECX,EAX
        08092672 d1 f9           SAR        ECX,0x1
                             LAB_08092674                                    XREF[1]:     08092669(j)
        08092674 8b ba 64        MOV        EDI,dword ptr [EDX + 0x1d164]
                 d1 01 00
        0809267a 89 8a 34        MOV        dword ptr [EDX + 0x1cc34],ECX
                 cc 01 00
        08092680 f7 9a 38        NEG        dword ptr [EDX + 0x1cc38]
                 cc 01 00
        08092686 3b ba 68        CMP        EDI,dword ptr [EDX + 0x1d168]
                 d1 01 00
        0809268c 7f 62           JG         LAB_080926f0
        0809268e 8d 34 bd        LEA        ESI,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        08092695 89 d3           MOV        EBX,EDX
        08092697 89 f5           MOV        EBP,ESI
        08092699 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_080926a0                                    XREF[1]:     080926e8(j)
        080926a0 8b 44 1d 04     MOV        EAX,dword ptr [EBP + EBX*0x1 + 0x4]
        080926a4 85 c0           TEST       EAX,EAX
        080926a6 74 16           JZ         LAB_080926be
        080926a8 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        080926ae 85 d2           TEST       EDX,EDX
        080926b0 74 0c           JZ         LAB_080926be
        080926b2 8b 48 1c        MOV        ECX,dword ptr [EAX + 0x1c]
        080926b5 ba 01 00        MOV        EDX,0x1
                 00 00
        080926ba 85 c9           TEST       ECX,ECX
        080926bc 74 02           JZ         LAB_080926c0
                             LAB_080926be                                    XREF[2]:     080926a6(j), 080926b0(j)
        080926be 31 d2           XOR        EDX,EDX
                             LAB_080926c0                                    XREF[1]:     080926bc(j)
        080926c0 85 d2           TEST       EDX,EDX
        080926c2 74 17           JZ         LAB_080926db
        080926c4 50              PUSH       EAX
        080926c5 50              PUSH       EAX
        080926c6 6a 00           PUSH       0x0
        080926c8 8b 4c 1e 04     MOV        ECX,dword ptr [ESI + EBX*0x1 + 0x4]
        080926cc 51              PUSH       ECX
        080926cd e8 5e f0        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        080926d2 83 c4 10        ADD        ESP,0x10
        080926d5 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080926db                                    XREF[1]:     080926c2(j)
        080926db 47              INC        EDI
        080926dc 83 c6 04        ADD        ESI,0x4
        080926df 83 c5 04        ADD        EBP,0x4
        080926e2 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        080926e8 7e b6           JLE        LAB_080926a0
        080926ea eb 06           JMP        LAB_080926f2
        080926ec 8d              ??         8Dh
        080926ed 74              ??         74h    t
        080926ee 26              ??         26h    &
        080926ef 00              ??         00h
                             LAB_080926f0                                    XREF[1]:     0809268c(j)
        080926f0 89 d3           MOV        EBX,EDX
                             LAB_080926f2                                    XREF[1]:     080926ea(j)
        080926f2 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        080926f8 89 d8           MOV        EAX,EBX
        080926fa 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092700 0f 8f e5        JG         LAB_080927eb
                 00 00 00
        08092706 8d 34 bd        LEA        ESI,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809270d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08092710                                    XREF[1]:     080927e5(j)
        08092710 8b 44 06 04     MOV        EAX,dword ptr [ESI + EAX*0x1 + 0x4]
        08092714 85 c0           TEST       EAX,EAX
        08092716 74 10           JZ         LAB_08092728
        08092718 c7 80 5c        MOV        dword ptr [EAX + 0x15c],0x0
                 01 00 00
                 00 00 00 00
        08092722 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092728                                    XREF[1]:     08092716(j)
        08092728 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        0809272c 85 c0           TEST       EAX,EAX
        0809272e 74 16           JZ         LAB_08092746
        08092730 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08092736 85 d2           TEST       EDX,EDX
        08092738 74 0c           JZ         LAB_08092746
        0809273a 8b 68 1c        MOV        EBP,dword ptr [EAX + 0x1c]
        0809273d ba 01 00        MOV        EDX,0x1
                 00 00
        08092742 85 ed           TEST       EBP,EBP
        08092744 74 02           JZ         LAB_08092748
                             LAB_08092746                                    XREF[2]:     0809272e(j), 08092738(j)
        08092746 31 d2           XOR        EDX,EDX
                             LAB_08092748                                    XREF[1]:     08092744(j)
        08092748 85 d2           TEST       EDX,EDX
        0809274a 74 54           JZ         LAB_080927a0
        0809274c 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        08092750 83 ec 0c        SUB        ESP,0xc
        08092753 8b 80 1c        MOV        EAX,dword ptr [EAX + 0x21c]
                 02 00 00
        08092759 8b 18           MOV        EBX,dword ptr [EAX]
        0809275b 53              PUSH       EBX
        0809275c e8 ff 88        CALL       ArrayScanFirst                                   undefined ArrayScanFirst()
                 fb ff
        08092761 83 c4 10        ADD        ESP,0x10
        08092764 85 c0           TEST       EAX,EAX
        08092766 74 6b           JZ         LAB_080927d3
        08092768 89 f5           MOV        EBP,ESI
        0809276a 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_08092770                                    XREF[1]:     0809279b(j)
        08092770 a1 74 7a        MOV        EAX,[g]
                 28 08
        08092775 51              PUSH       ECX
        08092776 83 c0 04        ADD        EAX,0x4
        08092779 51              PUSH       ECX
        0809277a 8b 53 1c        MOV        EDX,dword ptr [EBX + 0x1c]
        0809277d 52              PUSH       EDX
        0809277e 8b 44 05 00     MOV        EAX,dword ptr [EBP + EAX*0x1]
        08092782 8b 80 1c        MOV        EAX,dword ptr [EAX + 0x21c]
                 02 00 00
        08092788 50              PUSH       EAX
        08092789 e8 22 6b        CALL       ProjArrayDelete                                  undefined ProjArrayDelete()
                 02 00
        0809278e 89 1c 24        MOV        dword ptr [ESP]=>local_8c,EBX
        08092791 e8 fa 88        CALL       ArrayScanNext                                    undefined ArrayScanNext()
                 fb ff
        08092796 83 c4 10        ADD        ESP,0x10
        08092799 85 c0           TEST       EAX,EAX
        0809279b 75 d3           JNZ        LAB_08092770
        0809279d eb 34           JMP        LAB_080927d3
        0809279f 90              ??         90h
                             LAB_080927a0                                    XREF[1]:     0809274a(j)
        080927a0 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        080927a4 85 c0           TEST       EAX,EAX
        080927a6 74 0f           JZ         LAB_080927b7
        080927a8 8b 88 58        MOV        ECX,dword ptr [EAX + 0x158]
                 01 00 00
        080927ae ba 01 00        MOV        EDX,0x1
                 00 00
        080927b3 85 c9           TEST       ECX,ECX
        080927b5 75 02           JNZ        LAB_080927b9
                             LAB_080927b7                                    XREF[1]:     080927a6(j)
        080927b7 31 d2           XOR        EDX,EDX
                             LAB_080927b9                                    XREF[1]:     080927b5(j)
        080927b9 85 d2           TEST       EDX,EDX
        080927bb 74 1c           JZ         LAB_080927d9
        080927bd 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        080927c1 83 78 1c 01     CMP        dword ptr [EAX + 0x1c],0x1
        080927c5 75 12           JNZ        LAB_080927d9
        080927c7 83 ec 0c        SUB        ESP,0xc
        080927ca 50              PUSH       EAX
        080927cb e8 60 61        CALL       HelperDestroy                                    undefined HelperDestroy()
                 00 00
        080927d0 83 c4 10        ADD        ESP,0x10
                             LAB_080927d3                                    XREF[2]:     08092766(j), 0809279d(j)
        080927d3 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080927d9                                    XREF[2]:     080927bb(j), 080927c5(j)
        080927d9 47              INC        EDI
        080927da 83 c6 04        ADD        ESI,0x4
        080927dd 89 d8           MOV        EAX,EBX
        080927df 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        080927e5 0f 8e 25        JLE        LAB_08092710
                 ff ff ff
                             LAB_080927eb                                    XREF[1]:     08092700(j)
        080927eb 83 ec 0c        SUB        ESP,0xc
        080927ee 8b 83 f8        MOV        EAX,dword ptr [EBX + 0x14af8]
                 4a 01 00
        080927f4 50              PUSH       EAX
        080927f5 e8 46 c0        CALL       ExplodArrayReset                                 undefined ExplodArrayReset()
                 ff ff
        080927fa a1 74 7a        MOV        EAX,[g]
                 28 08
        080927ff 5d              POP        EBP
        08092800 8b b8 fc        MOV        EDI,dword ptr [EAX + 0x14afc]
                 4a 01 00
        08092806 57              PUSH       EDI
        08092807 e8 34 c0        CALL       ExplodArrayReset                                 undefined ExplodArrayReset()
                 ff ff
        0809280c 83 c4 10        ADD        ESP,0x10
                             LAB_0809280f                                    XREF[5]:     080929f4(j), 08092b7a(j),
                                                                                          08092b87(j), 08092bb1(j),
                                                                                          08093093(j)
        0809280f 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092815                                    XREF[4]:     080925fd(j), 0809260b(j),
                                                                                          080928c9(j), 08092a6f(j)
        08092815 8b 83 44        MOV        EAX,dword ptr [EBX + 0x1d444]
                 d4 01 00
        0809281b c7 83 80        MOV        dword ptr [EBX + 0x1d380],0x1
                 d3 01 00
                 01 00 00 00
        08092825 83 f8 04        CMP        EAX,0x4
        08092828 0f 87 a2        JA         LAB_080934d0
                 0c 00 00
                             switchD_0809282e::switchD
        0809282e ff 24 85        JMP        dword ptr [EAX*0x4 + switchD_0809282e::switchd   = 08092835
                 60 1e 22 08                                                                 = 080928d0
                                                                                             = 08092bc8
                             switchD_0809282e::caseD_0                       XREF[2]:     0809282e(j), 08221e60(*)
        08092835 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809283a 8b b8 50        MOV        EDI,dword ptr [EAX + 0x1d450]
                 d4 01 00
        08092840 83 ef 02        SUB        EDI,0x2
        08092843 c7 80 80        MOV        dword ptr [EAX + 0x1d380],0x0
                 d3 01 00
                 00 00 00 00
        0809284d 89 f8           MOV        EAX,EDI
        0809284f c1 e8 1f        SHR        EAX,0x1f
        08092852 48              DEC        EAX
        08092853 21 c7           AND        EDI,EAX
        08092855 83 ff 0f        CMP        EDI,0xf
        08092858 7f 0b           JG         LAB_08092865
        0809285a 89 f8           MOV        EAX,EDI
        0809285c c1 e0 04        SHL        EAX,0x4
        0809285f 56              PUSH       ESI
        08092860 50              PUSH       EAX
        08092861 50              PUSH       EAX
        08092862 50              PUSH       EAX
        08092863 eb 10           JMP        LAB_08092875
                             LAB_08092865                                    XREF[1]:     08092858(j)
        08092865 53              PUSH       EBX
        08092866 68 00 01        PUSH       0x100
                 00 00
        0809286b 68 00 01        PUSH       0x100
                 00 00
        08092870 68 00 01        PUSH       0x100
                 00 00
                             LAB_08092875                                    XREF[1]:     08092863(j)
        08092875 e8 f6 31        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        0809287a 83 c4 10        ADD        ESP,0x10
        0809287d 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        08092881 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092887 8b 41 08        MOV        EAX,dword ptr [ECX + 0x8]
        0809288a 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092890 0f 8c 40        JL         switchD_0809282e::default
                 0c 00 00
        08092896 51              PUSH       ECX
        08092897 68 00 01        PUSH       0x100
                 00 00
        0809289c 68 00 01        PUSH       0x100
                 00 00
        080928a1 68 00 01        PUSH       0x100
                 00 00
        080928a6 e8 c5 31        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        080928ab a1 74 7a        MOV        EAX,[g]
                 28 08
        080928b0 83 c4 10        ADD        ESP,0x10
        080928b3 89 c3           MOV        EBX,EAX
        080928b5 c7 80 44        MOV        dword ptr [EAX + 0x1d444],0x1
                 d4 01 00
                 01 00 00 00
        080928bf c7 80 50        MOV        dword ptr [EAX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        080928c9 e9 47 ff        JMP        LAB_08092815
                 ff ff
        080928ce 89              ??         89h
        080928cf f6              ??         F6h
                             switchD_0809282e::caseD_1                       XREF[2]:     0809282e(j), 08221e64(*)
        080928d0 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080928d6 89 d8           MOV        EAX,EBX
        080928d8 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        080928de 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        080928e4 7f 78           JG         LAB_0809295e
        080928e6 8d 0c bd        LEA        ECX,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        080928ed 89 ce           MOV        ESI,ECX
        080928ef 90              NOP
                             LAB_080928f0                                    XREF[1]:     0809295c(j)
        080928f0 8b 44 06 04     MOV        EAX,dword ptr [ESI + EAX*0x1 + 0x4]
        080928f4 85 c0           TEST       EAX,EAX
        080928f6 74 16           JZ         LAB_0809290e
        080928f8 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        080928fe 85 d2           TEST       EDX,EDX
        08092900 74 0c           JZ         LAB_0809290e
        08092902 8b 40 1c        MOV        EAX,dword ptr [EAX + 0x1c]
        08092905 ba 01 00        MOV        EDX,0x1
                 00 00
        0809290a 85 c0           TEST       EAX,EAX
        0809290c 74 02           JZ         LAB_08092910
                             LAB_0809290e                                    XREF[2]:     080928f6(j), 08092900(j)
        0809290e 31 d2           XOR        EDX,EDX
                             LAB_08092910                                    XREF[1]:     0809290c(j)
        08092910 85 d2           TEST       EDX,EDX
        08092912 74 39           JZ         LAB_0809294d
        08092914 83 bb 18        CMP        dword ptr [EBX + 0x1d418],0x1
                 d4 01 00 01
        0809291b 75 30           JNZ        LAB_0809294d
        0809291d 8b ab 50        MOV        EBP,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08092923 85 ed           TEST       EBP,EBP
        08092925 78 19           JS         LAB_08092940
        08092927 8b 44 19 04     MOV        EAX,dword ptr [ECX + EBX*0x1 + 0x4]
        0809292b 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092931 c7 80 5c        MOV        dword ptr [EAX + 0x15c],0x0
                 01 00 00
                 00 00 00 00
        0809293b eb 10           JMP        LAB_0809294d
        0809293d 8d              ??         8Dh
        0809293e 76              ??         76h    v
        0809293f 00              ??         00h
                             LAB_08092940                                    XREF[1]:     08092925(j)
        08092940 c6 83 8c        MOV        byte ptr [EBX + 0x1d38c],0x1
                 d3 01 00 01
        08092947 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809294d                                    XREF[3]:     08092912(j), 0809291b(j),
                                                                                          0809293b(j)
        0809294d 47              INC        EDI
        0809294e 83 c1 04        ADD        ECX,0x4
        08092951 83 c6 04        ADD        ESI,0x4
        08092954 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        0809295a 89 d8           MOV        EAX,EBX
        0809295c 7e 92           JLE        LAB_080928f0
                             LAB_0809295e                                    XREF[1]:     080928e4(j)
        0809295e 80 bb 8c        CMP        byte ptr [EBX + 0x1d38c],0x0
                 d3 01 00 00
        08092965 74 10           JZ         LAB_08092977
        08092967 c7 83 38        MOV        dword ptr [EBX + 0x1d438],0x0
                 d4 01 00
                 00 00 00 00
        08092971 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092977                                    XREF[1]:     08092965(j)
        08092977 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        0809297b 8b 82 c0        MOV        EAX,dword ptr [EDX + 0x4c0]
                 04 00 00
        08092981 40              INC        EAX
        08092982 39 83 38        CMP        dword ptr [EBX + 0x1d438],EAX
                 d4 01 00
        08092988 75 42           JNZ        LAB_080929cc
        0809298a 8b 83 18        MOV        EAX,dword ptr [EBX + 0x1d418]
                 d4 01 00
        08092990 83 f8 09        CMP        EAX,0x9
        08092993 7f 37           JG         LAB_080929cc
        08092995 8b bb a0        MOV        EDI,dword ptr [EBX + 0x1d3a0]
                 d3 01 00
        0809299b 85 ff           TEST       EDI,EDI
        0809299d 75 2d           JNZ        LAB_080929cc
        0809299f 6a 00           PUSH       0x0
        080929a1 8b b4 82        MOV        ESI,dword ptr [EDX + EAX*0x4 + 0x4ec]
                 ec 04 00 00
        080929a8 56              PUSH       ESI
        080929a9 8b 83 18        MOV        EAX,dword ptr [EBX + 0x1d418]
                 d4 01 00
        080929af 8b 8c 82        MOV        ECX,dword ptr [EDX + EAX*0x4 + 0x4c4]
                 c4 04 00 00
        080929b6 51              PUSH       ECX
        080929b7 8b 93 54        MOV        EDX,dword ptr [EBX + 0x10554]
                 05 01 00
        080929bd 52              PUSH       EDX
        080929be e8 0d 76        CALL       GameSndPlay                                      undefined GameSndPlay()
                 02 00
        080929c3 83 c4 10        ADD        ESP,0x10
        080929c6 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080929cc                                    XREF[3]:     08092988(j), 08092993(j),
                                                                                          0809299d(j)
        080929cc 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        080929d0 8b 83 38        MOV        EAX,dword ptr [EBX + 0x1d438]
                 d4 01 00
        080929d6 3b 41 0c        CMP        EAX,dword ptr [ECX + 0xc]
        080929d9 7c 25           JL         LAB_08092a00
        080929db c7 83 44        MOV        dword ptr [EBX + 0x1d444],0x2
                 d4 01 00
                 02 00 00 00
        080929e5 c7 83 50        MOV        dword ptr [EBX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        080929ef e8 8c ce        CALL       GameRoundResetPlayerPos                          undefined GameRoundResetPlayerPo
                 00 00
        080929f4 e9 16 fe        JMP        LAB_0809280f
                 ff ff
        080929f9 8d              ??         8Dh
        080929fa b4              ??         B4h
        080929fb 26              ??         26h    &
        080929fc 00              ??         00h
        080929fd 00              ??         00h
        080929fe 00              ??         00h
        080929ff 00              ??         00h
                             LAB_08092a00                                    XREF[1]:     080929d9(j)
        08092a00 40              INC        EAX
        08092a01 89 83 38        MOV        dword ptr [EBX + 0x1d438],EAX
                 d4 01 00
        08092a07 e9 c4 0a        JMP        LAB_080934d0
                 00 00
        08092a0c 8d              ??         8Dh
        08092a0d 74              ??         74h    t
        08092a0e 26              ??         26h    &
        08092a0f 00              ??         00h
                             switchD_0809282e::caseD_2                       XREF[2]:     0809282e(j), 08221e68(*)
        08092a10 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092a16 83 bb cc        CMP        dword ptr [EBX + 0x1d3cc],-0x1
                 d3 01 00 ff
        08092a1d 75 55           JNZ        LAB_08092a74
        08092a1f 8b 83 34        MOV        EAX,dword ptr [EBX + 0x1d434]
                 d4 01 00
        08092a25 85 c0           TEST       EAX,EAX
        08092a27 75 4b           JNZ        LAB_08092a74
        08092a29 8b 8b 50        MOV        ECX,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08092a2f 8b 93 28        MOV        EDX,dword ptr [EBX + 0x14228]
                 42 01 00
        08092a35 39 d1           CMP        ECX,EDX
        08092a37 7c 3b           JL         LAB_08092a74
        08092a39 8b 83 54        MOV        EAX,dword ptr [EBX + 0x1d454]
                 d4 01 00
        08092a3f 85 c0           TEST       EAX,EAX
        08092a41 7e 31           JLE        LAB_08092a74
        08092a43 80 bb 93        CMP        byte ptr [EBX + 0x1d393],0x0
                 d3 01 00 00
        08092a4a 75 28           JNZ        LAB_08092a74
        08092a4c 48              DEC        EAX
        08092a4d 89 83 54        MOV        dword ptr [EBX + 0x1d454],EAX
                 d4 01 00
        08092a53 85 c0           TEST       EAX,EAX
        08092a55 75 1d           JNZ        LAB_08092a74
        08092a57 39 d1           CMP        ECX,EDX
        08092a59 7e 19           JLE        LAB_08092a74
        08092a5b c7 83 44        MOV        dword ptr [EBX + 0x1d444],0x3
                 d4 01 00
                 03 00 00 00
        08092a65 c7 83 50        MOV        dword ptr [EBX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        08092a6f e9 a1 fd        JMP        LAB_08092815
                 ff ff
                             LAB_08092a74                                    XREF[7]:     08092a1d(j), 08092a27(j),
                                                                                          08092a37(j), 08092a41(j),
                                                                                          08092a4a(j), 08092a55(j),
                                                                                          08092a59(j)
        08092a74 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        08092a78 8b 82 84        MOV        EAX,dword ptr [EDX + 0x584]
                 05 00 00
        08092a7e 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092a84 75 2f           JNZ        LAB_08092ab5
        08092a86 8b ab a0        MOV        EBP,dword ptr [EBX + 0x1d3a0]
                 d3 01 00
        08092a8c 85 ed           TEST       EBP,EBP
        08092a8e 75 25           JNZ        LAB_08092ab5
        08092a90 6a 00           PUSH       0x0
        08092a92 8b ba 8c        MOV        EDI,dword ptr [EDX + 0x58c]
                 05 00 00
        08092a98 57              PUSH       EDI
        08092a99 8b b2 88        MOV        ESI,dword ptr [EDX + 0x588]
                 05 00 00
        08092a9f 56              PUSH       ESI
        08092aa0 8b 8b 54        MOV        ECX,dword ptr [EBX + 0x10554]
                 05 01 00
        08092aa6 51              PUSH       ECX
        08092aa7 e8 24 75        CALL       GameSndPlay                                      undefined GameSndPlay()
                 02 00
        08092aac 83 c4 10        ADD        ESP,0x10
        08092aaf 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092ab5                                    XREF[2]:     08092a84(j), 08092a8e(j)
        08092ab5 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        08092ab9 89 da           MOV        EDX,EBX
        08092abb 8b 81 54        MOV        EAX,dword ptr [ECX + 0x854]
                 08 00 00
        08092ac1 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092ac7 75 79           JNZ        LAB_08092b42
        08092ac9 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        08092acf 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092ad5 7f 6b           JG         LAB_08092b42
        08092ad7 8d 34 bd        LEA        ESI,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        08092ade 89 f6           MOV        ESI,ESI
                             LAB_08092ae0                                    XREF[1]:     08092b40(j)
        08092ae0 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        08092ae4 85 c0           TEST       EAX,EAX
        08092ae6 74 16           JZ         LAB_08092afe
        08092ae8 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08092aee 85 d2           TEST       EDX,EDX
        08092af0 74 0c           JZ         LAB_08092afe
        08092af2 8b 68 1c        MOV        EBP,dword ptr [EAX + 0x1c]
        08092af5 ba 01 00        MOV        EDX,0x1
                 00 00
        08092afa 85 ed           TEST       EBP,EBP
        08092afc 74 02           JZ         LAB_08092b00
                             LAB_08092afe                                    XREF[2]:     08092ae6(j), 08092af0(j)
        08092afe 31 d2           XOR        EDX,EDX
                             LAB_08092b00                                    XREF[1]:     08092afc(j)
        08092b00 85 d2           TEST       EDX,EDX
        08092b02 74 30           JZ         LAB_08092b34
        08092b04 8d 53 04        LEA        EDX,[EBX + 0x4]
        08092b07 8b 04 16        MOV        EAX,dword ptr [ESI + EDX*0x1]
        08092b0a 8b 88 f4        MOV        ECX,dword ptr [EAX + 0xbf4]
                 0b 00 00
        08092b10 c7 80 0c        MOV        dword ptr [EAX + 0xe0c],0x1
                 0e 00 00
                 01 00 00 00
        08092b1a 85 c9           TEST       ECX,ECX
        08092b1c 74 10           JZ         LAB_08092b2e
        08092b1e 50              PUSH       EAX
        08092b1f 50              PUSH       EAX
        08092b20 6a 00           PUSH       0x0
        08092b22 8b 2c 16        MOV        EBP,dword ptr [ESI + EDX*0x1]
        08092b25 55              PUSH       EBP
        08092b26 e8 05 ec        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        08092b2b 83 c4 10        ADD        ESP,0x10
                             LAB_08092b2e                                    XREF[1]:     08092b1c(j)
        08092b2e 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092b34                                    XREF[1]:     08092b02(j)
        08092b34 47              INC        EDI
        08092b35 83 c6 04        ADD        ESI,0x4
        08092b38 89 da           MOV        EDX,EBX
        08092b3a 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092b40 7e 9e           JLE        LAB_08092ae0
                             LAB_08092b42                                    XREF[2]:     08092ac7(j), 08092ad5(j)
        08092b42 8b 93 4c        MOV        EDX,dword ptr [EBX + 0x1d44c]
                 d4 01 00
        08092b48 85 d2           TEST       EDX,EDX
        08092b4a 74 6a           JZ         LAB_08092bb6
        08092b4c 80 bb 8e        CMP        byte ptr [EBX + 0x1d38e],0x0
                 d3 01 00 00
        08092b53 75 61           JNZ        LAB_08092bb6
        08092b55 8b 83 28        MOV        EAX,dword ptr [EBX + 0x14228]
                 42 01 00
        08092b5b 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092b61 7e 53           JLE        LAB_08092bb6
        08092b63 c7 83 44        MOV        dword ptr [EBX + 0x1d444],0x3
                 d4 01 00
                 03 00 00 00
        08092b6d c7 83 50        MOV        dword ptr [EBX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        08092b77 83 fa 03        CMP        EDX,0x3
        08092b7a 0f 84 8f        JZ         LAB_0809280f
                 fc ff ff
        08092b80 80 bb 90        CMP        byte ptr [EBX + 0x1d390],0x0
                 d3 01 00 00
        08092b87 0f 85 82        JNZ        LAB_0809280f
                 fc ff ff
        08092b8d 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        08092b91 8b 82 58        MOV        EAX,dword ptr [EDX + 0x858]
                 08 00 00
        08092b97 89 83 2c        MOV        dword ptr [EBX + 0x1d42c],EAX
                 d4 01 00
        08092b9d c7 83 30        MOV        dword ptr [EBX + 0x1d430],0x1f4
                 d4 01 00
                 f4 01 00 00
        08092ba7 c7 83 34        MOV        dword ptr [EBX + 0x1d434],0x1f4
                 d4 01 00
                 f4 01 00 00
        08092bb1 e9 59 fc        JMP        LAB_0809280f
                 ff ff
                             LAB_08092bb6                                    XREF[3]:     08092b4a(j), 08092b53(j),
                                                                                          08092b61(j)
        08092bb6 8b b3 58        MOV        ESI,dword ptr [EBX + 0x1d458]
                 d4 01 00
        08092bbc 46              INC        ESI
        08092bbd 89 b3 58        MOV        dword ptr [EBX + 0x1d458],ESI
                 d4 01 00
        08092bc3 e9 08 09        JMP        LAB_080934d0
                 00 00
                             switchD_0809282e::caseD_3                       XREF[2]:     0809282e(j), 08221e6c(*)
        08092bc8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08092bce 8b 82 50        MOV        EAX,dword ptr [EDX + 0x1d450]
                 d4 01 00
        08092bd4 89 82 3c        MOV        dword ptr [EDX + 0x1d43c],EAX
                 d4 01 00
        08092bda 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        08092bde 3b 81 d8        CMP        EAX,dword ptr [ECX + 0x6d8]
                 06 00 00
        08092be4 75 72           JNZ        LAB_08092c58
        08092be6 8b 82 4c        MOV        EAX,dword ptr [EDX + 0x1d44c]
                 d4 01 00
        08092bec 83 f8 03        CMP        EAX,0x3
        08092bef 75 1f           JNZ        LAB_08092c10
        08092bf1 6a 00           PUSH       0x0
        08092bf3 8b 99 f0        MOV        EBX,dword ptr [ECX + 0x6f0]
                 06 00 00
        08092bf9 53              PUSH       EBX
        08092bfa 8b 89 ec        MOV        ECX,dword ptr [ECX + 0x6ec]
                 06 00 00
        08092c00 51              PUSH       ECX
        08092c01 8b 92 54        MOV        EDX,dword ptr [EDX + 0x10554]
                 05 01 00
        08092c07 52              PUSH       EDX
        08092c08 eb 46           JMP        LAB_08092c50
        08092c0a 8d              ??         8Dh
        08092c0b b6              ??         B6h
        08092c0c 00              ??         00h
        08092c0d 00              ??         00h
        08092c0e 00              ??         00h
        08092c0f 00              ??         00h
                             LAB_08092c10                                    XREF[1]:     08092bef(j)
        08092c10 83 f8 02        CMP        EAX,0x2
        08092c13 75 1d           JNZ        LAB_08092c32
        08092c15 6a 00           PUSH       0x0
        08092c17 8b 5c 24 40     MOV        EBX,dword ptr [ESP + local_40]
        08092c1b 8b 83 e8        MOV        EAX,dword ptr [EBX + 0x6e8]
                 06 00 00
        08092c21 50              PUSH       EAX
        08092c22 8b ab e4        MOV        EBP,dword ptr [EBX + 0x6e4]
                 06 00 00
        08092c28 55              PUSH       EBP
        08092c29 8b ba 54        MOV        EDI,dword ptr [EDX + 0x10554]
                 05 01 00
        08092c2f 57              PUSH       EDI
        08092c30 eb 1e           JMP        LAB_08092c50
                             LAB_08092c32                                    XREF[1]:     08092c13(j)
        08092c32 48              DEC        EAX
        08092c33 75 23           JNZ        LAB_08092c58
        08092c35 6a 00           PUSH       0x0
        08092c37 8b 44 24 40     MOV        EAX,dword ptr [ESP + local_40]
        08092c3b 8b b0 e0        MOV        ESI,dword ptr [EAX + 0x6e0]
                 06 00 00
        08092c41 56              PUSH       ESI
        08092c42 8b 98 dc        MOV        EBX,dword ptr [EAX + 0x6dc]
                 06 00 00
        08092c48 53              PUSH       EBX
        08092c49 8b 8a 54        MOV        ECX,dword ptr [EDX + 0x10554]
                 05 01 00
        08092c4f 51              PUSH       ECX
                             LAB_08092c50                                    XREF[2]:     08092c08(j), 08092c30(j)
        08092c50 e8 7b 73        CALL       GameSndPlay                                      undefined GameSndPlay()
                 02 00
        08092c55 83 c4 10        ADD        ESP,0x10
                             LAB_08092c58                                    XREF[2]:     08092be4(j), 08092c33(j)
        08092c58 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092c5e 83 bb 4c        CMP        dword ptr [EBX + 0x1d44c],0x3
                 d4 01 00 03
        08092c65 0f 84 e0        JZ         LAB_08092d4b
                 00 00 00
        08092c6b 8b 93 2c        MOV        EDX,dword ptr [EBX + 0x1422c]
                 42 01 00
        08092c71 89 d0           MOV        EAX,EDX
        08092c73 c1 e8 1f        SHR        EAX,0x1f
        08092c76 01 c2           ADD        EDX,EAX
        08092c78 8b 83 50        MOV        EAX,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08092c7e d1 fa           SAR        EDX,0x1
        08092c80 39 d0           CMP        EAX,EDX
        08092c82 7d 19           JGE        LAB_08092c9d
        08092c84 83 f8 05        CMP        EAX,0x5
        08092c87 75 14           JNZ        LAB_08092c9d
        08092c89 c7 83 30        MOV        dword ptr [EBX + 0x1d430],0xc8
                 d4 01 00
                 c8 00 00 00
        08092c93 c7 83 34        MOV        dword ptr [EBX + 0x1d434],0xc8
                 d4 01 00
                 c8 00 00 00
                             LAB_08092c9d                                    XREF[2]:     08092c82(j), 08092c87(j)
        08092c9d 8b 93 2c        MOV        EDX,dword ptr [EBX + 0x1422c]
                 42 01 00
        08092ca3 89 d0           MOV        EAX,EDX
        08092ca5 c1 e8 1f        SHR        EAX,0x1f
        08092ca8 01 c2           ADD        EDX,EAX
        08092caa d1 fa           SAR        EDX,0x1
        08092cac 39 93 50        CMP        dword ptr [EBX + 0x1d450],EDX
                 d4 01 00
        08092cb2 75 1a           JNZ        LAB_08092cce
        08092cb4 c7 83 30        MOV        dword ptr [EBX + 0x1d430],0x64
                 d4 01 00
                 64 00 00 00
        08092cbe c7 83 34        MOV        dword ptr [EBX + 0x1d434],0x64
                 d4 01 00
                 64 00 00 00
        08092cc8 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092cce                                    XREF[1]:     08092cb2(j)
        08092cce 8b 83 2c        MOV        EAX,dword ptr [EBX + 0x1422c]
                 42 01 00
        08092cd4 b9 67 66        MOV        ECX,0x66666667
                 66 66
        08092cd9 8d 34 c5        LEA        ESI,[EAX*0x8 + 0x0]
                 00 00 00 00
        08092ce0 29 c6           SUB        ESI,EAX
        08092ce2 89 f0           MOV        EAX,ESI
        08092ce4 f7 e9           IMUL       ECX
        08092ce6 89 d7           MOV        EDI,EDX
        08092ce8 89 f2           MOV        EDX,ESI
        08092cea c1 ff 02        SAR        EDI,0x2
        08092ced c1 fa 1f        SAR        EDX,0x1f
        08092cf0 29 d7           SUB        EDI,EDX
        08092cf2 39 bb 50        CMP        dword ptr [EBX + 0x1d450],EDI
                 d4 01 00
        08092cf8 75 1a           JNZ        LAB_08092d14
        08092cfa c7 83 30        MOV        dword ptr [EBX + 0x1d430],0x32
                 d4 01 00
                 32 00 00 00
        08092d04 c7 83 34        MOV        dword ptr [EBX + 0x1d434],0x32
                 d4 01 00
                 32 00 00 00
        08092d0e 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092d14                                    XREF[1]:     08092cf8(j)
        08092d14 8b 83 2c        MOV        EAX,dword ptr [EBX + 0x1422c]
                 42 01 00
        08092d1a 8d 34 c0        LEA        ESI,[EAX + EAX*0x8]
        08092d1d 89 f0           MOV        EAX,ESI
        08092d1f c1 fe 1f        SAR        ESI,0x1f
        08092d22 f7 e9           IMUL       ECX
        08092d24 c1 fa 02        SAR        EDX,0x2
        08092d27 29 f2           SUB        EDX,ESI
        08092d29 39 93 50        CMP        dword ptr [EBX + 0x1d450],EDX
                 d4 01 00
        08092d2f 75 1a           JNZ        LAB_08092d4b
        08092d31 c7 83 30        MOV        dword ptr [EBX + 0x1d430],0x19
                 d4 01 00
                 19 00 00 00
        08092d3b c7 83 34        MOV        dword ptr [EBX + 0x1d434],0x19
                 d4 01 00
                 19 00 00 00
        08092d45 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092d4b                                    XREF[2]:     08092c65(j), 08092d2f(j)
        08092d4b 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        08092d4f 8b 83 50        MOV        EAX,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08092d55 3b 82 5c        CMP        EAX,dword ptr [EDX + 0x85c]
                 08 00 00
        08092d5b 74 0e           JZ         LAB_08092d6b
        08092d5d 85 c0           TEST       EAX,EAX
        08092d5f 75 63           JNZ        LAB_08092dc4
        08092d61 8b 93 54        MOV        EDX,dword ptr [EBX + 0x1d454]
                 d4 01 00
        08092d67 85 d2           TEST       EDX,EDX
        08092d69 75 59           JNZ        LAB_08092dc4
                             LAB_08092d6b                                    XREF[1]:     08092d5b(j)
        08092d6b 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        08092d71 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092d77 7f 4b           JG         LAB_08092dc4
        08092d79 8d 0c bd        LEA        ECX,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        08092d80 8b 2d 74        MOV        EBP,dword ptr [g]
                 7a 28 08
        08092d86 89 ce           MOV        ESI,ECX
                             LAB_08092d88                                    XREF[1]:     08092dc2(j)
        08092d88 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        08092d8c 85 c0           TEST       EAX,EAX
        08092d8e 74 0f           JZ         LAB_08092d9f
        08092d90 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        08092d96 ba 01 00        MOV        EDX,0x1
                 00 00
        08092d9b 85 c0           TEST       EAX,EAX
        08092d9d 75 02           JNZ        LAB_08092da1
                             LAB_08092d9f                                    XREF[1]:     08092d8e(j)
        08092d9f 31 d2           XOR        EDX,EDX
                             LAB_08092da1                                    XREF[1]:     08092d9d(j)
        08092da1 85 d2           TEST       EDX,EDX
        08092da3 74 10           JZ         LAB_08092db5
        08092da5 8b 44 19 04     MOV        EAX,dword ptr [ECX + EBX*0x1 + 0x4]
        08092da9 89 eb           MOV        EBX,EBP
        08092dab c7 80 44        MOV        dword ptr [EAX + 0x244],0x1
                 02 00 00
                 01 00 00 00
                             LAB_08092db5                                    XREF[1]:     08092da3(j)
        08092db5 47              INC        EDI
        08092db6 83 c1 04        ADD        ECX,0x4
        08092db9 83 c6 04        ADD        ESI,0x4
        08092dbc 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092dc2 7e c4           JLE        LAB_08092d88
                             LAB_08092dc4                                    XREF[3]:     08092d5f(j), 08092d69(j),
                                                                                          08092d77(j)
        08092dc4 8b b3 40        MOV        ESI,dword ptr [EBX + 0x5340]
                 53 00 00
        08092dca 85 f6           TEST       ESI,ESI
        08092dcc 0f 84 16        JZ         LAB_08092ee8
                 01 00 00
        08092dd2 8b 83 34        MOV        EAX,dword ptr [EBX + 0x14234]
                 42 01 00
        08092dd8 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092dde 0f 85 04        JNZ        LAB_08092ee8
                 01 00 00
        08092de4 c7 44 24        MOV        dword ptr [ESP + local_48],0x0
                 34 00 00
                 00 00
        08092dec c7 44 24        MOV        dword ptr [ESP + local_60],0x0
                 1c 00 00
                 00 00
        08092df4 bd 01 00        MOV        EBP,0x1
                 00 00
        08092df9 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_08092e00                                    XREF[1]:     08092ed7(j)
        08092e00 e8 5b cb        CALL       GameRoundWinner                                  undefined GameRoundWinner()
                 00 00
        08092e05 39 e8           CMP        EAX,EBP
        08092e07 0f 84 ad        JZ         LAB_08092eba
                 00 00 00
        08092e0d 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08092e13 8b 4c 24 1c     MOV        ECX,dword ptr [ESP + local_60]
        08092e17 8d 34 19        LEA        ESI,[ECX + EBX*0x1]
        08092e1a 8b 86 e0        MOV        EAX,dword ptr [ESI + 0xcee0]
                 ce 00 00
        08092e20 8d be e0        LEA        EDI,[ESI + 0xcee0]
                 ce 00 00
        08092e26 40              INC        EAX
        08092e27 3b 86 e4        CMP        EAX,dword ptr [ESI + 0xcee4]
                 ce 00 00
        08092e2d 7d 31           JGE        LAB_08092e60
        08092e2f 50              PUSH       EAX
        08092e30 55              PUSH       EBP
        08092e31 68 60 87        PUSH       s_start_pre-caching_team_%i_next_%_0827875f+1    = "start pre-caching team %i nex
                 27 08
        08092e36 8b 8b 44        MOV        ECX,dword ptr [EBX + 0x20744]
                 07 02 00
        08092e3c 51              PUSH       ECX
        08092e3d e8 5e b7        CALL       ClipboardAppend                                  undefined ClipboardAppend()
                 fb ff
        08092e42 8b 96 e0        MOV        EDX,dword ptr [ESI + 0xcee0]
                 ce 00 00
        08092e48 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        08092e4b c1 e0 03        SHL        EAX,0x3
        08092e4e 29 d0           SUB        EAX,EDX
        08092e50 8d 44 87 68     LEA        EAX,[EDI + EAX*0x4 + 0x68]
        08092e54 89 04 24        MOV        dword ptr [ESP]=>local_8c,EAX
        08092e57 eb 59           JMP        LAB_08092eb2
        08092e59 8d              ??         8Dh
        08092e5a b4              ??         B4h
        08092e5b 26              ??         26h    &
        08092e5c 00              ??         00h
        08092e5d 00              ??         00h
        08092e5e 00              ??         00h
        08092e5f 00              ??         00h
                             LAB_08092e60                                    XREF[1]:     08092e2d(j)
        08092e60 be 02 00        MOV        ESI,0x2
                 00 00
        08092e65 8b 93 cc        MOV        EDX,dword ptr [EBX + 0xcecc]
                 ce 00 00
        08092e6b 89 f0           MOV        EAX,ESI
        08092e6d 29 d0           SUB        EAX,EDX
        08092e6f 3b 44 24 34     CMP        EAX,dword ptr [ESP + local_48]
        08092e73 75 21           JNZ        LAB_08092e96
        08092e75 e8 f6 ca        CALL       GameMatchWinner                                  undefined GameMatchWinner()
                 00 00
        08092e7a 89 f2           MOV        EDX,ESI
        08092e7c 8b 74 24 34     MOV        ESI,dword ptr [ESP + local_48]
        08092e80 29 f2           SUB        EDX,ESI
        08092e82 39 d0           CMP        EAX,EDX
        08092e84 75 0a           JNZ        LAB_08092e90
        08092e86 e8 75 29        CALL       PrecacheRequestNextArcadeTeam                    undefined PrecacheRequestNextArc
                 04 00
        08092e8b eb 2d           JMP        LAB_08092eba
        08092e8d 8d              ??         8Dh
        08092e8e 76              ??         76h    v
        08092e8f 00              ??         00h
                             LAB_08092e90                                    XREF[1]:     08092e84(j)
        08092e90 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092e96                                    XREF[1]:     08092e73(j)
        08092e96 8b 44 24 34     MOV        EAX,dword ptr [ESP + local_48]
        08092e9a 39 83 cc        CMP        dword ptr [EBX + 0xcecc],EAX
                 ce 00 00
        08092ea0 75 18           JNZ        LAB_08092eba
        08092ea2 e8 c9 ca        CALL       GameMatchWinner                                  undefined GameMatchWinner()
                 00 00
        08092ea7 39 e8           CMP        EAX,EBP
        08092ea9 75 0f           JNZ        LAB_08092eba
        08092eab 83 ec 0c        SUB        ESP,0xc
        08092eae 8d 47 0c        LEA        EAX,[EDI + 0xc]
        08092eb1 50              PUSH       EAX
                             LAB_08092eb2                                    XREF[1]:     08092e57(j)
        08092eb2 e8 b9 28        CALL       PrecacheRequestTeam                              undefined PrecacheRequestTeam()
                 04 00
        08092eb7 83 c4 10        ADD        ESP,0x10
                             LAB_08092eba                                    XREF[4]:     08092e07(j), 08092e8b(j),
                                                                                          08092ea0(j), 08092ea9(j)
        08092eba 8b 4c 24 34     MOV        ECX,dword ptr [ESP + local_48]
        08092ebe 8b 5c 24 1c     MOV        EBX,dword ptr [ESP + local_60]
        08092ec2 41              INC        ECX
        08092ec3 81 c3 9c        ADD        EBX,0x1a9c
                 1a 00 00
        08092ec9 89 4c 24 34     MOV        dword ptr [ESP + local_48],ECX
        08092ecd 45              INC        EBP
        08092ece 89 5c 24 1c     MOV        dword ptr [ESP + local_60],EBX
        08092ed2 83 7c 24        CMP        dword ptr [ESP + local_48],0x1
                 34 01
        08092ed7 0f 8e 23        JLE        LAB_08092e00
                 ff ff ff
        08092edd e8 1e 2a        CALL       PrecacheStart                                    undefined PrecacheStart()
                 04 00
        08092ee2 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092ee8                                    XREF[2]:     08092dcc(j), 08092dde(j)
        08092ee8 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        08092eec 8b 82 5c        MOV        EAX,dword ptr [EDX + 0x85c]
                 08 00 00
        08092ef2 05 b4 00        ADD        EAX,0xb4
                 00 00
        08092ef7 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08092efd 7c 10           JL         LAB_08092f0f
        08092eff c7 83 80        MOV        dword ptr [EBX + 0x1d380],0x0
                 d3 01 00
                 00 00 00 00
        08092f09 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092f0f                                    XREF[1]:     08092efd(j)
        08092f0f c7 44 24        MOV        dword ptr [ESP + local_44],0x1
                 38 01 00
                 00 00
        08092f17 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        08092f1d 89 d8           MOV        EAX,EBX
        08092f1f 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092f25 0f 8f b9        JG         LAB_08092fe4
                 00 00 00
        08092f2b 8d 2c bd        LEA        EBP,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        08092f32 89 ee           MOV        ESI,EBP
        08092f34 89 74 24 20     MOV        dword ptr [ESP + local_5c],ESI
                             LAB_08092f38                                    XREF[1]:     08092fde(j)
        08092f38 8b 4c 24 20     MOV        ECX,dword ptr [ESP + local_5c]
        08092f3c 8b 44 01 04     MOV        EAX,dword ptr [ECX + EAX*0x1 + 0x4]
        08092f40 85 c0           TEST       EAX,EAX
        08092f42 74 16           JZ         LAB_08092f5a
        08092f44 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08092f4a 85 d2           TEST       EDX,EDX
        08092f4c 74 0c           JZ         LAB_08092f5a
        08092f4e 8b 48 1c        MOV        ECX,dword ptr [EAX + 0x1c]
        08092f51 ba 01 00        MOV        EDX,0x1
                 00 00
        08092f56 85 c9           TEST       ECX,ECX
        08092f58 74 02           JZ         LAB_08092f5c
                             LAB_08092f5a                                    XREF[2]:     08092f42(j), 08092f4c(j)
        08092f5a 31 d2           XOR        EDX,EDX
                             LAB_08092f5c                                    XREF[1]:     08092f58(j)
        08092f5c 85 d2           TEST       EDX,EDX
        08092f5e 74 64           JZ         LAB_08092fc4
        08092f60 c7 44 24        MOV        dword ptr [ESP + local_58],0x0
                 24 00 00
                 00 00
        08092f68 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        08092f6c 8b 90 0c        MOV        EDX,dword ptr [EAX + 0xe0c]
                 0e 00 00
        08092f72 85 d2           TEST       EDX,EDX
        08092f74 74 13           JZ         LAB_08092f89
        08092f76 83 b8 00        CMP        dword ptr [EAX + 0xe00],0x1
                 0e 00 00 01
        08092f7d 75 0a           JNZ        LAB_08092f89
        08092f7f 8b 80 04        MOV        EAX,dword ptr [EAX + 0xe04]
                 0e 00 00
        08092f85 85 c0           TEST       EAX,EAX
        08092f87 74 1a           JZ         LAB_08092fa3
                             LAB_08092f89                                    XREF[2]:     08092f74(j), 08092f7d(j)
        08092f89 83 ec 0c        SUB        ESP,0xc
        08092f8c 8b 4c 1d 04     MOV        ECX,dword ptr [EBP + EBX*0x1 + 0x4]
        08092f90 51              PUSH       ECX
        08092f91 e8 da 8c        CALL       PlayerLyingDead                                  undefined PlayerLyingDead()
                 01 00
        08092f96 83 c4 10        ADD        ESP,0x10
        08092f99 85 c0           TEST       EAX,EAX
        08092f9b 7e 13           JLE        LAB_08092fb0
        08092f9d 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092fa3                                    XREF[1]:     08092f87(j)
        08092fa3 c7 44 24        MOV        dword ptr [ESP + local_58],0x1
                 24 01 00
                 00 00
        08092fab eb 09           JMP        LAB_08092fb6
        08092fad 8d              ??         8Dh
        08092fae 76              ??         76h    v
        08092faf 00              ??         00h
                             LAB_08092fb0                                    XREF[1]:     08092f9b(j)
        08092fb0 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08092fb6                                    XREF[1]:     08092fab(j)
        08092fb6 8b 54 24 38     MOV        EDX,dword ptr [ESP + local_44]
        08092fba 8b 44 24 24     MOV        EAX,dword ptr [ESP + local_58]
        08092fbe 21 c2           AND        EDX,EAX
        08092fc0 89 54 24 38     MOV        dword ptr [ESP + local_44],EDX
                             LAB_08092fc4                                    XREF[1]:     08092f5e(j)
        08092fc4 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_5c]
        08092fc8 47              INC        EDI
        08092fc9 83 c0 04        ADD        EAX,0x4
        08092fcc 83 c5 04        ADD        EBP,0x4
        08092fcf 89 44 24 20     MOV        dword ptr [ESP + local_5c],EAX
        08092fd3 89 d8           MOV        EAX,EBX
        08092fd5 83 c6 04        ADD        ESI,0x4
        08092fd8 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08092fde 0f 8e 54        JLE        LAB_08092f38
                 ff ff ff
                             LAB_08092fe4                                    XREF[1]:     08092f25(j)
        08092fe4 8b 83 50        MOV        EAX,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08092fea 3d 83 03        CMP        EAX,0x383
                 00 00
        08092fef 7e 08           JLE        LAB_08092ff9
        08092ff1 c7 44 24        MOV        dword ptr [ESP + local_44],0x1
                 38 01 00
                 00 00
                             LAB_08092ff9                                    XREF[1]:     08092fef(j)
        08092ff9 8b 4c 24 38     MOV        ECX,dword ptr [ESP + local_44]
        08092ffd 85 c9           TEST       ECX,ECX
        08092fff 0f 84 d1        JZ         switchD_0809282e::default
                 04 00 00
        08093005 8b 54 24 3c     MOV        EDX,dword ptr [ESP + local_40]
        08093009 3b 82 5c        CMP        EAX,dword ptr [EDX + 0x85c]
                 08 00 00
        0809300f 0f 8c c1        JL         switchD_0809282e::default
                 04 00 00
        08093015 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        0809301b 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08093021 7f 52           JG         LAB_08093075
        08093023 8d 0c bd        LEA        ECX,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809302a 8b 2d 74        MOV        EBP,dword ptr [g]
                 7a 28 08
        08093030 89 ce           MOV        ESI,ECX
                             LAB_08093032                                    XREF[1]:     08093073(j)
        08093032 8b 44 1e 04     MOV        EAX,dword ptr [ESI + EBX*0x1 + 0x4]
        08093036 85 c0           TEST       EAX,EAX
        08093038 74 16           JZ         LAB_08093050
        0809303a 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08093040 85 d2           TEST       EDX,EDX
        08093042 74 0c           JZ         LAB_08093050
        08093044 8b 40 1c        MOV        EAX,dword ptr [EAX + 0x1c]
        08093047 ba 01 00        MOV        EDX,0x1
                 00 00
        0809304c 85 c0           TEST       EAX,EAX
        0809304e 74 02           JZ         LAB_08093052
                             LAB_08093050                                    XREF[2]:     08093038(j), 08093042(j)
        08093050 31 d2           XOR        EDX,EDX
                             LAB_08093052                                    XREF[1]:     0809304e(j)
        08093052 85 d2           TEST       EDX,EDX
        08093054 74 10           JZ         LAB_08093066
        08093056 8b 44 19 04     MOV        EAX,dword ptr [ECX + EBX*0x1 + 0x4]
        0809305a 89 eb           MOV        EBX,EBP
        0809305c c7 80 0c        MOV        dword ptr [EAX + 0xe0c],0x0
                 0e 00 00
                 00 00 00 00
                             LAB_08093066                                    XREF[1]:     08093054(j)
        08093066 47              INC        EDI
        08093067 83 c1 04        ADD        ECX,0x4
        0809306a 83 c6 04        ADD        ESI,0x4
        0809306d 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08093073 7e bd           JLE        LAB_08093032
                             LAB_08093075                                    XREF[1]:     08093021(j)
        08093075 c7 83 44        MOV        dword ptr [EBX + 0x1d444],0x4
                 d4 01 00
                 04 00 00 00
        0809307f c7 83 50        MOV        dword ptr [EBX + 0x1d450],0x0
                 d4 01 00
                 00 00 00 00
        08093089 c7 83 2c        MOV        dword ptr [EBX + 0x1d42c],0x0
                 d4 01 00
                 00 00 00 00
        08093093 e9 77 f7        JMP        LAB_0809280f
                 ff ff
                             switchD_0809282e::caseD_4                       XREF[2]:     0809282e(j), 08221e70(*)
        08093098 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809309e c7 82 80        MOV        dword ptr [EDX + 0x1d380],0x0
                 d3 01 00
                 00 00 00 00
        080930a8 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        080930ac 8b b2 50        MOV        ESI,dword ptr [EDX + 0x1d450]
                 d4 01 00
        080930b2 8b 81 5c        MOV        EAX,dword ptr [ECX + 0x85c]
                 08 00 00
        080930b8 01 f0           ADD        EAX,ESI
        080930ba 3b 81 d8        CMP        EAX,dword ptr [ECX + 0x6d8]
                 06 00 00
        080930c0 75 6c           JNZ        LAB_0809312e
        080930c2 8b 82 4c        MOV        EAX,dword ptr [EDX + 0x1d44c]
                 d4 01 00
        080930c8 83 f8 03        CMP        EAX,0x3
        080930cb 75 19           JNZ        LAB_080930e6
        080930cd 6a 00           PUSH       0x0
        080930cf 8b 99 f0        MOV        EBX,dword ptr [ECX + 0x6f0]
                 06 00 00
        080930d5 53              PUSH       EBX
        080930d6 8b 89 ec        MOV        ECX,dword ptr [ECX + 0x6ec]
                 06 00 00
        080930dc 51              PUSH       ECX
        080930dd 8b 92 54        MOV        EDX,dword ptr [EDX + 0x10554]
                 05 01 00
        080930e3 52              PUSH       EDX
        080930e4 eb 40           JMP        LAB_08093126
                             LAB_080930e6                                    XREF[1]:     080930cb(j)
        080930e6 83 f8 02        CMP        EAX,0x2
        080930e9 75 1d           JNZ        LAB_08093108
        080930eb 6a 00           PUSH       0x0
        080930ed 8b 5c 24 40     MOV        EBX,dword ptr [ESP + local_40]
        080930f1 8b 83 e8        MOV        EAX,dword ptr [EBX + 0x6e8]
                 06 00 00
        080930f7 50              PUSH       EAX
        080930f8 8b ab e4        MOV        EBP,dword ptr [EBX + 0x6e4]
                 06 00 00
        080930fe 55              PUSH       EBP
        080930ff 8b ba 54        MOV        EDI,dword ptr [EDX + 0x10554]
                 05 01 00
        08093105 57              PUSH       EDI
        08093106 eb 1e           JMP        LAB_08093126
                             LAB_08093108                                    XREF[1]:     080930e9(j)
        08093108 48              DEC        EAX
        08093109 75 23           JNZ        LAB_0809312e
        0809310b 6a 00           PUSH       0x0
        0809310d 8b 44 24 40     MOV        EAX,dword ptr [ESP + local_40]
        08093111 8b b0 e0        MOV        ESI,dword ptr [EAX + 0x6e0]
                 06 00 00
        08093117 56              PUSH       ESI
        08093118 8b 98 dc        MOV        EBX,dword ptr [EAX + 0x6dc]
                 06 00 00
        0809311e 53              PUSH       EBX
        0809311f 8b 8a 54        MOV        ECX,dword ptr [EDX + 0x10554]
                 05 01 00
        08093125 51              PUSH       ECX
                             LAB_08093126                                    XREF[2]:     080930e4(j), 08093106(j)
        08093126 e8 a5 6e        CALL       GameSndPlay                                      undefined GameSndPlay()
                 02 00
        0809312b 83 c4 10        ADD        ESP,0x10
                             LAB_0809312e                                    XREF[2]:     080930c0(j), 08093109(j)
        0809312e 8b 4c 24 3c     MOV        ECX,dword ptr [ESP + local_40]
        08093132 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08093138 89 da           MOV        EDX,EBX
        0809313a 8b 81 64        MOV        EAX,dword ptr [ECX + 0x864]
                 08 00 00
        08093140 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        08093146 0f 85 0a        JNZ        LAB_08093356
                 02 00 00
        0809314c 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        08093152 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08093158 0f 8f ae        JG         LAB_0809320c
                 00 00 00
        0809315e 8d 34 bd        LEA        ESI,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
                             LAB_08093165                                    XREF[1]:     08093206(j)
        08093165 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        08093169 85 c0           TEST       EAX,EAX
        0809316b 74 16           JZ         LAB_08093183
        0809316d 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08093173 85 d2           TEST       EDX,EDX
        08093175 74 0c           JZ         LAB_08093183
        08093177 8b 68 1c        MOV        EBP,dword ptr [EAX + 0x1c]
        0809317a ba 01 00        MOV        EDX,0x1
                 00 00
        0809317f 85 ed           TEST       EBP,EBP
        08093181 74 02           JZ         LAB_08093185
                             LAB_08093183                                    XREF[2]:     0809316b(j), 08093175(j)
        08093183 31 d2           XOR        EDX,EDX
                             LAB_08093185                                    XREF[1]:     08093181(j)
        08093185 85 d2           TEST       EDX,EDX
        08093187 74 71           JZ         LAB_080931fa
        08093189 8d 4b 04        LEA        ECX,[EBX + 0x4]
        0809318c 8b 93 48        MOV        EDX,dword ptr [EBX + 0x1d448]
                 d4 01 00
        08093192 8b 04 0e        MOV        EAX,dword ptr [ESI + ECX*0x1]
        08093195 3b 50 0c        CMP        EDX,dword ptr [EAX + 0xc]
        08093198 75 26           JNZ        LAB_080931c0
        0809319a 8b 98 24        MOV        EBX,dword ptr [EAX + 0xe24]
                 0e 00 00
        080931a0 c7 80 44        MOV        dword ptr [EAX + 0x244],0x0
                 02 00 00
                 00 00 00 00
        080931aa 85 db           TEST       EBX,EBX
        080931ac 74 46           JZ         LAB_080931f4
        080931ae 52              PUSH       EDX
        080931af 52              PUSH       EDX
        080931b0 68 b4 00        PUSH       0xb4
                 00 00
                             LAB_080931b5                                    XREF[1]:     080931d5(j)
        080931b5 8b 04 0e        MOV        EAX,dword ptr [ESI + ECX*0x1]
        080931b8 50              PUSH       EAX
        080931b9 eb 31           JMP        LAB_080931ec
        080931bb 90              ??         90h
        080931bc 8d              ??         8Dh
        080931bd 74              ??         74h    t
        080931be 26              ??         26h    &
        080931bf 00              ??         00h
                             LAB_080931c0                                    XREF[1]:     08093198(j)
        080931c0 85 d2           TEST       EDX,EDX
        080931c2 74 13           JZ         LAB_080931d7
        080931c4 8b a8 24        MOV        EBP,dword ptr [EAX + 0xe24]
                 0e 00 00
        080931ca 85 ed           TEST       EBP,EBP
        080931cc 74 2c           JZ         LAB_080931fa
        080931ce 52              PUSH       EDX
        080931cf 52              PUSH       EDX
        080931d0 68 aa 00        PUSH       0xaa
                 00 00
        080931d5 eb de           JMP        LAB_080931b5
                             LAB_080931d7                                    XREF[1]:     080931c2(j)
        080931d7 8b a8 24        MOV        EBP,dword ptr [EAX + 0xe24]
                 0e 00 00
        080931dd 85 ed           TEST       EBP,EBP
        080931df 74 19           JZ         LAB_080931fa
        080931e1 53              PUSH       EBX
        080931e2 53              PUSH       EBX
        080931e3 68 af 00        PUSH       0xaf
                 00 00
        080931e8 8b 0c 0e        MOV        ECX,dword ptr [ESI + ECX*0x1]
        080931eb 51              PUSH       ECX
                             LAB_080931ec                                    XREF[1]:     080931b9(j)
        080931ec e8 3f e5        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        080931f1 83 c4 10        ADD        ESP,0x10
                             LAB_080931f4                                    XREF[1]:     080931ac(j)
        080931f4 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080931fa                                    XREF[3]:     08093187(j), 080931cc(j),
                                                                                          080931df(j)
        080931fa 47              INC        EDI
        080931fb 83 c6 04        ADD        ESI,0x4
        080931fe 89 da           MOV        EDX,EBX
        08093200 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        08093206 0f 8e 59        JLE        LAB_08093165
                 ff ff ff
                             LAB_0809320c                                    XREF[1]:     08093158(j)
        0809320c 8b 83 48        MOV        EAX,dword ptr [EBX + 0x1d448]
                 d4 01 00
        08093212 85 c0           TEST       EAX,EAX
        08093214 0f 84 db        JZ         LAB_080932f5
                 00 00 00
        0809321a c7 83 24        MOV        dword ptr [EBX + 0x1d424],0x1
                 d4 01 00
                 01 00 00 00
        08093224 8b 94 83        MOV        EDX,dword ptr [EBX + EAX*0x4 + 0x1d418]
                 18 d4 01 00
        0809322b 42              INC        EDX
        0809322c 89 94 83        MOV        dword ptr [EBX + EAX*0x4 + 0x1d418],EDX
                 18 d4 01 00
        08093233 e8 38 c7        CALL       GameMatchWinner                                  undefined GameMatchWinner()
                 00 00
        08093238 85 c0           TEST       EAX,EAX
        0809323a 0f 85 10        JNZ        LAB_08093350
                 01 00 00
        08093240 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08093246 31 ff           XOR        EDI,EDI
        08093248 8b 83 48        MOV        EAX,dword ptr [EBX + 0x1d448]
                 d4 01 00
        0809324e 48              DEC        EAX
        0809324f 89 44 24 34     MOV        dword ptr [ESP + local_48],EAX
        08093253 8b 54 24 34     MOV        EDX,dword ptr [ESP + local_48]
        08093257 8d 04 40        LEA        EAX,[EAX + EAX*0x2]
        0809325a 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809325d 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        08093260 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        08093263 c1 e0 03        SHL        EAX,0x3
        08093266 29 d0           SUB        EAX,EDX
        08093268 c1 e0 02        SHL        EAX,0x2
        0809326b 8b 8c 03        MOV        ECX,dword ptr [EBX + EAX*0x1 + 0xcee0]
                 e0 ce 00 00
        08093272 8d 14 49        LEA        EDX,[ECX + ECX*0x2]
        08093275 c1 e2 03        SHL        EDX,0x3
        08093278 29 ca           SUB        EDX,ECX
        0809327a 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        0809327d 01 da           ADD        EDX,EBX
        0809327f 8d aa ec        LEA        EBP,[EDX + 0xceec]
                 ce 00 00
        08093285 3b ba f4        CMP        EDI,dword ptr [EDX + 0xcef4]
                 ce 00 00
        0809328b 0f 8d c5        JGE        LAB_08093356
                 00 00 00
        08093291 eb 0d           JMP        LAB_080932a0
                             LAB_08093293                                    XREF[1]:     080932f1(j)
        08093293 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08093299 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_080932a0                                    XREF[1]:     08093291(j)
        080932a0 8d 14 bf        LEA        EDX,[EDI + EDI*0x4]
        080932a3 47              INC        EDI
        080932a4 8d 45 0c        LEA        EAX,[EBP + 0xc]
        080932a7 83 ec 0c        SUB        ESP,0xc
        080932aa 8b 04 90        MOV        EAX,dword ptr [EAX + EDX*0x4]
        080932ad 8b b4 83        MOV        ESI,dword ptr [EBX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        080932b4 8b 44 24 40     MOV        EAX,dword ptr [ESP + local_48]
        080932b8 50              PUSH       EAX
        080932b9 e8 52 3f        CALL       TeamLifeBack                                     undefined TeamLifeBack()
                 00 00
        080932be 59              POP        ECX
        080932bf 89 c1           MOV        ECX,EAX
        080932c1 8b 96 64        MOV        EDX,dword ptr [ESI + 0x164]
                 01 00 00
        080932c7 5b              POP        EBX
        080932c8 0f af ca        IMUL       ECX,EDX
        080932cb ba d3 4d        MOV        EDX,0x10624dd3
                 62 10
        080932d0 89 c8           MOV        EAX,ECX
        080932d2 f7 ea           IMUL       EDX
        080932d4 c1 f9 1f        SAR        ECX,0x1f
        080932d7 8b 86 60        MOV        EAX,dword ptr [ESI + 0x160]
                 01 00 00
        080932dd c1 fa 06        SAR        EDX,0x6
        080932e0 29 ca           SUB        EDX,ECX
        080932e2 01 c2           ADD        EDX,EAX
        080932e4 52              PUSH       EDX
        080932e5 56              PUSH       ESI
        080932e6 e8 e5 e4        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        080932eb 83 c4 10        ADD        ESP,0x10
        080932ee 3b 7d 08        CMP        EDI,dword ptr [EBP + 0x8]
        080932f1 7c a0           JL         LAB_08093293
        080932f3 eb 5b           JMP        LAB_08093350
                             LAB_080932f5                                    XREF[1]:     08093214(j)
        080932f5 8b ab 28        MOV        EBP,dword ptr [EBX + 0x1d428]
                 d4 01 00
        080932fb ba 10 d4        MOV        EDX,0x1d410
                 01 00
        08093300 45              INC        EBP
        08093301 b9 70 e9        MOV        ECX,0xe970
                 00 00
        08093306 89 ab 28        MOV        dword ptr [EBX + 0x1d428],EBP
                 d4 01 00
        0809330c 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08093312 89 de           MOV        ESI,EBX
        08093314 c7 44 24        MOV        dword ptr [ESP + local_48],0x1
                 34 01 00
                 00 00
        0809331c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08093320                                    XREF[1]:     08093344(j)
        08093320 8b 44 19 04     MOV        EAX,dword ptr [ECX + EBX*0x1 + 0x4]
        08093324 39 83 28        CMP        dword ptr [EBX + 0x1d428],EAX
                 d4 01 00
        0809332a 7e 0b           JLE        LAB_08093337
        0809332c 8b 7c 1a 0c     MOV        EDI,dword ptr [EDX + EBX*0x1 + 0xc]
        08093330 47              INC        EDI
        08093331 89 7c 1a 0c     MOV        dword ptr [EDX + EBX*0x1 + 0xc],EDI
        08093335 89 f3           MOV        EBX,ESI
                             LAB_08093337                                    XREF[1]:     0809332a(j)
        08093337 83 c2 04        ADD        EDX,0x4
        0809333a 81 c1 9c        ADD        ECX,0x1a9c
                 1a 00 00
        08093340 ff 4c 24 34     DEC        dword ptr [ESP + local_48]
        08093344 79 da           JNS        LAB_08093320
        08093346 c7 83 24        MOV        dword ptr [EBX + 0x1d424],0x1
                 d4 01 00
                 01 00 00 00
                             LAB_08093350                                    XREF[2]:     0809323a(j), 080932f3(j)
        08093350 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_08093356                                    XREF[2]:     08093146(j), 0809328b(j)
        08093356 80 bb 8d        CMP        byte ptr [EBX + 0x1d38d],0x0
                 d3 01 00 00
        0809335d 74 1f           JZ         LAB_0809337e
        0809335f 8b 83 60        MOV        EAX,dword ptr [EBX + 0x1d460]
                 d4 01 00
        08093365 85 c0           TEST       EAX,EAX
        08093367 75 15           JNZ        LAB_0809337e
        08093369 8b 83 50        MOV        EAX,dword ptr [EBX + 0x1d450]
                 d4 01 00
        0809336f 83 c0 13        ADD        EAX,0x13
        08093372 89 83 40        MOV        dword ptr [EBX + 0x1d440],EAX
                 d4 01 00
        08093378 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809337e                                    XREF[2]:     0809335d(j), 08093367(j)
        0809337e 8b bb 40        MOV        EDI,dword ptr [EBX + 0x1d440]
                 d4 01 00
        08093384 8b ab 50        MOV        EBP,dword ptr [EBX + 0x1d450]
                 d4 01 00
        0809338a 29 ef           SUB        EDI,EBP
        0809338c 83 ff 0f        CMP        EDI,0xf
        0809338f 7f 4b           JG         LAB_080933dc
        08093391 e8 da c5        CALL       GameMatchWinner                                  undefined GameMatchWinner()
                 00 00
        08093396 85 c0           TEST       EAX,EAX
        08093398 74 2b           JZ         LAB_080933c5
        0809339a 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080933a0 56              PUSH       ESI
        080933a1 ba 10 00        MOV        EDX,0x10
                 00 00
        080933a6 56              PUSH       ESI
        080933a7 29 fa           SUB        EDX,EDI
        080933a9 8b 81 dc        MOV        EAX,dword ptr [ECX + 0x1bbdc]
                 bb 01 00
        080933af 01 d2           ADD        EDX,EDX
        080933b1 29 d0           SUB        EAX,EDX
        080933b3 50              PUSH       EAX
        080933b4 8b 81 d4        MOV        EAX,dword ptr [ECX + 0x1bbd4]
                 bb 01 00
        080933ba 29 d0           SUB        EAX,EDX
        080933bc 50              PUSH       EAX
        080933bd e8 de 6e        CALL       GameSetVol                                       undefined GameSetVol()
                 02 00
        080933c2 83 c4 10        ADD        ESP,0x10
                             LAB_080933c5                                    XREF[1]:     08093398(j)
        080933c5 89 f8           MOV        EAX,EDI
        080933c7 c1 e0 04        SHL        EAX,0x4
        080933ca 53              PUSH       EBX
        080933cb 50              PUSH       EAX
        080933cc 50              PUSH       EAX
        080933cd 50              PUSH       EAX
        080933ce e8 9d 26        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        080933d3 83 c4 10        ADD        ESP,0x10
        080933d6 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080933dc                                    XREF[1]:     0809338f(j)
        080933dc 8b 83 40        MOV        EAX,dword ptr [EBX + 0x1d440]
                 d4 01 00
        080933e2 39 83 50        CMP        dword ptr [EBX + 0x1d450],EAX
                 d4 01 00
        080933e8 0f 8c e8        JL         switchD_0809282e::default
                 00 00 00
        080933ee e8 7d c5        CALL       GameMatchWinner                                  undefined GameMatchWinner()
                 00 00
        080933f3 89 c7           MOV        EDI,EAX
        080933f5 85 ff           TEST       EDI,EDI
        080933f7 74 15           JZ         LAB_0809340e
        080933f9 a1 74 7a        MOV        EAX,[g]
                 28 08
        080933fe c7 80 18        MOV        dword ptr [EAX + 0x1d518],0x1
                 d5 01 00
                 01 00 00 00
        08093408 89 b8 14        MOV        dword ptr [EAX + 0x1d514],EDI
                 d5 01 00
                             LAB_0809340e                                    XREF[1]:     080933f7(j)
        0809340e 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        08093414 8b 8b 18        MOV        ECX,dword ptr [EBX + 0x1d518]
                 d5 01 00
        0809341a 85 c9           TEST       ECX,ECX
        0809341c 0f 85 a4        JNZ        LAB_080934c6
                 00 00 00
        08093422 e8 19 c8        CALL       LogMatch                                         undefined LogMatch()
                 00 00
        08093427 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        0809342d 89 d8           MOV        EAX,EBX
        0809342f 8b bb 64        MOV        EDI,dword ptr [EBX + 0x1d164]
                 d1 01 00
        08093435 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        0809343b 7f 53           JG         LAB_08093490
        0809343d 8d 0c bd        LEA        ECX,[EDI*0x4 + 0x1cf60]
                 60 cf 01 00
        08093444 89 dd           MOV        EBP,EBX
        08093446 89 ce           MOV        ESI,ECX
                             LAB_08093448                                    XREF[1]:     0809348e(j)
        08093448 8b 44 06 04     MOV        EAX,dword ptr [ESI + EAX*0x1 + 0x4]
        0809344c 85 c0           TEST       EAX,EAX
        0809344e 74 16           JZ         LAB_08093466
        08093450 8b 90 58        MOV        EDX,dword ptr [EAX + 0x158]
                 01 00 00
        08093456 85 d2           TEST       EDX,EDX
        08093458 74 0c           JZ         LAB_08093466
        0809345a 8b 40 1c        MOV        EAX,dword ptr [EAX + 0x1c]
        0809345d ba 01 00        MOV        EDX,0x1
                 00 00
        08093462 85 c0           TEST       EAX,EAX
        08093464 74 02           JZ         LAB_08093468
                             LAB_08093466                                    XREF[2]:     0809344e(j), 08093458(j)
        08093466 31 d2           XOR        EDX,EDX
                             LAB_08093468                                    XREF[1]:     08093464(j)
        08093468 85 d2           TEST       EDX,EDX
        0809346a 74 13           JZ         LAB_0809347f
        0809346c 8b 44 19 04     MOV        EAX,dword ptr [ECX + EBX*0x1 + 0x4]
        08093470 89 eb           MOV        EBX,EBP
        08093472 8b 90 2c        MOV        EDX,dword ptr [EAX + 0x342c]
                 34 00 00
        08093478 42              INC        EDX
        08093479 89 90 2c        MOV        dword ptr [EAX + 0x342c],EDX
                 34 00 00
                             LAB_0809347f                                    XREF[1]:     0809346a(j)
        0809347f 47              INC        EDI
        08093480 83 c1 04        ADD        ECX,0x4
        08093483 83 c6 04        ADD        ESI,0x4
        08093486 3b bb 68        CMP        EDI,dword ptr [EBX + 0x1d168]
                 d1 01 00
        0809348c 89 d8           MOV        EAX,EBX
        0809348e 7e b8           JLE        LAB_08093448
                             LAB_08093490                                    XREF[1]:     0809343b(j)
        08093490 e8 3b 26        CALL       PrecacheFinish                                   undefined PrecacheFinish()
                 04 00
        08093495 83 ec 0c        SUB        ESP,0xc
        08093498 6a 00           PUSH       0x0
        0809349a e8 f1 a6        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        0809349f a1 74 7a        MOV        EAX,[g]
                 28 08
        080934a4 c7 80 1c        MOV        dword ptr [EAX + 0x1cc1c],0x0
                 cc 01 00
                 00 00 00 00
        080934ae e8 6d a5        CALL       DrawToScreen                                     undefined DrawToScreen()
                 ff ff
        080934b3 e8 68 a5        CALL       DrawToScreen                                     undefined DrawToScreen()
                 ff ff
        080934b8 e8 a3 b6        CALL       GameNextRound                                    undefined GameNextRound()
                 00 00
        080934bd 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080934c3 83 c4 10        ADD        ESP,0x10
                             LAB_080934c6                                    XREF[1]:     0809341c(j)
        080934c6 c7 44 24        MOV        dword ptr [ESP + local_4c],0x1
                 30 01 00
                 00 00
        080934ce eb 06           JMP        switchD_0809282e::default
                             LAB_080934d0                                    XREF[3]:     08092828(j), 08092a07(j),
                                                                                          08092bc3(j)
        080934d0 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             switchD_0809282e::default                       XREF[5]:     08092890(j), 08092fff(j),
                                                                                          0809300f(j), 080933e8(j),
                                                                                          080934ce(j)
        080934d6 8b 83 2c        MOV        EAX,dword ptr [EBX + 0x1d42c]
                 d4 01 00
        080934dc 85 c0           TEST       EAX,EAX
        080934de 7e 0d           JLE        LAB_080934ed
        080934e0 48              DEC        EAX
        080934e1 89 83 2c        MOV        dword ptr [EBX + 0x1d42c],EAX
                 d4 01 00
        080934e7 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080934ed                                    XREF[1]:     080934de(j)
        080934ed 8b 83 2c        MOV        EAX,dword ptr [EBX + 0x1d42c]
                 d4 01 00
        080934f3 85 c0           TEST       EAX,EAX
        080934f5 75 24           JNZ        LAB_0809351b
        080934f7 8b ab 30        MOV        EBP,dword ptr [EBX + 0x1d430]
                 d4 01 00
        080934fd 85 ed           TEST       EBP,EBP
        080934ff 74 1a           JZ         LAB_0809351b
        08093501 c7 83 30        MOV        dword ptr [EBX + 0x1d430],0x0
                 d4 01 00
                 00 00 00 00
        0809350b c7 83 34        MOV        dword ptr [EBX + 0x1d434],0x0
                 d4 01 00
                 00 00 00 00
        08093515 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_0809351b                                    XREF[2]:     080934f5(j), 080934ff(j)
        0809351b 8b bb 50        MOV        EDI,dword ptr [EBX + 0x1d450]
                 d4 01 00
        08093521 47              INC        EDI
        08093522 89 bb 50        MOV        dword ptr [EBX + 0x1d450],EDI
                 d4 01 00
        08093528 8b 44 24 30     MOV        EAX,dword ptr [ESP + local_4c]
        0809352c 83 c4 6c        ADD        ESP,0x6c
        0809352f 5b              POP        EBX
        08093530 5e              POP        ESI
        08093531 5f              POP        EDI
        08093532 5d              POP        EBP
        08093533 c3              RET
