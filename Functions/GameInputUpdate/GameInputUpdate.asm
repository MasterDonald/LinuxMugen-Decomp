                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameInputUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[4]:     08093946(W),
                                                                                                   080939a7(W),
                                                                                                   080939ad(*),
                                                                                                   08093a54(R)
             undefined4        Stack[-0x18]:4 local_18                                XREF[29]:    0809390f(W),
                                                                                                   08093995(W),
                                                                                                   080939b2(*),
                                                                                                   08093a19(R),
                                                                                                   08093a3f(R),
                                                                                                   08093a82(R),
                                                                                                   08093b96(R),
                                                                                                   08093c04(R),
                                                                                                   08093c8e(R),
                                                                                                   08093cbf(R),
                                                                                                   08093d5f(R),
                                                                                                   08093d77(R),
                                                                                                   08093e45(R),
                                                                                                   08093e6e(R),
                                                                                                   08093e97(R),
                                                                                                   08093ec8(R),
                                                                                                   08093f03(R),
                                                                                                   08093f37(R),
                                                                                                   08093f5b(R),
                                                                                                   08093f7f(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[6]:     0809391d(W),
                                                                                                   08093be4(R),
                                                                                                   08093c23(R),
                                                                                                   08093c97(R),
                                                                                                   08093e52(R),
                                                                                                   08093f0c(R)
             undefined4        Stack[-0x20]:4 local_20                                XREF[6]:     08093927(W),
                                                                                                   08093bb5(R),
                                                                                                   08093c5f(R),
                                                                                                   08093cab(R),
                                                                                                   08093e7b(R),
                                                                                                   08093f24(R)
             undefined4        Stack[-0x24]:4 local_24                                XREF[9]:     08093931(W),
                                                                                                   08093bf1(R),
                                                                                                   08093bfd(R),
                                                                                                   08093c30(R),
                                                                                                   08093c3c(R),
                                                                                                   08093ea0(R),
                                                                                                   08093eac(R),
                                                                                                   08093f40(R),
                                                                                                   08093f48(R)
             undefined4        Stack[-0x28]:4 local_28                                XREF[9]:     08093942(W),
                                                                                                   08093bc2(R),
                                                                                                   08093bce(R),
                                                                                                   08093c6c(R),
                                                                                                   08093c78(R),
                                                                                                   08093ed5(R),
                                                                                                   08093ee5(R),
                                                                                                   08093f64(R),
                                                                                                   08093f6c(R)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[4]:     0809393b(*),
                                                                                                   08093962(*),
                                                                                                   08093a77(*),
                                                                                                   08093e24(*)
             undefined4        Stack[-0x3c]:4 local_3c                                XREF[2]:     080939c6(*),
                                                                                                   080939fa(*)
                             GameInputUpdate                                 XREF[2]:     Entry Point(*),
                                                                                          GameLoop:0809008d(c)
        08093900 55              PUSH       EBP
        08093901 57              PUSH       EDI
        08093902 56              PUSH       ESI
        08093903 53              PUSH       EBX
        08093904 31 db           XOR        EBX,EBX
        08093906 83 ec 1c        SUB        ESP,0x1c
        08093909 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809390f c7 44 24        MOV        dword ptr [ESP + local_18],0x0
                 14 00 00
                 00 00
        08093917 8b 82 68        MOV        EAX,dword ptr [EDX + 0x1cf68]
                 cf 01 00
        0809391d 89 44 24 10     MOV        dword ptr [ESP + local_1c],EAX
        08093921 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1cf6c]
                 cf 01 00
        08093927 89 44 24 0c     MOV        dword ptr [ESP + local_20],EAX
        0809392b 8b 82 70        MOV        EAX,dword ptr [EDX + 0x1cf70]
                 cf 01 00
        08093931 89 44 24 08     MOV        dword ptr [ESP + local_24],EAX
        08093935 8b 82 74        MOV        EAX,dword ptr [EDX + 0x1cf74]
                 cf 01 00
        0809393b c7 04 24        MOV        dword ptr [ESP]=>local_2c,0x0
                 00 00 00 00
        08093942 89 44 24 04     MOV        dword ptr [ESP + local_28],EAX
        08093946 c7 44 24        MOV        dword ptr [ESP + local_14],0x0
                 18 00 00
                 00 00
        0809394e 8b 8a 2c        MOV        ECX,dword ptr [EDX + 0x2072c]
                 07 02 00
        08093954 85 c9           TEST       ECX,ECX
        08093956 75 0a           JNZ        LAB_08093962
        08093958 8b 82 3c        MOV        EAX,dword ptr [EDX + 0x2073c]
                 07 02 00
        0809395e 85 c0           TEST       EAX,EAX
        08093960 74 07           JZ         LAB_08093969
                             LAB_08093962                                    XREF[1]:     08093956(j)
        08093962 c7 04 24        MOV        dword ptr [ESP]=>local_2c,0x1
                 01 00 00 00
                             LAB_08093969                                    XREF[1]:     08093960(j)
        08093969 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809396f a0 61 0b        MOV        AL,[keypauseflag]                                = ??
                 2c 08
        08093974 0f be c0        MOVSX      EAX,AL
        08093977 89 82 24        MOV        dword ptr [EDX + 0x1cc24],EAX
                 cc 01 00
        0809397d e8 5e 16        CALL       PadPoll                                          undefined PadPoll()
                 fc ff
        08093982 e8 29 0d        CALL       KBPoll                                           undefined KBPoll()
                 fc ff
        08093987 e8 24 10        CALL       KBkbhit                                          undefined KBkbhit()
                 fc ff
        0809398c 85 c0           TEST       EAX,EAX
        0809398e 74 09           JZ         LAB_08093999
        08093990 e8 ab 0f        CALL       KBgetchraw                                       undefined KBgetchraw()
                 fc ff
        08093995 89 44 24 14     MOV        dword ptr [ESP + local_18],EAX
                             LAB_08093999                                    XREF[1]:     0809398e(j)
        08093999 e8 a2 19        CALL       PadHit                                           undefined PadHit()
                 fc ff
        0809399e 85 c0           TEST       EAX,EAX
        080939a0 74 09           JZ         LAB_080939ab
        080939a2 e8 39 19        CALL       PadGet                                           undefined PadGet()
                 fc ff
        080939a7 89 44 24 18     MOV        dword ptr [ESP + local_14],EAX
                             LAB_080939ab                                    XREF[1]:     080939a0(j)
        080939ab 55              PUSH       EBP
        080939ac 55              PUSH       EBP
        080939ad 8d 44 24 20     LEA        EAX=>local_14,[ESP + 0x20]
        080939b1 50              PUSH       EAX
        080939b2 8d 44 24 20     LEA        EAX=>local_18,[ESP + 0x20]
        080939b6 50              PUSH       EAX
        080939b7 e8 34 97        CALL       GlobalInputUpdate                                undefined GlobalInputUpdate()
                 ff ff
        080939bc a1 74 7a        MOV        EAX,[g]
                 28 08
        080939c1 05 44 ce        ADD        EAX,0x1ce44
                 01 00
        080939c6 89 04 24        MOV        dword ptr [ESP]=>local_3c,EAX
        080939c9 e8 82 0b        CALL       IntCircBufClear                                  undefined IntCircBufClear()
                 fc ff
        080939ce 83 c4 10        ADD        ESP,0x10
        080939d1 85 db           TEST       EBX,EBX
        080939d3 75 3b           JNZ        LAB_08093a10
        080939d5 83 ec 0c        SUB        ESP,0xc
        080939d8 6a 00           PUSH       0x0
        080939da eb 21           JMP        LAB_080939fd
        080939dc 8d              ??         8Dh
        080939dd 74              ??         74h    t
        080939de 26              ??         26h    &
        080939df 00              ??         00h
                             LAB_080939e0                                    XREF[1]:     08093a17(j)
        080939e0 e8 bb 08        CALL       UInpGet                                          undefined UInpGet()
                 fc ff
        080939e5 89 c3           MOV        EBX,EAX
        080939e7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080939ec 57              PUSH       EDI
        080939ed 05 44 ce        ADD        EAX,0x1ce44
                 01 00
        080939f2 57              PUSH       EDI
        080939f3 53              PUSH       EBX
        080939f4 50              PUSH       EAX
        080939f5 e8 c6 0a        CALL       IntCircBufStuff                                  undefined IntCircBufStuff()
                 fc ff
        080939fa 89 1c 24        MOV        dword ptr [ESP]=>local_3c,EBX
                             LAB_080939fd                                    XREF[1]:     080939da(j)
        080939fd e8 ee 15        CALL       TrainingMenuUpdate                               undefined TrainingMenuUpdate()
                 01 00
        08093a02 83 c4 10        ADD        ESP,0x10
        08093a05 85 c0           TEST       EAX,EAX
        08093a07 74 07           JZ         LAB_08093a10
        08093a09 c6 05 61        MOV        byte ptr [keypauseflag],0x0                      = ??
                 0b 2c 08 00
                             LAB_08093a10                                    XREF[2]:     080939d3(j), 08093a07(j)
        08093a10 e8 eb 08        CALL       UInpHit                                          undefined UInpHit()
                 fc ff
        08093a15 85 c0           TEST       EAX,EAX
        08093a17 75 c7           JNZ        LAB_080939e0
        08093a19 83 7c 24        CMP        dword ptr [ESP + local_18],0x1
                 14 01
        08093a1e 75 0f           JNZ        LAB_08093a2f
        08093a20 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093a25 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
                             LAB_08093a2f                                    XREF[1]:     08093a1e(j)
        08093a2f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08093a35 8b b2 a0        MOV        ESI,dword ptr [EDX + 0x1d3a0]
                 d3 01 00
        08093a3b 85 f6           TEST       ESI,ESI
        08093a3d 74 38           JZ         LAB_08093a77
        08093a3f 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        08093a43 85 c9           TEST       ECX,ECX
        08093a45 74 0d           JZ         LAB_08093a54
        08093a47 f7 c1 00        TEST       ECX,0x100
                 01 00 00
        08093a4d 75 05           JNZ        LAB_08093a54
        08093a4f 83 f9 46        CMP        ECX,0x46
        08093a52 75 0f           JNZ        LAB_08093a63
                             LAB_08093a54                                    XREF[2]:     08093a45(j), 08093a4d(j)
        08093a54 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_14]
        08093a58 85 c0           TEST       EAX,EAX
        08093a5a 74 1b           JZ         LAB_08093a77
        08093a5c a9 00 01        TEST       EAX,0x100
                 00 00
        08093a61 75 14           JNZ        LAB_08093a77
                             LAB_08093a63                                    XREF[1]:     08093a52(j)
        08093a63 c7 82 d4        MOV        dword ptr [EDX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
        08093a6d c7 82 48        MOV        dword ptr [EDX + 0x20b48],0x0
                 0b 02 00
                 00 00 00 00
                             LAB_08093a77                                    XREF[3]:     08093a3d(j), 08093a5a(j),
                                                                                          08093a61(j)
        08093a77 8b 1c 24        MOV        EBX,dword ptr [ESP]=>local_2c
        08093a7a 85 db           TEST       EBX,EBX
        08093a7c 0f 84 8c        JZ         LAB_08093e0e
                 03 00 00
        08093a82 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        08093a86 83 f9 39        CMP        ECX,0x39
        08093a89 74 0d           JZ         LAB_08093a98
        08093a8b 80 3d 99        CMP        byte ptr [DAT_082c0a99],0x0                      = ??
                 0a 2c 08 00
        08093a92 0f 84 02        JZ         LAB_08093b9a
                 01 00 00
                             LAB_08093a98                                    XREF[1]:     08093a89(j)
        08093a98 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08093a9e 89 d0           MOV        EAX,EDX
        08093aa0 8b 9a 64        MOV        EBX,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08093aa6 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093aac 0f 8f ba        JG         LAB_08093b6c
                 00 00 00
        08093ab2 8d 34 9d        LEA        ESI,[EBX*0x4 + 0x1cf60]
                 60 cf 01 00
        08093ab9 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_08093ac0                                    XREF[1]:     08093b66(j)
        08093ac0 8b 44 06 04     MOV        EAX,dword ptr [ESI + EAX*0x1 + 0x4]
        08093ac4 85 c0           TEST       EAX,EAX
        08093ac6 74 16           JZ         LAB_08093ade
        08093ac8 8b 88 58        MOV        ECX,dword ptr [EAX + 0x158]
                 01 00 00
        08093ace 85 c9           TEST       ECX,ECX
        08093ad0 74 0c           JZ         LAB_08093ade
        08093ad2 8b 68 1c        MOV        EBP,dword ptr [EAX + 0x1c]
        08093ad5 b9 01 00        MOV        ECX,0x1
                 00 00
        08093ada 85 ed           TEST       EBP,EBP
        08093adc 74 02           JZ         LAB_08093ae0
                             LAB_08093ade                                    XREF[2]:     08093ac6(j), 08093ad0(j)
        08093ade 31 c9           XOR        ECX,ECX
                             LAB_08093ae0                                    XREF[1]:     08093adc(j)
        08093ae0 85 c9           TEST       ECX,ECX
        08093ae2 74 76           JZ         LAB_08093b5a
        08093ae4 8d 4a 04        LEA        ECX,[EDX + 0x4]
        08093ae7 8b 04 0e        MOV        EAX,dword ptr [ESI + ECX*0x1]
        08093aea 81 b8 f4        CMP        dword ptr [EAX + 0xbf4],0x141e
                 0b 00 00
                 1e 14 00 00
        08093af4 75 16           JNZ        LAB_08093b0c
        08093af6 57              PUSH       EDI
        08093af7 57              PUSH       EDI
        08093af8 68 00 14        PUSH       0x1400
                 00 00
        08093afd 50              PUSH       EAX
        08093afe e8 2d dc        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        08093b03 83 c4 10        ADD        ESP,0x10
        08093b06 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08093b0c                                    XREF[1]:     08093af4(j)
        08093b0c 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        08093b10 8b 90 64        MOV        EDX,dword ptr [EAX + 0x164]
                 01 00 00
        08093b16 89 90 60        MOV        dword ptr [EAX + 0x160],EDX
                 01 00 00
        08093b1c 8b 90 70        MOV        EDX,dword ptr [EAX + 0x170]
                 01 00 00
        08093b22 c7 80 24        MOV        dword ptr [EAX + 0xe24],0x1
                 0e 00 00
                 01 00 00 00
        08093b2c c7 80 98        MOV        dword ptr [EAX + 0x198],0x1
                 01 00 00
                 01 00 00 00
        08093b36 c7 80 10        MOV        dword ptr [EAX + 0x1010],0x0
                 10 00 00
                 00 00 00 00
        08093b40 c7 80 0c        MOV        dword ptr [EAX + 0x100c],0x0
                 10 00 00
                 00 00 00 00
        08093b4a 8b 80 74        MOV        EAX,dword ptr [EAX + 0x174]
                 01 00 00
        08093b50 8b 00           MOV        EAX,dword ptr [EAX]
        08093b52 89 02           MOV        dword ptr [EDX],EAX
        08093b54 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08093b5a                                    XREF[1]:     08093ae2(j)
        08093b5a 43              INC        EBX
        08093b5b 83 c6 04        ADD        ESI,0x4
        08093b5e 89 d0           MOV        EAX,EDX
        08093b60 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093b66 0f 8e 54        JLE        LAB_08093ac0
                 ff ff ff
                             LAB_08093b6c                                    XREF[1]:     08093aac(j)
        08093b6c 83 ba b8        CMP        dword ptr [EDX + 0xceb8],0x3
                 ce 00 00 03
        08093b73 74 21           JZ         LAB_08093b96
        08093b75 8b 9a a0        MOV        EBX,dword ptr [EDX + 0x1d3a0]
                 d3 01 00
        08093b7b 85 db           TEST       EBX,EBX
        08093b7d 75 17           JNZ        LAB_08093b96
        08093b7f 8b 82 80        MOV        EAX,dword ptr [EDX + 0x1e680]
                 e6 01 00
        08093b85 8b 8a 84        MOV        ECX,dword ptr [EDX + 0x13984]
                 39 01 00
        08093b8b 40              INC        EAX
        08093b8c 0f af c1        IMUL       EAX,ECX
        08093b8f 48              DEC        EAX
        08093b90 89 82 54        MOV        dword ptr [EDX + 0x1d454],EAX
                 d4 01 00
                             LAB_08093b96                                    XREF[2]:     08093b73(j), 08093b7d(j)
        08093b96 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093b9a                                    XREF[1]:     08093a92(j)
        08093b9a 83 f9 3b        CMP        ECX,0x3b
        08093b9d 75 69           JNZ        LAB_08093c08
        08093b9f 80 3d fd        CMP        byte ptr [DAT_082c0afd],0x0                      = ??
                 0a 2c 08 00
        08093ba6 75 38           JNZ        LAB_08093be0
        08093ba8 80 3d 7d        CMP        byte ptr [DAT_082c0a7d],0x0                      = ??
                 0a 2c 08 00
        08093baf 75 2f           JNZ        LAB_08093be0
        08093bb1 52              PUSH       EDX
        08093bb2 52              PUSH       EDX
        08093bb3 6a 00           PUSH       0x0
        08093bb5 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_20]
        08093bb9 50              PUSH       EAX
        08093bba e8 11 dc        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093bbf 83 c4 10        ADD        ESP,0x10
        08093bc2 8b 6c 24 04     MOV        EBP,dword ptr [ESP + local_28]
        08093bc6 85 ed           TEST       EBP,EBP
        08093bc8 74 3a           JZ         LAB_08093c04
        08093bca 57              PUSH       EDI
        08093bcb 57              PUSH       EDI
        08093bcc 6a 00           PUSH       0x0
        08093bce 8b 74 24 10     MOV        ESI,dword ptr [ESP + local_28]
        08093bd2 56              PUSH       ESI
                             LAB_08093bd3                                    XREF[1]:     08093c02(j)
        08093bd3 e8 f8 db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093bd8 83 c4 10        ADD        ESP,0x10
        08093bdb eb 27           JMP        LAB_08093c04
        08093bdd 8d              ??         8Dh
        08093bde 76              ??         76h    v
        08093bdf 00              ??         00h
                             LAB_08093be0                                    XREF[2]:     08093ba6(j), 08093baf(j)
        08093be0 53              PUSH       EBX
        08093be1 53              PUSH       EBX
        08093be2 6a 00           PUSH       0x0
        08093be4 8b 4c 24 1c     MOV        ECX,dword ptr [ESP + local_1c]
        08093be8 51              PUSH       ECX
        08093be9 e8 e2 db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093bee 83 c4 10        ADD        ESP,0x10
        08093bf1 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_24]
        08093bf5 85 d2           TEST       EDX,EDX
        08093bf7 74 0b           JZ         LAB_08093c04
        08093bf9 50              PUSH       EAX
        08093bfa 50              PUSH       EAX
        08093bfb 6a 00           PUSH       0x0
        08093bfd 8b 6c 24 14     MOV        EBP,dword ptr [ESP + local_24]
        08093c01 55              PUSH       EBP
        08093c02 eb cf           JMP        LAB_08093bd3
                             LAB_08093c04                                    XREF[3]:     08093bc8(j), 08093bdb(j),
                                                                                          08093bf7(j)
        08093c04 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093c08                                    XREF[1]:     08093b9d(j)
        08093c08 83 f9 3c        CMP        ECX,0x3c
        08093c0b 75 78           JNZ        LAB_08093c85
        08093c0d 80 3d 96        CMP        byte ptr [DAT_082c0a96],0x0                      = ??
                 0a 2c 08 00
        08093c14 75 33           JNZ        LAB_08093c49
        08093c16 80 3d 8a        CMP        byte ptr [DAT_082c0a8a],0x0                      = ??
                 0a 2c 08 00
        08093c1d 75 2a           JNZ        LAB_08093c49
        08093c1f 57              PUSH       EDI
        08093c20 57              PUSH       EDI
        08093c21 6a 01           PUSH       0x1
        08093c23 8b 74 24 1c     MOV        ESI,dword ptr [ESP + local_1c]
        08093c27 56              PUSH       ESI
        08093c28 e8 a3 db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093c2d 83 c4 10        ADD        ESP,0x10
        08093c30 8b 5c 24 08     MOV        EBX,dword ptr [ESP + local_24]
        08093c34 85 db           TEST       EBX,EBX
        08093c36 74 11           JZ         LAB_08093c49
        08093c38 51              PUSH       ECX
        08093c39 51              PUSH       ECX
        08093c3a 6a 01           PUSH       0x1
        08093c3c 8b 54 24 14     MOV        EDX,dword ptr [ESP + local_24]
        08093c40 52              PUSH       EDX
        08093c41 e8 8a db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093c46 83 c4 10        ADD        ESP,0x10
                             LAB_08093c49                                    XREF[3]:     08093c14(j), 08093c1d(j),
                                                                                          08093c36(j)
        08093c49 80 3d fd        CMP        byte ptr [DAT_082c0afd],0x0                      = ??
                 0a 2c 08 00
        08093c50 75 33           JNZ        LAB_08093c85
        08093c52 80 3d 7d        CMP        byte ptr [DAT_082c0a7d],0x0                      = ??
                 0a 2c 08 00
        08093c59 75 2a           JNZ        LAB_08093c85
        08093c5b 50              PUSH       EAX
        08093c5c 50              PUSH       EAX
        08093c5d 6a 01           PUSH       0x1
        08093c5f 8b 6c 24 18     MOV        EBP,dword ptr [ESP + local_20]
        08093c63 55              PUSH       EBP
        08093c64 e8 67 db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093c69 83 c4 10        ADD        ESP,0x10
        08093c6c 8b 7c 24 04     MOV        EDI,dword ptr [ESP + local_28]
        08093c70 85 ff           TEST       EDI,EDI
        08093c72 74 11           JZ         LAB_08093c85
        08093c74 56              PUSH       ESI
        08093c75 56              PUSH       ESI
        08093c76 6a 01           PUSH       0x1
        08093c78 8b 5c 24 10     MOV        EBX,dword ptr [ESP + local_28]
        08093c7c 53              PUSH       EBX
        08093c7d e8 4e db        CALL       PlayerLifeSet                                    undefined PlayerLifeSet()
                 01 00
        08093c82 83 c4 10        ADD        ESP,0x10
                             LAB_08093c85                                    XREF[4]:     08093c0b(j), 08093c50(j),
                                                                                          08093c59(j), 08093c72(j)
        08093c85 80 3d 9d        CMP        byte ptr [DAT_082c0a9d],0x0                      = ??
                 0a 2c 08 00
        08093c8c 75 09           JNZ        LAB_08093c97
        08093c8e 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        08093c92 83 f9 3d        CMP        ECX,0x3d
        08093c95 75 2c           JNZ        LAB_08093cc3
                             LAB_08093c97                                    XREF[1]:     08093c8c(j)
        08093c97 8b 4c 24 10     MOV        ECX,dword ptr [ESP + local_1c]
        08093c9b 8b 81 74        MOV        EAX,dword ptr [ECX + 0x174]
                 01 00 00
        08093ca1 8b 91 70        MOV        EDX,dword ptr [ECX + 0x170]
                 01 00 00
        08093ca7 8b 00           MOV        EAX,dword ptr [EAX]
        08093ca9 89 02           MOV        dword ptr [EDX],EAX
        08093cab 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_20]
        08093caf 8b 90 70        MOV        EDX,dword ptr [EAX + 0x170]
                 01 00 00
        08093cb5 8b 80 74        MOV        EAX,dword ptr [EAX + 0x174]
                 01 00 00
        08093cbb 8b 00           MOV        EAX,dword ptr [EAX]
        08093cbd 89 02           MOV        dword ptr [EDX],EAX
        08093cbf 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093cc3                                    XREF[1]:     08093c95(j)
        08093cc3 83 f9 3e        CMP        ECX,0x3e
        08093cc6 0f 85 97        JNZ        LAB_08093d63
                 00 00 00
        08093ccc 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08093cd2 89 d0           MOV        EAX,EDX
        08093cd4 8b 9a 64        MOV        EBX,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08093cda 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093ce0 7f 55           JG         LAB_08093d37
        08093ce2 8d 34 9d        LEA        ESI,[EBX*0x4 + 0x1cf60]
                 60 cf 01 00
        08093ce9 89 d5           MOV        EBP,EDX
        08093ceb 89 f7           MOV        EDI,ESI
        08093ced 8d 76 00        LEA        ESI,[ESI]
                             LAB_08093cf0                                    XREF[1]:     08093d35(j)
        08093cf0 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08093cf4 85 c0           TEST       EAX,EAX
        08093cf6 74 16           JZ         LAB_08093d0e
        08093cf8 8b 88 58        MOV        ECX,dword ptr [EAX + 0x158]
                 01 00 00
        08093cfe 85 c9           TEST       ECX,ECX
        08093d00 74 0c           JZ         LAB_08093d0e
        08093d02 8b 40 1c        MOV        EAX,dword ptr [EAX + 0x1c]
        08093d05 b9 01 00        MOV        ECX,0x1
                 00 00
        08093d0a 85 c0           TEST       EAX,EAX
        08093d0c 74 02           JZ         LAB_08093d10
                             LAB_08093d0e                                    XREF[2]:     08093cf6(j), 08093d00(j)
        08093d0e 31 c9           XOR        ECX,ECX
                             LAB_08093d10                                    XREF[1]:     08093d0c(j)
        08093d10 85 c9           TEST       ECX,ECX
        08093d12 74 12           JZ         LAB_08093d26
        08093d14 8b 54 16 04     MOV        EDX,dword ptr [ESI + EDX*0x1 + 0x4]
        08093d18 8b 82 64        MOV        EAX,dword ptr [EDX + 0x164]
                 01 00 00
        08093d1e 89 82 60        MOV        dword ptr [EDX + 0x160],EAX
                 01 00 00
        08093d24 89 ea           MOV        EDX,EBP
                             LAB_08093d26                                    XREF[1]:     08093d12(j)
        08093d26 43              INC        EBX
        08093d27 83 c6 04        ADD        ESI,0x4
        08093d2a 83 c7 04        ADD        EDI,0x4
        08093d2d 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093d33 89 d0           MOV        EAX,EDX
        08093d35 7e b9           JLE        LAB_08093cf0
                             LAB_08093d37                                    XREF[1]:     08093ce0(j)
        08093d37 80 3d 96        CMP        byte ptr [DAT_082c0a96],0x0                      = ??
                 0a 2c 08 00
        08093d3e 75 15           JNZ        LAB_08093d55
        08093d40 80 3d 8a        CMP        byte ptr [DAT_082c0a8a],0x0                      = ??
                 0a 2c 08 00
        08093d47 75 0c           JNZ        LAB_08093d55
        08093d49 c7 82 50        MOV        dword ptr [EDX + 0x20b50],0x1
                 0b 02 00
                 01 00 00 00
        08093d53 eb 0a           JMP        LAB_08093d5f
                             LAB_08093d55                                    XREF[2]:     08093d3e(j), 08093d47(j)
        08093d55 c7 82 54        MOV        dword ptr [EDX + 0x20b54],0x1
                 0b 02 00
                 01 00 00 00
                             LAB_08093d5f                                    XREF[1]:     08093d53(j)
        08093d5f 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093d63                                    XREF[1]:     08093cc6(j)
        08093d63 83 f9 3f        CMP        ECX,0x3f
        08093d66 75 13           JNZ        LAB_08093d7b
        08093d68 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093d6d c7 80 54        MOV        dword ptr [EAX + 0x1d454],0x1
                 d4 01 00
                 01 00 00 00
        08093d77 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093d7b                                    XREF[1]:     08093d66(j)
        08093d7b 83 f9 42        CMP        ECX,0x42
        08093d7e 0f 85 8a        JNZ        LAB_08093e0e
                 00 00 00
        08093d84 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093d89 83 ec 0c        SUB        ESP,0xc
        08093d8c 8b 80 44        MOV        EAX,dword ptr [EAX + 0x20744]
                 07 02 00
        08093d92 50              PUSH       EAX
        08093d93 e8 98 a7        CALL       ClipboardClear                                   undefined ClipboardClear()
                 fb ff
        08093d98 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08093d9e 83 c4 10        ADD        ESP,0x10
        08093da1 89 d0           MOV        EAX,EDX
        08093da3 8b 9a 64        MOV        EBX,dword ptr [EDX + 0x1d164]
                 d1 01 00
        08093da9 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093daf 7f 5d           JG         LAB_08093e0e
        08093db1 8d 34 9d        LEA        ESI,[EBX*0x4 + 0x1cf60]
                 60 cf 01 00
        08093db8 89 f7           MOV        EDI,ESI
        08093dba 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_08093dc0                                    XREF[1]:     08093e0c(j)
        08093dc0 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08093dc4 85 c0           TEST       EAX,EAX
        08093dc6 74 0f           JZ         LAB_08093dd7
        08093dc8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        08093dce b9 01 00        MOV        ECX,0x1
                 00 00
        08093dd3 85 ed           TEST       EBP,EBP
        08093dd5 75 02           JNZ        LAB_08093dd9
                             LAB_08093dd7                                    XREF[1]:     08093dc6(j)
        08093dd7 31 c9           XOR        ECX,ECX
                             LAB_08093dd9                                    XREF[1]:     08093dd5(j)
        08093dd9 85 c9           TEST       ECX,ECX
        08093ddb 74 20           JZ         LAB_08093dfd
        08093ddd 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        08093de1 8b 80 5c        MOV        EAX,dword ptr [EAX + 0x345c]
                 34 00 00
        08093de7 85 c0           TEST       EAX,EAX
        08093de9 74 12           JZ         LAB_08093dfd
        08093deb 83 ec 0c        SUB        ESP,0xc
        08093dee 50              PUSH       EAX
        08093def e8 3c a7        CALL       ClipboardClear                                   undefined ClipboardClear()
                 fb ff
        08093df4 83 c4 10        ADD        ESP,0x10
        08093df7 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08093dfd                                    XREF[2]:     08093ddb(j), 08093de9(j)
        08093dfd 43              INC        EBX
        08093dfe 83 c6 04        ADD        ESI,0x4
        08093e01 83 c7 04        ADD        EDI,0x4
        08093e04 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08093e0a 89 d0           MOV        EAX,EDX
        08093e0c 7e b2           JLE        LAB_08093dc0
                             LAB_08093e0e                                    XREF[3]:     08093a7c(j), 08093d7e(j),
                                                                                          08093daf(j)
        08093e0e 80 3d 7d        CMP        byte ptr [DAT_082c0a7d],0x0                      = ??
                 0a 2c 08 00
        08093e15 75 0d           JNZ        LAB_08093e24
        08093e17 80 3d fd        CMP        byte ptr [DAT_082c0afd],0x0                      = ??
                 0a 2c 08 00
        08093e1e 0f 84 67        JZ         LAB_0809428b
                 04 00 00
                             LAB_08093e24                                    XREF[1]:     08093e15(j)
        08093e24 8b 34 24        MOV        ESI,dword ptr [ESP]=>local_2c
        08093e27 85 f6           TEST       ESI,ESI
        08093e29 0f 84 a7        JZ         LAB_080941d6
                 03 00 00
        08093e2f 80 3d 98        CMP        byte ptr [DAT_082c0a98],0x0                      = ??
                 0a 2c 08 00
        08093e36 75 0d           JNZ        LAB_08093e45
        08093e38 80 3d 18        CMP        byte ptr [DAT_082c0b18],0x0                      = ??
                 0b 2c 08 00
        08093e3f 0f 84 be        JZ         LAB_08093f03
                 00 00 00
                             LAB_08093e45                                    XREF[1]:     08093e36(j)
        08093e45 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        08093e49 83 f9 02        CMP        ECX,0x2
        08093e4c 75 24           JNZ        LAB_08093e72
        08093e4e 31 c0           XOR        EAX,EAX
        08093e50 53              PUSH       EBX
        08093e51 53              PUSH       EBX
        08093e52 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_1c]
        08093e56 8b 8a 58        MOV        ECX,dword ptr [EDX + 0x158]
                 01 00 00
        08093e5c 85 c9           TEST       ECX,ECX
        08093e5e 0f 94 c0        SETZ       AL
        08093e61 50              PUSH       EAX
        08093e62 8b 52 08        MOV        EDX,dword ptr [EDX + 0x8]
        08093e65 52              PUSH       EDX
        08093e66 e8 65 d7        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        08093e6b 83 c4 10        ADD        ESP,0x10
        08093e6e 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093e72                                    XREF[1]:     08093e4c(j)
        08093e72 83 f9 03        CMP        ECX,0x3
        08093e75 75 24           JNZ        LAB_08093e9b
        08093e77 50              PUSH       EAX
        08093e78 50              PUSH       EAX
        08093e79 31 c0           XOR        EAX,EAX
        08093e7b 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_20]
        08093e7f 8b a9 58        MOV        EBP,dword ptr [ECX + 0x158]
                 01 00 00
        08093e85 85 ed           TEST       EBP,EBP
        08093e87 0f 94 c0        SETZ       AL
        08093e8a 50              PUSH       EAX
        08093e8b 8b 79 08        MOV        EDI,dword ptr [ECX + 0x8]
        08093e8e 57              PUSH       EDI
        08093e8f e8 3c d7        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        08093e94 83 c4 10        ADD        ESP,0x10
        08093e97 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093e9b                                    XREF[1]:     08093e75(j)
        08093e9b 83 f9 04        CMP        ECX,0x4
        08093e9e 75 2c           JNZ        LAB_08093ecc
        08093ea0 8b 74 24 08     MOV        ESI,dword ptr [ESP + local_24]
        08093ea4 85 f6           TEST       ESI,ESI
        08093ea6 74 24           JZ         LAB_08093ecc
        08093ea8 31 c0           XOR        EAX,EAX
        08093eaa 53              PUSH       EBX
        08093eab 53              PUSH       EBX
        08093eac 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_24]
        08093eb0 8b 8a 58        MOV        ECX,dword ptr [EDX + 0x158]
                 01 00 00
        08093eb6 85 c9           TEST       ECX,ECX
        08093eb8 0f 94 c0        SETZ       AL
        08093ebb 50              PUSH       EAX
        08093ebc 8b 6a 08        MOV        EBP,dword ptr [EDX + 0x8]
        08093ebf 55              PUSH       EBP
        08093ec0 e8 0b d7        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        08093ec5 83 c4 10        ADD        ESP,0x10
        08093ec8 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093ecc                                    XREF[2]:     08093e9e(j), 08093ea6(j)
        08093ecc 83 f9 05        CMP        ECX,0x5
        08093ecf 0f 85 ae        JNZ        LAB_08093f83
                 00 00 00
        08093ed5 8b 7c 24 04     MOV        EDI,dword ptr [ESP + local_28]
        08093ed9 85 ff           TEST       EDI,EDI
        08093edb 0f 84 a2        JZ         LAB_08093f83
                 00 00 00
        08093ee1 31 c0           XOR        EAX,EAX
        08093ee3 56              PUSH       ESI
        08093ee4 56              PUSH       ESI
        08093ee5 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_28]
        08093ee9 8b 99 58        MOV        EBX,dword ptr [ECX + 0x158]
                 01 00 00
        08093eef 85 db           TEST       EBX,EBX
        08093ef1 0f 94 c0        SETZ       AL
        08093ef4 50              PUSH       EAX
        08093ef5 8b 49 08        MOV        ECX,dword ptr [ECX + 0x8]
        08093ef8 51              PUSH       ECX
        08093ef9 e8 d2 d6        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        08093efe 83 c4 10        ADD        ESP,0x10
        08093f01 eb 7c           JMP        LAB_08093f7f
                             LAB_08093f03                                    XREF[1]:     08093e3f(j)
        08093f03 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        08093f07 83 f9 02        CMP        ECX,0x2
        08093f0a 75 13           JNZ        LAB_08093f1f
        08093f0c 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_1c]
        08093f10 8b 90 2c        MOV        EDX,dword ptr [EAX + 0x262c]
                 26 00 00
        08093f16 83 f2 01        XOR        EDX,0x1
        08093f19 89 90 2c        MOV        dword ptr [EAX + 0x262c],EDX
                 26 00 00
                             LAB_08093f1f                                    XREF[1]:     08093f0a(j)
        08093f1f 83 f9 03        CMP        ECX,0x3
        08093f22 75 17           JNZ        LAB_08093f3b
        08093f24 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_20]
        08093f28 8b aa 2c        MOV        EBP,dword ptr [EDX + 0x262c]
                 26 00 00
        08093f2e 83 f5 01        XOR        EBP,0x1
        08093f31 89 aa 2c        MOV        dword ptr [EDX + 0x262c],EBP
                 26 00 00
        08093f37 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093f3b                                    XREF[1]:     08093f22(j)
        08093f3b 83 f9 04        CMP        ECX,0x4
        08093f3e 75 1f           JNZ        LAB_08093f5f
        08093f40 8b 7c 24 08     MOV        EDI,dword ptr [ESP + local_24]
        08093f44 85 ff           TEST       EDI,EDI
        08093f46 74 17           JZ         LAB_08093f5f
        08093f48 8b 4c 24 08     MOV        ECX,dword ptr [ESP + local_24]
        08093f4c 8b b1 2c        MOV        ESI,dword ptr [ECX + 0x262c]
                 26 00 00
        08093f52 83 f6 01        XOR        ESI,0x1
        08093f55 89 b1 2c        MOV        dword ptr [ECX + 0x262c],ESI
                 26 00 00
        08093f5b 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093f5f                                    XREF[2]:     08093f3e(j), 08093f46(j)
        08093f5f 83 f9 05        CMP        ECX,0x5
        08093f62 75 1f           JNZ        LAB_08093f83
        08093f64 8b 5c 24 04     MOV        EBX,dword ptr [ESP + local_28]
        08093f68 85 db           TEST       EBX,EBX
        08093f6a 74 17           JZ         LAB_08093f83
        08093f6c 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_28]
        08093f70 8b 90 2c        MOV        EDX,dword ptr [EAX + 0x262c]
                 26 00 00
        08093f76 83 f2 01        XOR        EDX,0x1
        08093f79 89 90 2c        MOV        dword ptr [EAX + 0x262c],EDX
                 26 00 00
                             LAB_08093f7f                                    XREF[1]:     08093f01(j)
        08093f7f 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093f83                                    XREF[4]:     08093ecf(j), 08093edb(j),
                                                                                          08093f62(j), 08093f6a(j)
        08093f83 83 f9 2f        CMP        ECX,0x2f
        08093f86 75 29           JNZ        LAB_08093fb1
        08093f88 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093f8d 8b a8 0c        MOV        EBP,dword ptr [EAX + 0x1050c]
                 05 01 00
        08093f93 85 ed           TEST       EBP,EBP
        08093f95 75 0c           JNZ        LAB_08093fa3
        08093f97 c7 80 0c        MOV        dword ptr [EAX + 0x1050c],0x1
                 05 01 00
                 01 00 00 00
        08093fa1 eb 0a           JMP        LAB_08093fad
                             LAB_08093fa3                                    XREF[1]:     08093f95(j)
        08093fa3 c7 80 0c        MOV        dword ptr [EAX + 0x1050c],0x0
                 05 01 00
                 00 00 00 00
                             LAB_08093fad                                    XREF[1]:     08093fa1(j)
        08093fad 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093fb1                                    XREF[1]:     08093f86(j)
        08093fb1 83 f9 1f        CMP        ECX,0x1f
        08093fb4 75 2e           JNZ        LAB_08093fe4
        08093fb6 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093fbb 8b b8 48        MOV        EDI,dword ptr [EAX + 0x20b48]
                 0b 02 00
        08093fc1 85 ff           TEST       EDI,EDI
        08093fc3 75 0c           JNZ        LAB_08093fd1
        08093fc5 c7 80 48        MOV        dword ptr [EAX + 0x20b48],0x1
                 0b 02 00
                 01 00 00 00
        08093fcf eb 0f           JMP        LAB_08093fe0
                             LAB_08093fd1                                    XREF[1]:     08093fc3(j)
        08093fd1 c7 80 48        MOV        dword ptr [EAX + 0x20b48],0x0
                 0b 02 00
                 00 00 00 00
        08093fdb e8 10 71        CALL       TimerSyncReset                                   undefined TimerSyncReset()
                 fe ff
                             LAB_08093fe0                                    XREF[1]:     08093fcf(j)
        08093fe0 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_08093fe4                                    XREF[1]:     08093fb4(j)
        08093fe4 83 f9 21        CMP        ECX,0x21
        08093fe7 75 57           JNZ        LAB_08094040
        08093fe9 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08093fef 8b 82 14        MOV        EAX,dword ptr [EDX + 0x1cc14]
                 cc 01 00
        08093ff5 40              INC        EAX
        08093ff6 89 82 14        MOV        dword ptr [EDX + 0x1cc14],EAX
                 cc 01 00
        08093ffc 83 f8 03        CMP        EAX,0x3
        08093fff 75 14           JNZ        LAB_08094015
        08094001 c7 82 14        MOV        dword ptr [EDX + 0x1cc14],0x7d0
                 cc 01 00
                 d0 07 00 00
        0809400b c7 82 cc        MOV        dword ptr [EDX + 0x1bbcc],0x0
                 bb 01 00
                 00 00 00 00
                             LAB_08094015                                    XREF[1]:     08093fff(j)
        08094015 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809401b 81 ba 14        CMP        dword ptr [EDX + 0x1cc14],0x7d0
                 cc 01 00
                 d0 07 00 00
        08094025 7e 1f           JLE        LAB_08094046
        08094027 c7 82 14        MOV        dword ptr [EDX + 0x1cc14],0xffffffff
                 cc 01 00
                 ff ff ff ff
        08094031 c7 82 cc        MOV        dword ptr [EDX + 0x1bbcc],0x1
                 bb 01 00
                 01 00 00 00
        0809403b eb 09           JMP        LAB_08094046
        0809403d 8d              ??         8Dh
        0809403e 76              ??         76h    v
        0809403f 00              ??         00h
                             LAB_08094040                                    XREF[1]:     08093fe7(j)
        08094040 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08094046                                    XREF[2]:     08094025(j), 0809403b(j)
        08094046 81 ba 14        CMP        dword ptr [EDX + 0x1cc14],0x7cf
                 cc 01 00
                 cf 07 00 00
        08094050 7e 24           JLE        LAB_08094076
        08094052 8b b2 48        MOV        ESI,dword ptr [EDX + 0x20b48]
                 0b 02 00
        08094058 85 f6           TEST       ESI,ESI
        0809405a 75 1a           JNZ        LAB_08094076
        0809405c c7 82 14        MOV        dword ptr [EDX + 0x1cc14],0xffffffff
                 cc 01 00
                 ff ff ff ff
        08094066 c7 82 cc        MOV        dword ptr [EDX + 0x1bbcc],0x1
                 bb 01 00
                 01 00 00 00
        08094070 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08094076                                    XREF[2]:     08094050(j), 0809405a(j)
        08094076 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        0809407a 83 f9 26        CMP        ECX,0x26
        0809407d 75 19           JNZ        LAB_08094098
        0809407f 8b 9a f4        MOV        EBX,dword ptr [EDX + 0x14af4]
                 4a 01 00
        08094085 31 c0           XOR        EAX,EAX
        08094087 85 db           TEST       EBX,EBX
        08094089 0f 94 c0        SETZ       AL
        0809408c 89 82 f4        MOV        dword ptr [EDX + 0x14af4],EAX
                 4a 01 00
        08094092 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_08094098                                    XREF[1]:     0809407d(j)
        08094098 83 f9 2e        CMP        ECX,0x2e
        0809409b 75 32           JNZ        LAB_080940cf
        0809409d 8b 82 40        MOV        EAX,dword ptr [EDX + 0x20740]
                 07 02 00
        080940a3 40              INC        EAX
        080940a4 89 82 40        MOV        dword ptr [EDX + 0x20740],EAX
                 07 02 00
        080940aa 83 f8 02        CMP        EAX,0x2
        080940ad 7e 16           JLE        LAB_080940c5
        080940af c7 82 40        MOV        dword ptr [EDX + 0x20740],0x0
                 07 02 00
                 00 00 00 00
        080940b9 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        080940bd 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080940c3 eb 0a           JMP        LAB_080940cf
                             LAB_080940c5                                    XREF[1]:     080940ad(j)
        080940c5 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080940cb 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_080940cf                                    XREF[2]:     0809409b(j), 080940c3(j)
        080940cf 83 f9 17        CMP        ECX,0x17
        080940d2 0f 85 87        JNZ        LAB_0809415f
                 00 00 00
        080940d8 8b 9a 64        MOV        EBX,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080940de 89 d0           MOV        EAX,EDX
        080940e0 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080940e6 7f 77           JG         LAB_0809415f
        080940e8 8d 34 9d        LEA        ESI,[EBX*0x4 + 0x1cf60]
                 60 cf 01 00
        080940ef 90              NOP
                             LAB_080940f0                                    XREF[1]:     08094159(j)
        080940f0 8b 44 06 04     MOV        EAX,dword ptr [ESI + EAX*0x1 + 0x4]
        080940f4 85 c0           TEST       EAX,EAX
        080940f6 74 16           JZ         LAB_0809410e
        080940f8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        080940fe 85 ed           TEST       EBP,EBP
        08094100 74 0c           JZ         LAB_0809410e
        08094102 8b 78 1c        MOV        EDI,dword ptr [EAX + 0x1c]
        08094105 b9 01 00        MOV        ECX,0x1
                 00 00
        0809410a 85 ff           TEST       EDI,EDI
        0809410c 74 02           JZ         LAB_08094110
                             LAB_0809410e                                    XREF[2]:     080940f6(j), 08094100(j)
        0809410e 31 c9           XOR        ECX,ECX
                             LAB_08094110                                    XREF[1]:     0809410c(j)
        08094110 85 c9           TEST       ECX,ECX
        08094112 74 39           JZ         LAB_0809414d
        08094114 51              PUSH       ECX
        08094115 51              PUSH       ECX
        08094116 6a 00           PUSH       0x0
        08094118 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        0809411c 50              PUSH       EAX
        0809411d e8 0e d6        CALL       PlayerChangeState                                undefined PlayerChangeState()
                 01 00
        08094122 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08094128 83 c4 10        ADD        ESP,0x10
        0809412b 8b 44 16 04     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0x4]
        0809412f c7 80 0c        MOV        dword ptr [EAX + 0xe0c],0x1
                 0e 00 00
                 01 00 00 00
        08094139 c7 80 b8        MOV        dword ptr [EAX + 0x1b8],0x0
                 01 00 00
                 00 00 00 00
        08094143 c7 80 b4        MOV        dword ptr [EAX + 0x1b4],0x0
                 01 00 00
                 00 00 00 00
                             LAB_0809414d                                    XREF[1]:     08094112(j)
        0809414d 43              INC        EBX
        0809414e 83 c6 04        ADD        ESI,0x4
        08094151 89 d0           MOV        EAX,EDX
        08094153 3b 9a 68        CMP        EBX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08094159 7e 95           JLE        LAB_080940f0
        0809415b 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_0809415f                                    XREF[2]:     080940d2(j), 080940e6(j)
        0809415f 8b aa 30        MOV        EBP,dword ptr [EDX + 0x20730]
                 07 02 00
        08094165 85 ed           TEST       EBP,EBP
        08094167 74 71           JZ         LAB_080941da
        08094169 83 f9 14        CMP        ECX,0x14
        0809416c 75 6c           JNZ        LAB_080941da
        0809416e 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1cf6c]
                 cf 01 00
        08094174 c7 82 d8        MOV        dword ptr [EDX + 0xced8],0x0
                 ce 00 00
                 00 00 00 00
        0809417e 85 c0           TEST       EAX,EAX
        08094180 74 0f           JZ         LAB_08094191
        08094182 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        08094188 ba 01 00        MOV        EDX,0x1
                 00 00
        0809418d 85 ff           TEST       EDI,EDI
        0809418f 75 02           JNZ        LAB_08094193
                             LAB_08094191                                    XREF[1]:     08094180(j)
        08094191 31 d2           XOR        EDX,EDX
                             LAB_08094193                                    XREF[1]:     0809418f(j)
        08094193 85 d2           TEST       EDX,EDX
        08094195 74 15           JZ         LAB_080941ac
        08094197 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809419c 8b 80 6c        MOV        EAX,dword ptr [EAX + 0x1cf6c]
                 cf 01 00
        080941a2 c7 80 2c        MOV        dword ptr [EAX + 0x262c],0x0
                 26 00 00
                 00 00 00 00
                             LAB_080941ac                                    XREF[1]:     08094195(j)
        080941ac 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080941b2 31 c0           XOR        EAX,EAX
        080941b4 83 ba b8        CMP        dword ptr [EDX + 0xceb8],0x3
                 ce 00 00 03
        080941bb 0f 95 c0        SETNZ      AL
        080941be c7 82 54        MOV        dword ptr [EDX + 0x1d454],0xffffffff
                 d4 01 00
                 ff ff ff ff
        080941c8 8d 04 40        LEA        EAX,[EAX + EAX*0x2]
        080941cb 89 82 b8        MOV        dword ptr [EDX + 0xceb8],EAX
                 ce 00 00
        080941d1 e8 aa 12        CALL       TrainingMenuReset                                undefined TrainingMenuReset()
                 01 00
                             LAB_080941d6                                    XREF[1]:     08093e29(j)
        080941d6 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
                             LAB_080941da                                    XREF[2]:     08094167(j), 0809416c(j)
        080941da 83 f9 20        CMP        ECX,0x20
        080941dd 0f 85 a8        JNZ        LAB_0809428b
                 00 00 00
        080941e3 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080941e9 8b b2 38        MOV        ESI,dword ptr [EDX + 0x20738]
                 07 02 00
        080941ef 85 f6           TEST       ESI,ESI
        080941f1 0f 84 94        JZ         LAB_0809428b
                 00 00 00
        080941f7 89 d1           MOV        ECX,EDX
        080941f9 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_08094200                                    XREF[1]:     08094252(j)
        08094200 8b 82 5c        MOV        EAX,dword ptr [EDX + 0x20b5c]
                 0b 02 00
        08094206 c7 82 34        MOV        dword ptr [EDX + 0x20734],0x1
                 07 02 00
                 01 00 00 00
        08094210 c7 40 20        MOV        dword ptr [EAX + 0x20],0x1
                 01 00 00 00
        08094217 8b 82 2c        MOV        EAX,dword ptr [EDX + 0x2072c]
                 07 02 00
        0809421d 40              INC        EAX
        0809421e 89 82 2c        MOV        dword ptr [EDX + 0x2072c],EAX
                 07 02 00
        08094224 8b 84 82        MOV        EAX,dword ptr [EDX + EAX*0x4 + 0x1cf64]
                 64 cf 01 00
        0809422b 85 c0           TEST       EAX,EAX
        0809422d 74 0f           JZ         LAB_0809423e
        0809422f 8b 98 58        MOV        EBX,dword ptr [EAX + 0x158]
                 01 00 00
        08094235 ba 01 00        MOV        EDX,0x1
                 00 00
        0809423a 85 db           TEST       EBX,EBX
        0809423c 75 02           JNZ        LAB_08094240
                             LAB_0809423e                                    XREF[1]:     0809422d(j)
        0809423e 31 d2           XOR        EDX,EDX
                             LAB_08094240                                    XREF[1]:     0809423c(j)
        08094240 85 d2           TEST       EDX,EDX
        08094242 75 12           JNZ        LAB_08094256
        08094244 89 ca           MOV        EDX,ECX
        08094246 8b 82 68        MOV        EAX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        0809424c 39 82 2c        CMP        dword ptr [EDX + 0x2072c],EAX
                 07 02 00
        08094252 7c ac           JL         LAB_08094200
        08094254 eb 06           JMP        LAB_0809425c
                             LAB_08094256                                    XREF[1]:     08094242(j)
        08094256 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809425c                                    XREF[1]:     08094254(j)
        0809425c 8b 82 68        MOV        EAX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        08094262 39 82 2c        CMP        dword ptr [EDX + 0x2072c],EAX
                 07 02 00
        08094268 7e 21           JLE        LAB_0809428b
        0809426a 8b 82 5c        MOV        EAX,dword ptr [EDX + 0x20b5c]
                 0b 02 00
        08094270 c7 82 34        MOV        dword ptr [EDX + 0x20734],0x0
                 07 02 00
                 00 00 00 00
        0809427a c7 40 20        MOV        dword ptr [EAX + 0x20],0x0
                 00 00 00 00
        08094281 c7 82 2c        MOV        dword ptr [EDX + 0x2072c],0x0
                 07 02 00
                 00 00 00 00
                             LAB_0809428b                                    XREF[4]:     08093e1e(j), 080941dd(j),
                                                                                          080941f1(j), 08094268(j)
        0809428b 80 3d 70        CMP        byte ptr [framestep.0],0x0
                 7a 28 08 00
        08094292 74 0e           JZ         LAB_080942a2
        08094294 c6 05 70        MOV        byte ptr [framestep.0],0x0
                 7a 28 08 00
        0809429b c6 05 61        MOV        byte ptr [keypauseflag],0x1                      = ??
                 0b 2c 08 01
                             LAB_080942a2                                    XREF[1]:     08094292(j)
        080942a2 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080942a8 8b 8a 24        MOV        ECX,dword ptr [EDX + 0x1cc24]
                 cc 01 00
        080942ae 85 c9           TEST       ECX,ECX
        080942b0 74 45           JZ         LAB_080942f7
        080942b2 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_18]
        080942b6 85 c9           TEST       ECX,ECX
        080942b8 74 3d           JZ         LAB_080942f7
        080942ba 80 3d 70        CMP        byte ptr [framestep.0],0x0
                 7a 28 08 00
        080942c1 75 34           JNZ        LAB_080942f7
        080942c3 f7 c1 00        TEST       ECX,0x100
                 01 00 00
        080942c9 75 2c           JNZ        LAB_080942f7
        080942cb 83 f9 58        CMP        ECX,0x58
        080942ce 74 27           JZ         LAB_080942f7
        080942d0 83 ba b8        CMP        dword ptr [EDX + 0xceb8],0x3
                 ce 00 00 03
        080942d7 75 05           JNZ        LAB_080942de
        080942d9 83 f9 46        CMP        ECX,0x46
        080942dc 75 07           JNZ        LAB_080942e5
                             LAB_080942de                                    XREF[1]:     080942d7(j)
        080942de c6 05 61        MOV        byte ptr [keypauseflag],0x0                      = ??
                 0b 2c 08 00
                             LAB_080942e5                                    XREF[1]:     080942dc(j)
        080942e5 83 f9 46        CMP        ECX,0x46
        080942e8 75 07           JNZ        LAB_080942f1
        080942ea c6 05 70        MOV        byte ptr [framestep.0],0x1
                 7a 28 08 01
                             LAB_080942f1                                    XREF[1]:     080942e8(j)
        080942f1 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080942f7                                    XREF[5]:     080942b0(j), 080942b8(j),
                                                                                          080942c1(j), 080942c9(j),
                                                                                          080942ce(j)
        080942f7 83 ba 88        CMP        dword ptr [EDX + 0x1d388],0x1
                 d3 01 00 01
        080942fe 75 14           JNZ        LAB_08094314
        08094300 e8 ab 98        CALL       ScreenSnap                                       undefined ScreenSnap()
                 ff ff
        08094305 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809430a c7 80 88        MOV        dword ptr [EAX + 0x1d388],0x0
                 d3 01 00
                 00 00 00 00
                             LAB_08094314                                    XREF[1]:     080942fe(j)
        08094314 83 7c 24        CMP        dword ptr [ESP + local_18],0x58
                 14 58
        08094319 75 20           JNZ        LAB_0809433b
        0809431b a1 74 7a        MOV        EAX,[g]
                 28 08
        08094320 8b 90 24        MOV        EDX,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        08094326 85 d2           TEST       EDX,EDX
        08094328 75 07           JNZ        LAB_08094331
        0809432a e8 81 98        CALL       ScreenSnap                                       undefined ScreenSnap()
                 ff ff
        0809432f eb 0a           JMP        LAB_0809433b
                             LAB_08094331                                    XREF[1]:     08094328(j)
        08094331 c7 80 88        MOV        dword ptr [EAX + 0x1d388],0x1
                 d3 01 00
                 01 00 00 00
                             LAB_0809433b                                    XREF[2]:     08094319(j), 0809432f(j)
        0809433b 83 c4 1c        ADD        ESP,0x1c
        0809433e 31 c0           XOR        EAX,EAX
        08094340 5b              POP        EBX
        08094341 5e              POP        ESI
        08094342 5f              POP        EDI
        08094343 5d              POP        EBP
        08094344 c3              RET
