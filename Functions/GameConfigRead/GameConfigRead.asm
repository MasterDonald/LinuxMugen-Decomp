                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameConfigRead()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x11c   local_11c                               XREF[2]:     080d4a24(*),
                                                                                                   080d4ce3(*)
             undefined4        Stack[-0x120   local_120                               XREF[2]:     080d4951(*),
                                                                                                   080d49bd(R)
             undefined4        Stack[-0x124   local_124                               XREF[2]:     080d495a(*),
                                                                                                   080d4987(R)
             undefined4        Stack[-0x128   local_128                               XREF[2]:     080d4960(*),
                                                                                                   080d4981(R)
             undefined4        Stack[-0x12c   local_12c                               XREF[2]:     080d4955(*),
                                                                                                   080d497d(R)
             undefined4        Stack[-0x130   local_130                               XREF[12]:    080d4433(W),
                                                                                                   080d4440(W),
                                                                                                   080d4448(R),
                                                                                                   080d45ce(*),
                                                                                                   080d45e8(R),
                                                                                                   080d48dc(R),
                                                                                                   080d48e7(*),
                                                                                                   080d48f7(R),
                                                                                                   080d49b9(W),
                                                                                                   080d4a19(W),
                                                                                                   080d4acb(R),
                                                                                                   080d4ad0(W)
             undefined4        Stack[-0x134   local_134                               XREF[5]:     080d4a71(W),
                                                                                                   080d4a83(R),
                                                                                                   080d4a8b(R),
                                                                                                   080d4aac(R),
                                                                                                   080d4ab4(R)
             undefined4        Stack[-0x14c   local_14c                               XREF[1]:     080d4e1e(*)
                             GameConfigRead                                  XREF[2]:     Entry Point(*),
                                                                                          GameInit:08098cbd(c)
        080d3e70 55              PUSH       EBP
        080d3e71 57              PUSH       EDI
        080d3e72 56              PUSH       ESI
        080d3e73 53              PUSH       EBX
        080d3e74 81 ec 38        SUB        ESP,0x138
                 01 00 00
        080d3e7a 8b b4 24        MOV        ESI,dword ptr [ESP + Stack[0x4]]
                 4c 01 00 00
        080d3e81 56              PUSH       ESI
        080d3e82 e8 39 79        CALL       TPReadFile                                       undefined TPReadFile()
                 fa ff
        080d3e87 89 c5           MOV        EBP,EAX
        080d3e89 83 c4 10        ADD        ESP,0x10
        080d3e8c 85 ed           TEST       EBP,EBP
        080d3e8e 75 36           JNZ        LAB_080d3ec6
        080d3e90 83 ec 0c        SUB        ESP,0xc
        080d3e93 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0x4]]
                 4c 01 00 00
        080d3e9a 53              PUSH       EBX
        080d3e9b e8 20 79        CALL       TPReadFile                                       undefined TPReadFile()
                 fa ff
        080d3ea0 89 c5           MOV        EBP,EAX
        080d3ea2 83 c4 10        ADD        ESP,0x10
        080d3ea5 85 ed           TEST       EBP,EBP
        080d3ea7 75 1d           JNZ        LAB_080d3ec6
        080d3ea9 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3eae 51              PUSH       ECX
        080d3eaf 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3eb4 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 44 01 00 00
        080d3ebb 52              PUSH       EDX
        080d3ebc 68 20 da        PUSH       s_Can't_open_%s._Make_sure_you_hav_0827da20      = "Can't open %s. Make sure you
                 27 08
        080d3ec1 e9 ad 0d        JMP        LAB_080d4c73
                 00 00
                             LAB_080d3ec6                                    XREF[2]:     080d3e8e(j), 080d3ea7(j)
        080d3ec6 50              PUSH       EAX
        080d3ec7 50              PUSH       EAX
        080d3ec8 68 a4 d3        PUSH       s_Rules_0827d3a4                                 = "Rules"
                 27 08
        080d3ecd 55              PUSH       EBP
        080d3ece e8 ad 7e        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d3ed3 83 c4 10        ADD        ESP,0x10
        080d3ed6 40              INC        EAX
        080d3ed7 75 17           JNZ        LAB_080d3ef0
        080d3ed9 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3ede 55              PUSH       EBP
        080d3edf 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3ee4 55              PUSH       EBP
        080d3ee5 68 aa d3        PUSH       s_Can't_load_rules._0827d3aa                     = "Can't load rules."
                 27 08
        080d3eea e9 84 0d        JMP        LAB_080d4c73
                 00 00
        080d3eef 90              ??         90h
                             LAB_080d3ef0                                    XREF[1]:     080d3ed7(j)
        080d3ef0 57              PUSH       EDI
        080d3ef1 57              PUSH       EDI
        080d3ef2 68 bc d3        PUSH       s_gametype_0827d3bc                              = "gametype"
                 27 08
        080d3ef7 55              PUSH       EBP
        080d3ef8 e8 a3 81        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d3efd 89 c3           MOV        EBX,EAX
        080d3eff 83 c4 10        ADD        ESP,0x10
        080d3f02 85 db           TEST       EBX,EBX
        080d3f04 75 1a           JNZ        LAB_080d3f20
        080d3f06 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3f0b 56              PUSH       ESI
        080d3f0c 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3f11 56              PUSH       ESI
        080d3f12 68 c5 d3        PUSH       s_Can't_get_game_type._0827d3c5                  = "Can't get game type."
                 27 08
        080d3f17 e9 57 0d        JMP        LAB_080d4c73
                 00 00
        080d3f1c 8d              ??         8Dh
        080d3f1d 74              ??         74h    t
        080d3f1e 26              ??         26h    &
        080d3f1f 00              ??         00h
                             LAB_080d3f20                                    XREF[1]:     080d3f04(j)
        080d3f20 0f be 13        MOVSX      EDX,byte ptr [EBX]
        080d3f23 a1 48 41        MOV        EAX,[__ctype_tolower]                            = 08270660h
                 2a 08
        080d3f28 8b 04 90        MOV        EAX=>_nl_C_LC_CTYPE_tolower[512],dword ptr [EA
        080d3f2b 83 f8 6d        CMP        EAX,0x6d
        080d3f2e 74 31           JZ         LAB_080d3f61
        080d3f30 83 f8 76        CMP        EAX,0x76
        080d3f33 74 1b           JZ         LAB_080d3f50
        080d3f35 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3f3a 53              PUSH       EBX
        080d3f3b 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3f40 53              PUSH       EBX
        080d3f41 68 c5 d3        PUSH       s_Can't_get_game_type._0827d3c5                  = "Can't get game type."
                 27 08
        080d3f46 e9 28 0d        JMP        LAB_080d4c73
                 00 00
        080d3f4b 90              ??         90h
        080d3f4c 8d              ??         8Dh
        080d3f4d 74              ??         74h    t
        080d3f4e 26              ??         26h    &
        080d3f4f 00              ??         00h
                             LAB_080d3f50                                    XREF[1]:     080d3f33(j)
        080d3f50 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3f55 c7 80 74        MOV        dword ptr [EAX + 0x1cc74],0x0
                 cc 01 00
                 00 00 00 00
        080d3f5f eb 0f           JMP        LAB_080d3f70
                             LAB_080d3f61                                    XREF[1]:     080d3f2e(j)
        080d3f61 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3f66 c7 80 74        MOV        dword ptr [EAX + 0x1cc74],0x1
                 cc 01 00
                 01 00 00 00
                             LAB_080d3f70                                    XREF[1]:     080d3f5f(j)
        080d3f70 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3f75 c7 80 78        MOV        dword ptr [EAX + 0x1cc78],0x40400000
                 cc 01 00
                 00 00 40 40
        080d3f7f c7 80 7c        MOV        dword ptr [EAX + 0x1cc7c],0x40000000
                 cc 01 00
                 00 00 00 40
        080d3f89 c7 80 80        MOV        dword ptr [EAX + 0x1cc80],0x3f800000
                 cc 01 00
                 00 00 80 3f
        080d3f93 51              PUSH       ECX
        080d3f94 05 78 cc        ADD        EAX,0x1cc78
                 01 00
        080d3f99 50              PUSH       EAX
        080d3f9a 68 da d3        PUSH       s_default.attack.lifetopowermul_0827d3da         = "default.attack.lifetopowermul"
                 27 08
        080d3f9f 55              PUSH       EBP
        080d3fa0 e8 3b 84        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fa ff
        080d3fa5 83 c4 0c        ADD        ESP,0xc
        080d3fa8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3fad 05 7c cc        ADD        EAX,0x1cc7c
                 01 00
        080d3fb2 50              PUSH       EAX
        080d3fb3 68 f8 d3        PUSH       s_default.gethit.lifetopowermul_0827d3f8         = "default.gethit.lifetopowermul"
                 27 08
        080d3fb8 55              PUSH       EBP
        080d3fb9 e8 22 84        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fa ff
        080d3fbe 83 c4 0c        ADD        ESP,0xc
        080d3fc1 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3fc6 05 80 cc        ADD        EAX,0x1cc80
                 01 00
        080d3fcb 50              PUSH       EAX
        080d3fcc 68 16 d4        PUSH       s_super.targetdefencemul_0827d416                = "super.targetdefencemul"
                 27 08
        080d3fd1 55              PUSH       EBP
        080d3fd2 e8 09 84        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fa ff
        080d3fd7 58              POP        EAX
        080d3fd8 5a              POP        EDX
        080d3fd9 68 2d d4        PUSH       s_config_0827d42d                                = "config"
                 27 08
        080d3fde 55              PUSH       EBP
        080d3fdf e8 9c 7d        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d3fe4 83 c4 10        ADD        ESP,0x10
        080d3fe7 40              INC        EAX
        080d3fe8 75 16           JNZ        LAB_080d4000
        080d3fea a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3fef 57              PUSH       EDI
        080d3ff0 05 48 07        ADD        EAX,0x20748
                 02 00
        080d3ff5 57              PUSH       EDI
        080d3ff6 68 34 d4        PUSH       s_Can't_access_config._0827d434                  = "Can't access config."
                 27 08
        080d3ffb e9 73 0c        JMP        LAB_080d4c73
                 00 00
                             LAB_080d4000                                    XREF[1]:     080d3fe8(j)
        080d4000 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4005 c7 80 bc        MOV        dword ptr [EAX + 0x1d5bc],0x3c
                 d5 01 00
                 3c 00 00 00
        080d400f c7 80 c0        MOV        dword ptr [EAX + 0x1d5c0],0x1
                 d5 01 00
                 01 00 00 00
        080d4019 56              PUSH       ESI
        080d401a 05 bc d5        ADD        EAX,0x1d5bc
                 01 00
        080d401f 50              PUSH       EAX
        080d4020 68 49 d4        PUSH       s_gamespeed_0827d449                             = "gamespeed"
                 27 08
        080d4025 55              PUSH       EBP
        080d4026 e8 f5 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d402b 83 c4 0c        ADD        ESP,0xc
        080d402e a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4033 05 c0 d5        ADD        EAX,0x1d5c0
                 01 00
        080d4038 50              PUSH       EAX
        080d4039 68 53 d4        PUSH       s_drawshadows_0827d453                           = "drawshadows"
                 27 08
        080d403e 55              PUSH       EBP
        080d403f e8 dc 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4044 83 c4 0c        ADD        ESP,0xc
        080d4047 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d404c 05 c4 d5        ADD        EAX,0x1d5c4
                 01 00
        080d4051 50              PUSH       EAX
        080d4052 68 5f d4        PUSH       s_afterimagemax_0827d45f                         = "afterimagemax"
                 27 08
        080d4057 55              PUSH       EBP
        080d4058 e8 c3 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d405d a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4062 83 c4 10        ADD        ESP,0x10
        080d4065 8b 98 c4        MOV        EBX,dword ptr [EAX + 0x1d5c4]
                 d5 01 00
        080d406b 85 db           TEST       EBX,EBX
        080d406d 7f 0a           JG         LAB_080d4079
        080d406f c7 80 c4        MOV        dword ptr [EAX + 0x1d5c4],0x1
                 d5 01 00
                 01 00 00 00
                             LAB_080d4079                                    XREF[1]:     080d406d(j)
        080d4079 05 c8 d5        ADD        EAX,0x1d5c8
                 01 00
        080d407e 51              PUSH       ECX
        080d407f 50              PUSH       EAX
        080d4080 68 6d d4        PUSH       s_layeredspritemax_0827d46d                      = "layeredspritemax"
                 27 08
        080d4085 55              PUSH       EBP
        080d4086 e8 95 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d408b a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4090 83 c4 10        ADD        ESP,0x10
        080d4093 83 b8 c8        CMP        dword ptr [EAX + 0x1d5c8],0x1f
                 d5 01 00 1f
        080d409a 7f 0a           JG         LAB_080d40a6
        080d409c c7 80 c8        MOV        dword ptr [EAX + 0x1d5c8],0x20
                 d5 01 00
                 20 00 00 00
                             LAB_080d40a6                                    XREF[1]:     080d409a(j)
        080d40a6 05 cc d5        ADD        EAX,0x1d5cc
                 01 00
        080d40ab 52              PUSH       EDX
        080d40ac 50              PUSH       EAX
        080d40ad 68 81 d4        PUSH       s_explodmax_0827d47e+3                           = "explodmax"
                 27 08
        080d40b2 55              PUSH       EBP
        080d40b3 e8 68 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d40b8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d40bd 83 c4 10        ADD        ESP,0x10
        080d40c0 83 b8 cc        CMP        dword ptr [EAX + 0x1d5cc],0x7
                 d5 01 00 07
        080d40c7 7f 0a           JG         LAB_080d40d3
        080d40c9 c7 80 cc        MOV        dword ptr [EAX + 0x1d5cc],0x8
                 d5 01 00
                 08 00 00 00
                             LAB_080d40d3                                    XREF[1]:     080d40c7(j)
        080d40d3 05 d0 d5        ADD        EAX,0x1d5d0
                 01 00
        080d40d8 57              PUSH       EDI
        080d40d9 50              PUSH       EAX
        080d40da 68 7e d4        PUSH       s_sysexplodmax_0827d47e                          = "sysexplodmax"
                 27 08
        080d40df 55              PUSH       EBP
        080d40e0 e8 3b 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d40e5 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d40ea 83 c4 10        ADD        ESP,0x10
        080d40ed 83 b8 d0        CMP        dword ptr [EAX + 0x1d5d0],0x7
                 d5 01 00 07
        080d40f4 7f 0a           JG         LAB_080d4100
        080d40f6 c7 80 d0        MOV        dword ptr [EAX + 0x1d5d0],0x8
                 d5 01 00
                 08 00 00 00
                             LAB_080d4100                                    XREF[1]:     080d40f4(j)
        080d4100 05 d4 d5        ADD        EAX,0x1d5d4
                 01 00
        080d4105 56              PUSH       ESI
        080d4106 50              PUSH       EAX
        080d4107 68 8b d4        PUSH       s_helpermax_0827d48b                             = "helpermax"
                 27 08
        080d410c 55              PUSH       EBP
        080d410d e8 0e 83        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4112 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4117 83 c4 10        ADD        ESP,0x10
        080d411a 83 b8 d4        CMP        dword ptr [EAX + 0x1d5d4],0x3
                 d5 01 00 03
        080d4121 7f 0a           JG         LAB_080d412d
        080d4123 c7 80 d4        MOV        dword ptr [EAX + 0x1d5d4],0x4
                 d5 01 00
                 04 00 00 00
                             LAB_080d412d                                    XREF[1]:     080d4121(j)
        080d412d 83 b8 d4        CMP        dword ptr [EAX + 0x1d5d4],0x38
                 d5 01 00 38
        080d4134 7e 0f           JLE        LAB_080d4145
        080d4136 c7 80 d4        MOV        dword ptr [EAX + 0x1d5d4],0x38
                 d5 01 00
                 38 00 00 00
        080d4140 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4145                                    XREF[1]:     080d4134(j)
        080d4145 05 d8 d5        ADD        EAX,0x1d5d8
                 01 00
        080d414a 53              PUSH       EBX
        080d414b 50              PUSH       EAX
        080d414c 68 95 d4        PUSH       s_playerprojectilemax_0827d495                   = "playerprojectilemax"
                 27 08
        080d4151 55              PUSH       EBP
        080d4152 e8 c9 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4157 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d415c 83 c4 10        ADD        ESP,0x10
        080d415f 83 b8 d8        CMP        dword ptr [EAX + 0x1d5d8],0x4
                 d5 01 00 04
        080d4166 7f 0a           JG         LAB_080d4172
        080d4168 c7 80 d8        MOV        dword ptr [EAX + 0x1d5d8],0x5
                 d5 01 00
                 05 00 00 00
                             LAB_080d4172                                    XREF[1]:     080d4166(j)
        080d4172 05 dc d5        ADD        EAX,0x1d5dc
                 01 00
        080d4177 51              PUSH       ECX
        080d4178 50              PUSH       EAX
        080d4179 68 a9 d4        PUSH       s_playerpalmax_0827d4a9                          = "playerpalmax"
                 27 08
        080d417e 55              PUSH       EBP
        080d417f e8 9c 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4184 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4189 83 c4 10        ADD        ESP,0x10
        080d418c 83 b8 dc        CMP        dword ptr [EAX + 0x1d5dc],0xb
                 d5 01 00 0b
        080d4193 7f 0a           JG         LAB_080d419f
        080d4195 c7 80 dc        MOV        dword ptr [EAX + 0x1d5dc],0xc
                 d5 01 00
                 0c 00 00 00
                             LAB_080d419f                                    XREF[1]:     080d4193(j)
        080d419f 05 e0 d5        ADD        EAX,0x1d5e0
                 01 00
        080d41a4 52              PUSH       EDX
        080d41a5 50              PUSH       EAX
        080d41a6 68 b6 d4        PUSH       s_firstrun_0827d4b6                              = "firstrun"
                 27 08
        080d41ab 55              PUSH       EBP
        080d41ac e8 6f 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d41b1 5e              POP        ESI
        080d41b2 5f              POP        EDI
        080d41b3 68 30 92        PUSH       s_Debug_08279230                                 = "Debug"
                 27 08
        080d41b8 55              PUSH       EBP
        080d41b9 e8 c2 7b        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d41be 83 c4 10        ADD        ESP,0x10
        080d41c1 40              INC        EAX
        080d41c2 0f 84 aa        JZ         LAB_080d4272
                 00 00 00
        080d41c8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d41cd 53              PUSH       EBX
        080d41ce 05 34 07        ADD        EAX,0x20734
                 02 00
        080d41d3 50              PUSH       EAX
        080d41d4 68 7e 40        PUSH       s_debug_08284074+10                              = "debug"
                 28 08
        080d41d9 55              PUSH       EBP
        080d41da e8 41 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d41df 83 c4 0c        ADD        ESP,0xc
        080d41e2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d41e7 05 38 07        ADD        EAX,0x20738
                 02 00
        080d41ec 50              PUSH       EAX
        080d41ed 68 bf d4        PUSH       s_allowdebugmode_0827d4bf                        = "allowdebugmode"
                 27 08
        080d41f2 55              PUSH       EBP
        080d41f3 e8 28 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d41f8 83 c4 0c        ADD        ESP,0xc
        080d41fb a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4200 05 3c 07        ADD        EAX,0x2073c
                 02 00
        080d4205 50              PUSH       EAX
        080d4206 68 ce d4        PUSH       s_allowdebugkeys_0827d4ce                        = "allowdebugkeys"
                 27 08
        080d420b 55              PUSH       EBP
        080d420c e8 0f 82        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4211 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4216 83 c4 10        ADD        ESP,0x10
        080d4219 8b 88 34        MOV        ECX,dword ptr [EAX + 0x20734]
                 07 02 00
        080d421f 85 c9           TEST       ECX,ECX
        080d4221 74 1f           JZ         LAB_080d4242
        080d4223 c7 80 38        MOV        dword ptr [EAX + 0x20738],0x1
                 07 02 00
                 01 00 00 00
        080d422d 52              PUSH       EDX
        080d422e 05 48 0b        ADD        EAX,0x20b48
                 02 00
        080d4233 50              PUSH       EAX
        080d4234 68 dd d4        PUSH       s_speedup_0827d4dd                               = "speedup"
                 27 08
        080d4239 55              PUSH       EBP
        080d423a e8 e1 81        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d423f 83 c4 10        ADD        ESP,0x10
                             LAB_080d4242                                    XREF[1]:     080d4221(j)
        080d4242 57              PUSH       EDI=>s_firstrun_0827d4b6                         = "firstrun"
        080d4243 57              PUSH       EDI=>s_firstrun_0827d4b6                         = "firstrun"
        080d4244 68 e5 d4        PUSH       s_startstage_0827d4e5                            = "startstage"
                 27 08
        080d4249 55              PUSH       EBP
        080d424a e8 51 7e        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d424f 89 c3           MOV        EBX,EAX
        080d4251 83 c4 10        ADD        ESP,0x10
        080d4254 85 db           TEST       EBX,EBX
        080d4256 74 1a           JZ         LAB_080d4272
        080d4258 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d425d 56              PUSH       ESI
        080d425e 05 10 f7        ADD        EAX,0x1f710
                 01 00
        080d4263 68 ff 0f        PUSH       0xfff
                 00 00
        080d4268 53              PUSH       EBX
        080d4269 50              PUSH       EAX
        080d426a e8 41 c8        CALL       strncpy                                          char * strncpy(char * __dest, ch
                 10 00
        080d426f 83 c4 10        ADD        ESP,0x10
                             LAB_080d4272                                    XREF[2]:     080d41c2(j), 080d4256(j)
        080d4272 bb f6 d4        MOV        EBX,s_video_linux_0827d4f6                       = "video linux"
                 27 08
        080d4277 51              PUSH       ECX
        080d4278 51              PUSH       ECX
        080d4279 53              PUSH       EBX=>s_video_linux_0827d4f6                      = "video linux"
        080d427a 55              PUSH       EBP
        080d427b e8 00 7b        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d4280 83 c4 10        ADD        ESP,0x10
        080d4283 40              INC        EAX
        080d4284 75 1a           JNZ        LAB_080d42a0
        080d4286 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d428b 52              PUSH       EDX
        080d428c 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4291 53              PUSH       EBX=>s_video_linux_0827d4f6                      = "video linux"
        080d4292 68 02 d5        PUSH       s_Can't_load_video_config:_[%s]_0827d502         = "Can't load video config: [%s]"
                 27 08
        080d4297 e9 d7 09        JMP        LAB_080d4c73
                 00 00
        080d429c 8d              ??         8Dh
        080d429d 74              ??         74h    t
        080d429e 26              ??         26h    &
        080d429f 00              ??         00h
                             LAB_080d42a0                                    XREF[1]:     080d4284(j)
        080d42a0 50              PUSH       EAX
        080d42a1 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d42a6 05 4c d5        ADD        EAX,0x1d54c
                 01 00
        080d42ab 50              PUSH       EAX
        080d42ac 68 74 a4        PUSH       s_width_0827a46b+9                               = "width"
                 27 08
        080d42b1 55              PUSH       EBP
        080d42b2 e8 69 81        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d42b7 83 c4 0c        ADD        ESP,0xc
        080d42ba 89 c3           MOV        EBX,EAX
        080d42bc a1 74 7a        MOV        EAX,[g]
                 28 08
        080d42c1 05 50 d5        ADD        EAX,0x1d550
                 01 00
        080d42c6 50              PUSH       EAX
        080d42c7 68 48 9f        PUSH       s_height_08279f37+17                             = "height"
                 27 08
        080d42cc 55              PUSH       EBP
        080d42cd e8 4e 81        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d42d2 83 c4 0c        ADD        ESP,0xc
        080d42d5 89 c7           MOV        EDI,EAX
        080d42d7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d42dc 21 fb           AND        EBX,EDI
        080d42de 05 54 d5        ADD        EAX,0x1d554
                 01 00
        080d42e3 50              PUSH       EAX
        080d42e4 68 1e ee        PUSH       s_depth_0827ee0c+18                              = "depth"
                 27 08
        080d42e9 55              PUSH       EBP
        080d42ea e8 31 81        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d42ef 83 c4 0c        ADD        ESP,0xc
        080d42f2 89 c6           MOV        ESI,EAX
        080d42f4 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d42f9 21 f3           AND        EBX,ESI
        080d42fb 05 68 d5        ADD        EAX,0x1d568
                 01 00
        080d4300 50              PUSH       EAX
        080d4301 68 20 d5        PUSH       s_vretrace_0827d520                              = "vretrace"
                 27 08
        080d4306 55              PUSH       EBP
        080d4307 e8 14 81        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d430c 21 c3           AND        EBX,EAX
        080d430e 83 c4 10        ADD        ESP,0x10
        080d4311 4b              DEC        EBX
        080d4312 74 1c           JZ         LAB_080d4330
        080d4314 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4319 57              PUSH       EDI
        080d431a 05 48 07        ADD        EAX,0x20748
                 02 00
        080d431f 57              PUSH       EDI
        080d4320 68 29 d5        PUSH       s_Can't_read_video_config._0827d529              = "Can't read video config."
                 27 08
        080d4325 e9 49 09        JMP        LAB_080d4c73
                 00 00
        080d432a 8d              ??         8Dh
        080d432b b6              ??         B6h
        080d432c 00              ??         00h
        080d432d 00              ??         00h
        080d432e 00              ??         00h
        080d432f 00              ??         00h
                             LAB_080d4330                                    XREF[1]:     080d4312(j)
        080d4330 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4335 c7 80 60        MOV        dword ptr [EAX + 0x1d560],0x0
                 d5 01 00
                 00 00 00 00
        080d433f 56              PUSH       ESI
        080d4340 05 60 d5        ADD        EAX,0x1d560
                 01 00
        080d4345 50              PUSH       EAX
        080d4346 68 42 d5        PUSH       s_stretch_0827d542                               = "stretch"
                 27 08
        080d434b 55              PUSH       EBP
        080d434c e8 cf 80        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4351 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4356 83 c4 0c        ADD        ESP,0xc
        080d4359 c7 80 64        MOV        dword ptr [EAX + 0x1d564],0x0
                 d5 01 00
                 00 00 00 00
        080d4363 05 64 d5        ADD        EAX,0x1d564
                 01 00
        080d4368 50              PUSH       EAX
        080d4369 68 4a d5        PUSH       s_doubleres_0827d54a                             = "doubleres"
                 27 08
        080d436e 55              PUSH       EBP
        080d436f e8 ac 80        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4374 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4379 83 c4 10        ADD        ESP,0x10
        080d437c 8b 98 64        MOV        EBX,dword ptr [EAX + 0x1d564]
                 d5 01 00
        080d4382 85 db           TEST       EBX,EBX
        080d4384 79 0a           JNS        LAB_080d4390
        080d4386 c7 80 64        MOV        dword ptr [EAX + 0x1d564],0x0
                 d5 01 00
                 00 00 00 00
                             LAB_080d4390                                    XREF[1]:     080d4384(j)
        080d4390 83 b8 64        CMP        dword ptr [EAX + 0x1d564],0x4
                 d5 01 00 04
        080d4397 7e 0f           JLE        LAB_080d43a8
        080d4399 c7 80 64        MOV        dword ptr [EAX + 0x1d564],0x4
                 d5 01 00
                 04 00 00 00
        080d43a3 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d43a8                                    XREF[1]:     080d4397(j)
        080d43a8 c7 80 58        MOV        dword ptr [EAX + 0x1d558],0x1
                 d5 01 00
                 01 00 00 00
        080d43b2 51              PUSH       ECX
        080d43b3 51              PUSH       ECX
        080d43b4 68 c7 f4        PUSH       s_fullscreen_0827f4c3+4                          = "fullscreen"
                 27 08
        080d43b9 55              PUSH       EBP
        080d43ba e8 e1 7c        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d43bf 89 c3           MOV        EBX,EAX
        080d43c1 83 c4 10        ADD        ESP,0x10
        080d43c4 85 db           TEST       EBX,EBX
        080d43c6 74 5d           JZ         LAB_080d4425
        080d43c8 0f be 13        MOVSX      EDX,byte ptr [EBX]
        080d43cb a1 48 41        MOV        EAX,[__ctype_tolower]                            = 08270660h
                 2a 08
        080d43d0 8b 04 90        MOV        EAX=>_nl_C_LC_CTYPE_tolower[512],dword ptr [EA
        080d43d3 83 f8 30        CMP        EAX,0x30
        080d43d6 74 18           JZ         LAB_080d43f0
        080d43d8 83 f8 31        CMP        EAX,0x31
        080d43db 75 24           JNZ        LAB_080d4401
        080d43dd a1 74 7a        MOV        EAX,[g]
                 28 08
        080d43e2 c7 80 58        MOV        dword ptr [EAX + 0x1d558],0x1
                 d5 01 00
                 01 00 00 00
        080d43ec eb 37           JMP        LAB_080d4425
        080d43ee 89              ??         89h
        080d43ef f6              ??         F6h
                             LAB_080d43f0                                    XREF[1]:     080d43d6(j)
        080d43f0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d43f5 c7 80 58        MOV        dword ptr [EAX + 0x1d558],0x2
                 d5 01 00
                 02 00 00 00
        080d43ff eb 24           JMP        LAB_080d4425
                             LAB_080d4401                                    XREF[1]:     080d43db(j)
        080d4401 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4406 c7 80 58        MOV        dword ptr [EAX + 0x1d558],0x0
                 d5 01 00
                 00 00 00 00
        080d4410 52              PUSH       EDX
        080d4411 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4416 53              PUSH       EBX
        080d4417 68 60 da        PUSH       s_Unrecognised_option:_%s._Trying_t_0827da60     = "Unrecognised option: %s.  Try
                 27 08
        080d441c 50              PUSH       EAX
        080d441d e8 fe 09        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4422 83 c4 10        ADD        ESP,0x10
                             LAB_080d4425                                    XREF[3]:     080d43c6(j), 080d43ec(j),
                                                                                          080d43ff(j)
        080d4425 a1 e0 c5        MOV        EAX,[system_driver]
                 28 08
        080d442a 8b 40 6c        MOV        EAX,dword ptr [EAX + 0x6c]
        080d442d 85 c0           TEST       EAX,EAX
        080d442f 74 0f           JZ         LAB_080d4440
        080d4431 ff d0           CALL       EAX
        080d4433 89 44 24 0c     MOV        dword ptr [ESP + local_130],EAX
        080d4437 eb 0f           JMP        LAB_080d4448
        080d4439 8d              ??         8Dh
        080d443a b4              ??         B4h
        080d443b 26              ??         26h    &
        080d443c 00              ??         00h
        080d443d 00              ??         00h
        080d443e 00              ??         00h
        080d443f 00              ??         00h
                             LAB_080d4440                                    XREF[1]:     080d442f(j)
        080d4440 c7 44 24        MOV        dword ptr [ESP + local_130],0x0
                 0c 00 00
                 00 00
                             LAB_080d4448                                    XREF[1]:     080d4437(j)
        080d4448 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_130]
        080d444c 85 d2           TEST       EDX,EDX
        080d444e 74 20           JZ         LAB_080d4470
        080d4450 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4455 3b 90 54        CMP        EDX,dword ptr [EAX + 0x1d554]
                 d5 01 00
        080d445b 74 18           JZ         LAB_080d4475
        080d445d 83 b8 58        CMP        dword ptr [EAX + 0x1d558],0x2
                 d5 01 00 02
        080d4464 75 0f           JNZ        LAB_080d4475
        080d4466 89 90 54        MOV        dword ptr [EAX + 0x1d554],EDX
                 d5 01 00
        080d446c eb 07           JMP        LAB_080d4475
        080d446e 89              ??         89h
        080d446f f6              ??         F6h
                             LAB_080d4470                                    XREF[1]:     080d444e(j)
        080d4470 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4475                                    XREF[3]:     080d445b(j), 080d4464(j),
                                                                                          080d446c(j)
        080d4475 c7 80 5c        MOV        dword ptr [EAX + 0x1d55c],0x0
                 d5 01 00
                 00 00 00 00
        080d447f 50              PUSH       EAX
        080d4480 50              PUSH       EAX
        080d4481 68 54 d5        PUSH       s_blitmode_0827d554                              = "blitmode"
                 27 08
        080d4486 55              PUSH       EBP
        080d4487 e8 14 7c        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d448c 89 c3           MOV        EBX,EAX
        080d448e 83 c4 10        ADD        ESP,0x10
        080d4491 85 db           TEST       EBX,EBX
        080d4493 74 73           JZ         LAB_080d4508
        080d4495 0f be 13        MOVSX      EDX,byte ptr [EBX]
        080d4498 a1 48 41        MOV        EAX,[__ctype_tolower]                            = 08270660h
                 2a 08
        080d449d 8b 04 90        MOV        EAX=>_nl_C_LC_CTYPE_tolower[512],dword ptr [EA
        080d44a0 83 f8 70        CMP        EAX,0x70
        080d44a3 74 2b           JZ         LAB_080d44d0
        080d44a5 83 f8 70        CMP        EAX,0x70
        080d44a8 7f 07           JG         LAB_080d44b1
        080d44aa 83 f8 6e        CMP        EAX,0x6e
        080d44ad 74 09           JZ         LAB_080d44b8
        080d44af eb 41           JMP        LAB_080d44f2
                             LAB_080d44b1                                    XREF[1]:     080d44a8(j)
        080d44b1 83 f8 74        CMP        EAX,0x74
        080d44b4 74 2b           JZ         LAB_080d44e1
        080d44b6 eb 3a           JMP        LAB_080d44f2
                             LAB_080d44b8                                    XREF[1]:     080d44ad(j)
        080d44b8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d44bd c7 80 5c        MOV        dword ptr [EAX + 0x1d55c],0x0
                 d5 01 00
                 00 00 00 00
        080d44c7 eb 3f           JMP        LAB_080d4508
        080d44c9 8d              ??         8Dh
        080d44ca b4              ??         B4h
        080d44cb 26              ??         26h    &
        080d44cc 00              ??         00h
        080d44cd 00              ??         00h
        080d44ce 00              ??         00h
        080d44cf 00              ??         00h
                             LAB_080d44d0                                    XREF[1]:     080d44a3(j)
        080d44d0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d44d5 c7 80 5c        MOV        dword ptr [EAX + 0x1d55c],0x1
                 d5 01 00
                 01 00 00 00
        080d44df eb 27           JMP        LAB_080d4508
                             LAB_080d44e1                                    XREF[1]:     080d44b4(j)
        080d44e1 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d44e6 c7 80 5c        MOV        dword ptr [EAX + 0x1d55c],0x2
                 d5 01 00
                 02 00 00 00
        080d44f0 eb 16           JMP        LAB_080d4508
                             LAB_080d44f2                                    XREF[2]:     080d44af(j), 080d44b6(j)
        080d44f2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d44f7 57              PUSH       EDI
        080d44f8 05 48 07        ADD        EAX,0x20748
                 02 00
        080d44fd 53              PUSH       EBX
        080d44fe 68 5d d5        PUSH       s_Unrecognised_BlitMode:_%s_0827d55d             = "Unrecognised BlitMode: %s"
                 27 08
        080d4503 e9 6b 07        JMP        LAB_080d4c73
                 00 00
                             LAB_080d4508                                    XREF[4]:     080d4493(j), 080d44c7(j),
                                                                                          080d44df(j), 080d44f0(j)
        080d4508 bb 77 d5        MOV        EBX,s_sound_linux_0827d577                       = "sound linux"
                 27 08
        080d450d 56              PUSH       ESI
        080d450e 56              PUSH       ESI
        080d450f 53              PUSH       EBX=>s_sound_linux_0827d577                      = "sound linux"
        080d4510 55              PUSH       EBP
        080d4511 e8 6a 78        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d4516 83 c4 10        ADD        ESP,0x10
        080d4519 40              INC        EAX
        080d451a 75 16           JNZ        LAB_080d4532
        080d451c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4521 51              PUSH       ECX
        080d4522 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4527 53              PUSH       EBX=>s_sound_linux_0827d577                      = "sound linux"
        080d4528 68 83 d5        PUSH       s_Can't_load_sound_config:_[%s]_0827d583         = "Can't load sound config: [%s]"
                 27 08
        080d452d e9 41 07        JMP        LAB_080d4c73
                 00 00
                             LAB_080d4532                                    XREF[1]:     080d451a(j)
        080d4532 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4537 c7 80 d0        MOV        dword ptr [EAX + 0x1bbd0],0xaf
                 bb 01 00
                 af 00 00 00
        080d4541 c7 80 d4        MOV        dword ptr [EAX + 0x1bbd4],0xc8
                 bb 01 00
                 c8 00 00 00
        080d454b c7 80 e4        MOV        dword ptr [EAX + 0x1bbe4],0xaf
                 bb 01 00
                 af 00 00 00
        080d4555 c7 80 e0        MOV        dword ptr [EAX + 0x1bbe0],0xaf
                 bb 01 00
                 af 00 00 00
        080d455f c7 80 d8        MOV        dword ptr [EAX + 0x1bbd8],0xffffffff
                 bb 01 00
                 ff ff ff ff
        080d4569 c7 80 cc        MOV        dword ptr [EAX + 0x1bbcc],0x1
                 bb 01 00
                 01 00 00 00
        080d4573 c7 80 b0        MOV        dword ptr [EAX + 0x1d5b0],0x1
                 d5 01 00
                 01 00 00 00
        080d457d c7 80 b4        MOV        dword ptr [EAX + 0x1d5b4],0xa0
                 d5 01 00
                 a0 00 00 00
        080d4587 52              PUSH       EDX
        080d4588 05 cc bb        ADD        EAX,0x1bbcc
                 01 00
        080d458d 50              PUSH       EAX
        080d458e 68 fc 6f        PUSH       s_sound_08276ff1+11                              = "sound"
                 27 08
        080d4593 55              PUSH       EBP
        080d4594 e8 87 7e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4599 83 c4 0c        ADD        ESP,0xc
        080d459c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d45a1 05 b0 d5        ADD        EAX,0x1d5b0
                 01 00
        080d45a6 50              PUSH       EAX
        080d45a7 68 a1 d5        PUSH       s_stereoeffects_0827d5a1                         = "stereoeffects"
                 27 08
        080d45ac 55              PUSH       EBP
        080d45ad e8 6e 7e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d45b2 83 c4 0c        ADD        ESP,0xc
        080d45b5 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d45ba 05 b4 d5        ADD        EAX,0x1d5b4
                 01 00
        080d45bf 50              PUSH       EAX
        080d45c0 68 af d5        PUSH       s_panningwidth_0827d5af                          = "panningwidth"
                 27 08
        080d45c5 55              PUSH       EBP
        080d45c6 e8 55 7e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d45cb 83 c4 0c        ADD        ESP,0xc
        080d45ce 8d 74 24 10     LEA        ESI=>local_130,[ESP + 0x10]
        080d45d2 56              PUSH       ESI
        080d45d3 68 bc d5        PUSH       s_reversestereo_0827d5bc                         = "reversestereo"
                 27 08
        080d45d8 55              PUSH       EBP
        080d45d9 e8 42 7e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d45de 83 c4 10        ADD        ESP,0x10
        080d45e1 85 c0           TEST       EAX,EAX
        080d45e3 74 10           JZ         LAB_080d45f5
        080d45e5 83 ec 0c        SUB        ESP,0xc
        080d45e8 8b 7c 24 18     MOV        EDI,dword ptr [ESP + local_130]
        080d45ec 57              PUSH       EDI
        080d45ed e8 3e 25        CALL       SndSetReverseStereo                              undefined SndSetReverseStereo()
                 f8 ff
        080d45f2 83 c4 10        ADD        ESP,0x10
                             LAB_080d45f5                                    XREF[1]:     080d45e3(j)
        080d45f5 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d45fa 53              PUSH       EBX=>s_sound_linux_0827d577                      = "sound linux"
        080d45fb 05 b8 d5        ADD        EAX,0x1d5b8
                 01 00
        080d4600 50              PUSH       EAX
        080d4601 68 ca d5        PUSH       s_pausebgmondefocus_0827d5ca                     = "pausebgmondefocus"
                 27 08
        080d4606 55              PUSH       EBP
        080d4607 e8 14 7e        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d460c 83 c4 0c        ADD        ESP,0xc
        080d460f a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4614 05 d4 bb        ADD        EAX,0x1bbd4
                 01 00
        080d4619 50              PUSH       EAX
        080d461a 68 dc d5        PUSH       s_masterwavvolume_0827d5dc                       = "masterwavvolume"
                 27 08
        080d461f 55              PUSH       EBP
        080d4620 e8 fb 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4625 83 c4 0c        ADD        ESP,0xc
        080d4628 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d462d 05 d0 bb        ADD        EAX,0x1bbd0
                 01 00
        080d4632 50              PUSH       EAX
        080d4633 68 e2 d5        PUSH       s_wavvolume_0827d5dc+6                           = "wavvolume"
                 27 08
        080d4638 55              PUSH       EBP
        080d4639 e8 e2 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d463e 83 c4 0c        ADD        ESP,0xc
        080d4641 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4646 05 dc bb        ADD        EAX,0x1bbdc
                 01 00
        080d464b 50              PUSH       EAX
        080d464c 68 ec d5        PUSH       s_midivolume_0827d5ec                            = "midivolume"
                 27 08
        080d4651 55              PUSH       EBP
        080d4652 e8 c9 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4657 83 c4 0c        ADD        ESP,0xc
        080d465a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d465f 05 e0 bb        ADD        EAX,0x1bbe0
                 01 00
        080d4664 50              PUSH       EAX
        080d4665 68 f7 d5        PUSH       s_mp3volume_0827d5f7                             = "mp3volume"
                 27 08
        080d466a 55              PUSH       EBP
        080d466b e8 b0 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4670 83 c4 0c        ADD        ESP,0xc
        080d4673 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4678 05 e4 bb        ADD        EAX,0x1bbe4
                 01 00
        080d467d 50              PUSH       EAX
        080d467e 68 01 d6        PUSH       s_modvolume_0827d601                             = "modvolume"
                 27 08
        080d4683 55              PUSH       EBP
        080d4684 e8 97 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4689 83 c4 0c        ADD        ESP,0xc
        080d468c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4691 05 d8 bb        ADD        EAX,0x1bbd8
                 01 00
        080d4696 50              PUSH       EAX
        080d4697 68 0b d6        PUSH       s_cdavolume_0827d60b                             = "cdavolume"
                 27 08
        080d469c 55              PUSH       EBP
        080d469d e8 7e 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d46a2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d46a7 83 c4 0c        ADD        ESP,0xc
        080d46aa c7 80 88        MOV        dword ptr [EAX + 0x1d588],0x1
                 d5 01 00
                 01 00 00 00
        080d46b4 c7 80 84        MOV        dword ptr [EAX + 0x1d584],0x1
                 d5 01 00
                 01 00 00 00
        080d46be c7 80 80        MOV        dword ptr [EAX + 0x1d580],0x1
                 d5 01 00
                 01 00 00 00
        080d46c8 c7 80 8c        MOV        dword ptr [EAX + 0x1d58c],0x1
                 d5 01 00
                 01 00 00 00
        080d46d2 05 8c d5        ADD        EAX,0x1d58c
                 01 00
        080d46d7 50              PUSH       EAX
        080d46d8 68 15 d6        PUSH       DAT_0827d615                                     = 70h    p
                 27 08
        080d46dd 55              PUSH       EBP
        080d46de e8 3d 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d46e3 83 c4 0c        ADD        ESP,0xc
        080d46e6 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d46eb 05 80 d5        ADD        EAX,0x1d580
                 01 00
        080d46f0 50              PUSH       EAX
        080d46f1 68 1d d6        PUSH       DAT_0827d61d                                     = 70h    p
                 27 08
        080d46f6 55              PUSH       EBP
        080d46f7 e8 24 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d46fc 83 c4 0c        ADD        ESP,0xc
        080d46ff a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4704 05 84 d5        ADD        EAX,0x1d584
                 01 00
        080d4709 50              PUSH       EAX
        080d470a 68 25 d6        PUSH       s_playmidi_0827d625                              = "playmidi"
                 27 08
        080d470f 55              PUSH       EBP
        080d4710 e8 0b 7d        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4715 83 c4 0c        ADD        ESP,0xc
        080d4718 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d471d 05 88 d5        ADD        EAX,0x1d588
                 01 00
        080d4722 50              PUSH       EAX
        080d4723 68 2e d6        PUSH       s_playmod_0827d62e                               = "playmod"
                 27 08
        080d4728 55              PUSH       EBP
        080d4729 e8 f2 7c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d472e 5a              POP        EDX
        080d472f 59              POP        ECX
        080d4730 68 36 d6        PUSH       s_cdadevice_0827d636                             = "cdadevice"
                 27 08
        080d4735 55              PUSH       EBP
        080d4736 e8 65 79        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d473b 89 c3           MOV        EBX,EAX
        080d473d 83 c4 10        ADD        ESP,0x10
        080d4740 85 db           TEST       EBX,EBX
        080d4742 74 17           JZ         LAB_080d475b
        080d4744 50              PUSH       EAX
        080d4745 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d474a 6a 1f           PUSH       0x1f
        080d474c 05 90 d5        ADD        EAX,0x1d590
                 01 00
        080d4751 53              PUSH       EBX
        080d4752 50              PUSH       EAX
        080d4753 e8 58 c3        CALL       strncpy                                          char * strncpy(char * __dest, ch
                 10 00
        080d4758 83 c4 10        ADD        ESP,0x10
                             LAB_080d475b                                    XREF[1]:     080d4742(j)
        080d475b a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4760 c7 80 6c        MOV        dword ptr [EAX + 0x1d56c],0xffffffff
                 d5 01 00
                 ff ff ff ff
        080d476a 57              PUSH       EDI
        080d476b 57              PUSH       EDI
        080d476c 68 40 d6        PUSH       s_wavdevice_0827d640                             = "wavdevice"
                 27 08
        080d4771 55              PUSH       EBP
        080d4772 e8 29 79        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d4777 89 c3           MOV        EBX,EAX
        080d4779 83 c4 10        ADD        ESP,0x10
        080d477c 85 db           TEST       EBX,EBX
        080d477e 74 30           JZ         LAB_080d47b0
        080d4780 83 ec 0c        SUB        ESP,0xc
        080d4783 53              PUSH       EBX
        080d4784 e8 27 36        CALL       SndParseWavDevice                                undefined SndParseWavDevice()
                 f8 ff
        080d4789 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d478f 83 c4 10        ADD        ESP,0x10
        080d4792 83 f8 fe        CMP        EAX,-0x2
        080d4795 89 82 6c        MOV        dword ptr [EDX + 0x1d56c],EAX
                 d5 01 00
        080d479b 75 13           JNZ        LAB_080d47b0
        080d479d 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d47a3 56              PUSH       ESI
        080d47a4 53              PUSH       EBX
        080d47a5 68 4a d6        PUSH       s_Invalid_wav_device:_%s_0827d64a                = "Invalid wav device: %s"
                 27 08
        080d47aa e9 c4 04        JMP        LAB_080d4c73
                 00 00
        080d47af 90              ??         90h
                             LAB_080d47b0                                    XREF[2]:     080d477e(j), 080d479b(j)
        080d47b0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d47b5 c7 80 74        MOV        dword ptr [EAX + 0x1d574],0x8
                 d5 01 00
                 08 00 00 00
        080d47bf 51              PUSH       ECX
        080d47c0 05 74 d5        ADD        EAX,0x1d574
                 01 00
        080d47c5 50              PUSH       EAX
        080d47c6 68 61 d6        PUSH       s_wavchannels_0827d661                           = "wavchannels"
                 27 08
        080d47cb 55              PUSH       EBP
        080d47cc e8 4f 7c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d47d1 83 c4 0c        ADD        ESP,0xc
        080d47d4 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d47d9 05 78 d5        ADD        EAX,0x1d578
                 01 00
        080d47de 50              PUSH       EAX
        080d47df 68 6d d6        PUSH       s_modvoices_0827d66d                             = "modvoices"
                 27 08
        080d47e4 55              PUSH       EBP
        080d47e5 e8 36 7c        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d47ea a1 74 7a        MOV        EAX,[g]
                 28 08
        080d47ef c7 80 70        MOV        dword ptr [EAX + 0x1d570],0xffffffff
                 d5 01 00
                 ff ff ff ff
        080d47f9 58              POP        EAX
        080d47fa 5a              POP        EDX
        080d47fb 68 77 d6        PUSH       s_mididevice_0827d677                            = "mididevice"
                 27 08
        080d4800 55              PUSH       EBP
        080d4801 e8 9a 78        CALL       TPGetValue                                       undefined TPGetValue()
                 fa ff
        080d4806 89 c3           MOV        EBX,EAX
        080d4808 83 c4 10        ADD        ESP,0x10
        080d480b 85 db           TEST       EBX,EBX
        080d480d 74 31           JZ         LAB_080d4840
        080d480f 83 ec 0c        SUB        ESP,0xc
        080d4812 53              PUSH       EBX
        080d4813 e8 78 36        CALL       SndParseMidiDevice                               undefined SndParseMidiDevice()
                 f8 ff
        080d4818 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d481e 83 c4 10        ADD        ESP,0x10
        080d4821 83 f8 fe        CMP        EAX,-0x2
        080d4824 89 82 70        MOV        dword ptr [EDX + 0x1d570],EAX
                 d5 01 00
        080d482a 75 14           JNZ        LAB_080d4840
        080d482c 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        080d4832 55              PUSH       EBP
        080d4833 53              PUSH       EBX
        080d4834 68 82 d6        PUSH       s_Invalid_midi_device:_%s_0827d682               = "Invalid midi device: %s"
                 27 08
        080d4839 e9 35 04        JMP        LAB_080d4c73
                 00 00
        080d483e 89              ??         89h
        080d483f f6              ??         F6h
                             LAB_080d4840                                    XREF[2]:     080d480d(j), 080d482a(j)
        080d4840 57              PUSH       EDI
        080d4841 57              PUSH       EDI
        080d4842 68 9a d6        PUSH       DAT_0827d69a                                     = 4Dh    M
                 27 08
        080d4847 55              PUSH       EBP
        080d4848 e8 33 75        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d484d 83 c4 10        ADD        ESP,0x10
        080d4850 40              INC        EAX
        080d4851 75 1d           JNZ        LAB_080d4870
        080d4853 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4858 53              PUSH       EBX
        080d4859 05 48 07        ADD        EAX,0x20748
                 02 00
        080d485e 53              PUSH       EBX
        080d485f 68 9f d6        PUSH       s_Can't_load_misc_config._0827d69f               = "Can't load misc config."
                 27 08
        080d4864 e9 0a 04        JMP        LAB_080d4c73
                 00 00
        080d4869 8d              ??         8Dh
        080d486a b4              ??         B4h
        080d486b 26              ??         26h    &
        080d486c 00              ??         00h
        080d486d 00              ??         00h
        080d486e 00              ??         00h
        080d486f 00              ??         00h
                             LAB_080d4870                                    XREF[1]:     080d4851(j)
        080d4870 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4875 c7 80 e4        MOV        dword ptr [EAX + 0x1d5e4],0x0
                 d5 01 00
                 00 00 00 00
        080d487f 51              PUSH       ECX
        080d4880 05 e4 d5        ADD        EAX,0x1d5e4
                 01 00
        080d4885 50              PUSH       EAX
        080d4886 68 b7 d6        PUSH       s_playercache_0827d6b7                           = "playercache"
                 27 08
        080d488b 55              PUSH       EBP
        080d488c e8 8f 7b        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4891 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4896 83 c4 0c        ADD        ESP,0xc
        080d4899 8b 90 e4        MOV        EDX,dword ptr [EAX + 0x1d5e4]
                 d5 01 00
        080d489f 83 c2 02        ADD        EDX,0x2
        080d48a2 89 90 e4        MOV        dword ptr [EAX + 0x1d5e4],EDX
                 d5 01 00
        080d48a8 c7 80 e8        MOV        dword ptr [EAX + 0x1d5e8],0x0
                 d5 01 00
                 00 00 00 00
        080d48b2 05 e8 d5        ADD        EAX,0x1d5e8
                 01 00
        080d48b7 50              PUSH       EAX
        080d48b8 68 c3 d6        PUSH       s_precache_0827d6c3                              = "precache"
                 27 08
        080d48bd 55              PUSH       EBP
        080d48be e8 5d 7b        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d48c3 83 c4 0c        ADD        ESP,0xc
        080d48c6 56              PUSH       ESI
        080d48c7 68 cc d6        PUSH       s_bufferedread_0827d6cc                          = "bufferedread"
                 27 08
        080d48cc 55              PUSH       EBP
        080d48cd e8 4e 7b        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d48d2 83 c4 10        ADD        ESP,0x10
        080d48d5 85 c0           TEST       EAX,EAX
        080d48d7 74 2b           JZ         LAB_080d4904
        080d48d9 83 ec 0c        SUB        ESP,0xc
        080d48dc 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_130]
        080d48e0 50              PUSH       EAX
        080d48e1 e8 4a 76        CALL       SpriteSetBufReadMode                             undefined SpriteSetBufReadMode()
                 f8 ff
        080d48e6 5f              POP        EDI
        080d48e7 8b 74 24 18     MOV        ESI=>local_130,dword ptr [ESP + 0x18]
        080d48eb 56              PUSH       ESI
        080d48ec e8 8f 1e        CALL       SndSetBufReadMode                                undefined SndSetBufReadMode()
                 f8 ff
        080d48f1 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d48f7 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_130]
        080d48fb 83 c4 10        ADD        ESP,0x10
        080d48fe 89 82 ec        MOV        dword ptr [EDX + 0x1d5ec],EAX
                 d5 01 00
                             LAB_080d4904                                    XREF[1]:     080d48d7(j)
        080d4904 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4909 51              PUSH       ECX
        080d490a 05 f0 d5        ADD        EAX,0x1d5f0
                 01 00
        080d490f 50              PUSH       EAX
        080d4910 68 d9 d6        PUSH       s_unloadsystem_0827d6d9                          = "unloadsystem"
                 27 08
        080d4915 55              PUSH       EBP
        080d4916 e8 05 7b        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d491b 83 c4 0c        ADD        ESP,0xc
        080d491e a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4923 05 f4 d5        ADD        EAX,0x1d5f4
                 01 00
        080d4928 50              PUSH       EAX
        080d4929 68 e6 d6        PUSH       s_pauseondefocus_0827d6e6                        = "pauseondefocus"
                 27 08
        080d492e 55              PUSH       EBP
        080d492f e8 ec 7a        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4934 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4939 83 c4 10        ADD        ESP,0x10
        080d493c 8b 90 f4        MOV        EDX,dword ptr [EAX + 0x1d5f4]
                 d5 01 00
        080d4942 85 d2           TEST       EDX,EDX
        080d4944 74 0a           JZ         LAB_080d4950
        080d4946 c7 80 b8        MOV        dword ptr [EAX + 0x1d5b8],0x1
                 d5 01 00
                 01 00 00 00
                             LAB_080d4950                                    XREF[1]:     080d4944(j)
        080d4950 50              PUSH       EAX
        080d4951 8d 44 24 20     LEA        EAX=>local_120,[ESP + 0x20]
        080d4955 8d 54 24 14     LEA        EDX=>local_12c,[ESP + 0x14]
        080d4959 50              PUSH       EAX
        080d495a 8d 44 24 20     LEA        EAX=>local_124,[ESP + 0x20]
        080d495e 50              PUSH       EAX
        080d495f 52              PUSH       EDX
        080d4960 8d 44 24 24     LEA        EAX=>local_128,[ESP + 0x24]
        080d4964 50              PUSH       EAX
        080d4965 68 f5 d6        PUSH       s_%i,%i,%i,%x_0827d6f5                           = "%i,%i,%i,%x"
                 27 08
        080d496a 68 01 d7        PUSH       s_expires_0827d701                               = "expires"
                 27 08
        080d496f 55              PUSH       EBP
        080d4970 e8 eb 7a        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d4975 83 c4 20        ADD        ESP,0x20
        080d4978 83 f8 04        CMP        EAX,0x4
        080d497b 75 58           JNZ        LAB_080d49d5
        080d497d 8b 74 24 10     MOV        ESI,dword ptr [ESP + local_12c]
        080d4981 8b 7c 24 14     MOV        EDI,dword ptr [ESP + local_128]
        080d4985 89 f2           MOV        EDX,ESI
        080d4987 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_124]
        080d498b 31 fa           XOR        EDX,EDI
        080d498d a1 7c 7a        MOV        EAX,[MUGENDATE_M]                                = 00000004h
                 28 08
        080d4992 0f af d1        IMUL       EDX,ECX
        080d4995 33 05 80        XOR        EAX,dword ptr [MUGENDATE_D]                      = 0000000Eh
                 7a 28 08
        080d499b 29 c2           SUB        EDX,EAX
        080d499d a1 78 7a        MOV        EAX,[MUGENDATE_Y]                                = 000007D2h
                 28 08
        080d49a2 31 c2           XOR        EDX,EAX
        080d49a4 89 d0           MOV        EAX,EDX
        080d49a6 85 d2           TEST       EDX,EDX
        080d49a8 79 06           JNS        LAB_080d49b0
        080d49aa 8d 82 ff        LEA        EAX,[EDX + 0xffff]
                 ff 00 00
                             LAB_080d49b0                                    XREF[1]:     080d49a8(j)
        080d49b0 25 00 00        AND        EAX,0xffff0000
                 ff ff
        080d49b5 29 c2           SUB        EDX,EAX
        080d49b7 89 d0           MOV        EAX,EDX
        080d49b9 89 44 24 0c     MOV        dword ptr [ESP + local_130],EAX
        080d49bd 39 44 24 1c     CMP        dword ptr [ESP + local_120],EAX
        080d49c1 75 12           JNZ        LAB_080d49d5
        080d49c3 89 35 8c        MOV        dword ptr [MUGENEXPDATE_D],ESI                   = 00000001h
                 7a 28 08
        080d49c9 89 3d 88        MOV        dword ptr [MUGENEXPDATE_M],EDI                   = 00000007h
                 7a 28 08
        080d49cf 89 0d 84        MOV        dword ptr [MUGENEXPDATE_Y],ECX                   = 000007D2h
                 7a 28 08
                             LAB_080d49d5                                    XREF[2]:     080d497b(j), 080d49c1(j)
        080d49d5 56              PUSH       ESI
        080d49d6 56              PUSH       ESI
        080d49d7 68 5f 7b        PUSH       s_Arcade_08277b5a+5                              = "Arcade"
                 27 08
        080d49dc 55              PUSH       EBP
        080d49dd e8 9e 73        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d49e2 83 c4 10        ADD        ESP,0x10
        080d49e5 40              INC        EAX
        080d49e6 75 18           JNZ        LAB_080d4a00
        080d49e8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d49ed 51              PUSH       ECX
        080d49ee 05 48 07        ADD        EAX,0x20748
                 02 00
        080d49f3 51              PUSH       ECX
        080d49f4 68 09 d7        PUSH       s_Can't_load_arcade_config._0827d709             = "Can't load arcade config."
                 27 08
        080d49f9 e9 75 02        JMP        LAB_080d4c73
                 00 00
        080d49fe 89              ??         89h
        080d49ff f6              ??         F6h
                             LAB_080d4a00                                    XREF[1]:     080d49e6(j)
        080d4a00 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4a05 52              PUSH       EDX
        080d4a06 05 f8 d5        ADD        EAX,0x1d5f8
                 01 00
        080d4a0b 50              PUSH       EAX
        080d4a0c 68 23 d7        PUSH       s_ai.randomcolor_0827d723                        = "ai.randomcolor"
                 27 08
        080d4a11 55              PUSH       EBP
        080d4a12 e8 09 7a        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4a17 31 c0           XOR        EAX,EAX
        080d4a19 c7 44 24        MOV        dword ptr [ESP + local_130],0x0
                 1c 00 00
                 00 00
        080d4a21 83 c4 10        ADD        ESP,0x10
        080d4a24 8d 74 24 20     LEA        ESI=>local_11c,[ESP + 0x20]
                             LAB_080d4a28                                    XREF[1]:     080d4ad7(j)
        080d4a28 83 f8 01        CMP        EAX,0x1
        080d4a2b 74 24           JZ         LAB_080d4a51
        080d4a2d 83 f8 01        CMP        EAX,0x1
        080d4a30 7f 06           JG         LAB_080d4a38
        080d4a32 85 c0           TEST       EAX,EAX
        080d4a34 74 0a           JZ         LAB_080d4a40
        080d4a36 eb 3d           JMP        LAB_080d4a75
                             LAB_080d4a38                                    XREF[1]:     080d4a30(j)
        080d4a38 83 f8 02        CMP        EAX,0x2
        080d4a3b 74 25           JZ         LAB_080d4a62
        080d4a3d eb 36           JMP        LAB_080d4a75
        080d4a3f 90              ??         90h
                             LAB_080d4a40                                    XREF[1]:     080d4a34(j)
        080d4a40 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4a45 bb 9b d0        MOV        EBX,s_arcade_0827d097+4                          = "arcade"
                 27 08
        080d4a4a 05 00 d6        ADD        EAX,0x1d600
                 01 00
        080d4a4f eb 20           JMP        LAB_080d4a71
                             LAB_080d4a51                                    XREF[1]:     080d4a2b(j)
        080d4a51 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4a56 bb da b9        MOV        EBX,s_team_0827b9d4+6                            = "team"
                 27 08
        080d4a5b 05 10 d6        ADD        EAX,0x1d610
                 01 00
        080d4a60 eb 0f           JMP        LAB_080d4a71
                             LAB_080d4a62                                    XREF[1]:     080d4a3b(j)
        080d4a62 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4a67 bb b6 d0        MOV        EBX,s_survival_0827d0b6                          = "survival"
                 27 08
        080d4a6c 05 20 d6        ADD        EAX,0x1d620
                 01 00
                             LAB_080d4a71                                    XREF[2]:     080d4a4f(j), 080d4a60(j)
        080d4a71 89 44 24 08     MOV        dword ptr [ESP + local_134],EAX
                             LAB_080d4a75                                    XREF[2]:     080d4a36(j), 080d4a3d(j)
        080d4a75 50              PUSH       EAX
        080d4a76 53              PUSH       EBX=>s_arcade_0827d097+4                         = "team"
                                                                                             = "arcade"
                                                                                             = "survival"
        080d4a77 68 32 d7        PUSH       s_%s.AIramp.start_0827d732                       = "%s.AIramp.start"
                 27 08
        080d4a7c 56              PUSH       ESI
        080d4a7d e8 9e 03        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4a82 5f              POP        EDI
        080d4a83 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_134]
        080d4a87 83 c0 04        ADD        EAX,0x4
        080d4a8a 50              PUSH       EAX
        080d4a8b 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_134]
        080d4a8f 51              PUSH       ECX
        080d4a90 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d4a95 56              PUSH       ESI
        080d4a96 55              PUSH       EBP
        080d4a97 e8 c4 79        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d4a9c 83 c4 1c        ADD        ESP,0x1c
        080d4a9f 53              PUSH       EBX=>s_arcade_0827d097+4                         = "arcade"
        080d4aa0 68 42 d7        PUSH       s_%s.AIramp.end_0827d742                         = "%s.AIramp.end"
                 27 08
        080d4aa5 56              PUSH       ESI
        080d4aa6 e8 75 03        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4aab 5a              POP        EDX
        080d4aac 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_134]
        080d4ab0 83 c0 0c        ADD        EAX,0xc
        080d4ab3 50              PUSH       EAX
        080d4ab4 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_134]
        080d4ab8 83 c0 08        ADD        EAX,0x8
        080d4abb 50              PUSH       EAX
        080d4abc 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        080d4ac1 56              PUSH       ESI
        080d4ac2 55              PUSH       EBP
        080d4ac3 e8 98 79        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d4ac8 83 c4 20        ADD        ESP,0x20
        080d4acb 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_130]
        080d4acf 40              INC        EAX
        080d4ad0 89 44 24 0c     MOV        dword ptr [ESP + local_130],EAX
        080d4ad4 83 f8 02        CMP        EAX,0x2
        080d4ad7 0f 8e 4b        JLE        LAB_080d4a28
                 ff ff ff
        080d4add 50              PUSH       EAX
        080d4ade 50              PUSH       EAX
        080d4adf 68 50 d7        PUSH       s_Input_0827d750                                 = "Input"
                 27 08
        080d4ae4 55              PUSH       EBP
        080d4ae5 e8 96 72        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d4aea 83 c4 10        ADD        ESP,0x10
        080d4aed 40              INC        EAX
        080d4aee 75 16           JNZ        LAB_080d4b06
        080d4af0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4af5 55              PUSH       EBP
        080d4af6 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4afb 55              PUSH       EBP
        080d4afc 68 56 d7        PUSH       s_Can't_load_input_config._0827d756              = "Can't load input config."
                 27 08
        080d4b01 e9 6d 01        JMP        LAB_080d4c73
                 00 00
                             LAB_080d4b06                                    XREF[1]:     080d4aee(j)
        080d4b06 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4b0b 57              PUSH       EDI
        080d4b0c 05 24 ce        ADD        EAX,0x1ce24
                 01 00
        080d4b11 50              PUSH       EAX
        080d4b12 68 6f d7        PUSH       s_p1.usekeyboard_0827d76f                        = "p1.usekeyboard"
                 27 08
        080d4b17 55              PUSH       EBP
        080d4b18 e8 03 79        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4b1d 83 c4 0c        ADD        ESP,0xc
        080d4b20 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4b25 05 28 ce        ADD        EAX,0x1ce28
                 01 00
        080d4b2a 50              PUSH       EAX
        080d4b2b 68 7e d7        PUSH       s_p2.usekeyboard_0827d77e                        = "p2.usekeyboard"
                 27 08
        080d4b30 55              PUSH       EBP
        080d4b31 e8 ea 78        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4b36 83 c4 0c        ADD        ESP,0xc
        080d4b39 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4b3e 05 34 ce        ADD        EAX,0x1ce34
                 01 00
        080d4b43 50              PUSH       EAX
        080d4b44 68 8d d7        PUSH       s_p1.joystick.type_0827d78d                      = "p1.joystick.type"
                 27 08
        080d4b49 55              PUSH       EBP
        080d4b4a e8 d1 78        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4b4f 83 c4 0c        ADD        ESP,0xc
        080d4b52 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4b57 05 38 ce        ADD        EAX,0x1ce38
                 01 00
        080d4b5c 50              PUSH       EAX
        080d4b5d 68 9e d7        PUSH       s_p2.joystick.type_0827d79e                      = "p2.joystick.type"
                 27 08
        080d4b62 55              PUSH       EBP
        080d4b63 e8 b8 78        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4b68 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d4b6e 83 c4 10        ADD        ESP,0x10
        080d4b71 31 c0           XOR        EAX,EAX
        080d4b73 8b 9a 38        MOV        EBX,dword ptr [EDX + 0x1ce38]
                 ce 01 00
        080d4b79 8b b2 34        MOV        ESI,dword ptr [EDX + 0x1ce34]
                 ce 01 00
        080d4b7f 85 f6           TEST       ESI,ESI
        080d4b81 0f 95 c0        SETNZ      AL
        080d4b84 31 c9           XOR        ECX,ECX
        080d4b86 85 db           TEST       EBX,EBX
        080d4b88 0f 95 c1        SETNZ      CL
        080d4b8b 89 82 2c        MOV        dword ptr [EDX + 0x1ce2c],EAX
                 ce 01 00
        080d4b91 89 8a 30        MOV        dword ptr [EDX + 0x1ce30],ECX
                 ce 01 00
        080d4b97 31 db           XOR        EBX,EBX
        080d4b99 85 c0           TEST       EAX,EAX
        080d4b9b 75 04           JNZ        LAB_080d4ba1
        080d4b9d 85 c9           TEST       ECX,ECX
        080d4b9f 74 05           JZ         LAB_080d4ba6
                             LAB_080d4ba1                                    XREF[1]:     080d4b9b(j)
        080d4ba1 bb 01 00        MOV        EBX,0x1
                 00 00
                             LAB_080d4ba6                                    XREF[1]:     080d4b9f(j)
        080d4ba6 89 9a 3c        MOV        dword ptr [EDX + 0x1ce3c],EBX
                 ce 01 00
        080d4bac 50              PUSH       EAX
        080d4bad a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4bb2 05 3c ce        ADD        EAX,0x1ce3c
                 01 00
        080d4bb7 50              PUSH       EAX
        080d4bb8 68 55 af        PUSH       s_forcefeedback_0827af55                         = "forcefeedback"
                 27 08
        080d4bbd 55              PUSH       EBP
        080d4bbe e8 5d 78        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4bc3 83 c4 0c        ADD        ESP,0xc
        080d4bc6 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4bcb 05 40 ce        ADD        EAX,0x1ce40
                 01 00
        080d4bd0 50              PUSH       EAX
        080d4bd1 68 af d7        PUSH       s_psxdelay_0827d7af                              = "psxdelay"
                 27 08
        080d4bd6 55              PUSH       EBP
        080d4bd7 e8 44 78        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4bdc a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4be1 83 c4 10        ADD        ESP,0x10
        080d4be4 8b b8 24        MOV        EDI,dword ptr [EAX + 0x1ce24]
                 ce 01 00
        080d4bea 85 ff           TEST       EDI,EDI
        080d4bec 74 37           JZ         LAB_080d4c25
        080d4bee 05 84 cc        ADD        EAX,0x1cc84
                 01 00
        080d4bf3 56              PUSH       ESI
        080d4bf4 68 b8 d7        PUSH       s_p1_keys_0827d7b8                               = "p1 keys"
                 27 08
        080d4bf9 50              PUSH       EAX
        080d4bfa 55              PUSH       EBP
        080d4bfb e8 80 08        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d4c00 83 c4 10        ADD        ESP,0x10
        080d4c03 85 c0           TEST       EAX,EAX
        080d4c05 75 19           JNZ        LAB_080d4c20
        080d4c07 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4c0c 53              PUSH       EBX
        080d4c0d 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4c12 53              PUSH       EBX
        080d4c13 68 c0 d7        PUSH       s_Can't_read_p1_key_config._0827d7c0             = "Can't read p1 key config."
                 27 08
        080d4c18 eb 59           JMP        LAB_080d4c73
        080d4c1a 8d              ??         8Dh
        080d4c1b b6              ??         B6h
        080d4c1c 00              ??         00h
        080d4c1d 00              ??         00h
        080d4c1e 00              ??         00h
        080d4c1f 00              ??         00h
                             LAB_080d4c20                                    XREF[1]:     080d4c05(j)
        080d4c20 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4c25                                    XREF[1]:     080d4bec(j)
        080d4c25 05 84 cc        ADD        EAX,0x1cc84
                 01 00
        080d4c2a 51              PUSH       ECX
        080d4c2b 51              PUSH       ECX
        080d4c2c 68 00 01        PUSH       0x100
                 00 00
        080d4c31 50              PUSH       EAX
        080d4c32 e8 69 0a        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4c37 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4c3c 83 c4 10        ADD        ESP,0x10
        080d4c3f 8b 90 28        MOV        EDX,dword ptr [EAX + 0x1ce28]
                 ce 01 00
        080d4c45 85 d2           TEST       EDX,EDX
        080d4c47 74 3f           JZ         LAB_080d4c88
        080d4c49 05 b8 cc        ADD        EAX,0x1ccb8
                 01 00
        080d4c4e 57              PUSH       EDI
        080d4c4f 68 da d7        PUSH       s_p2_keys_0827d7da                               = "p2 keys"
                 27 08
        080d4c54 50              PUSH       EAX
        080d4c55 55              PUSH       EBP
        080d4c56 e8 25 08        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d4c5b 83 c4 10        ADD        ESP,0x10
        080d4c5e 85 c0           TEST       EAX,EAX
        080d4c60 75 21           JNZ        LAB_080d4c83
        080d4c62 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4c67 56              PUSH       ESI
        080d4c68 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4c6d 56              PUSH       ESI
        080d4c6e 68 e2 d7        PUSH       s_Can't_read_p2_key_config._0827d7e2             = "Can't read p2 key config."
                 27 08
                             LAB_080d4c73                                    XREF[15]:    080d3ec1(j), 080d3eea(j),
                                                                                          080d3f17(j), 080d3f46(j),
                                                                                          080d3ffb(j), 080d4297(j),
                                                                                          080d4325(j), 080d4503(j),
                                                                                          080d452d(j), 080d47aa(j),
                                                                                          080d4839(j), 080d4864(j),
                                                                                          080d49f9(j), 080d4b01(j),
                                                                                          080d4c18(j)
        080d4c73 50              PUSH       EAX
        080d4c74 e8 a7 01        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4c79 83 c4 10        ADD        ESP,0x10
        080d4c7c 31 c0           XOR        EAX,EAX
        080d4c7e e9 06 02        JMP        LAB_080d4e89
                 00 00
                             LAB_080d4c83                                    XREF[1]:     080d4c60(j)
        080d4c83 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4c88                                    XREF[1]:     080d4c47(j)
        080d4c88 05 b8 cc        ADD        EAX,0x1ccb8
                 01 00
        080d4c8d 53              PUSH       EBX
        080d4c8e 53              PUSH       EBX
        080d4c8f 68 00 01        PUSH       0x100
                 00 00
        080d4c94 50              PUSH       EAX
        080d4c95 e8 06 0a        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4c9a 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d4ca0 b9 0d 00        MOV        ECX,0xd
                 00 00
        080d4ca5 fc              CLD
        080d4ca6 c7 86 c0        MOV        dword ptr [ESI + 0x1cdc0],0x1
                 cd 01 00
                 01 00 00 00
        080d4cb0 c7 86 c8        MOV        dword ptr [ESI + 0x1cdc8],0x2
                 cd 01 00
                 02 00 00 00
        080d4cba c7 86 cc        MOV        dword ptr [ESI + 0x1cdcc],0x3
                 cd 01 00
                 03 00 00 00
        080d4cc4 c7 86 c4        MOV        dword ptr [ESI + 0x1cdc4],0x4
                 cd 01 00
                 04 00 00 00
        080d4cce 8d be f0        LEA        EDI,[ESI + 0x1cdf0]
                 cd 01 00
        080d4cd4 81 c6 bc        ADD        ESI,0x1cdbc
                 cd 01 00
        080d4cda f3 a5           MOVSD.REP  ES:EDI,ESI
        080d4cdc 5a              POP        EDX
        080d4cdd 59              POP        ECX
        080d4cde 68 fc d7        PUSH       s_P1_joystick_0827d7fc                           = "P1 joystick"
                 27 08
        080d4ce3 8d 5c 24 2c     LEA        EBX=>local_11c,[ESP + 0x2c]
        080d4ce7 53              PUSH       EBX
        080d4ce8 e8 33 01        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4ced 83 c4 0c        ADD        ESP,0xc
        080d4cf0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4cf5 05 bc cd        ADD        EAX,0x1cdbc
                 01 00
        080d4cfa 53              PUSH       EBX
        080d4cfb 50              PUSH       EAX
        080d4cfc 55              PUSH       EBP
        080d4cfd e8 7e 07        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d4d02 83 c4 10        ADD        ESP,0x10
        080d4d05 85 c0           TEST       EAX,EAX
        080d4d07 74 10           JZ         LAB_080d4d19
        080d4d09 50              PUSH       EAX
        080d4d0a 50              PUSH       EAX
        080d4d0b 53              PUSH       EBX
        080d4d0c 68 a0 da        PUSH       s_Loading_button_config_for_%s._0827daa0         = "Loading button config for %s.
                 27 08
        080d4d11 e8 ba 00        CALL       printf                                           int printf(char * __format, ...)
                 10 00
        080d4d16 83 c4 10        ADD        ESP,0x10
                             LAB_080d4d19                                    XREF[1]:     080d4d07(j)
        080d4d19 57              PUSH       EDI
        080d4d1a 57              PUSH       EDI
        080d4d1b 68 08 d8        PUSH       s_P2_joystick_0827d808                           = "P2 joystick"
                 27 08
        080d4d20 53              PUSH       EBX
        080d4d21 e8 fa 00        CALL       sprintf                                          int sprintf(char * __s, char * _
                 10 00
        080d4d26 83 c4 0c        ADD        ESP,0xc
        080d4d29 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4d2e 05 f0 cd        ADD        EAX,0x1cdf0
                 01 00
        080d4d33 53              PUSH       EBX
        080d4d34 50              PUSH       EAX
        080d4d35 55              PUSH       EBP
        080d4d36 e8 45 07        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d4d3b 83 c4 10        ADD        ESP,0x10
        080d4d3e 85 c0           TEST       EAX,EAX
        080d4d40 74 10           JZ         LAB_080d4d52
        080d4d42 56              PUSH       ESI
        080d4d43 56              PUSH       ESI
        080d4d44 53              PUSH       EBX
        080d4d45 68 a0 da        PUSH       s_Loading_button_config_for_%s._0827daa0         = "Loading button config for %s.
                 27 08
        080d4d4a e8 81 00        CALL       printf                                           int printf(char * __format, ...)
                 10 00
        080d4d4f 83 c4 10        ADD        ESP,0x10
                             LAB_080d4d52                                    XREF[1]:     080d4d40(j)
        080d4d52 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d4d58 b9 0d 00        MOV        ECX,0xd
                 00 00
        080d4d5d fc              CLD
        080d4d5e 8d be 54        LEA        EDI,[ESI + 0x1cd54]
                 cd 01 00
        080d4d64 81 c6 bc        ADD        ESI,0x1cdbc
                 cd 01 00
        080d4d6a f3 a5           MOVSD.REP  ES:EDI,ESI
        080d4d6c 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d4d72 b9 0d 00        MOV        ECX,0xd
                 00 00
        080d4d77 8d be 88        LEA        EDI,[ESI + 0x1cd88]
                 cd 01 00
        080d4d7d 81 c6 f0        ADD        ESI,0x1cdf0
                 cd 01 00
        080d4d83 f3 a5           MOVSD.REP  ES:EDI,ESI
        080d4d85 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4d8a 8b 90 2c        MOV        EDX,dword ptr [EAX + 0x1ce2c]
                 ce 01 00
        080d4d90 85 d2           TEST       EDX,EDX
        080d4d92 75 14           JNZ        LAB_080d4da8
        080d4d94 8d b8 54        LEA        EDI,[EAX + 0x1cd54]
                 cd 01 00
        080d4d9a 89 d0           MOV        EAX,EDX
        080d4d9c b9 0d 00        MOV        ECX,0xd
                 00 00
        080d4da1 f3 ab           STOSD.REP  ES:EDI
        080d4da3 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4da8                                    XREF[1]:     080d4d92(j)
        080d4da8 8b 90 30        MOV        EDX,dword ptr [EAX + 0x1ce30]
                 ce 01 00
        080d4dae 85 d2           TEST       EDX,EDX
        080d4db0 75 15           JNZ        LAB_080d4dc7
        080d4db2 fc              CLD
        080d4db3 8d b8 88        LEA        EDI,[EAX + 0x1cd88]
                 cd 01 00
        080d4db9 89 d0           MOV        EAX,EDX
        080d4dbb b9 0d 00        MOV        ECX,0xd
                 00 00
        080d4dc0 f3 ab           STOSD.REP  ES:EDI
        080d4dc2 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080d4dc7                                    XREF[1]:     080d4db0(j)
        080d4dc7 05 54 cd        ADD        EAX,0x1cd54
                 01 00
        080d4dcc 53              PUSH       EBX
        080d4dcd 53              PUSH       EBX
        080d4dce 68 80 00        PUSH       0x80
                 00 00
        080d4dd3 50              PUSH       EAX
        080d4dd4 e8 c7 08        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4dd9 5a              POP        EDX
        080d4dda a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4ddf 59              POP        ECX
        080d4de0 05 88 cd        ADD        EAX,0x1cd88
                 01 00
        080d4de5 68 80 00        PUSH       0x80
                 00 00
        080d4dea 50              PUSH       EAX
        080d4deb e8 b0 08        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4df0 5f              POP        EDI
        080d4df1 58              POP        EAX
        080d4df2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4df7 05 bc cd        ADD        EAX,0x1cdbc
                 01 00
        080d4dfc 68 80 00        PUSH       0x80
                 00 00
        080d4e01 50              PUSH       EAX
        080d4e02 e8 99 08        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4e07 5b              POP        EBX
        080d4e08 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4e0d 5e              POP        ESI
        080d4e0e 05 f0 cd        ADD        EAX,0x1cdf0
                 01 00
        080d4e13 68 80 00        PUSH       0x80
                 00 00
        080d4e18 50              PUSH       EAX
        080d4e19 e8 82 08        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d4e1e 89 2c 24        MOV        dword ptr [ESP]=>local_14c,EBP
        080d4e21 e8 da 63        CALL       TPFree                                           undefined TPFree()
                 fa ff
        080d4e26 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4e2b 83 c4 10        ADD        ESP,0x10
        080d4e2e 8b 88 e0        MOV        ECX,dword ptr [EAX + 0x1d5e0]
                 d5 01 00
        080d4e34 85 c9           TEST       ECX,ECX
        080d4e36 74 4c           JZ         LAB_080d4e84
        080d4e38 83 ec 0c        SUB        ESP,0xc
        080d4e3b 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 4c 01 00 00
        080d4e42 52              PUSH       EDX
        080d4e43 e8 f8 69        CALL       TPReadFileForWrite                               undefined TPReadFileForWrite()
                 fa ff
        080d4e48 89 c5           MOV        EBP,EAX
        080d4e4a 83 c4 10        ADD        ESP,0x10
        080d4e4d 85 ed           TEST       EBP,EBP
        080d4e4f 74 33           JZ         LAB_080d4e84
        080d4e51 50              PUSH       EAX
        080d4e52 50              PUSH       EAX
        080d4e53 68 30 97        PUSH       s_Config_08279726+10                             = "Config"
                 27 08
        080d4e58 55              PUSH       EBP
        080d4e59 e8 22 6f        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d4e5e 83 c4 0c        ADD        ESP,0xc
        080d4e61 68 b1 b1        PUSH       s_0_0827b19d+20                                  = "0"
                 27 08
        080d4e66 68 14 d8        PUSH       s_FirstRun_0827d814                              = "FirstRun"
                 27 08
        080d4e6b 55              PUSH       EBP
        080d4e6c e8 df 79        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d4e71 5e              POP        ESI
        080d4e72 5f              POP        EDI
        080d4e73 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0x4]]
                 48 01 00 00
        080d4e7a 53              PUSH       EBX
        080d4e7b 55              PUSH       EBP
        080d4e7c e8 8f 6e        CALL       TPWriteFile                                      undefined TPWriteFile()
                 fa ff
        080d4e81 83 c4 10        ADD        ESP,0x10
                             LAB_080d4e84                                    XREF[2]:     080d4e36(j), 080d4e4f(j)
        080d4e84 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_080d4e89                                    XREF[1]:     080d4c7e(j)
        080d4e89 81 c4 2c        ADD        ESP,0x12c
                 01 00 00
        080d4e8f 5b              POP        EBX
        080d4e90 5e              POP        ESI
        080d4e91 5f              POP        EDI
        080d4e92 5d              POP        EBP
        080d4e93 c3              RET
