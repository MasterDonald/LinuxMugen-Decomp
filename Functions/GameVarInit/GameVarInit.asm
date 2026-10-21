                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameVarInit()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[1]:     0809bdae(W)
             undefined4        Stack[-0x18]:4 local_18                                XREF[1]:     0809bdc6(W)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     0809bdb6(W)
             undefined4        Stack[-0x24]:4 local_24                                XREF[1]:     0809bdbd(W)
             undefined4        Stack[-0x28]:4 local_28                                XREF[1]:     0809bdce(W)
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[1]:     0809bdca(W)
             undefined         Stack[-0x30]:1 local_30                                XREF[1]:     0809bd87(*)
             undefined4        Stack[-0x4c]:4 local_4c                                XREF[5]:     0809bd75(*),
                                                                                                   0809bd91(*),
                                                                                                   0809be46(*),
                                                                                                   0809c0ee(*),
                                                                                                   0809c106(*)
                             GameVarInit                                     XREF[2]:     Entry Point(*),
                                                                                          GameInit:0809910c(c)
        0809bcf0 57              PUSH       EDI
        0809bcf1 56              PUSH       ESI
        0809bcf2 53              PUSH       EBX
        0809bcf3 83 ec 38        SUB        ESP,0x38
        0809bcf6 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bcfc 68 ff 0f        PUSH       0xfff
                 00 00
        0809bd01 52              PUSH       EDX
        0809bd02 e8 d9 a1        CALL       getcwd                                           char * getcwd(char * __buf, size
                 14 00
        0809bd07 83 c4 10        ADD        ESP,0x10
        0809bd0a 85 c0           TEST       EAX,EAX
        0809bd0c 0f 84 b5        JZ         LAB_0809bfc7
                 02 00 00
        0809bd12 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bd18 a1 78 7a        MOV        EAX,[MUGENDATE_Y]                                = 000007D2h
                 28 08
        0809bd1d 89 82 10        MOV        dword ptr [EDX + 0x2010],EAX
                 20 00 00
        0809bd23 a1 7c 7a        MOV        EAX,[MUGENDATE_M]                                = 00000004h
                 28 08
        0809bd28 89 82 08        MOV        dword ptr [EDX + 0x2008],EAX
                 20 00 00
        0809bd2e a1 80 7a        MOV        EAX,[MUGENDATE_D]                                = 0000000Eh
                 28 08
        0809bd33 89 82 0c        MOV        dword ptr [EDX + 0x200c],EAX
                 20 00 00
        0809bd39 c7 82 b8        MOV        dword ptr [EDX + 0xceb8],0x0
                 ce 00 00
                 00 00 00 00
        0809bd43 50              PUSH       EAX
        0809bd44 50              PUSH       EAX
        0809bd45 68 81 8f        PUSH       DAT_08278f81                                     = 77h    w
                 27 08
        0809bd4a 68 74 8f        PUSH       s__mugen__.tmp_08278f74                          = "_mugen__.tmp"
                 27 08
        0809bd4f e8 bc 94        CALL       fopen                                            FILE * fopen(char * __filename,
                 13 00
        0809bd54 89 c2           MOV        EDX,EAX
        0809bd56 83 c4 10        ADD        ESP,0x10
        0809bd59 85 d2           TEST       EDX,EDX
        0809bd5b 74 27           JZ         LAB_0809bd84
        0809bd5d a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bd62 83 ec 0c        SUB        ESP,0xc
        0809bd65 c7 80 04        MOV        dword ptr [EAX + 0x2004],0x1
                 20 00 00
                 01 00 00 00
        0809bd6f 52              PUSH       EDX
        0809bd70 e8 5b 91        CALL       fclose                                           int fclose(FILE * __stream)
                 13 00
        0809bd75 c7 04 24        MOV        dword ptr [ESP]=>local_4c,s__mugen__.tmp_08278   = "_mugen__.tmp"
                 74 8f 27 08
        0809bd7c e8 ff 90        CALL       remove                                           int remove(char * __filename)
                 13 00
        0809bd81 83 c4 10        ADD        ESP,0x10
                             LAB_0809bd84                                    XREF[1]:     0809bd5b(j)
        0809bd84 83 ec 0c        SUB        ESP,0xc
        0809bd87 8d 5c 24 18     LEA        EBX=>local_30,[ESP + 0x18]
        0809bd8b 53              PUSH       EBX
        0809bd8c e8 1f 62        CALL       time                                             time_t time(time_t * __timer)
                 14 00
        0809bd91 89 1c 24        MOV        dword ptr [ESP]=>local_4c,EBX
        0809bd94 e8 97 61        CALL       gmtime                                           tm * gmtime(time_t * __timer)
                 14 00
        0809bd99 8b 15 84        MOV        EDX,dword ptr [MUGENEXPDATE_Y]                   = 000007D2h
                 7a 28 08
        0809bd9f 8b 0d 88        MOV        ECX,dword ptr [MUGENEXPDATE_M]                   = 00000007h
                 7a 28 08
        0809bda5 8b 70 14        MOV        ESI,dword ptr [EAX + 0x14]
        0809bda8 81 c6 6c        ADD        ESI,0x76c
                 07 00 00
        0809bdae 89 74 24 38     MOV        dword ptr [ESP + local_14],ESI
        0809bdb2 8b 78 10        MOV        EDI,dword ptr [EAX + 0x10]
        0809bdb5 47              INC        EDI
        0809bdb6 89 7c 24 30     MOV        dword ptr [ESP + local_1c],EDI
        0809bdba 8b 58 0c        MOV        EBX,dword ptr [EAX + 0xc]
        0809bdbd 89 54 24 28     MOV        dword ptr [ESP + local_24],EDX
        0809bdc1 a1 8c 7a        MOV        EAX,[MUGENEXPDATE_D]                             = 00000001h
                 28 08
        0809bdc6 89 5c 24 34     MOV        dword ptr [ESP + local_18],EBX
        0809bdca 89 4c 24 20     MOV        dword ptr [ESP + local_2c],ECX
        0809bdce 89 44 24 24     MOV        dword ptr [ESP + local_28],EAX
        0809bdd2 83 c4 08        ADD        ESP,0x8
        0809bdd5 52              PUSH       EDX
        0809bdd6 50              PUSH       EAX
        0809bdd7 51              PUSH       ECX
        0809bdd8 56              PUSH       ESI
        0809bdd9 53              PUSH       EBX
        0809bdda 57              PUSH       EDI
        0809bddb e8 50 1a        CALL       MDYDateCmp                                       undefined MDYDateCmp()
                 ff ff
        0809bde0 83 c4 20        ADD        ESP,0x20
        0809bde3 85 c0           TEST       EAX,EAX
        0809bde5 7e 0f           JLE        LAB_0809bdf6
        0809bde7 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bdec c7 80 98        MOV        dword ptr [EAX + 0x1d398],0x1
                 d3 01 00
                 01 00 00 00
                             LAB_0809bdf6                                    XREF[1]:     0809bde5(j)
        0809bdf6 50              PUSH       EAX
        0809bdf7 6a 10           PUSH       0x10
        0809bdf9 68 f0 00        PUSH       0xf0
                 00 00
        0809bdfe 68 40 01        PUSH       0x140
                 00 00
        0809be03 e8 58 10        CALL       V_AllocDepth                                     undefined V_AllocDepth()
                 fe ff
        0809be08 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809be0e 83 c4 10        ADD        ESP,0x10
        0809be11 85 c0           TEST       EAX,EAX
        0809be13 89 82 d8        MOV        dword ptr [EDX + 0x104d8],EAX
                 04 01 00
        0809be19 75 1b           JNZ        LAB_0809be36
        0809be1b e8 e0 03        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809be20 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809be25 05 48 07        ADD        EAX,0x20748
                 02 00
        0809be2a 57              PUSH       EDI
        0809be2b 57              PUSH       EDI
        0809be2c 68 84 8f        PUSH       s_Can't_create_screen_buffer._08278f84           = "Can't create screen buffer."
                 27 08
        0809be31 e9 0c 03        JMP        LAB_0809c142
                 00 00
                             LAB_0809be36                                    XREF[1]:     0809be19(j)
        0809be36 56              PUSH       ESI
        0809be37 56              PUSH       ESI
        0809be38 6a 00           PUSH       0x0
        0809be3a 8b 9a d8        MOV        EBX,dword ptr [EDX + 0x104d8]
                 04 01 00
        0809be40 53              PUSH       EBX
        0809be41 e8 5a 11        CALL       V_SetBuf                                         undefined V_SetBuf()
                 fe ff
        0809be46 c7 04 24        MOV        dword ptr [ESP]=>local_4c,0x0
                 00 00 00 00
        0809be4d e8 3e 1d        CALL       W_Cls                                            undefined W_Cls()
                 fe ff
        0809be52 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809be57 83 c4 10        ADD        ESP,0x10
        0809be5a 8b 90 d8        MOV        EDX,dword ptr [EAX + 0x104d8]
                 04 01 00
        0809be60 8b 88 64        MOV        ECX,dword ptr [EAX + 0x1d564]
                 d5 01 00
        0809be66 89 90 e4        MOV        dword ptr [EAX + 0x104e4],EDX
                 04 01 00
        0809be6c 85 c9           TEST       ECX,ECX
        0809be6e 74 46           JZ         LAB_0809beb6
        0809be70 52              PUSH       EDX
        0809be71 6a 10           PUSH       0x10
        0809be73 68 e0 01        PUSH       0x1e0
                 00 00
        0809be78 68 80 02        PUSH       0x280
                 00 00
        0809be7d e8 de 0f        CALL       V_AllocDepth                                     undefined V_AllocDepth()
                 fe ff
        0809be82 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809be88 83 c4 10        ADD        ESP,0x10
        0809be8b 85 c0           TEST       EAX,EAX
        0809be8d 89 82 e0        MOV        dword ptr [EDX + 0x104e0],EAX
                 04 01 00
        0809be93 75 1b           JNZ        LAB_0809beb0
        0809be95 e8 66 03        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809be9a 50              PUSH       EAX
        0809be9b 50              PUSH       EAX
        0809be9c a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bea1 68 84 8f        PUSH       s_Can't_create_screen_buffer._08278f84           = "Can't create screen buffer."
                 27 08
        0809bea6 05 48 07        ADD        EAX,0x20748
                 02 00
        0809beab e9 92 02        JMP        LAB_0809c142
                 00 00
                             LAB_0809beb0                                    XREF[1]:     0809be93(j)
        0809beb0 89 82 e4        MOV        dword ptr [EDX + 0x104e4],EAX
                 04 01 00
                             LAB_0809beb6                                    XREF[1]:     0809be6e(j)
        0809beb6 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bebb 83 ec 0c        SUB        ESP,0xc
        0809bebe 8b b8 c8        MOV        EDI,dword ptr [EAX + 0x1d5c8]
                 d5 01 00
        0809bec4 57              PUSH       EDI
        0809bec5 e8 26 dc        CALL       PRSprArrayNew                                    undefined PRSprArrayNew()
                 fa ff
        0809beca 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bed0 83 c4 10        ADD        ESP,0x10
        0809bed3 85 c0           TEST       EAX,EAX
        0809bed5 89 82 f4        MOV        dword ptr [EDX + 0x104f4],EAX
                 04 01 00
        0809bedb 75 1b           JNZ        LAB_0809bef8
        0809bedd e8 1e 03        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809bee2 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bee7 05 48 07        ADD        EAX,0x20748
                 02 00
        0809beec 56              PUSH       ESI
        0809beed 56              PUSH       ESI
        0809beee 68 c0 91        PUSH       s_Can't_create_priority_sprites_la_082791c0      = "Can't create priority sprites
                 27 08
        0809bef3 e9 4a 02        JMP        LAB_0809c142
                 00 00
                             LAB_0809bef8                                    XREF[1]:     0809bedb(j)
        0809bef8 83 ec 0c        SUB        ESP,0xc
        0809befb 6a 20           PUSH       0x20
        0809befd e8 fe e0        CALL       AnimPerArrayNew                                  undefined AnimPerArrayNew()
                 fa ff
        0809bf02 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bf08 83 c4 10        ADD        ESP,0x10
        0809bf0b 85 c0           TEST       EAX,EAX
        0809bf0d 89 82 f0        MOV        dword ptr [EDX + 0x104f0],EAX
                 04 01 00
        0809bf13 75 1b           JNZ        LAB_0809bf30
        0809bf15 e8 e6 02        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809bf1a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bf1f 05 48 07        ADD        EAX,0x20748
                 02 00
        0809bf24 53              PUSH       EBX
        0809bf25 53              PUSH       EBX
        0809bf26 68 00 92        PUSH       s_Can't_create_persistent_animatio_08279200      = "Can't create persistent anima
                 27 08
        0809bf2b e9 12 02        JMP        LAB_0809c142
                 00 00
                             LAB_0809bf30                                    XREF[1]:     0809bf13(j)
        0809bf30 51              PUSH       ECX
        0809bf31 51              PUSH       ECX
        0809bf32 6a 3c           PUSH       0x3c
        0809bf34 8b 92 c4        MOV        EDX,dword ptr [EDX + 0x1d5c4]
                 d5 01 00
        0809bf3a 52              PUSH       EDX
        0809bf3b e8 e0 03        CALL       GameAftImgArrayNew                               undefined GameAftImgArrayNew()
                 00 00
        0809bf40 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bf46 83 c4 10        ADD        ESP,0x10
        0809bf49 85 c0           TEST       EAX,EAX
        0809bf4b 89 82 fc        MOV        dword ptr [EDX + 0x104fc],EAX
                 04 01 00
        0809bf51 75 1d           JNZ        LAB_0809bf70
        0809bf53 e8 a8 02        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809bf58 50              PUSH       EAX
        0809bf59 50              PUSH       EAX
        0809bf5a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bf5f 68 a0 8f        PUSH       s_Can't_init_afterimages._08278fa0               = "Can't init afterimages."
                 27 08
        0809bf64 05 48 07        ADD        EAX,0x20748
                 02 00
        0809bf69 e9 d4 01        JMP        LAB_0809c142
                 00 00
        0809bf6e 89              ??         89h
        0809bf6f f6              ??         F6h
                             LAB_0809bf70                                    XREF[1]:     0809bf51(j)
        0809bf70 57              PUSH       EDI
        0809bf71 57              PUSH       EDI
        0809bf72 6a 0c           PUSH       0xc
        0809bf74 6a 01           PUSH       0x1
        0809bf76 e8 55 4d        CALL       ecalloc                                          undefined ecalloc()
                 fb ff
        0809bf7b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bf81 83 c4 10        ADD        ESP,0x10
        0809bf84 85 c0           TEST       EAX,EAX
        0809bf86 89 82 f8        MOV        dword ptr [EDX + 0x104f8],EAX
                 04 01 00
        0809bf8c 75 22           JNZ        LAB_0809bfb0
        0809bf8e e8 6d 02        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809bf93 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bf98 05 48 07        ADD        EAX,0x20748
                 02 00
        0809bf9d 56              PUSH       ESI
        0809bf9e 56              PUSH       ESI
        0809bf9f 68 b8 8f        PUSH       s_Can't_create_palgroup_array._08278fb8          = "Can't create palgroup array."
                 27 08
        0809bfa4 e9 99 01        JMP        LAB_0809c142
                 00 00
        0809bfa9 8d              ??         8Dh
        0809bfaa b4              ??         B4h
        0809bfab 26              ??         26h    &
        0809bfac 00              ??         00h
        0809bfad 00              ??         00h
        0809bfae 00              ??         00h
        0809bfaf 00              ??         00h
                             LAB_0809bfb0                                    XREF[1]:     0809bf8c(j)
        0809bfb0 8d 82 44        LEA        EAX,[EDX + 0x1ce44]
                 ce 01 00
        0809bfb6 53              PUSH       EBX
        0809bfb7 53              PUSH       EBX
        0809bfb8 6a 20           PUSH       0x20
        0809bfba 50              PUSH       EAX
        0809bfbb e8 60 84        CALL       IntCircBufInit                                   undefined IntCircBufInit()
                 fb ff
        0809bfc0 83 c4 10        ADD        ESP,0x10
        0809bfc3 85 c0           TEST       EAX,EAX
        0809bfc5 75 0c           JNZ        LAB_0809bfd3
                             LAB_0809bfc7                                    XREF[1]:     0809bd0c(j)
        0809bfc7 e8 34 02        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809bfcc 31 c0           XOR        EAX,EAX
        0809bfce e9 82 01        JMP        LAB_0809c155
                 00 00
                             LAB_0809bfd3                                    XREF[1]:     0809bfc5(j)
        0809bfd3 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809bfd9 8b 82 68        MOV        EAX,dword ptr [EDX + 0x1d568]
                 d5 01 00
        0809bfdf 89 82 0c        MOV        dword ptr [EDX + 0x1050c],EAX
                 05 01 00
        0809bfe5 c7 82 f4        MOV        dword ptr [EDX + 0x14af4],0x1
                 4a 01 00
                 01 00 00 00
        0809bfef 51              PUSH       ECX
        0809bff0 81 c2 00        ADD        EDX,0x14b00
                 4b 01 00
        0809bff6 6a 0b           PUSH       0xb
        0809bff8 68 62 d8        PUSH       s_system.def_0827d85d+5                          = "system.def"
                 27 08
        0809bffd 52              PUSH       EDX
        0809bffe e8 2d 50        CALL       memcpy                                           void * memcpy(void * __dest, voi
                 14 00
        0809c003 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c008 8b 90 d4        MOV        EDX,dword ptr [EAX + 0x1d5d4]
                 d5 01 00
        0809c00e 89 90 58        MOV        dword ptr [EAX + 0x1ce58],EDX
                 ce 01 00
        0809c014 83 c2 04        ADD        EDX,0x4
        0809c017 89 90 54        MOV        dword ptr [EAX + 0x1ce54],EDX
                 ce 01 00
        0809c01d c7 80 ff        MOV        dword ptr [EAX + 0x15aff],0x61746164
                 5a 01 00
                 64 61 74 61
        0809c027 66 c7 80        MOV        word ptr [EAX + 0x15b03],0x2f
                 03 5b 01
                 00 2f 00
        0809c030 c7 80 10        MOV        dword ptr [EAX + 0x1cc10],0x0
                 cc 01 00
                 00 00 00 00
        0809c03a c7 80 14        MOV        dword ptr [EAX + 0x1cc14],0xffffffff
                 cc 01 00
                 ff ff ff ff
        0809c044 c7 80 1c        MOV        dword ptr [EAX + 0x1cc1c],0x0
                 cc 01 00
                 00 00 00 00
        0809c04e c7 80 18        MOV        dword ptr [EAX + 0x1cc18],0x0
                 cc 01 00
                 00 00 00 00
        0809c058 c7 80 40        MOV        dword ptr [EAX + 0x1cc40],0x0
                 cc 01 00
                 00 00 00 00
        0809c062 c7 80 3c        MOV        dword ptr [EAX + 0x1cc3c],0x0
                 cc 01 00
                 00 00 00 00
        0809c06c c7 80 48        MOV        dword ptr [EAX + 0x1cc48],0x0
                 cc 01 00
                 00 00 00 00
        0809c076 c7 80 44        MOV        dword ptr [EAX + 0x1cc44],0x0
                 cc 01 00
                 00 00 00 00
        0809c080 c7 80 58        MOV        dword ptr [EAX + 0x1cc58],0x0
                 cc 01 00
                 00 00 00 00
        0809c08a c7 80 54        MOV        dword ptr [EAX + 0x1cc54],0x0
                 cc 01 00
                 00 00 00 00
        0809c094 c7 80 d4        MOV        dword ptr [EAX + 0x104d4],0x0
                 04 01 00
                 00 00 00 00
        0809c09e c7 80 68        MOV        dword ptr [EAX + 0x1d068],0x1
                 d0 01 00
                 01 00 00 00
        0809c0a8 c7 80 6c        MOV        dword ptr [EAX + 0x1d06c],0x1
                 d0 01 00
                 01 00 00 00
        0809c0b2 c7 80 70        MOV        dword ptr [EAX + 0x1d070],0x0
                 d0 01 00
                 00 00 00 00
        0809c0bc c7 80 74        MOV        dword ptr [EAX + 0x1d074],0x0
                 d0 01 00
                 00 00 00 00
        0809c0c6 c7 80 68        MOV        dword ptr [EAX + 0x1d168],0xffffffff
                 d1 01 00
                 ff ff ff ff
        0809c0d0 c7 80 5c        MOV        dword ptr [EAX + 0x1ce5c],0x4
                 ce 01 00
                 04 00 00 00
        0809c0da c7 80 bc        MOV        dword ptr [EAX + 0xcebc],0x1
                 ce 00 00
                 01 00 00 00
        0809c0e4 c7 80 c0        MOV        dword ptr [EAX + 0xcec0],0x2
                 ce 00 00
                 02 00 00 00
        0809c0ee c7 04 24        MOV        dword ptr [ESP]=>local_4c,0x0
                 00 00 00 00
        0809c0f5 e8 b6 5e        CALL       time                                             time_t time(time_t * __timer)
                 14 00
        0809c0fa 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809c100 89 82 28        MOV        dword ptr [EDX + 0x1cc28],EAX
                 cc 01 00
        0809c106 89 04 24        MOV        dword ptr [ESP]=>local_4c,EAX
        0809c109 e8 32 97        CALL       srandom                                          void srandom(uint __seed)
                 12 00
        0809c10e 5f              POP        EDI
        0809c10f 58              POP        EAX
        0809c110 6a 08           PUSH       0x8
        0809c112 6a 4d           PUSH       0x4d
        0809c114 e8 27 23        CALL       ClipboardNew                                     undefined ClipboardNew()
                 fb ff
        0809c119 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809c11f 83 c4 10        ADD        ESP,0x10
        0809c122 85 c0           TEST       EAX,EAX
        0809c124 89 82 44        MOV        dword ptr [EDX + 0x20744],EAX
                 07 02 00
        0809c12a 75 24           JNZ        LAB_0809c150
        0809c12c e8 cf 00        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809c131 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c136 05 48 07        ADD        EAX,0x20748
                 02 00
        0809c13b 56              PUSH       ESI
        0809c13c 56              PUSH       ESI
        0809c13d 68 d5 8f        PUSH       s_Can't_create_clipboard._08278fd5               = "Can't create clipboard."
                 27 08
                             LAB_0809c142                                    XREF[6]:     0809be31(j), 0809beab(j),
                                                                                          0809bef3(j), 0809bf2b(j),
                                                                                          0809bf69(j), 0809bfa4(j)
        0809c142 50              PUSH       EAX
        0809c143 e8 d8 8c        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809c148 83 c4 10        ADD        ESP,0x10
        0809c14b 31 c0           XOR        EAX,EAX
        0809c14d eb 06           JMP        LAB_0809c155
        0809c14f 90              ??         90h
                             LAB_0809c150                                    XREF[1]:     0809c12a(j)
        0809c150 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_0809c155                                    XREF[2]:     0809bfce(j), 0809c14d(j)
        0809c155 83 c4 30        ADD        ESP,0x30
        0809c158 5b              POP        EBX
        0809c159 5e              POP        ESI
        0809c15a 5f              POP        EDI
        0809c15b c3              RET
