                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameStgInitFightData()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x24]:4 local_24                                XREF[1]:     0809e993(W)
             undefined4        Stack[-0x28]:4 local_28                                XREF[1]:     0809e98a(W)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[2]:     0809e97f(W),
                                                                                                   0809ea90(*)
             undefined         Stack[-0x102   local_102c                              XREF[3]:     0809e9b6(*),
                                                                                                   0809ea24(W),
                                                                                                   0809ea7d(R)
             undefined4        Stack[-0x103   local_1030                              XREF[2]:     0809e94d(*),
                                                                                                   0809e986(R)
             undefined4        Stack[-0x103   local_1034                              XREF[2]:     0809e952(*),
                                                                                                   0809e97b(R)
             undefined4        Stack[-0x103   local_1038                              XREF[2]:     0809e8e8(W),
                                                                                                   0809e91d(R)
             undefined4        Stack[-0x103   local_103c                              XREF[3]:     0809e919(W),
                                                                                                   0809e9b2(R),
                                                                                                   0809eace(R)
             undefined4        Stack[-0x104   local_1040                              XREF[2]:     0809e928(W),
                                                                                                   0809eaa2(R)
             undefined4        Stack[-0x104   local_1044                              XREF[5]:     0809e99e(W),
                                                                                                   0809ea9e(R),
                                                                                                   0809eabe(R),
                                                                                                   0809eaca(W),
                                                                                                   0809ead6(R)
             undefined4        Stack[-0x104   local_1048                              XREF[4]:     0809e9bd(W),
                                                                                                   0809e9c1(R),
                                                                                                   0809eac2(R),
                                                                                                   0809ead2(W)
             undefined4        Stack[-0x105   local_105c                              XREF[1]:     0809ea0f(*)
                             GameStgInitFightData                            XREF[3]:     Entry Point(*),
                                                                                          GamePlay:0809d1a7(c),
                                                                                          GameReloadStage:0809ed7e(c)
        0809e8d0 55              PUSH       EBP
        0809e8d1 31 ed           XOR        EBP,EBP
        0809e8d3 57              PUSH       EDI
        0809e8d4 56              PUSH       ESI
        0809e8d5 53              PUSH       EBX
        0809e8d6 81 ec 3c        SUB        ESP,0x103c
                 10 00 00
        0809e8dc 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e8e2 8d 82 24        LEA        EAX,[EDX + 0x10524]
                 05 01 00
        0809e8e8 89 44 24 14     MOV        dword ptr [ESP + local_1038],EAX
        0809e8ec eb 08           JMP        LAB_0809e8f6
        0809e8ee 89              ??         89h
        0809e8ef f6              ??         F6h
                             LAB_0809e8f0                                    XREF[1]:     0809eae7(j)
        0809e8f0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809e8f6                                    XREF[1]:     0809e8ec(j)
        0809e8f6 8d 44 6d 00     LEA        EAX,[EBP + EBP*0x2]
        0809e8fa 8d 44 85 00     LEA        EAX,[EBP + EAX*0x4]
        0809e8fe 8d 44 85 00     LEA        EAX,[EBP + EAX*0x4]
        0809e902 8d 44 85 00     LEA        EAX,[EBP + EAX*0x4]
        0809e906 c1 e0 03        SHL        EAX,0x3
        0809e909 29 e8           SUB        EAX,EBP
        0809e90b 8d 1c 82        LEA        EBX,[EDX + EAX*0x4]
        0809e90e 89 e8           MOV        EAX,EBP
        0809e910 c1 e0 04        SHL        EAX,0x4
        0809e913 8d 8b e0        LEA        ECX,[EBX + 0xcee0]
                 ce 00 00
        0809e919 89 4c 24 10     MOV        dword ptr [ESP + local_103c],ECX
        0809e91d 8b 4c 24 14     MOV        ECX,dword ptr [ESP + local_1038]
        0809e921 8d 84 08        LEA        EAX,[EAX + ECX*0x1 + 0x45b0]
                 b0 45 00 00
        0809e928 89 44 24 0c     MOV        dword ptr [ESP + local_1040],EAX
        0809e92c 83 bb e4        CMP        dword ptr [EBX + 0xcee4],0x1
                 ce 00 00 01
        0809e933 0f 8e aa        JLE        LAB_0809eae3
                 01 00 00
        0809e939 b8 02 00        MOV        EAX,0x2
                 00 00
        0809e93e 29 e8           SUB        EAX,EBP
        0809e940 39 82 d0        CMP        dword ptr [EDX + 0xced0],EAX
                 ce 00 00
        0809e946 0f 84 97        JZ         LAB_0809eae3
                 01 00 00
        0809e94c 57              PUSH       EDI
        0809e94d 8d 44 24 20     LEA        EAX=>local_1030,[ESP + 0x20]
        0809e951 50              PUSH       EAX
        0809e952 8d 44 24 20     LEA        EAX=>local_1034,[ESP + 0x20]
        0809e956 50              PUSH       EAX
        0809e957 8d 44 ad 00     LEA        EAX,[EBP + EBP*0x4]
        0809e95b 8d 44 85 00     LEA        EAX,[EBP + EAX*0x4]
        0809e95f 8d 44 45 00     LEA        EAX,[EBP + EAX*0x2]
        0809e963 8d 84 c1        LEA        EAX,[ECX + EAX*0x8 + 0x26bc]
                 bc 26 00 00
        0809e96a 50              PUSH       EAX
        0809e96b e8 90 0f        CALL       SysExplodParseGetSprGrpImgNo                     undefined SysExplodParseGetSprGr
                 ff ff
        0809e970 83 c4 10        ADD        ESP,0x10
        0809e973 85 c0           TEST       EAX,EAX
        0809e975 0f 84 68        JZ         LAB_0809eae3
                 01 00 00
        0809e97b 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_1034]
        0809e97f 89 84 24        MOV        dword ptr [ESP + local_2c],EAX
                 20 10 00 00
        0809e986 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_1030]
        0809e98a 89 84 24        MOV        dword ptr [ESP + local_28],EAX
                 24 10 00 00
        0809e991 31 c0           XOR        EAX,EAX
        0809e993 c7 84 24        MOV        dword ptr [ESP + local_24],0xffffffff
                 28 10 00
                 00 ff ff
        0809e99e c7 44 24        MOV        dword ptr [ESP + local_1044],0x0
                 08 00 00
                 00 00
        0809e9a6 3b 83 e4        CMP        EAX,dword ptr [EBX + 0xcee4]
                 ce 00 00
        0809e9ac 0f 8d 31        JGE        LAB_0809eae3
                 01 00 00
        0809e9b2 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_103c]
        0809e9b6 8d 7c 24 20     LEA        EDI=>local_102c,[ESP + 0x20]
        0809e9ba 83 c2 1c        ADD        EDX,0x1c
        0809e9bd 89 54 24 04     MOV        dword ptr [ESP + local_1048],EDX
                             LAB_0809e9c1                                    XREF[1]:     0809eadd(j)
        0809e9c1 8b 4c 24 04     MOV        ECX,dword ptr [ESP + local_1048]
        0809e9c5 8b 11           MOV        EDX,dword ptr [ECX]
        0809e9c7 56              PUSH       ESI
        0809e9c8 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809e9ce 8d 04 d5        LEA        EAX,[EDX*0x8 + 0x0]
                 00 00 00 00
        0809e9d5 29 d0           SUB        EAX,EDX
        0809e9d7 8b 99 d0        MOV        EBX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809e9dd c1 e0 07        SHL        EAX,0x7
        0809e9e0 01 d0           ADD        EAX,EDX
        0809e9e2 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e9e5 8d 04 42        LEA        EAX,[EDX + EAX*0x2]
        0809e9e8 8d 34 85        LEA        ESI,[EAX*0x4 + 0x0]
                 00 00 00 00
        0809e9ef 89 f0           MOV        EAX,ESI
        0809e9f1 01 d8           ADD        EAX,EBX
        0809e9f3 05 0b 10        ADD        EAX,0x100b
                 00 00
        0809e9f8 50              PUSH       EAX
        0809e9f9 89 f0           MOV        EAX,ESI
        0809e9fb 8b 91 d0        MOV        EDX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809ea01 01 d0           ADD        EAX,EDX
        0809ea03 05 0a 20        ADD        EAX,0x200a
                 00 00
        0809ea08 50              PUSH       EAX
        0809ea09 57              PUSH       EDI
        0809ea0a e8 31 27        CALL       joindirfile                                      undefined joindirfile()
                 fb ff
        0809ea0f 89 3c 24        MOV        dword ptr [ESP]=>local_105c,EDI
        0809ea12 e8 a9 cd        CALL       TPReadFile                                       undefined TPReadFile()
                 fd ff
        0809ea17 89 c3           MOV        EBX,EAX
        0809ea19 83 c4 10        ADD        ESP,0x10
        0809ea1c 85 db           TEST       EBX,EBX
        0809ea1e 0f 84 9a        JZ         LAB_0809eabe
                 00 00 00
        0809ea24 c6 44 24        MOV        byte ptr [ESP + local_102c],0x0
                 20 00
        0809ea29 50              PUSH       EAX
        0809ea2a 50              PUSH       EAX
        0809ea2b 68 d5 8a        PUSH       s_Files_08278abe+23                              = "Files"
                 27 08
        0809ea30 53              PUSH       EBX
        0809ea31 e8 4a d3        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809ea36 83 c4 10        ADD        ESP,0x10
        0809ea39 40              INC        EAX
        0809ea3a 74 35           JZ         LAB_0809ea71
        0809ea3c 51              PUSH       ECX
        0809ea3d 51              PUSH       ECX
        0809ea3e 68 f3 7a        PUSH       s_sprite_08277af3                                = "sprite"
                 27 08
        0809ea43 53              PUSH       EBX
        0809ea44 e8 57 d6        CALL       TPGetValue                                       undefined TPGetValue()
                 fd ff
        0809ea49 83 c4 10        ADD        ESP,0x10
        0809ea4c 85 c0           TEST       EAX,EAX
        0809ea4e 74 21           JZ         LAB_0809ea71
        0809ea50 52              PUSH       EDX
        0809ea51 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809ea57 50              PUSH       EAX
        0809ea58 89 f0           MOV        EAX,ESI
        0809ea5a 8b 8a d0        MOV        ECX,dword ptr [EDX + 0x52d0]
                 52 00 00
        0809ea60 01 c8           ADD        EAX,ECX
        0809ea62 05 0a 20        ADD        EAX,0x200a
                 00 00
        0809ea67 50              PUSH       EAX
        0809ea68 57              PUSH       EDI
        0809ea69 e8 d2 26        CALL       joindirfile                                      undefined joindirfile()
                 fb ff
        0809ea6e 83 c4 10        ADD        ESP,0x10
                             LAB_0809ea71                                    XREF[2]:     0809ea3a(j), 0809ea4e(j)
        0809ea71 83 ec 0c        SUB        ESP,0xc
        0809ea74 53              PUSH       EBX
        0809ea75 e8 86 c7        CALL       TPFree                                           undefined TPFree()
                 fd ff
        0809ea7a 83 c4 10        ADD        ESP,0x10
        0809ea7d 80 7c 24        CMP        byte ptr [ESP + local_102c],0x0
                 20 00
        0809ea82 74 3a           JZ         LAB_0809eabe
        0809ea84 83 ec 0c        SUB        ESP,0xc
        0809ea87 6a 00           PUSH       0x0
        0809ea89 e8 a2 d4        CALL       SpriteSetBufReadMode                             undefined SpriteSetBufReadMode()
                 fb ff
        0809ea8e 5b              POP        EBX
        0809ea8f 5e              POP        ESI
        0809ea90 8d 84 24        LEA        EAX=>local_2c,[ESP + 0x1028]
                 28 10 00 00
        0809ea97 50              PUSH       EAX
        0809ea98 57              PUSH       EDI
        0809ea99 e8 12 d9        CALL       SpriteReadSFFList                                undefined SpriteReadSFFList()
                 fb ff
        0809ea9e 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_1044]
        0809eaa2 8b 4c 24 1c     MOV        ECX,dword ptr [ESP + local_1040]
        0809eaa6 89 04 91        MOV        dword ptr [ECX + EDX*0x4],EAX
        0809eaa9 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809eaae 59              POP        ECX
        0809eaaf 8b 90 ec        MOV        EDX,dword ptr [EAX + 0x1d5ec]
                 d5 01 00
        0809eab5 52              PUSH       EDX
        0809eab6 e8 75 d4        CALL       SpriteSetBufReadMode                             undefined SpriteSetBufReadMode()
                 fb ff
        0809eabb 83 c4 10        ADD        ESP,0x10
                             LAB_0809eabe                                    XREF[2]:     0809ea1e(j), 0809ea82(j)
        0809eabe 8b 74 24 08     MOV        ESI,dword ptr [ESP + local_1044]
        0809eac2 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_1048]
        0809eac6 46              INC        ESI
        0809eac7 83 c0 5c        ADD        EAX,0x5c
        0809eaca 89 74 24 08     MOV        dword ptr [ESP + local_1044],ESI
        0809eace 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_103c]
        0809ead2 89 44 24 04     MOV        dword ptr [ESP + local_1048],EAX
        0809ead6 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_1044]
        0809eada 3b 42 04        CMP        EAX,dword ptr [EDX + 0x4]
        0809eadd 0f 8c de        JL         LAB_0809e9c1
                 fe ff ff
                             LAB_0809eae3                                    XREF[4]:     0809e933(j), 0809e946(j),
                                                                                          0809e975(j), 0809e9ac(j)
        0809eae3 45              INC        EBP
        0809eae4 83 fd 01        CMP        EBP,0x1
        0809eae7 0f 8e 03        JLE        LAB_0809e8f0
                 fe ff ff
        0809eaed 81 c4 3c        ADD        ESP,0x103c
                 10 00 00
        0809eaf3 b8 01 00        MOV        EAX,0x1
                 00 00
        0809eaf8 5b              POP        EBX
        0809eaf9 5e              POP        ESI
        0809eafa 5f              POP        EDI
        0809eafb 5d              POP        EBP
        0809eafc c3              RET
