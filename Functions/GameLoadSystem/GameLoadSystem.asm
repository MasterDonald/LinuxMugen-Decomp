                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoadSystem()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x11c   local_11c                               XREF[3]:     080d2d75(*),
                                                                                                   080d3113(*),
                                                                                                   080d335e(*)
             undefined         Stack[-0x111   local_111c                              XREF[3]:     080d2b7c(*),
                                                                                                   080d2db5(*),
                                                                                                   080d3923(*)
             undefined         Stack[-0x211   local_211c                              XREF[2]:     080d2cff(*),
                                                                                                   080d392b(*)
             undefined4        Stack[-0x212   local_2124                              XREF[1]:     080d2f72(W)
             undefined4        Stack[-0x212   local_2128                              XREF[1]:     080d2f6a(W)
             undefined4        Stack[-0x212   local_212c                              XREF[1]:     080d2f62(W)
             undefined4        Stack[-0x213   local_2130                              XREF[1]:     080d2f5a(W)
             undefined4        Stack[-0x213   local_2134                              XREF[1]:     080d2f52(W)
             undefined4        Stack[-0x213   local_2138                              XREF[1]:     080d2f4a(W)
             undefined4        Stack[-0x213   local_213c                              XREF[1]:     080d2f42(W)
             undefined4        Stack[-0x214   local_2140                              XREF[1]:     080d2f3a(W)
             undefined4        Stack[-0x214   local_2144                              XREF[1]:     080d2f32(W)
             undefined4        Stack[-0x214   local_2148                              XREF[1]:     080d2f2a(W)
             undefined4        Stack[-0x214   local_214c                              XREF[3]:     080d2efe(W),
                                                                                                   080d3100(*),
                                                                                                   080d3104(*)
             undefined4        Stack[-0x215   local_2154                              XREF[1]:     080d302e(W)
             undefined4        Stack[-0x215   local_2158                              XREF[1]:     080d3026(W)
             undefined4        Stack[-0x215   local_215c                              XREF[1]:     080d301e(W)
             undefined4        Stack[-0x216   local_2160                              XREF[1]:     080d2fb2(W)
             undefined4        Stack[-0x216   local_2164                              XREF[1]:     080d2faa(W)
             undefined4        Stack[-0x216   local_2168                              XREF[1]:     080d2fa2(W)
             undefined4        Stack[-0x216   local_216c                              XREF[1]:     080d2f9a(W)
             undefined4        Stack[-0x217   local_2170                              XREF[1]:     080d2f92(W)
             undefined4        Stack[-0x217   local_2174                              XREF[1]:     080d2f8a(W)
             undefined4        Stack[-0x217   local_2178                              XREF[1]:     080d2f82(W)
             undefined4        Stack[-0x217   local_217c                              XREF[2]:     080d2f7a(W),
                                                                                                   080d3156(*)
             undefined4        Stack[-0x218   local_2180                              XREF[25]:    080d2d6a(W),
                                                                                                   080d2ddd(R),
                                                                                                   080d2df3(R),
                                                                                                   080d2dfa(W),
                                                                                                   080d30f2(W),
                                                                                                   080d3137(R),
                                                                                                   080d3152(R),
                                                                                                   080d316e(R),
                                                                                                   080d3177(W),
                                                                                                   080d3353(W),
                                                                                                   080d3375(R),
                                                                                                   080d33a5(R),
                                                                                                   080d33c6(R),
                                                                                                   080d33d7(R),
                                                                                                   080d33f2(R),
                                                                                                   080d3404(R),
                                                                                                   080d3425(R),
                                                                                                   080d3437(R),
                                                                                                   080d3458(R),
                                                                                                   080d346b(R)
             undefined4        Stack[-0x219   local_219c                              XREF[1]:     080d2b89(*)
                             gcc2_compiled.                                  XREF[2]:     Entry Point(*),
                             GameLoadSystem                                               GameInit:080992ce(c)
        080d2b60 55              PUSH       EBP
        080d2b61 57              PUSH       EDI
        080d2b62 56              PUSH       ESI
        080d2b63 53              PUSH       EBX
        080d2b64 81 ec 80        SUB        ESP,0x2180
                 21 00 00
        080d2b6a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2b6f 8d 90 ff        LEA        EDX,[EAX + 0x15aff]
                 5a 01 00
        080d2b75 05 00 4b        ADD        EAX,0x14b00
                 01 00
        080d2b7a 50              PUSH       EAX
        080d2b7b 52              PUSH       EDX
        080d2b7c 8d 9c 24        LEA        EBX=>local_111c,[ESP + 0x107c]
                 7c 10 00 00
        080d2b83 53              PUSH       EBX
        080d2b84 e8 b7 e5        CALL       joindirfile                                      undefined joindirfile()
                 f7 ff
        080d2b89 89 1c 24        MOV        dword ptr [ESP]=>local_219c,EBX
        080d2b8c e8 2f 8c        CALL       TPReadFile                                       undefined TPReadFile()
                 fa ff
        080d2b91 89 c7           MOV        EDI,EAX
        080d2b93 83 c4 10        ADD        ESP,0x10
        080d2b96 85 ff           TEST       EDI,EDI
        080d2b98 75 26           JNZ        LAB_080d2bc0
        080d2b9a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2b9f 8d 90 00        LEA        EDX,[EAX + 0x14b00]
                 4b 01 00
        080d2ba5 52              PUSH       EDX
        080d2ba6 8d 90 ff        LEA        EDX,[EAX + 0x15aff]
                 5a 01 00
        080d2bac 52              PUSH       EDX
        080d2bad 05 48 07        ADD        EAX,0x20748
                 02 00
        080d2bb2 68 22 d0        PUSH       s_Can't_open_%s%s_0827d022                       = "Can't open %s%s"
                 27 08
        080d2bb7 e9 c9 0d        JMP        LAB_080d3985
                 00 00
        080d2bbc 8d              ??         8Dh
        080d2bbd 74              ??         74h    t
        080d2bbe 26              ??         26h    &
        080d2bbf 00              ??         00h
                             LAB_080d2bc0                                    XREF[1]:     080d2b98(j)
        080d2bc0 51              PUSH       ECX
        080d2bc1 51              PUSH       ECX
        080d2bc2 68 d5 8a        PUSH       s_Files_08278abe+23                              = "Files"
                 27 08
        080d2bc7 57              PUSH       EDI
        080d2bc8 e8 b3 91        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d2bcd 83 c4 10        ADD        ESP,0x10
        080d2bd0 40              INC        EAX
        080d2bd1 75 1d           JNZ        LAB_080d2bf0
        080d2bd3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2bd8 52              PUSH       EDX
        080d2bd9 05 48 07        ADD        EAX,0x20748
                 02 00
        080d2bde 52              PUSH       EDX
        080d2bdf 68 32 d0        PUSH       s_Can't_access_[Files]_group_0827d032            = "Can't access [Files] group"
                 27 08
        080d2be4 e9 9c 0d        JMP        LAB_080d3985
                 00 00
        080d2be9 8d              ??         8Dh
        080d2bea b4              ??         B4h
        080d2beb 26              ??         26h    &
        080d2bec 00              ??         00h
        080d2bed 00              ??         00h
        080d2bee 00              ??         00h
        080d2bef 00              ??         00h
                             LAB_080d2bf0                                    XREF[1]:     080d2bd1(j)
        080d2bf0 50              PUSH       EAX
        080d2bf1 50              PUSH       EAX
        080d2bf2 68 9b 85        PUSH       DAT_0827859b                                     = 73h    s
                 27 08
        080d2bf7 57              PUSH       EDI
        080d2bf8 e8 a3 94        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d2bfd 89 c6           MOV        ESI,EAX
        080d2bff 83 c4 10        ADD        ESP,0x10
        080d2c02 85 f6           TEST       ESI,ESI
        080d2c04 74 4a           JZ         LAB_080d2c50
        080d2c06 55              PUSH       EBP
        080d2c07 6a 00           PUSH       0x0
        080d2c09 53              PUSH       EBX
        080d2c0a 56              PUSH       ESI
        080d2c0b e8 b0 a9        CALL       FindFileDir                                      undefined FindFileDir()
                 fb ff
        080d2c10 83 c4 10        ADD        ESP,0x10
        080d2c13 85 c0           TEST       EAX,EAX
        080d2c15 0f 84 73        JZ         LAB_080d398e
                 0d 00 00
        080d2c1b 83 ec 0c        SUB        ESP,0xc
        080d2c1e 53              PUSH       EBX
        080d2c1f e8 1c 93        CALL       SpriteReadFile                                   undefined SpriteReadFile()
                 f8 ff
        080d2c24 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d2c2a 83 c4 10        ADD        ESP,0x10
        080d2c2d 85 c0           TEST       EAX,EAX
        080d2c2f 89 82 00        MOV        dword ptr [EDX + 0x16b00],EAX
                 6b 01 00
        080d2c35 75 2f           JNZ        LAB_080d2c66
        080d2c37 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d2c3d 57              PUSH       EDI
        080d2c3e 56              PUSH       ESI
        080d2c3f 68 5d 8a        PUSH       s_Can't_load_%s_08278a5d                         = "Can't load %s"
                 27 08
        080d2c44 e9 3c 0d        JMP        LAB_080d3985
                 00 00
        080d2c49 8d              ??         8Dh
        080d2c4a b4              ??         B4h
        080d2c4b 26              ??         26h    &
        080d2c4c 00              ??         00h
        080d2c4d 00              ??         00h
        080d2c4e 00              ??         00h
        080d2c4f 00              ??         00h
                             LAB_080d2c50                                    XREF[1]:     080d2c04(j)
        080d2c50 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2c55 53              PUSH       EBX
        080d2c56 05 48 07        ADD        EAX,0x20748
                 02 00
        080d2c5b 53              PUSH       EBX
        080d2c5c 68 e0 d8        PUSH       s_Missing_spr_specification_in_[Fi_0827d8e0      = "Missing spr specification in
                 27 08
        080d2c61 e9 1f 0d        JMP        LAB_080d3985
                 00 00
                             LAB_080d2c66                                    XREF[1]:     080d2c35(j)
        080d2c66 8d 82 04        LEA        EAX,[EDX + 0x16b04]
                 6b 01 00
        080d2c6c 51              PUSH       ECX
        080d2c6d 51              PUSH       ECX
        080d2c6e 53              PUSH       EBX
        080d2c6f 50              PUSH       EAX
        080d2c70 e8 5b d9        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 10 00
        080d2c75 58              POP        EAX
        080d2c76 5a              POP        EDX
        080d2c77 68 a0 8a        PUSH       s_snd_08278a88+24                                = "snd"
                 27 08
        080d2c7c 57              PUSH       EDI
        080d2c7d e8 1e 94        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d2c82 89 c6           MOV        ESI,EAX
        080d2c84 83 c4 10        ADD        ESP,0x10
        080d2c87 85 f6           TEST       ESI,ESI
        080d2c89 74 57           JZ         LAB_080d2ce2
        080d2c8b 55              PUSH       EBP
        080d2c8c 6a 00           PUSH       0x0
        080d2c8e 53              PUSH       EBX
        080d2c8f 56              PUSH       ESI
        080d2c90 e8 2b a9        CALL       FindFileDir                                      undefined FindFileDir()
                 fb ff
        080d2c95 83 c4 10        ADD        ESP,0x10
        080d2c98 85 c0           TEST       EAX,EAX
        080d2c9a 0f 84 ee        JZ         LAB_080d398e
                 0c 00 00
        080d2ca0 83 ec 0c        SUB        ESP,0xc
        080d2ca3 53              PUSH       EBX
        080d2ca4 e8 a7 4a        CALL       SndReadFile                                      undefined SndReadFile()
                 f8 ff
        080d2ca9 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d2caf 83 c4 10        ADD        ESP,0x10
        080d2cb2 85 c0           TEST       EAX,EAX
        080d2cb4 89 82 04        MOV        dword ptr [EDX + 0x17b04],EAX
                 7b 01 00
        080d2cba 75 14           JNZ        LAB_080d2cd0
        080d2cbc 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d2cc2 53              PUSH       EBX
        080d2cc3 56              PUSH       ESI
        080d2cc4 68 5d 8a        PUSH       s_Can't_load_%s_08278a5d                         = "Can't load %s"
                 27 08
        080d2cc9 e9 b7 0c        JMP        LAB_080d3985
                 00 00
        080d2cce 89              ??         89h
        080d2ccf f6              ??         F6h
                             LAB_080d2cd0                                    XREF[1]:     080d2cba(j)
        080d2cd0 8d 82 08        LEA        EAX,[EDX + 0x17b08]
                 7b 01 00
        080d2cd6 51              PUSH       ECX
        080d2cd7 51              PUSH       ECX
        080d2cd8 53              PUSH       EBX
        080d2cd9 50              PUSH       EAX
        080d2cda e8 f1 d8        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 10 00
        080d2cdf 83 c4 10        ADD        ESP,0x10
                             LAB_080d2ce2                                    XREF[1]:     080d2c89(j)
        080d2ce2 50              PUSH       EAX
        080d2ce3 50              PUSH       EAX
        080d2ce4 68 fe 8d        PUSH       s_fight_08278dfe                                 = "fight"
                 27 08
        080d2ce9 57              PUSH       EDI
        080d2cea e8 b1 93        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d2cef 89 c6           MOV        ESI,EAX
        080d2cf1 83 c4 10        ADD        ESP,0x10
        080d2cf4 85 f6           TEST       ESI,ESI
        080d2cf6 0f 84 92        JZ         LAB_080d398e
                 0c 00 00
        080d2cfc 55              PUSH       EBP
        080d2cfd 55              PUSH       EBP
        080d2cfe 56              PUSH       ESI
        080d2cff 8d 44 24 7c     LEA        EAX=>local_211c,[ESP + 0x7c]
        080d2d03 50              PUSH       EAX
        080d2d04 e8 c7 d8        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 10 00
        080d2d09 83 c4 10        ADD        ESP,0x10
        080d2d0c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2d11 05 80 53        ADD        EAX,0x5380
                 00 00
        080d2d16 50              PUSH       EAX
        080d2d17 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d2d1c 68 8d 7a        PUSH       s_select_08277a87+6                              = "select"
                 27 08
        080d2d21 57              PUSH       EDI
        080d2d22 e8 39 97        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d2d27 83 c4 10        ADD        ESP,0x10
        080d2d2a 85 c0           TEST       EAX,EAX
        080d2d2c 0f 8e 5c        JLE        LAB_080d398e
                 0c 00 00
        080d2d32 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2d37 05 44 6d        ADD        EAX,0x6d44
                 00 00
        080d2d3c 50              PUSH       EAX
        080d2d3d 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d2d42 68 4d d0        PUSH       s_logo.storyboard_0827d04d                       = "logo.storyboard"
                 27 08
        080d2d47 57              PUSH       EDI
        080d2d48 e8 13 97        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d2d4d a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2d52 05 44 7d        ADD        EAX,0x7d44
                 00 00
        080d2d57 50              PUSH       EAX
        080d2d58 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d2d5d 68 d0 7a        PUSH       s_intro.storyboard_08277ad0                      = "intro.storyboard"
                 27 08
        080d2d62 57              PUSH       EDI
        080d2d63 e8 f8 96        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d2d68 31 c9           XOR        ECX,ECX
        080d2d6a c7 44 24        MOV        dword ptr [ESP + local_2180],0x0
                 2c 00 00
                 00 00
        080d2d72 83 c4 20        ADD        ESP,0x20
        080d2d75 8d ac 24        LEA        EBP=>local_11c,[ESP + 0x2070]
                 70 20 00 00
        080d2d7c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_080d2d80                                    XREF[1]:     080d2e01(j)
        080d2d80 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d2d86 8b 82 e8        MOV        EAX,dword ptr [EDX + 0x104e8]
                 04 01 00
        080d2d8c 89 84 8a        MOV        dword ptr [EDX + ECX*0x4 + 0x18b0c],EAX
                 0c 8b 01 00
        080d2d93 53              PUSH       EBX
        080d2d94 51              PUSH       ECX
        080d2d95 68 a4 8a        PUSH       s_font%i_08278aa4                                = "font%i"
                 27 08
        080d2d9a 55              PUSH       EBP
        080d2d9b e8 80 20        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d2da0 5a              POP        EDX
        080d2da1 59              POP        ECX
        080d2da2 55              PUSH       EBP
        080d2da3 57              PUSH       EDI
        080d2da4 e8 f7 92        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d2da9 89 c6           MOV        ESI,EAX
        080d2dab 83 c4 10        ADD        ESP,0x10
        080d2dae 85 f6           TEST       ESI,ESI
        080d2db0 74 41           JZ         LAB_080d2df3
        080d2db2 50              PUSH       EAX
        080d2db3 6a 00           PUSH       0x0
        080d2db5 8d 9c 24        LEA        EBX=>local_111c,[ESP + 0x1078]
                 78 10 00 00
        080d2dbc 53              PUSH       EBX
        080d2dbd 56              PUSH       ESI
        080d2dbe e8 fd a7        CALL       FindFileDir                                      undefined FindFileDir()
                 fb ff
        080d2dc3 83 c4 10        ADD        ESP,0x10
        080d2dc6 85 c0           TEST       EAX,EAX
        080d2dc8 0f 84 c0        JZ         LAB_080d398e
                 0b 00 00
        080d2dce 83 ec 0c        SUB        ESP,0xc
        080d2dd1 53              PUSH       EBX
        080d2dd2 e8 99 f6        CALL       FontReadFile                                     undefined FontReadFile()
                 f7 ff
        080d2dd7 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080d2ddd 8b 54 24 1c     MOV        EDX,dword ptr [ESP + local_2180]
        080d2de1 83 c4 10        ADD        ESP,0x10
        080d2de4 85 c0           TEST       EAX,EAX
        080d2de6 89 84 91        MOV        dword ptr [ECX + EDX*0x4 + 0x18b0c],EAX
                 0c 8b 01 00
        080d2ded 0f 84 85        JZ         LAB_080d3978
                 0b 00 00
                             LAB_080d2df3                                    XREF[1]:     080d2db0(j)
        080d2df3 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_2180]
        080d2df7 40              INC        EAX
        080d2df8 89 c1           MOV        ECX,EAX
        080d2dfa 89 44 24 0c     MOV        dword ptr [ESP + local_2180],EAX
        080d2dfe 83 f9 09        CMP        ECX,0x9
        080d2e01 0f 8e 79        JLE        LAB_080d2d80
                 ff ff ff
        080d2e07 83 ec 0c        SUB        ESP,0xc
        080d2e0a 57              PUSH       EDI
        080d2e0b e8 e0 90        CALL       TPGroupScanFirst                                 undefined TPGroupScanFirst()
                 fa ff
        080d2e10 89 c6           MOV        ESI,EAX
        080d2e12 83 c4 10        ADD        ESP,0x10
                             LAB_080d2e15                                    XREF[1]:     080d2e3c(j)
        080d2e15 8d 46 01        LEA        EAX,[ESI + 0x1]
        080d2e18 55              PUSH       EBP
        080d2e19 55              PUSH       EBP
        080d2e1a 68 fe 69        PUSH       s_begin_action_082769fe                          = "begin action "
                 27 08
        080d2e1f 50              PUSH       EAX
        080d2e20 e8 8b e1        CALL       strimatch                                        undefined strimatch()
                 f7 ff
        080d2e25 83 c4 10        ADD        ESP,0x10
        080d2e28 85 c0           TEST       EAX,EAX
        080d2e2a 75 12           JNZ        LAB_080d2e3e
        080d2e2c 83 ec 0c        SUB        ESP,0xc
        080d2e2f 57              PUSH       EDI
        080d2e30 e8 cb 90        CALL       TPGroupScanNext                                  undefined TPGroupScanNext()
                 fa ff
        080d2e35 89 c6           MOV        ESI,EAX
        080d2e37 83 c4 10        ADD        ESP,0x10
        080d2e3a 85 f6           TEST       ESI,ESI
        080d2e3c 75 d7           JNZ        LAB_080d2e15
                             LAB_080d2e3e                                    XREF[1]:     080d2e2a(j)
        080d2e3e 85 f6           TEST       ESI,ESI
        080d2e40 74 2e           JZ         LAB_080d2e70
        080d2e42 83 ec 0c        SUB        ESP,0xc
        080d2e45 57              PUSH       EDI
        080d2e46 e8 45 54        CALL       AnimRCReadFileTP                                 undefined AnimRCReadFileTP()
                 f7 ff
        080d2e4b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d2e51 83 c4 10        ADD        ESP,0x10
        080d2e54 85 c0           TEST       EAX,EAX
        080d2e56 89 82 08        MOV        dword ptr [EDX + 0x18b08],EAX
                 8b 01 00
        080d2e5c 75 12           JNZ        LAB_080d2e70
        080d2e5e 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d2e64 57              PUSH       EDI
        080d2e65 57              PUSH       EDI
        080d2e66 68 5d d0        PUSH       s_Error_loading_anim_0827d05d                    = "Error loading anim"
                 27 08
        080d2e6b e9 15 0b        JMP        LAB_080d3985
                 00 00
                             LAB_080d2e70                                    XREF[2]:     080d2e40(j), 080d2e5c(j)
        080d2e70 56              PUSH       ESI
        080d2e71 56              PUSH       ESI
        080d2e72 68 0c 95        PUSH       s_Music_0827950c                                 = "Music"
                 27 08
        080d2e77 57              PUSH       EDI
        080d2e78 e8 03 8f        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d2e7d 83 c4 10        ADD        ESP,0x10
        080d2e80 40              INC        EAX
        080d2e81 74 4c           JZ         LAB_080d2ecf
        080d2e83 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2e88 53              PUSH       EBX
        080d2e89 05 44 8b        ADD        EAX,0x18b44
                 01 00
        080d2e8e 68 70 d0        PUSH       s_title.bgm_0827d070                             = "title.bgm"
                 27 08
        080d2e93 50              PUSH       EAX
        080d2e94 57              PUSH       EDI
        080d2e95 e8 a6 23        CALL       BGMParse                                         undefined BGMParse()
                 fb ff
        080d2e9a 83 c4 0c        ADD        ESP,0xc
        080d2e9d a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2ea2 05 4c ab        ADD        EAX,0x1ab4c
                 01 00
        080d2ea7 68 7a d0        PUSH       s_select.bgm_0827d07a                            = "select.bgm"
                 27 08
        080d2eac 50              PUSH       EAX
        080d2ead 57              PUSH       EDI
        080d2eae e8 8d 23        CALL       BGMParse                                         undefined BGMParse()
                 fb ff
        080d2eb3 83 c4 0c        ADD        ESP,0xc
        080d2eb6 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2ebb 05 48 9b        ADD        EAX,0x19b48
                 01 00
        080d2ec0 68 85 d0        PUSH       s_vs.bgm_0827d085                                = "vs.bgm"
                 27 08
        080d2ec5 50              PUSH       EAX
        080d2ec6 57              PUSH       EDI
        080d2ec7 e8 74 23        CALL       BGMParse                                         undefined BGMParse()
                 fb ff
        080d2ecc 83 c4 10        ADD        ESP,0x10
                             LAB_080d2ecf                                    XREF[1]:     080d2e81(j)
        080d2ecf 51              PUSH       ECX
        080d2ed0 51              PUSH       ECX
        080d2ed1 68 8c d0        PUSH       s_title_info_0827d08c                            = "title info"
                 27 08
        080d2ed6 57              PUSH       EDI
        080d2ed7 e8 a4 8e        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d2edc 83 c4 10        ADD        ESP,0x10
        080d2edf 40              INC        EAX
        080d2ee0 75 16           JNZ        LAB_080d2ef8
        080d2ee2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d2ee7 52              PUSH       EDX
        080d2ee8 05 48 07        ADD        EAX,0x20748
                 02 00
        080d2eed 52              PUSH       EDX
        080d2eee 68 20 d9        PUSH       s_Can't_access_[Title_Info]_group_0827d920       = "Can't access [Title Info] gro
                 27 08
        080d2ef3 e9 8d 0a        JMP        LAB_080d3985
                 00 00
                             LAB_080d2ef8                                    XREF[1]:     080d2ee0(j)
        080d2ef8 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d2efe c7 44 24        MOV        dword ptr [ESP + local_214c],s_arcade_0827d097+4 = "arcade"
                 40 9b d0
                 27 08
        080d2f06 8d b3 14        LEA        ESI,[EBX + 0x4014]
                 40 00 00
        080d2f0c c7 83 34        MOV        dword ptr [EBX + 0x4034],0x9f
                 40 00 00
                 9f 00 00 00
        080d2f16 c7 83 38        MOV        dword ptr [EBX + 0x4038],0x9e
                 40 00 00
                 9e 00 00 00
        080d2f20 c7 83 58        MOV        dword ptr [EBX + 0x4058],0xd
                 40 00 00
                 0d 00 00 00
        080d2f2a c7 44 24        MOV        dword ptr [ESP + local_2148],s_versus_0827d0a2+4 = "versus"
                 44 a6 d0
                 27 08
        080d2f32 c7 44 24        MOV        dword ptr [ESP + local_2144],s_teamarcade_0827   = "teamarcade"
                 48 97 d0
                 27 08
        080d2f3a c7 44 24        MOV        dword ptr [ESP + local_2140],s_teamversus_0827   = "teamversus"
                 4c a2 d0
                 27 08
        080d2f42 c7 44 24        MOV        dword ptr [ESP + local_213c],s_teamcoop_0827d0ad = "teamcoop"
                 50 ad d0
                 27 08
        080d2f4a c7 44 24        MOV        dword ptr [ESP + local_2138],s_survival_0827d0b6 = "survival"
                 54 b6 d0
                 27 08
        080d2f52 c7 44 24        MOV        dword ptr [ESP + local_2134],s_survivalcoop_08   = "survivalcoop"
                 58 bf d0
                 27 08
        080d2f5a c7 44 24        MOV        dword ptr [ESP + local_2130],s_training_0827d0cc = "training"
                 5c cc d0
                 27 08
        080d2f62 c7 44 24        MOV        dword ptr [ESP + local_212c],s_watch_0827d0d5    = "watch"
                 60 d5 d0
                 27 08
        080d2f6a c7 44 24        MOV        dword ptr [ESP + local_2128],s_options_0827d81   = "options"
                 64 2b d8
                 27 08
        080d2f72 c7 44 24        MOV        dword ptr [ESP + local_2124],DAT_0827d0db        = 65h    e
                 68 db d0
                 27 08
        080d2f7a c7 44 24        MOV        dword ptr [ESP + local_217c],s_Arcade_08277b5a+5 = "Arcade"
                 10 5f 7b
                 27 08
        080d2f82 c7 44 24        MOV        dword ptr [ESP + local_2178],s_VS_Mode_0827d0e0  = "VS Mode"
                 14 e0 d0
                 27 08
        080d2f8a c7 44 24        MOV        dword ptr [ESP + local_2174],s_Team_Arcade_082   = "Team Arcade"
                 18 5a 7b
                 27 08
        080d2f92 c7 44 24        MOV        dword ptr [ESP + local_2170],s_Team_Versus_082   = "Team Versus"
                 1c 66 7b
                 27 08
        080d2f9a c7 44 24        MOV        dword ptr [ESP + local_216c],s_Team_Co-op_0827   = "Team Co-op"
                 20 e8 d0
                 27 08
        080d2fa2 c7 44 24        MOV        dword ptr [ESP + local_2168],s_Survival_08277b83 = "Survival"
                 24 83 7b
                 27 08
        080d2faa c7 44 24        MOV        dword ptr [ESP + local_2164],s_Survival_Co-op_   = "Survival Co-op"
                 28 f3 d0
                 27 08
        080d2fb2 c7 44 24        MOV        dword ptr [ESP + local_2160],s_Training_0827d102 = "Training"
                 2c 02 d1
                 27 08
        080d2fba c7 86 a8        MOV        dword ptr [ESI + 0x1a8],0xc
                 01 00 00
                 0c 00 00 00
        080d2fc4 c7 86 ac        MOV        dword ptr [ESI + 0x1ac],0x8
                 01 00 00
                 08 00 00 00
        080d2fce c7 86 b0        MOV        dword ptr [ESI + 0x1b0],0x5
                 01 00 00
                 05 00 00 00
        080d2fd8 c7 86 b4        MOV        dword ptr [ESI + 0x1b4],0x1
                 01 00 00
                 01 00 00 00
        080d2fe2 c7 86 b8        MOV        dword ptr [ESI + 0x1b8],0xffffffe0
                 01 00 00
                 e0 ff ff ff
        080d2fec c7 86 bc        MOV        dword ptr [ESI + 0x1bc],0xfffffff6
                 01 00 00
                 f6 ff ff ff
        080d2ff6 c7 86 c0        MOV        dword ptr [ESI + 0x1c0],0x20
                 01 00 00
                 20 00 00 00
        080d3000 c7 86 c4        MOV        dword ptr [ESI + 0x1c4],0x2
                 01 00 00
                 02 00 00 00
        080d300a c7 83 48        MOV        dword ptr [EBX + 0x4048],0xffffffff
                 40 00 00
                 ff ff ff ff
        080d3014 c7 83 3c        MOV        dword ptr [EBX + 0x403c],0xffffffff
                 40 00 00
                 ff ff ff ff
        080d301e c7 44 24        MOV        dword ptr [ESP + local_215c],s_Watch_0827d10b    = "Watch"
                 30 0b d1
                 27 08
        080d3026 c7 44 24        MOV        dword ptr [ESP + local_2158],s_Options_0827978   = "Options"
                 34 97 97
                 27 08
        080d302e c7 44 24        MOV        dword ptr [ESP + local_2154],DAT_082798d6        = 45h    E
                 38 d6 98
                 27 08
        080d3036 50              PUSH       EAX
        080d3037 56              PUSH       ESI
        080d3038 68 1a 6f        PUSH       s_fadein.time_08276f1a                           = "fadein.time"
                 27 08
        080d303d 57              PUSH       EDI
        080d303e e8 dd 93        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3043 83 c4 0c        ADD        ESP,0xc
        080d3046 8d 46 04        LEA        EAX,[ESI + 0x4]
        080d3049 50              PUSH       EAX
        080d304a 68 31 6f        PUSH       s_fadeout.time_08276f31                          = "fadeout.time"
                 27 08
        080d304f 57              PUSH       EDI
        080d3050 e8 cb 93        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3055 8b ab 14        MOV        EBP,dword ptr [EBX + 0x4014]
                 40 00 00
        080d305b 83 c4 10        ADD        ESP,0x10
        080d305e 85 ed           TEST       EBP,EBP
        080d3060 7f 0a           JG         LAB_080d306c
        080d3062 c7 83 14        MOV        dword ptr [EBX + 0x4014],0x1
                 40 00 00
                 01 00 00 00
                             LAB_080d306c                                    XREF[1]:     080d3060(j)
        080d306c 8b 5e 04        MOV        EBX,dword ptr [ESI + 0x4]
        080d306f 85 db           TEST       EBX,EBX
        080d3071 7f 07           JG         LAB_080d307a
        080d3073 c7 46 04        MOV        dword ptr [ESI + 0x4],0x1
                 01 00 00 00
                             LAB_080d307a                                    XREF[1]:     080d3071(j)
        080d307a 83 ec 0c        SUB        ESP,0xc
        080d307d 8d 46 24        LEA        EAX,[ESI + 0x24]
        080d3080 50              PUSH       EAX
        080d3081 8d 46 20        LEA        EAX,[ESI + 0x20]
        080d3084 50              PUSH       EAX
        080d3085 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d308a 68 19 7e        PUSH       s_menu.pos_08277e11+8                            = "menu.pos"
                 27 08
        080d308f 57              PUSH       EDI
        080d3090 e8 cb 93        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d3095 83 c4 18        ADD        ESP,0x18
        080d3098 8d 46 2c        LEA        EAX,[ESI + 0x2c]
        080d309b 50              PUSH       EAX
        080d309c 8d 46 30        LEA        EAX,[ESI + 0x30]
        080d309f 50              PUSH       EAX
        080d30a0 8d 46 28        LEA        EAX,[ESI + 0x28]
        080d30a3 50              PUSH       EAX
        080d30a4 68 da 6c        PUSH       DAT_08276cda                                     = 25h    %
                 27 08
        080d30a9 68 ac 7e        PUSH       s_menu.item.font_08277ea4+8                      = "menu.item.font"
                 27 08
        080d30ae 57              PUSH       EDI
        080d30af e8 ac 93        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d30b4 83 c4 18        ADD        ESP,0x18
        080d30b7 8d 46 38        LEA        EAX,[ESI + 0x38]
        080d30ba 50              PUSH       EAX
        080d30bb 8d 46 3c        LEA        EAX,[ESI + 0x3c]
        080d30be 50              PUSH       EAX
        080d30bf 8d 46 34        LEA        EAX,[ESI + 0x34]
        080d30c2 50              PUSH       EAX
        080d30c3 68 da 6c        PUSH       DAT_08276cda                                     = 25h    %
                 27 08
        080d30c8 68 c3 7e        PUSH       s_menu.item.active.font_08277ebb+8               = "menu.item.active.font"
                 27 08
        080d30cd 57              PUSH       EDI
        080d30ce e8 8d 93        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d30d3 83 c4 14        ADD        ESP,0x14
        080d30d6 8d 46 44        LEA        EAX,[ESI + 0x44]
        080d30d9 50              PUSH       EAX
        080d30da 8d 46 40        LEA        EAX,[ESI + 0x40]
        080d30dd 50              PUSH       EAX
        080d30de 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d30e3 68 fa 7e        PUSH       s_menu.item.spacing_08277ef2+8                   = "menu.item.spacing"
                 27 08
        080d30e8 57              PUSH       EDI
        080d30e9 e8 72 93        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d30ee 31 d2           XOR        EDX,EDX
        080d30f0 31 c9           XOR        ECX,ECX
        080d30f2 c7 44 24        MOV        dword ptr [ESP + local_2180],0x0
                 2c 00 00
                 00 00
        080d30fa 83 c4 20        ADD        ESP,0x20
        080d30fd 8d 76 00        LEA        ESI,[ESI]
                             LAB_080d3100                                    XREF[1]:     080d3180(j)
        080d3100 8d 44 24 40     LEA        EAX=>local_214c,[ESP + 0x40]
        080d3104 8b 04 88        MOV        EAX=>local_214c,dword ptr [EAX + ECX*0x4]
        080d3107 80 38 00        CMP        byte ptr [EAX]=>s_arcade_0827d097+4,0x0          = "arcade"
        080d310a 74 66           JZ         LAB_080d3172
        080d310c 51              PUSH       ECX
        080d310d 50              PUSH       EAX=>s_arcade_0827d097+4                         = "arcade"
        080d310e 68 11 d1        PUSH       s_menu.itemname.%s_0827d111                      = "menu.itemname.%s"
                 27 08
        080d3113 8d 9c 24        LEA        EBX=>local_11c,[ESP + 0x207c]
                 7c 20 00 00
        080d311a 53              PUSH       EBX
        080d311b e8 00 1d        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d3120 58              POP        EAX
        080d3121 5a              POP        EDX
        080d3122 53              PUSH       EBX
        080d3123 57              PUSH       EDI
        080d3124 e8 77 8f        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d3129 83 c4 10        ADD        ESP,0x10
        080d312c 85 c0           TEST       EAX,EAX
        080d312e 74 20           JZ         LAB_080d3150
        080d3130 83 ec 0c        SUB        ESP,0xc
        080d3133 6a 00           PUSH       0x0
        080d3135 6a 1f           PUSH       0x1f
        080d3137 8b 44 24 20     MOV        EAX,dword ptr [ESP + local_2180]
        080d313b c1 e0 05        SHL        EAX,0x5
        080d313e 8d 44 30 48     LEA        EAX,[EAX + ESI*0x1 + 0x48]
        080d3142 50              PUSH       EAX
        080d3143 53              PUSH       EBX
        080d3144 57              PUSH       EDI
        080d3145 e8 06 a6        CALL       GetQuotedString                                  undefined GetQuotedString()
                 fb ff
        080d314a 83 c4 20        ADD        ESP,0x20
        080d314d eb 1f           JMP        LAB_080d316e
        080d314f 90              ??         90h
                             LAB_080d3150                                    XREF[1]:     080d312e(j)
        080d3150 55              PUSH       EBP
        080d3151 55              PUSH       EBP
        080d3152 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_2180]
        080d3156 8d 54 24 18     LEA        EDX=>local_217c,[ESP + 0x18]
        080d315a 8b 1c 82        MOV        EBX,dword ptr [EDX + EAX*0x4]
        080d315d c1 e0 05        SHL        EAX,0x5
        080d3160 53              PUSH       EBX
        080d3161 8d 44 30 48     LEA        EAX,[EAX + ESI*0x1 + 0x48]
        080d3165 50              PUSH       EAX
        080d3166 e8 65 d4        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 10 00
        080d316b 83 c4 10        ADD        ESP,0x10
                             LAB_080d316e                                    XREF[1]:     080d314d(j)
        080d316e 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_2180]
                             LAB_080d3172                                    XREF[1]:     080d310a(j)
        080d3172 8d 42 01        LEA        EAX,[EDX + 0x1]
        080d3175 89 c2           MOV        EDX,EAX
        080d3177 89 44 24 0c     MOV        dword ptr [ESP + local_2180],EAX
        080d317b 89 d1           MOV        ECX,EDX
        080d317d 83 fa 0a        CMP        EDX,0xa
        080d3180 0f 8e 7a        JLE        LAB_080d3100
                 ff ff ff
        080d3186 83 ec 0c        SUB        ESP,0xc
        080d3189 8d 86 ac        LEA        EAX,[ESI + 0x1ac]
                 01 00 00
        080d318f 50              PUSH       EAX
        080d3190 8d 86 a8        LEA        EAX,[ESI + 0x1a8]
                 01 00 00
        080d3196 50              PUSH       EAX
        080d3197 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d319c 68 22 d1        PUSH       s_menu.window.margins.y_0827d122                 = "menu.window.margins.y"
                 27 08
        080d31a1 57              PUSH       EDI
        080d31a2 e8 b9 92        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d31a7 83 c4 1c        ADD        ESP,0x1c
        080d31aa 8d 86 b0        LEA        EAX,[ESI + 0x1b0]
                 01 00 00
        080d31b0 50              PUSH       EAX
        080d31b1 68 38 d1        PUSH       s_menu.window.visibleitems_0827d138              = "menu.window.visibleitems"
                 27 08
        080d31b6 57              PUSH       EDI
        080d31b7 e8 64 92        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d31bc 83 c4 0c        ADD        ESP,0xc
        080d31bf 8d 86 b4        LEA        EAX,[ESI + 0x1b4]
                 01 00 00
        080d31c5 50              PUSH       EAX
        080d31c6 68 51 d1        PUSH       s_menu.boxcursor.visible_0827d151                = "menu.boxcursor.visible"
                 27 08
        080d31cb 57              PUSH       EDI
        080d31cc e8 4f 92        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d31d1 83 c4 0c        ADD        ESP,0xc
        080d31d4 8d 86 c4        LEA        EAX,[ESI + 0x1c4]
                 01 00 00
        080d31da 50              PUSH       EAX
        080d31db 8d 86 c0        LEA        EAX,[ESI + 0x1c0]
                 01 00 00
        080d31e1 50              PUSH       EAX
        080d31e2 8d 86 bc        LEA        EAX,[ESI + 0x1bc]
                 01 00 00
        080d31e8 50              PUSH       EAX
        080d31e9 8d 86 b8        LEA        EAX,[ESI + 0x1b8]
                 01 00 00
        080d31ef 50              PUSH       EAX
        080d31f0 68 d7 6c        PUSH       DAT_08276cd7                                     = 25h    %
                 27 08
        080d31f5 68 68 d1        PUSH       s_menu.boxcursor.coords_0827d168                 = "menu.boxcursor.coords"
                 27 08
        080d31fa 57              PUSH       EDI
        080d31fb e8 60 92        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d3200 83 c4 20        ADD        ESP,0x20
        080d3203 8d 46 0c        LEA        EAX,[ESI + 0xc]
        080d3206 50              PUSH       EAX
        080d3207 8d 46 08        LEA        EAX,[ESI + 0x8]
        080d320a 50              PUSH       EAX
        080d320b 68 72 7c        PUSH       s_cursor.move.snd_08277c6f+3                     = "cursor.move.snd"
                 27 08
        080d3210 57              PUSH       EDI
        080d3211 e8 4a 71        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d3216 8d 46 14        LEA        EAX,[ESI + 0x14]
        080d3219 50              PUSH       EAX
        080d321a 8d 46 10        LEA        EAX,[ESI + 0x10]
        080d321d 50              PUSH       EAX
        080d321e 68 98 7c        PUSH       s_cursor.done.snd_08277c95+3                     = "cursor.done.snd"
                 27 08
        080d3223 57              PUSH       EDI
        080d3224 e8 37 71        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d3229 83 c4 20        ADD        ESP,0x20
        080d322c 8d 46 1c        LEA        EAX,[ESI + 0x1c]
        080d322f 50              PUSH       EAX
        080d3230 8d 46 18        LEA        EAX,[ESI + 0x18]
        080d3233 50              PUSH       EAX
        080d3234 68 16 7d        PUSH       s_cancel.snd_08277d16                            = "cancel.snd"
                 27 08
        080d3239 57              PUSH       EDI
        080d323a e8 21 71        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d323f 5a              POP        EDX
        080d3240 59              POP        ECX
        080d3241 68 7e d1        PUSH       s_option_info_0827d17e                           = "option info"
                 27 08
        080d3246 57              PUSH       EDI
        080d3247 e8 34 8b        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d324c 83 c4 10        ADD        ESP,0x10
        080d324f 40              INC        EAX
        080d3250 75 16           JNZ        LAB_080d3268
        080d3252 50              PUSH       EAX
        080d3253 50              PUSH       EAX
        080d3254 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3259 68 40 d9        PUSH       s_Can't_access_[Option_Info]_group_0827d940      = "Can't access [Option Info] gr
                 27 08
        080d325e 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3263 e9 1d 07        JMP        LAB_080d3985
                 00 00
                             LAB_080d3268                                    XREF[1]:     080d3250(j)
        080d3268 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d326e 81 c3 dc        ADD        EBX,0x41dc
                 41 00 00
        080d3274 8d 43 0c        LEA        EAX,[EBX + 0xc]
        080d3277 50              PUSH       EAX
        080d3278 8d 43 08        LEA        EAX,[EBX + 0x8]
        080d327b 50              PUSH       EAX
        080d327c 68 72 7c        PUSH       s_cursor.move.snd_08277c6f+3                     = "cursor.move.snd"
                 27 08
        080d3281 57              PUSH       EDI
        080d3282 e8 d9 70        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d3287 8d 43 14        LEA        EAX,[EBX + 0x14]
        080d328a 50              PUSH       EAX
        080d328b 8d 43 10        LEA        EAX,[EBX + 0x10]
        080d328e 50              PUSH       EAX
        080d328f 68 98 7c        PUSH       s_cursor.done.snd_08277c95+3                     = "cursor.done.snd"
                 27 08
        080d3294 57              PUSH       EDI
        080d3295 e8 c6 70        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d329a 83 c4 20        ADD        ESP,0x20
        080d329d 8d 43 1c        LEA        EAX,[EBX + 0x1c]
        080d32a0 83 c3 18        ADD        EBX,0x18
        080d32a3 50              PUSH       EAX
        080d32a4 53              PUSH       EBX
        080d32a5 68 16 7d        PUSH       s_cancel.snd_08277d16                            = "cancel.snd"
                 27 08
        080d32aa 57              PUSH       EDI
        080d32ab e8 b0 70        CALL       ParseSndGI                                       undefined ParseSndGI()
                 fe ff
        080d32b0 5e              POP        ESI
        080d32b1 5d              POP        EBP
        080d32b2 68 8a d1        PUSH       s_select_info_0827d18a                           = "select info"
                 27 08
        080d32b7 57              PUSH       EDI
        080d32b8 e8 c3 8a        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d32bd 83 c4 10        ADD        ESP,0x10
        080d32c0 40              INC        EAX
        080d32c1 75 1d           JNZ        LAB_080d32e0
        080d32c3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d32c8 53              PUSH       EBX
        080d32c9 05 48 07        ADD        EAX,0x20748
                 02 00
        080d32ce 53              PUSH       EBX
        080d32cf 68 80 d9        PUSH       s_Can't_access_[Select_Info]_group_0827d980      = "Can't access [Select Info] gr
                 27 08
        080d32d4 e9 ac 06        JMP        LAB_080d3985
                 00 00
        080d32d9 8d              ??         8Dh
        080d32da b4              ??         B4h
        080d32db 26              ??         26h    &
        080d32dc 00              ??         00h
        080d32dd 00              ??         00h
        080d32de 00              ??         00h
        080d32df 00              ??         00h
                             LAB_080d32e0                                    XREF[1]:     080d32c1(j)
        080d32e0 83 ec 0c        SUB        ESP,0xc
        080d32e3 57              PUSH       EDI
        080d32e4 e8 77 72        CALL       CharselReadConfig                                undefined CharselReadConfig()
                 fb ff
        080d32e9 83 c4 10        ADD        ESP,0x10
        080d32ec 85 c0           TEST       EAX,EAX
        080d32ee 0f 84 9a        JZ         LAB_080d398e
                 06 00 00
        080d32f4 51              PUSH       ECX
        080d32f5 51              PUSH       ECX
        080d32f6 68 96 d1        PUSH       s_vs_screen_0827d196                             = "vs screen"
                 27 08
        080d32fb 57              PUSH       EDI
        080d32fc e8 7f 8a        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d3301 83 c4 10        ADD        ESP,0x10
        080d3304 40              INC        EAX
        080d3305 0f 84 9b        JZ         LAB_080d34a6
                 01 00 00
        080d330b a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3310 c7 80 54        MOV        dword ptr [EAX + 0xce54],0x96
                 ce 00 00
                 96 00 00 00
        080d331a 8d b0 54        LEA        ESI,[EAX + 0xce54]
                 ce 00 00
        080d3320 52              PUSH       EDX
        080d3321 56              PUSH       ESI
        080d3322 68 85 c0        PUSH       s_time_0827c06c+25                               = "time"
                 27 08
        080d3327 57              PUSH       EDI
        080d3328 e8 f3 90        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d332d 83 c4 0c        ADD        ESP,0xc
        080d3330 8d 46 04        LEA        EAX,[ESI + 0x4]
        080d3333 50              PUSH       EAX
        080d3334 68 1a 6f        PUSH       s_fadein.time_08276f1a                           = "fadein.time"
                 27 08
        080d3339 57              PUSH       EDI
        080d333a e8 e1 90        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d333f 83 c4 0c        ADD        ESP,0xc
        080d3342 8d 46 08        LEA        EAX,[ESI + 0x8]
        080d3345 50              PUSH       EAX
        080d3346 68 31 6f        PUSH       s_fadeout.time_08276f31                          = "fadeout.time"
                 27 08
        080d334b 57              PUSH       EDI
        080d334c e8 cf 90        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3351 31 d2           XOR        EDX,EDX
        080d3353 c7 44 24        MOV        dword ptr [ESP + local_2180],0x0
                 1c 00 00
                 00 00
        080d335b 83 c4 10        ADD        ESP,0x10
        080d335e 8d 9c 24        LEA        EBX=>local_11c,[ESP + 0x2070]
                 70 20 00 00
                             LAB_080d3365                                    XREF[1]:     080d349e(j)
        080d3365 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        080d3368 31 c0           XOR        EAX,EAX
        080d336a c1 e2 03        SHL        EDX,0x3
        080d336d c7 44 32        MOV        dword ptr [EDX + ESI*0x1 + 0x14],0xffffffff
                 14 ff ff
                 ff ff
        080d3375 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_2180]
        080d3379 85 c9           TEST       ECX,ECX
        080d337b 0f 94 c0        SETZ       AL
        080d337e 41              INC        ECX
        080d337f 8d 44 00 ff     LEA        EAX,[EAX + EAX*0x1 + -0x1]
        080d3383 89 44 32 28     MOV        dword ptr [EDX + ESI*0x1 + 0x28],EAX
        080d3387 83 c2 20        ADD        EDX,0x20
        080d338a b8 00 00        MOV        EAX,0x3f800000
                 80 3f
        080d338f 89 44 32 10     MOV        dword ptr [EDX + ESI*0x1 + 0x10],EAX
        080d3393 89 44 32 0c     MOV        dword ptr [EDX + ESI*0x1 + 0xc],EAX
        080d3397 50              PUSH       EAX
        080d3398 51              PUSH       ECX
        080d3399 68 f0 8a        PUSH       s_p%i.pos_08278af0                               = "p%i.pos"
                 27 08
        080d339e 53              PUSH       EBX
        080d339f e8 7c 1a        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d33a4 5d              POP        EBP
        080d33a5 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_2180]
        080d33a9 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080d33ac 8d 04 c6        LEA        EAX,[ESI + EAX*0x8]
        080d33af 8d 50 10        LEA        EDX,[EAX + 0x10]
        080d33b2 83 c0 0c        ADD        EAX,0xc
        080d33b5 52              PUSH       EDX
        080d33b6 50              PUSH       EAX
        080d33b7 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d33bc 53              PUSH       EBX
        080d33bd 57              PUSH       EDI
        080d33be e8 9d 90        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d33c3 83 c4 1c        ADD        ESP,0x1c
        080d33c6 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_2180]
        080d33ca 40              INC        EAX
        080d33cb 50              PUSH       EAX
        080d33cc 68 ca 8b        PUSH       s_p%i.facing_08278bca                            = "p%i.facing"
                 27 08
        080d33d1 53              PUSH       EBX
        080d33d2 e8 49 1a        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d33d7 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_2180]
        080d33db 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080d33de 8d 44 c6 28     LEA        EAX,[ESI + EAX*0x8 + 0x28]
        080d33e2 50              PUSH       EAX
        080d33e3 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d33e8 53              PUSH       EBX
        080d33e9 57              PUSH       EDI
        080d33ea e8 71 90        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d33ef 83 c4 1c        ADD        ESP,0x1c
        080d33f2 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_2180]
        080d33f6 40              INC        EAX
        080d33f7 50              PUSH       EAX
        080d33f8 68 a0 d1        PUSH       s_p%i.scale_0827d1a0                             = "p%i.scale"
                 27 08
        080d33fd 53              PUSH       EBX
        080d33fe e8 1d 1a        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d3403 59              POP        ECX
        080d3404 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_2180]
        080d3408 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080d340b 8d 04 c6        LEA        EAX,[ESI + EAX*0x8]
        080d340e 8d 50 30        LEA        EDX,[EAX + 0x30]
        080d3411 83 c0 2c        ADD        EAX,0x2c
        080d3414 52              PUSH       EDX
        080d3415 50              PUSH       EAX
        080d3416 68 26 6d        PUSH       s_%f,%f_08276d26                                 = "%f,%f"
                 27 08
        080d341b 53              PUSH       EBX
        080d341c 57              PUSH       EDI
        080d341d e8 3e 90        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d3422 83 c4 1c        ADD        ESP,0x1c
        080d3425 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_2180]
        080d3429 40              INC        EAX
        080d342a 50              PUSH       EAX
        080d342b 68 aa d1        PUSH       s_p%i.name.pos_0827d1aa                          = "p%i.name.pos"
                 27 08
        080d3430 53              PUSH       EBX
        080d3431 e8 ea 19        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d3436 5a              POP        EDX
        080d3437 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_2180]
        080d343b 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080d343e 8d 04 c6        LEA        EAX,[ESI + EAX*0x8]
        080d3441 8d 50 24        LEA        EDX,[EAX + 0x24]
        080d3444 83 c0 20        ADD        EAX,0x20
        080d3447 52              PUSH       EDX
        080d3448 50              PUSH       EAX
        080d3449 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d344e 53              PUSH       EBX
        080d344f 57              PUSH       EDI
        080d3450 e8 0b 90        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d3455 83 c4 1c        ADD        ESP,0x1c
        080d3458 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_2180]
        080d345c 40              INC        EAX
        080d345d 50              PUSH       EAX
        080d345e 68 ad 7d        PUSH       s_p%i.name.font_08277dad                         = "p%i.name.font"
                 27 08
        080d3463 53              PUSH       EBX
        080d3464 e8 b7 19        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d3469 5d              POP        EBP
        080d346a 58              POP        EAX
        080d346b 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_2180]
        080d346f 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080d3472 8d 04 c6        LEA        EAX,[ESI + EAX*0x8]
        080d3475 8d 50 1c        LEA        EDX,[EAX + 0x1c]
        080d3478 52              PUSH       EDX
        080d3479 8d 50 18        LEA        EDX,[EAX + 0x18]
        080d347c 52              PUSH       EDX
        080d347d 83 c0 14        ADD        EAX,0x14
        080d3480 50              PUSH       EAX
        080d3481 68 da 6c        PUSH       DAT_08276cda                                     = 25h    %
                 27 08
        080d3486 53              PUSH       EBX
        080d3487 57              PUSH       EDI
        080d3488 e8 d3 8f        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d348d 83 c4 20        ADD        ESP,0x20
        080d3490 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_2180]
        080d3494 40              INC        EAX
        080d3495 89 c2           MOV        EDX,EAX
        080d3497 89 44 24 0c     MOV        dword ptr [ESP + local_2180],EAX
        080d349b 83 fa 01        CMP        EDX,0x1
        080d349e 0f 8e c1        JLE        LAB_080d3365
                 fe ff ff
        080d34a4 eb 1a           JMP        LAB_080d34c0
                             LAB_080d34a6                                    XREF[1]:     080d3305(j)
        080d34a6 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d34ab 57              PUSH       EDI
        080d34ac 05 48 07        ADD        EAX,0x20748
                 02 00
        080d34b1 57              PUSH       EDI
        080d34b2 68 c0 d9        PUSH       s_Can't_access_[VS_Screen]_group_0827d9c0        = "Can't access [VS Screen] grou
                 27 08
        080d34b7 e9 c9 04        JMP        LAB_080d3985
                 00 00
        080d34bc 8d              ??         8Dh
        080d34bd 74              ??         74h    t
        080d34be 26              ??         26h    &
        080d34bf 00              ??         00h
                             LAB_080d34c0                                    XREF[1]:     080d34a4(j)
        080d34c0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d34c5 c7 80 a8        MOV        dword ptr [EAX + 0x1d3a8],0xffffffff
                 d3 01 00
                 ff ff ff ff
        080d34cf 56              PUSH       ESI
        080d34d0 56              PUSH       ESI
        080d34d1 68 b7 d1        PUSH       s_demo_mode_0827d1b7                             = "demo mode"
                 27 08
        080d34d6 57              PUSH       EDI
        080d34d7 e8 a4 88        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d34dc 83 c4 10        ADD        ESP,0x10
        080d34df 40              INC        EAX
        080d34e0 0f 84 ee        JZ         LAB_080d35d4
                 00 00 00
        080d34e6 c7 44 24        MOV        dword ptr [ESP + local_2180],0x0
                 0c 00 00
                 00 00
        080d34ee 53              PUSH       EBX
        080d34ef 8d 44 24 10     LEA        EAX=>local_2180,[ESP + 0x10]
        080d34f3 50              PUSH       EAX
        080d34f4 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d34f9 57              PUSH       EDI
        080d34fa e8 21 8f        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d34ff 83 c4 10        ADD        ESP,0x10
        080d3502 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_2180]
        080d3506 85 c9           TEST       ECX,ECX
        080d3508 74 1a           JZ         LAB_080d3524
        080d350a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d350f 52              PUSH       EDX
        080d3510 05 a8 d3        ADD        EAX,0x1d3a8
                 01 00
        080d3515 50              PUSH       EAX
        080d3516 68 c1 d1        PUSH       s_title.waittime_0827d1c1                        = "title.waittime"
                 27 08
        080d351b 57              PUSH       EDI
        080d351c e8 ff 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3521 83 c4 10        ADD        ESP,0x10
                             LAB_080d3524                                    XREF[1]:     080d3508(j)
        080d3524 50              PUSH       EAX
        080d3525 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d352a 05 ac d3        ADD        EAX,0x1d3ac
                 01 00
        080d352f 50              PUSH       EAX
        080d3530 68 d0 d1        PUSH       s_select.enabled_0827d1d0                        = "select.enabled"
                 27 08
        080d3535 57              PUSH       EDI
        080d3536 e8 e5 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d353b 83 c4 0c        ADD        ESP,0xc
        080d353e a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3543 05 b0 d3        ADD        EAX,0x1d3b0
                 01 00
        080d3548 50              PUSH       EAX
        080d3549 68 df d1        PUSH       s_vsscreen.enabled_0827d1df                      = "vsscreen.enabled"
                 27 08
        080d354e 57              PUSH       EDI
        080d354f e8 cc 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3554 83 c4 0c        ADD        ESP,0xc
        080d3557 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d355c 05 b4 d3        ADD        EAX,0x1d3b4
                 01 00
        080d3561 50              PUSH       EAX
        080d3562 68 f0 d1        PUSH       s_fight.endtime_0827d1f0                         = "fight.endtime"
                 27 08
        080d3567 57              PUSH       EDI
        080d3568 e8 b3 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d356d 83 c4 0c        ADD        ESP,0xc
        080d3570 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3575 05 b8 d3        ADD        EAX,0x1d3b8
                 01 00
        080d357a 50              PUSH       EAX
        080d357b 68 fe d1        PUSH       s_fight.playbgm_0827d1fe                         = "fight.playbgm"
                 27 08
        080d3580 57              PUSH       EDI
        080d3581 e8 9a 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3586 83 c4 0c        ADD        ESP,0xc
        080d3589 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d358e 05 bc d3        ADD        EAX,0x1d3bc
                 01 00
        080d3593 50              PUSH       EAX
        080d3594 68 0c d2        PUSH       s_fight.bars.display_0827d20c                    = "fight.bars.display"
                 27 08
        080d3599 57              PUSH       EDI
        080d359a e8 81 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d359f 83 c4 0c        ADD        ESP,0xc
        080d35a2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d35a7 05 a4 d3        ADD        EAX,0x1d3a4
                 01 00
        080d35ac 50              PUSH       EAX
        080d35ad 68 1f d2        PUSH       s_intro.waitcycles_0827d21f                      = "intro.waitcycles"
                 27 08
        080d35b2 57              PUSH       EDI
        080d35b3 e8 68 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d35b8 83 c4 0c        ADD        ESP,0xc
        080d35bb a1 74 7a        MOV        EAX,[g]
                 28 08
        080d35c0 05 c0 d3        ADD        EAX,0x1d3c0
                 01 00
        080d35c5 50              PUSH       EAX
        080d35c6 68 30 d2        PUSH       s_debuginfo_0827d230                             = "debuginfo"
                 27 08
        080d35cb 57              PUSH       EDI
        080d35cc e8 4f 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d35d1 83 c4 10        ADD        ESP,0x10
                             LAB_080d35d4                                    XREF[1]:     080d34e0(j)
        080d35d4 55              PUSH       EBP
        080d35d5 55              PUSH       EBP
        080d35d6 68 3a d2        PUSH       s_continue_screen_0827d23a                       = "continue screen"
                 27 08
        080d35db 57              PUSH       EDI
        080d35dc e8 9f 87        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d35e1 83 c4 10        ADD        ESP,0x10
        080d35e4 40              INC        EAX
        080d35e5 74 30           JZ         LAB_080d3617
        080d35e7 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d35ed 56              PUSH       ESI
        080d35ee 81 c3 4c        ADD        EBX,0xae4c
                 ae 00 00
        080d35f4 53              PUSH       EBX
        080d35f5 83 c3 04        ADD        EBX,0x4
        080d35f8 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d35fd 57              PUSH       EDI
        080d35fe e8 1d 8e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3603 53              PUSH       EBX
        080d3604 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d3609 68 e8 7a        PUSH       s_storyboard_08277ae1+7                          = "storyboard"
                 27 08
        080d360e 57              PUSH       EDI
        080d360f e8 4c 8e        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d3614 83 c4 20        ADD        ESP,0x20
                             LAB_080d3617                                    XREF[1]:     080d35e5(j)
        080d3617 53              PUSH       EBX
        080d3618 53              PUSH       EBX
        080d3619 68 4a d2        PUSH       s_game_over_screen_0827d24a                      = "game over screen"
                 27 08
        080d361e 57              PUSH       EDI
        080d361f e8 5c 87        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d3624 83 c4 10        ADD        ESP,0x10
        080d3627 40              INC        EAX
        080d3628 74 33           JZ         LAB_080d365d
        080d362a 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d3630 51              PUSH       ECX
        080d3631 8d 83 50        LEA        EAX,[EBX + 0xbe50]
                 be 00 00
        080d3637 81 c3 54        ADD        EBX,0xbe54
                 be 00 00
        080d363d 50              PUSH       EAX
        080d363e 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d3643 57              PUSH       EDI
        080d3644 e8 d7 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3649 53              PUSH       EBX
        080d364a 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d364f 68 e8 7a        PUSH       s_storyboard_08277ae1+7                          = "storyboard"
                 27 08
        080d3654 57              PUSH       EDI
        080d3655 e8 06 8e        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d365a 83 c4 20        ADD        ESP,0x20
                             LAB_080d365d                                    XREF[1]:     080d3628(j)
        080d365d 52              PUSH       EDX
        080d365e 52              PUSH       EDX
        080d365f 68 5b d2        PUSH       s_win_screen_0827d25b                            = "win screen"
                 27 08
        080d3664 57              PUSH       EDI
        080d3665 e8 16 87        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d366a 83 c4 10        ADD        ESP,0x10
        080d366d 40              INC        EAX
        080d366e 74 70           JZ         LAB_080d36e0
        080d3670 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d3676 50              PUSH       EAX
        080d3677 8d 83 50        LEA        EAX,[EBX + 0xad50]
                 ad 00 00
        080d367d 50              PUSH       EAX
        080d367e 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d3683 57              PUSH       EDI
        080d3684 e8 97 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3689 83 c4 0c        ADD        ESP,0xc
        080d368c 8d 83 54        LEA        EAX,[EBX + 0xad54]
                 ad 00 00
        080d3692 68 66 d2        PUSH       s_wintext_0827d266                               = "wintext"
                 27 08
        080d3697 50              PUSH       EAX
        080d3698 57              PUSH       EDI
        080d3699 e8 32 c0        CALL       SysExplodParse                                   undefined SysExplodParse()
                 fb ff
        080d369e 83 c4 0c        ADD        ESP,0xc
        080d36a1 8d 83 c4        LEA        EAX,[EBX + 0xadc4]
                 ad 00 00
        080d36a7 50              PUSH       EAX
        080d36a8 68 1a 6f        PUSH       s_fadein.time_08276f1a                           = "fadein.time"
                 27 08
        080d36ad 57              PUSH       EDI
        080d36ae e8 6d 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d36b3 83 c4 0c        ADD        ESP,0xc
        080d36b6 8d 83 c0        LEA        EAX,[EBX + 0xadc0]
                 ad 00 00
        080d36bc 81 c3 c8        ADD        EBX,0xadc8
                 ad 00 00
        080d36c2 50              PUSH       EAX
        080d36c3 68 6e d2        PUSH       s_pose.time_0827d26e                             = "pose.time"
                 27 08
        080d36c8 57              PUSH       EDI
        080d36c9 e8 52 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d36ce 83 c4 0c        ADD        ESP,0xc
        080d36d1 53              PUSH       EBX
        080d36d2 68 31 6f        PUSH       s_fadeout.time_08276f31                          = "fadeout.time"
                 27 08
        080d36d7 57              PUSH       EDI
        080d36d8 e8 43 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d36dd 83 c4 10        ADD        ESP,0x10
                             LAB_080d36e0                                    XREF[1]:     080d366e(j)
        080d36e0 55              PUSH       EBP
        080d36e1 55              PUSH       EBP
        080d36e2 68 78 d2        PUSH       s_survival_results_screen_0827d278               = "survival results screen"
                 27 08
        080d36e7 57              PUSH       EDI
        080d36e8 e8 93 86        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d36ed 83 c4 10        ADD        ESP,0x10
        080d36f0 40              INC        EAX
        080d36f1 74 76           JZ         LAB_080d3769
        080d36f3 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d36f9 81 c3 cc        ADD        EBX,0xadcc
                 ad 00 00
        080d36ff 56              PUSH       ESI
        080d3700 53              PUSH       EBX
        080d3701 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d3706 57              PUSH       EDI
        080d3707 e8 14 8d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d370c 83 c4 0c        ADD        ESP,0xc
        080d370f 8d 43 04        LEA        EAX,[EBX + 0x4]
        080d3712 68 90 d2        PUSH       s_winstext_0827d290                              = "winstext"
                 27 08
        080d3717 50              PUSH       EAX
        080d3718 57              PUSH       EDI
        080d3719 e8 b2 bf        CALL       SysExplodParse                                   undefined SysExplodParse()
                 fb ff
        080d371e 83 c4 0c        ADD        ESP,0xc
        080d3721 8d 43 74        LEA        EAX,[EBX + 0x74]
        080d3724 50              PUSH       EAX
        080d3725 68 1a 6f        PUSH       s_fadein.time_08276f1a                           = "fadein.time"
                 27 08
        080d372a 57              PUSH       EDI
        080d372b e8 f0 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3730 83 c4 0c        ADD        ESP,0xc
        080d3733 8d 43 70        LEA        EAX,[EBX + 0x70]
        080d3736 50              PUSH       EAX
        080d3737 68 99 d2        PUSH       s_show.time_0827d299                             = "show.time"
                 27 08
        080d373c 57              PUSH       EDI
        080d373d e8 de 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3742 83 c4 0c        ADD        ESP,0xc
        080d3745 8d 43 78        LEA        EAX,[EBX + 0x78]
        080d3748 83 c3 7c        ADD        EBX,0x7c
        080d374b 50              PUSH       EAX
        080d374c 68 31 6f        PUSH       s_fadeout.time_08276f31                          = "fadeout.time"
                 27 08
        080d3751 57              PUSH       EDI
        080d3752 e8 c9 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3757 83 c4 0c        ADD        ESP,0xc
        080d375a 53              PUSH       EBX
        080d375b 68 a3 d2        PUSH       s_roundstowin_0827d2a3                           = "roundstowin"
                 27 08
        080d3760 57              PUSH       EDI
        080d3761 e8 ba 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d3766 83 c4 10        ADD        ESP,0x10
                             LAB_080d3769                                    XREF[1]:     080d36f1(j)
        080d3769 51              PUSH       ECX
        080d376a 51              PUSH       ECX
        080d376b 68 af d2        PUSH       s_default_ending_0827d2af                        = "default ending"
                 27 08
        080d3770 57              PUSH       EDI
        080d3771 e8 0a 86        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d3776 83 c4 10        ADD        ESP,0x10
        080d3779 40              INC        EAX
        080d377a 74 33           JZ         LAB_080d37af
        080d377c 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d3782 52              PUSH       EDX
        080d3783 8d 83 4c        LEA        EAX,[EBX + 0x9d4c]
                 9d 00 00
        080d3789 81 c3 50        ADD        EBX,0x9d50
                 9d 00 00
        080d378f 50              PUSH       EAX
        080d3790 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d3795 57              PUSH       EDI
        080d3796 e8 85 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d379b 53              PUSH       EBX
        080d379c 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d37a1 68 e8 7a        PUSH       s_storyboard_08277ae1+7                          = "storyboard"
                 27 08
        080d37a6 57              PUSH       EDI
        080d37a7 e8 b4 8c        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d37ac 83 c4 20        ADD        ESP,0x20
                             LAB_080d37af                                    XREF[1]:     080d377a(j)
        080d37af 50              PUSH       EAX
        080d37b0 50              PUSH       EAX
        080d37b1 68 be d2        PUSH       s_end_credits_0827d2be                           = "end credits"
                 27 08
        080d37b6 57              PUSH       EDI
        080d37b7 e8 c4 85        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d37bc 83 c4 10        ADD        ESP,0x10
        080d37bf 40              INC        EAX
        080d37c0 74 30           JZ         LAB_080d37f2
        080d37c2 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080d37c8 55              PUSH       EBP
        080d37c9 81 c3 48        ADD        EBX,0x8d48
                 8d 00 00
        080d37cf 53              PUSH       EBX
        080d37d0 83 c3 04        ADD        EBX,0x4
        080d37d3 68 e8 d1        PUSH       s_enabled_0827d1df+9                             = "enabled"
                 27 08
        080d37d8 57              PUSH       EDI
        080d37d9 e8 42 8c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d37de 53              PUSH       EBX
        080d37df 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d37e4 68 e8 7a        PUSH       s_storyboard_08277ae1+7                          = "storyboard"
                 27 08
        080d37e9 57              PUSH       EDI
        080d37ea e8 71 8c        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d37ef 83 c4 20        ADD        ESP,0x20
                             LAB_080d37f2                                    XREF[1]:     080d37c0(j)
        080d37f2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d37f7 83 ec 0c        SUB        ESP,0xc
        080d37fa 8b b0 08        MOV        ESI,dword ptr [EAX + 0x18b08]
                 8b 01 00
        080d3800 56              PUSH       ESI
        080d3801 8b 98 00        MOV        EBX,dword ptr [EAX + 0x16b00]
                 6b 01 00
        080d3807 05 ff 5a        ADD        EAX,0x15aff
                 01 00
        080d380c 53              PUSH       EBX
        080d380d 68 51 d3        PUSH       s_TitleBG_0827d341+16                            = "TitleBG"
                 27 08
        080d3812 50              PUSH       EAX
        080d3813 57              PUSH       EDI
        080d3814 e8 b7 79        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3819 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d381f 83 c4 20        ADD        ESP,0x20
        080d3822 85 c0           TEST       EAX,EAX
        080d3824 89 82 38        MOV        dword ptr [EDX + 0x18b38],EAX
                 8b 01 00
        080d382a 75 14           JNZ        LAB_080d3840
        080d382c 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d3832 51              PUSH       ECX
        080d3833 51              PUSH       ECX
        080d3834 68 ca d2        PUSH       s_Error_loading_TitleBG_0827d2ca                 = "Error loading TitleBG"
                 27 08
        080d3839 e9 47 01        JMP        LAB_080d3985
                 00 00
        080d383e 89              ??         89h
        080d383f f6              ??         F6h
                             LAB_080d3840                                    XREF[1]:     080d382a(j)
        080d3840 83 ec 0c        SUB        ESP,0xc
        080d3843 8b 82 08        MOV        EAX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3849 50              PUSH       EAX
        080d384a 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3850 8b aa 00        MOV        EBP,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3856 55              PUSH       EBP
        080d3857 68 69 d3        PUSH       s_VersusBG_0827d359+16                           = "VersusBG"
                 27 08
        080d385c 50              PUSH       EAX
        080d385d 57              PUSH       EDI
        080d385e e8 6d 79        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3863 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3869 83 c4 20        ADD        ESP,0x20
        080d386c 85 c0           TEST       EAX,EAX
        080d386e 89 82 34        MOV        dword ptr [EDX + 0x18b34],EAX
                 8b 01 00
        080d3874 75 12           JNZ        LAB_080d3888
        080d3876 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d387c 57              PUSH       EDI
        080d387d 57              PUSH       EDI
        080d387e 68 e0 d2        PUSH       s_Error_loading_VersusBG_0827d2e0                = "Error loading VersusBG"
                 27 08
        080d3883 e9 fd 00        JMP        LAB_080d3985
                 00 00
                             LAB_080d3888                                    XREF[1]:     080d3874(j)
        080d3888 83 ec 0c        SUB        ESP,0xc
        080d388b 8b b2 08        MOV        ESI,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3891 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3897 56              PUSH       ESI
        080d3898 8b 9a 00        MOV        EBX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d389e 53              PUSH       EBX
        080d389f 68 82 d3        PUSH       s_SelectBG_0827d372+16                           = "SelectBG"
                 27 08
        080d38a4 50              PUSH       EAX
        080d38a5 57              PUSH       EDI
        080d38a6 e8 25 79        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d38ab 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d38b1 83 c4 20        ADD        ESP,0x20
        080d38b4 85 c0           TEST       EAX,EAX
        080d38b6 89 82 3c        MOV        dword ptr [EDX + 0x18b3c],EAX
                 8b 01 00
        080d38bc 75 12           JNZ        LAB_080d38d0
        080d38be 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d38c4 51              PUSH       ECX
        080d38c5 51              PUSH       ECX
        080d38c6 68 f7 d2        PUSH       s_Error_loading_SelectBG_0827d2f7                = "Error loading SelectBG"
                 27 08
        080d38cb e9 b5 00        JMP        LAB_080d3985
                 00 00
                             LAB_080d38d0                                    XREF[1]:     080d38bc(j)
        080d38d0 83 ec 0c        SUB        ESP,0xc
        080d38d3 8b 82 08        MOV        EAX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d38d9 50              PUSH       EAX
        080d38da 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d38e0 8b aa 00        MOV        EBP,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d38e6 55              PUSH       EBP
        080d38e7 68 9b d3        PUSH       s_OptionBG_0827d38b+16                           = "OptionBG"
                 27 08
        080d38ec 50              PUSH       EAX
        080d38ed 57              PUSH       EDI
        080d38ee e8 dd 78        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d38f3 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d38f9 83 c4 20        ADD        ESP,0x20
        080d38fc 85 c0           TEST       EAX,EAX
        080d38fe 89 82 40        MOV        dword ptr [EDX + 0x18b40],EAX
                 8b 01 00
        080d3904 75 0f           JNZ        LAB_080d3915
        080d3906 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d390c 56              PUSH       ESI
        080d390d 56              PUSH       ESI
        080d390e 68 0e d3        PUSH       s_Error_loading_OptionBG_0827d30e                = "Error loading OptionBG"
                 27 08
        080d3913 eb 70           JMP        LAB_080d3985
                             LAB_080d3915                                    XREF[1]:     080d3904(j)
        080d3915 83 ec 0c        SUB        ESP,0xc
        080d3918 57              PUSH       EDI
        080d3919 e8 e2 78        CALL       TPFree                                           undefined TPFree()
                 fa ff
        080d391e 83 c4 0c        ADD        ESP,0xc
        080d3921 6a 00           PUSH       0x0
        080d3923 8d 9c 24        LEA        EBX=>local_111c,[ESP + 0x1078]
                 78 10 00 00
        080d392a 53              PUSH       EBX
        080d392b 8d 74 24 7c     LEA        ESI=>local_211c,[ESP + 0x7c]
        080d392f 56              PUSH       ESI
        080d3930 e8 8b 9c        CALL       FindFileDir                                      undefined FindFileDir()
                 fb ff
        080d3935 83 c4 10        ADD        ESP,0x10
        080d3938 85 c0           TEST       EAX,EAX
        080d393a 74 52           JZ         LAB_080d398e
        080d393c 83 ec 0c        SUB        ESP,0xc
        080d393f 53              PUSH       EBX
        080d3940 e8 3b 5f        CALL       GameLoadFightData                                undefined GameLoadFightData()
                 fc ff
        080d3945 83 c4 10        ADD        ESP,0x10
        080d3948 85 c0           TEST       EAX,EAX
        080d394a 75 46           JNZ        LAB_080d3992
        080d394c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3951 53              PUSH       EBX
        080d3952 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3957 53              PUSH       EBX
        080d3958 68 25 d3        PUSH       s_Error_loading_fight_data:_0827d325             = "\nError loading fight data: "
                 27 08
        080d395d 50              PUSH       EAX
        080d395e e8 ad c8        CALL       strcat                                           char * strcat(char * __dest, cha
                 10 00
        080d3963 5a              POP        EDX
        080d3964 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3969 59              POP        ECX
        080d396a 05 48 07        ADD        EAX,0x20748
                 02 00
        080d396f 56              PUSH       ESI
        080d3970 50              PUSH       EAX
        080d3971 e8 9a c8        CALL       strcat                                           char * strcat(char * __dest, cha
                 10 00
        080d3976 eb 13           JMP        LAB_080d398b
                             LAB_080d3978                                    XREF[1]:     080d2ded(j)
        080d3978 50              PUSH       EAX
        080d3979 8d 81 48        LEA        EAX,[ECX + 0x20748]
                 07 02 00
        080d397f 56              PUSH       ESI
        080d3980 68 ab 8a        PUSH       s_Can't_read_font_%s_08278aab                    = "Can't read font %s"
                 27 08
                             LAB_080d3985                                    XREF[14]:    080d2bb7(j), 080d2be4(j),
                                                                                          080d2c44(j), 080d2c61(j),
                                                                                          080d2cc9(j), 080d2e6b(j),
                                                                                          080d2ef3(j), 080d3263(j),
                                                                                          080d32d4(j), 080d34b7(j),
                                                                                          080d3839(j), 080d3883(j),
                                                                                          080d38cb(j), 080d3913(j)
        080d3985 50              PUSH       EAX
        080d3986 e8 95 14        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
                             LAB_080d398b                                    XREF[1]:     080d3976(j)
        080d398b 83 c4 10        ADD        ESP,0x10
                             LAB_080d398e                                    XREF[7]:     080d2c15(j), 080d2c9a(j),
                                                                                          080d2cf6(j), 080d2d2c(j),
                                                                                          080d2dc8(j), 080d32ee(j),
                                                                                          080d393a(j)
        080d398e 31 c0           XOR        EAX,EAX
        080d3990 eb 05           JMP        LAB_080d3997
                             LAB_080d3992                                    XREF[1]:     080d394a(j)
        080d3992 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_080d3997                                    XREF[1]:     080d3990(j)
        080d3997 81 c4 7c        ADD        ESP,0x217c
                 21 00 00
        080d399d 5b              POP        EBX
        080d399e 5e              POP        ESI
        080d399f 5f              POP        EDI
        080d39a0 5d              POP        EBP
        080d39a1 c3              RET
