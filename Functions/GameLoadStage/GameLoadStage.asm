                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoadStage()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0xdc]:1 local_dc                                XREF[1]:     0809dc9d(*)
             undefined4        Stack[-0xf0]:4 local_f0                                XREF[1]:     0809e560(R)
             undefined4        Stack[-0xf4]:4 local_f4                                XREF[1]:     0809e553(R)
             undefined4        Stack[-0xf8]:4 local_f8                                XREF[1]:     0809e546(R)
             undefined4        Stack[-0xfc]:4 local_fc                                XREF[2]:     0809e4ce(*),
                                                                                                   0809e539(R)
             undefined4        Stack[-0x100   local_100                               XREF[1]:     0809e52c(R)
             undefined4        Stack[-0x110   local_110                               XREF[1]:     0809e5b7(R)
             undefined4        Stack[-0x114   local_114                               XREF[1]:     0809e5ad(R)
             undefined4        Stack[-0x118   local_118                               XREF[1]:     0809e5a3(R)
             undefined4        Stack[-0x11c   local_11c                               XREF[2]:     0809e4d5(*),
                                                                                                   0809e599(R)
             undefined4        Stack[-0x120   local_120                               XREF[4]:     0809dc88(W),
                                                                                                   0809e2c0(*),
                                                                                                   0809e340(R),
                                                                                                   0809e58f(R)
             undefined4        Stack[-0x124   local_124                               XREF[3]:     0809dc80(W),
                                                                                                   0809e2c5(*),
                                                                                                   0809e330(R)
             undefined4        Stack[-0x128   local_128                               XREF[3]:     0809dc78(W),
                                                                                                   0809e2ca(*),
                                                                                                   0809e32c(R)
             undefined4        Stack[-0x12c   local_12c                               XREF[3]:     0809dc64(W),
                                                                                                   0809dd15(R),
                                                                                                   0809e004(R)
             undefined4        Stack[-0x134   local_134                               XREF[11]:    0809dca4(W),
                                                                                                   0809dcaf(R),
                                                                                                   0809dccd(R),
                                                                                                   0809dcfb(R),
                                                                                                   0809de55(R),
                                                                                                   0809dfe9(R),
                                                                                                   0809e074(R),
                                                                                                   0809e10d(R),
                                                                                                   0809e161(R),
                                                                                                   0809e1b9(R),
                                                                                                   0809e1e9(R)
             undefined4        Stack[-0x138   local_138                               XREF[2]:     0809de9c(W),
                                                                                                   0809df9e(R)
             undefined4        Stack[-0x13c   local_13c                               XREF[2]:     0809deb6(W),
                                                                                                   0809dfa2(R)
             undefined4        Stack[-0x140   local_140                               XREF[2]:     0809ded0(W),
                                                                                                   0809dfb2(R)
             undefined4        Stack[-0x144   local_144                               XREF[2]:     0809deea(W),
                                                                                                   0809dfa8(R)
             undefined4        Stack[-0x148   local_148                               XREF[2]:     0809df04(W),
                                                                                                   0809dfae(R)
             undefined4        Stack[-0x14c   local_14c                               XREF[2]:     0809df1e(W),
                                                                                                   0809dfb8(R)
             undefined4        Stack[-0x150   local_150                               XREF[2]:     0809df38(W),
                                                                                                   0809dfbe(R)
             undefined4        Stack[-0x154   local_154                               XREF[2]:     0809df52(W),
                                                                                                   0809dfc4(R)
             undefined4        Stack[-0x158   local_158                               XREF[2]:     0809df6c(W),
                                                                                                   0809dfca(R)
             undefined4        Stack[-0x15c   local_15c                               XREF[2]:     0809e0bc(W),
                                                                                                   0809e0f2(R)
             undefined4        Stack[-0x160   local_160                               XREF[2]:     0809e4d9(W),
                                                                                                   0809e517(R)
             undefined4        Stack[-0x170   local_170                               XREF[39]:    0809dc6d(W),
                                                                                                   0809dc74(R),
                                                                                                   0809dd74(R),
                                                                                                   0809dd8a(R),
                                                                                                   0809dda0(R),
                                                                                                   0809ddb6(R),
                                                                                                   0809ddcc(R),
                                                                                                   0809dde2(R),
                                                                                                   0809ddf8(R),
                                                                                                   0809de0e(R),
                                                                                                   0809de24(R),
                                                                                                   0809de71(R),
                                                                                                   0809de89(R),
                                                                                                   0809dea3(R),
                                                                                                   0809debd(R),
                                                                                                   0809ded7(R),
                                                                                                   0809def1(R),
                                                                                                   0809df0b(R),
                                                                                                   0809df25(R),
                                                                                                   0809df3f(R)
             undefined4        Stack[-0x18c   local_18c                               XREF[1]:     0809e312(*)
                             gcc2_compiled.                                  XREF[3]:     Entry Point(*),
                             GameLoadStage                                                GamePlay:0809d19a(c),
                                                                                          GameReloadStage:0809ed75(c)
        0809dc50 55              PUSH       EBP
        0809dc51 b9 35 04        MOV        ECX,0x435
                 00 00
        0809dc56 57              PUSH       EDI
        0809dc57 56              PUSH       ESI
        0809dc58 53              PUSH       EBX
        0809dc59 81 ec 74        SUB        ESP,0x174
                 01 00 00
        0809dc5f a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dc64 89 44 24 58     MOV        dword ptr [ESP + local_12c],EAX
        0809dc68 05 fc 41        ADD        EAX,0x41fc
                 00 00
        0809dc6d 89 44 24 14     MOV        dword ptr [ESP + local_170],EAX
        0809dc71 31 c0           XOR        EAX,EAX
        0809dc73 fc              CLD
        0809dc74 8b 7c 24 14     MOV        EDI,dword ptr [ESP + local_170]
        0809dc78 c7 44 24        MOV        dword ptr [ESP + local_128],0x0
                 5c 00 00
                 00 00
        0809dc80 c7 44 24        MOV        dword ptr [ESP + local_124],0x0
                 60 00 00
                 00 00
        0809dc88 c7 44 24        MOV        dword ptr [ESP + local_120],0x0
                 64 00 00
                 00 00
        0809dc90 f3 ab           STOSD.REP  ES:EDI
        0809dc92 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dc97 05 14 20        ADD        EAX,0x2014
                 00 00
        0809dc9c 50              PUSH       EAX
        0809dc9d 8d 84 24        LEA        EAX=>local_dc,[ESP + 0xac]
                 ac 00 00 00
        0809dca4 89 44 24 54     MOV        dword ptr [ESP + local_134],EAX
        0809dca8 50              PUSH       EAX
        0809dca9 e8 22 29        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809dcae 5f              POP        EDI
        0809dcaf 8b 74 24 54     MOV        ESI,dword ptr [ESP + local_134]
        0809dcb3 56              PUSH       ESI
        0809dcb4 e8 07 db        CALL       TPReadFile                                       undefined TPReadFile()
                 fd ff
        0809dcb9 89 c5           MOV        EBP,EAX
        0809dcbb 83 c4 10        ADD        ESP,0x10
        0809dcbe 85 ed           TEST       EBP,EBP
        0809dcc0 75 20           JNZ        LAB_0809dce2
        0809dcc2 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dcc7 53              PUSH       EBX
        0809dcc8 05 48 07        ADD        EAX,0x20748
                 02 00
        0809dccd 8b 4c 24 4c     MOV        ECX,dword ptr [ESP + local_134]
        0809dcd1 51              PUSH       ECX
        0809dcd2 68 e5 92        PUSH       s_Can't_open_stage:_%s_082792e5                  = "Can't open stage: %s"
                 27 08
        0809dcd7 50              PUSH       EAX
        0809dcd8 e8 43 71        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809dcdd e9 21 09        JMP        LAB_0809e603
                 00 00
                             LAB_0809dce2                                    XREF[1]:     0809dcc0(j)
        0809dce2 52              PUSH       EDX
        0809dce3 52              PUSH       EDX
        0809dce4 68 fa 92        PUSH       s_Camera_082792fa                                = "Camera"
                 27 08
        0809dce9 55              PUSH       EBP
        0809dcea e8 91 e0        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809dcef 83 c4 10        ADD        ESP,0x10
        0809dcf2 40              INC        EAX
        0809dcf3 75 20           JNZ        LAB_0809dd15
        0809dcf5 50              PUSH       EAX
        0809dcf6 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dcfb 8b 6c 24 4c     MOV        EBP,dword ptr [ESP + local_134]
        0809dcff 05 48 07        ADD        EAX,0x20748
                 02 00
        0809dd04 55              PUSH       EBP
        0809dd05 68 01 93        PUSH       s_Missing_camera_info:_%s_08279301               = "Missing camera info: %s"
                 27 08
        0809dd0a 50              PUSH       EAX
        0809dd0b e8 10 71        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809dd10 e9 ee 08        JMP        LAB_0809e603
                 00 00
                             LAB_0809dd15                                    XREF[1]:     0809dcf3(j)
        0809dd15 8b 54 24 50     MOV        EDX,dword ptr [ESP + local_12c]
        0809dd19 c7 82 20        MOV        dword ptr [EDX + 0x4220],0x0
                 42 00 00
                 00 00 00 00
        0809dd23 c7 82 1c        MOV        dword ptr [EDX + 0x421c],0x32
                 42 00 00
                 32 00 00 00
        0809dd2d c7 82 10        MOV        dword ptr [EDX + 0x4210],0xffffffe7
                 42 00 00
                 e7 ff ff ff
        0809dd37 c7 82 14        MOV        dword ptr [EDX + 0x4214],0x0
                 42 00 00
                 00 00 00 00
        0809dd41 c7 82 04        MOV        dword ptr [EDX + 0x4204],0x0
                 42 00 00
                 00 00 00 00
        0809dd4b c7 82 00        MOV        dword ptr [EDX + 0x4200],0x0
                 42 00 00
                 00 00 00 00
        0809dd55 c7 82 08        MOV        dword ptr [EDX + 0x4208],0xffffffb5
                 42 00 00
                 b5 ff ff ff
        0809dd5f c7 82 0c        MOV        dword ptr [EDX + 0x420c],0x4b
                 42 00 00
                 4b 00 00 00
        0809dd69 c7 82 18        MOV        dword ptr [EDX + 0x4218],0x3e4ccccd
                 42 00 00
                 cd cc 4c 3e
        0809dd73 57              PUSH       EDI
        0809dd74 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dd78 83 c0 0c        ADD        EAX,0xc
        0809dd7b 50              PUSH       EAX
        0809dd7c 68 19 93        PUSH       s_boundleft_08279319                             = "boundleft"
                 27 08
        0809dd81 55              PUSH       EBP
        0809dd82 e8 99 e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809dd87 83 c4 0c        ADD        ESP,0xc
        0809dd8a 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dd8e 83 c0 10        ADD        EAX,0x10
        0809dd91 50              PUSH       EAX
        0809dd92 68 23 93        PUSH       s_boundright_08279323                            = "boundright"
                 27 08
        0809dd97 55              PUSH       EBP
        0809dd98 e8 83 e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809dd9d 83 c4 0c        ADD        ESP,0xc
        0809dda0 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dda4 83 c0 04        ADD        EAX,0x4
        0809dda7 50              PUSH       EAX
        0809dda8 68 82 93        PUSH       s_startx_08279380+2                              = "startx"
                 27 08
        0809ddad 55              PUSH       EBP
        0809ddae e8 6d e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809ddb3 83 c4 0c        ADD        ESP,0xc
        0809ddb6 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809ddba 83 c0 08        ADD        EAX,0x8
        0809ddbd 50              PUSH       EAX
        0809ddbe 68 8b 93        PUSH       s_starty_08279389+2                              = "starty"
                 27 08
        0809ddc3 55              PUSH       EBP
        0809ddc4 e8 57 e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809ddc9 83 c4 0c        ADD        ESP,0xc
        0809ddcc 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809ddd0 83 c0 20        ADD        EAX,0x20
        0809ddd3 50              PUSH       EAX
        0809ddd4 68 ef 01        PUSH       s_tension_082801de+17                            = "tension"
                 28 08
        0809ddd9 55              PUSH       EBP
        0809ddda e8 41 e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809dddf 83 c4 0c        ADD        ESP,0xc
        0809dde2 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dde6 83 c0 24        ADD        EAX,0x24
        0809dde9 50              PUSH       EAX
        0809ddea 68 2e 93        PUSH       s_floortension_0827932e                          = "floortension"
                 27 08
        0809ddef 55              PUSH       EBP
        0809ddf0 e8 2b e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809ddf5 83 c4 0c        ADD        ESP,0xc
        0809ddf8 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809ddfc 83 c0 14        ADD        EAX,0x14
        0809ddff 50              PUSH       EAX
        0809de00 68 3b 93        PUSH       s_boundhigh_0827933b                             = "boundhigh"
                 27 08
        0809de05 55              PUSH       EBP
        0809de06 e8 15 e6        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809de0b 83 c4 0c        ADD        ESP,0xc
        0809de0e 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809de12 83 c0 18        ADD        EAX,0x18
        0809de15 50              PUSH       EAX
        0809de16 68 45 93        PUSH       s_boundlow_08279345                              = "boundlow"
                 27 08
        0809de1b 55              PUSH       EBP
        0809de1c e8 ff e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809de21 83 c4 0c        ADD        ESP,0xc
        0809de24 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809de28 83 c0 1c        ADD        EAX,0x1c
        0809de2b 50              PUSH       EAX
        0809de2c 68 4e 93        PUSH       s_verticalfollow_0827934e                        = "verticalfollow"
                 27 08
        0809de31 55              PUSH       EBP
        0809de32 e8 a9 e5        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fd ff
        0809de37 5b              POP        EBX
        0809de38 5e              POP        ESI
        0809de39 68 5d 93        PUSH       s_PlayerInfo_0827935d                            = "PlayerInfo"
                 27 08
        0809de3e 55              PUSH       EBP
        0809de3f e8 3c df        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809de44 83 c4 10        ADD        ESP,0x10
        0809de47 40              INC        EAX
        0809de48 75 26           JNZ        LAB_0809de70
        0809de4a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809de4f 51              PUSH       ECX
        0809de50 05 48 07        ADD        EAX,0x20748
                 02 00
        0809de55 8b 54 24 4c     MOV        EDX,dword ptr [ESP + local_134]
        0809de59 52              PUSH       EDX
        0809de5a 68 68 93        PUSH       s_Missing_player_info:_%s_08279368               = "Missing player info: %s"
                 27 08
        0809de5f 50              PUSH       EAX
        0809de60 e8 bb 6f        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809de65 e9 99 07        JMP        LAB_0809e603
                 00 00
        0809de6a 8d              ??         8Dh
        0809de6b b6              ??         B6h
        0809de6c 00              ??         00h
        0809de6d 00              ??         00h
        0809de6e 00              ??         00h
        0809de6f 00              ??         00h
                             LAB_0809de70                                    XREF[1]:     0809de48(j)
        0809de70 50              PUSH       EAX
        0809de71 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809de75 83 c0 28        ADD        EAX,0x28
        0809de78 50              PUSH       EAX
        0809de79 68 80 93        PUSH       s_p1startx_08279380                              = "p1startx"
                 27 08
        0809de7e 55              PUSH       EBP
        0809de7f e8 9c e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809de84 83 c4 0c        ADD        ESP,0xc
        0809de87 89 c3           MOV        EBX,EAX
        0809de89 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809de8d 83 c0 38        ADD        EAX,0x38
        0809de90 50              PUSH       EAX
        0809de91 68 89 93        PUSH       s_p1starty_08279389                              = "p1starty"
                 27 08
        0809de96 55              PUSH       EBP
        0809de97 e8 84 e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809de9c 89 44 24 54     MOV        dword ptr [ESP + local_138],EAX
        0809dea0 83 c4 0c        ADD        ESP,0xc
        0809dea3 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dea7 83 c0 48        ADD        EAX,0x48
        0809deaa 50              PUSH       EAX
        0809deab 68 92 93        PUSH       s_p1startz_08279392                              = "p1startz"
                 27 08
        0809deb0 55              PUSH       EBP
        0809deb1 e8 6a e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809deb6 89 44 24 50     MOV        dword ptr [ESP + local_13c],EAX
        0809deba 83 c4 0c        ADD        ESP,0xc
        0809debd 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dec1 83 c0 58        ADD        EAX,0x58
        0809dec4 50              PUSH       EAX
        0809dec5 68 9b 93        PUSH       s_p1facing_0827939b                              = "p1facing"
                 27 08
        0809deca 55              PUSH       EBP
        0809decb e8 50 e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809ded0 89 44 24 4c     MOV        dword ptr [ESP + local_140],EAX
        0809ded4 83 c4 0c        ADD        ESP,0xc
        0809ded7 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809dedb 83 c0 2c        ADD        EAX,0x2c
        0809dede 50              PUSH       EAX
        0809dedf 68 a4 93        PUSH       s_p2startx_082793a4                              = "p2startx"
                 27 08
        0809dee4 55              PUSH       EBP
        0809dee5 e8 36 e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809deea 89 44 24 48     MOV        dword ptr [ESP + local_144],EAX
        0809deee 83 c4 0c        ADD        ESP,0xc
        0809def1 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809def5 83 c0 3c        ADD        EAX,0x3c
        0809def8 50              PUSH       EAX
        0809def9 68 ad 93        PUSH       s_p2starty_082793ad                              = "p2starty"
                 27 08
        0809defe 55              PUSH       EBP
        0809deff e8 1c e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df04 89 44 24 44     MOV        dword ptr [ESP + local_148],EAX
        0809df08 83 c4 0c        ADD        ESP,0xc
        0809df0b 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df0f 83 c0 4c        ADD        EAX,0x4c
        0809df12 50              PUSH       EAX
        0809df13 68 b6 93        PUSH       s_p2startz_082793b6                              = "p2startz"
                 27 08
        0809df18 55              PUSH       EBP
        0809df19 e8 02 e5        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df1e 89 44 24 40     MOV        dword ptr [ESP + local_14c],EAX
        0809df22 83 c4 0c        ADD        ESP,0xc
        0809df25 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df29 83 c0 5c        ADD        EAX,0x5c
        0809df2c 50              PUSH       EAX
        0809df2d 68 01 bb        PUSH       s_p2facing_0827bafc+5                            = "p2facing"
                 27 08
        0809df32 55              PUSH       EBP
        0809df33 e8 e8 e4        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df38 89 44 24 3c     MOV        dword ptr [ESP + local_150],EAX
        0809df3c 83 c4 0c        ADD        ESP,0xc
        0809df3f 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df43 83 c0 68        ADD        EAX,0x68
        0809df46 50              PUSH       EAX
        0809df47 68 bf 93        PUSH       s_leftbound_082793bf                             = "leftbound"
                 27 08
        0809df4c 55              PUSH       EBP
        0809df4d e8 ce e4        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df52 89 44 24 38     MOV        dword ptr [ESP + local_154],EAX
        0809df56 83 c4 0c        ADD        ESP,0xc
        0809df59 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df5d 83 c0 6c        ADD        EAX,0x6c
        0809df60 50              PUSH       EAX
        0809df61 68 c9 93        PUSH       s_rightbound_082793c9                            = "rightbound"
                 27 08
        0809df66 55              PUSH       EBP
        0809df67 e8 b4 e4        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df6c 89 44 24 34     MOV        dword ptr [ESP + local_158],EAX
        0809df70 83 c4 0c        ADD        ESP,0xc
        0809df73 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df77 83 c0 70        ADD        EAX,0x70
        0809df7a 50              PUSH       EAX
        0809df7b 68 d4 93        PUSH       s_topbound_082793d4                              = "topbound"
                 27 08
        0809df80 55              PUSH       EBP
        0809df81 e8 9a e4        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df86 83 c4 0c        ADD        ESP,0xc
        0809df89 89 c6           MOV        ESI,EAX
        0809df8b 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809df8f 83 c0 74        ADD        EAX,0x74
        0809df92 50              PUSH       EAX
        0809df93 68 dd 93        PUSH       s_botbound_082793dd                              = "botbound"
                 27 08
        0809df98 55              PUSH       EBP
        0809df99 e8 82 e4        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809df9e 8b 7c 24 54     MOV        EDI,dword ptr [ESP + local_138]
        0809dfa2 8b 4c 24 50     MOV        ECX,dword ptr [ESP + local_13c]
        0809dfa6 21 fb           AND        EBX,EDI
        0809dfa8 8b 7c 24 48     MOV        EDI,dword ptr [ESP + local_144]
        0809dfac 21 cb           AND        EBX,ECX
        0809dfae 8b 4c 24 44     MOV        ECX,dword ptr [ESP + local_148]
        0809dfb2 8b 54 24 4c     MOV        EDX,dword ptr [ESP + local_140]
        0809dfb6 21 d3           AND        EBX,EDX
        0809dfb8 8b 54 24 40     MOV        EDX,dword ptr [ESP + local_14c]
        0809dfbc 21 fb           AND        EBX,EDI
        0809dfbe 8b 7c 24 3c     MOV        EDI,dword ptr [ESP + local_150]
        0809dfc2 21 cb           AND        EBX,ECX
        0809dfc4 8b 4c 24 38     MOV        ECX,dword ptr [ESP + local_154]
        0809dfc8 21 d3           AND        EBX,EDX
        0809dfca 8b 54 24 34     MOV        EDX,dword ptr [ESP + local_158]
        0809dfce 21 fb           AND        EBX,EDI
        0809dfd0 83 c4 10        ADD        ESP,0x10
        0809dfd3 21 cb           AND        EBX,ECX
        0809dfd5 21 d3           AND        EBX,EDX
        0809dfd7 21 f3           AND        EBX,ESI
        0809dfd9 21 c3           AND        EBX,EAX
        0809dfdb 4b              DEC        EBX
        0809dfdc 74 22           JZ         LAB_0809e000
        0809dfde a1 74 7a        MOV        EAX,[g]
                 28 08
        0809dfe3 57              PUSH       EDI
        0809dfe4 05 48 07        ADD        EAX,0x20748
                 02 00
        0809dfe9 8b 74 24 4c     MOV        ESI,dword ptr [ESP + local_134]
        0809dfed 56              PUSH       ESI
        0809dfee 68 e6 93        PUSH       s_Can't_read_player_info:_%s_082793e6            = "Can't read player info: %s"
                 27 08
        0809dff3 50              PUSH       EAX
        0809dff4 e8 27 6e        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809dff9 e9 05 06        JMP        LAB_0809e603
                 00 00
        0809dffe 89              ??         89h
        0809dfff f6              ??         F6h
                             LAB_0809e000                                    XREF[1]:     0809dfdc(j)
        0809e000 8b 7c 24 0c     MOV        EDI,dword ptr [ESP + local_170]
        0809e004 8b 54 24 50     MOV        EDX,dword ptr [ESP + local_12c]
        0809e008 8b 47 28        MOV        EAX,dword ptr [EDI + 0x28]
        0809e00b 83 e8 19        SUB        EAX,0x19
        0809e00e 89 82 2c        MOV        dword ptr [EDX + 0x422c],EAX
                 42 00 00
        0809e014 8b 47 38        MOV        EAX,dword ptr [EDI + 0x38]
        0809e017 89 82 3c        MOV        dword ptr [EDX + 0x423c],EAX
                 42 00 00
        0809e01d 8b 47 48        MOV        EAX,dword ptr [EDI + 0x48]
        0809e020 89 82 4c        MOV        dword ptr [EDX + 0x424c],EAX
                 42 00 00
        0809e026 8b 47 58        MOV        EAX,dword ptr [EDI + 0x58]
        0809e029 89 82 5c        MOV        dword ptr [EDX + 0x425c],EAX
                 42 00 00
        0809e02f 8b 47 2c        MOV        EAX,dword ptr [EDI + 0x2c]
        0809e032 83 c0 19        ADD        EAX,0x19
        0809e035 89 82 30        MOV        dword ptr [EDX + 0x4230],EAX
                 42 00 00
        0809e03b 8b 47 3c        MOV        EAX,dword ptr [EDI + 0x3c]
        0809e03e 89 82 40        MOV        dword ptr [EDX + 0x4240],EAX
                 42 00 00
        0809e044 8b 47 4c        MOV        EAX,dword ptr [EDI + 0x4c]
        0809e047 89 82 50        MOV        dword ptr [EDX + 0x4250],EAX
                 42 00 00
        0809e04d 8b 47 5c        MOV        EAX,dword ptr [EDI + 0x5c]
        0809e050 89 82 60        MOV        dword ptr [EDX + 0x4260],EAX
                 42 00 00
        0809e056 53              PUSH       EBX
        0809e057 53              PUSH       EBX
        0809e058 68 01 94        PUSH       s_Scaling_08279401                               = "Scaling"
                 27 08
        0809e05d 55              PUSH       EBP
        0809e05e e8 1d dd        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e063 83 c4 10        ADD        ESP,0x10
        0809e066 40              INC        EAX
        0809e067 75 27           JNZ        LAB_0809e090
        0809e069 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e06e 51              PUSH       ECX
        0809e06f 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e074 8b 54 24 4c     MOV        EDX,dword ptr [ESP + local_134]
        0809e078 52              PUSH       EDX
        0809e079 68 09 94        PUSH       s_Missing_scaling_info:_%s_08279409              = "Missing scaling info: %s"
                 27 08
        0809e07e 50              PUSH       EAX
        0809e07f e8 9c 6d        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e084 e9 7a 05        JMP        LAB_0809e603
                 00 00
        0809e089 8d              ??         8Dh
        0809e08a b4              ??         B4h
        0809e08b 26              ??         26h    &
        0809e08c 00              ??         00h
        0809e08d 00              ??         00h
        0809e08e 00              ??         00h
        0809e08f 00              ??         00h
                             LAB_0809e090                                    XREF[1]:     0809e067(j)
        0809e090 50              PUSH       EAX
        0809e091 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e095 83 c0 7c        ADD        EAX,0x7c
        0809e098 50              PUSH       EAX
        0809e099 68 22 94        PUSH       DAT_08279422                                     = 74h    t
                 27 08
        0809e09e 55              PUSH       EBP
        0809e09f e8 7c e3        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e0a4 83 c4 0c        ADD        ESP,0xc
        0809e0a7 89 c3           MOV        EBX,EAX
        0809e0a9 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e0ad 83 e8 80        SUB        EAX,-0x80
        0809e0b0 50              PUSH       EAX
        0809e0b1 68 27 94        PUSH       DAT_08279427                                     = 62h    b
                 27 08
        0809e0b6 55              PUSH       EBP
        0809e0b7 e8 64 e3        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e0bc 89 44 24 30     MOV        dword ptr [ESP + local_15c],EAX
        0809e0c0 83 c4 0c        ADD        ESP,0xc
        0809e0c3 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e0c7 05 84 00        ADD        EAX,0x84
                 00 00
        0809e0cc 50              PUSH       EAX
        0809e0cd 68 2c 94        PUSH       s_topscale_0827942c                              = "topscale"
                 27 08
        0809e0d2 55              PUSH       EBP
        0809e0d3 e8 08 e3        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fd ff
        0809e0d8 83 c4 0c        ADD        ESP,0xc
        0809e0db 89 c6           MOV        ESI,EAX
        0809e0dd 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e0e1 05 88 00        ADD        EAX,0x88
                 00 00
        0809e0e6 50              PUSH       EAX
        0809e0e7 68 35 94        PUSH       s_botscale_08279435                              = "botscale"
                 27 08
        0809e0ec 55              PUSH       EBP
        0809e0ed e8 ee e2        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fd ff
        0809e0f2 8b 7c 24 30     MOV        EDI,dword ptr [ESP + local_15c]
        0809e0f6 83 c4 10        ADD        ESP,0x10
        0809e0f9 21 fb           AND        EBX,EDI
        0809e0fb 21 f3           AND        EBX,ESI
        0809e0fd 21 c3           AND        EBX,EAX
        0809e0ff 4b              DEC        EBX
        0809e100 74 20           JZ         LAB_0809e122
        0809e102 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e107 51              PUSH       ECX
        0809e108 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e10d 8b 54 24 4c     MOV        EDX,dword ptr [ESP + local_134]
        0809e111 52              PUSH       EDX
        0809e112 68 3e 94        PUSH       s_Can't_read_scaling_info:_%s_0827943e           = "Can't read scaling info: %s"
                 27 08
        0809e117 50              PUSH       EAX
        0809e118 e8 03 6d        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e11d e9 e1 04        JMP        LAB_0809e603
                 00 00
                             LAB_0809e122                                    XREF[1]:     0809e100(j)
        0809e122 8b 7c 24 0c     MOV        EDI,dword ptr [ESP + local_170]
        0809e126 8b 87 80        MOV        EAX,dword ptr [EDI + 0x80]
                 00 00 00
        0809e12c 39 47 7c        CMP        dword ptr [EDI + 0x7c],EAX
        0809e12f 75 12           JNZ        LAB_0809e143
        0809e131 d9 87 88        FLD        float ptr [EDI + 0x88]
                 00 00 00
        0809e137 d8 05 d0        FADD       float ptr [DAT_08276ed0]
                 6e 27 08
        0809e13d d9 9f 88        FSTP       float ptr [EDI + 0x88]
                 00 00 00
                             LAB_0809e143                                    XREF[1]:     0809e12f(j)
        0809e143 50              PUSH       EAX
        0809e144 50              PUSH       EAX
        0809e145 68 5a 94        PUSH       s_Bound_0827945a                                 = "Bound"
                 27 08
        0809e14a 55              PUSH       EBP
        0809e14b e8 30 dc        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e150 83 c4 10        ADD        ESP,0x10
        0809e153 40              INC        EAX
        0809e154 75 20           JNZ        LAB_0809e176
        0809e156 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e15b 55              PUSH       EBP
        0809e15c 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e161 8b 7c 24 4c     MOV        EDI,dword ptr [ESP + local_134]
        0809e165 57              PUSH       EDI
        0809e166 68 60 94        PUSH       s_Missing_bound_info:_%s_08279460                = "Missing bound info: %s"
                 27 08
        0809e16b 50              PUSH       EAX
        0809e16c e8 af 6c        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e171 e9 8d 04        JMP        LAB_0809e603
                 00 00
                             LAB_0809e176                                    XREF[1]:     0809e154(j)
        0809e176 56              PUSH       ESI
        0809e177 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e17b 05 90 00        ADD        EAX,0x90
                 00 00
        0809e180 50              PUSH       EAX
        0809e181 68 77 94        PUSH       s_screenleft_08279477                            = "screenleft"
                 27 08
        0809e186 55              PUSH       EBP
        0809e187 e8 94 e2        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e18c 83 c4 0c        ADD        ESP,0xc
        0809e18f 89 c3           MOV        EBX,EAX
        0809e191 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e195 05 8c 00        ADD        EAX,0x8c
                 00 00
        0809e19a 50              PUSH       EAX
        0809e19b 68 82 94        PUSH       s_screenright_08279482                           = "screenright"
                 27 08
        0809e1a0 55              PUSH       EBP
        0809e1a1 e8 7a e2        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e1a6 21 c3           AND        EBX,EAX
        0809e1a8 83 c4 10        ADD        ESP,0x10
        0809e1ab 4b              DEC        EBX
        0809e1ac 74 22           JZ         LAB_0809e1d0
        0809e1ae a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e1b3 53              PUSH       EBX
        0809e1b4 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e1b9 8b 4c 24 4c     MOV        ECX,dword ptr [ESP + local_134]
        0809e1bd 51              PUSH       ECX
        0809e1be 68 8e 94        PUSH       s_Can't_read_bound_info:_%s_0827948e             = "Can't read bound info: %s"
                 27 08
        0809e1c3 50              PUSH       EAX
        0809e1c4 e8 57 6c        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e1c9 e9 35 04        JMP        LAB_0809e603
                 00 00
        0809e1ce 89              ??         89h
        0809e1cf f6              ??         F6h
                             LAB_0809e1d0                                    XREF[1]:     0809e1ac(j)
        0809e1d0 52              PUSH       EDX
        0809e1d1 52              PUSH       EDX
        0809e1d2 68 a8 94        PUSH       s_StageInfo_082794a8                             = "StageInfo"
                 27 08
        0809e1d7 55              PUSH       EBP
        0809e1d8 e8 a3 db        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e1dd 83 c4 10        ADD        ESP,0x10
        0809e1e0 40              INC        EAX
        0809e1e1 75 20           JNZ        LAB_0809e203
        0809e1e3 50              PUSH       EAX
        0809e1e4 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e1e9 8b 6c 24 4c     MOV        EBP,dword ptr [ESP + local_134]
        0809e1ed 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e1f2 55              PUSH       EBP
        0809e1f3 68 b2 94        PUSH       s_Missing_stage_info:_%s_082794b2                = "Missing stage info: %s"
                 27 08
        0809e1f8 50              PUSH       EAX
        0809e1f9 e8 22 6c        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e1fe e9 00 04        JMP        LAB_0809e603
                 00 00
                             LAB_0809e203                                    XREF[1]:     0809e1e1(j)
        0809e203 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e208 c7 80 00        MOV        dword ptr [EAX + 0x10500],0xbe
                 05 01 00
                 be 00 00 00
        0809e212 c7 80 08        MOV        dword ptr [EAX + 0x10508],0xffffffff
                 05 01 00
                 ff ff ff ff
        0809e21c 57              PUSH       EDI
        0809e21d 05 00 05        ADD        EAX,0x10500
                 01 00
        0809e222 50              PUSH       EAX
        0809e223 68 c9 94        PUSH       s_zoffset_082794c9                               = "zoffset"
                 27 08
        0809e228 55              PUSH       EBP
        0809e229 e8 f2 e1        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e22e 83 c4 0c        ADD        ESP,0xc
        0809e231 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e236 05 08 05        ADD        EAX,0x10508
                 01 00
        0809e23b 50              PUSH       EAX
        0809e23c 68 d1 94        PUSH       s_zoffsetlink_082794d1                           = "zoffsetlink"
                 27 08
        0809e241 55              PUSH       EBP
        0809e242 e8 d9 e1        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e247 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e24d 8b 82 00        MOV        EAX,dword ptr [EDX + 0x10500]
                 05 01 00
        0809e253 89 82 04        MOV        dword ptr [EDX + 0x10504],EAX
                 05 01 00
        0809e259 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_170]
        0809e25d 83 c4 0c        ADD        ESP,0xc
        0809e260 c7 40 78        MOV        dword ptr [EAX + 0x78],0x0
                 00 00 00 00
        0809e267 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e26b 83 c0 78        ADD        EAX,0x78
        0809e26e 50              PUSH       EAX
        0809e26f 68 61 ce        PUSH       s_autoturn_0827ce5f+2                            = "autoturn"
                 27 08
        0809e274 55              PUSH       EBP
        0809e275 e8 a6 e1        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e27a 8b 54 24 1c     MOV        EDX,dword ptr [ESP + local_170]
        0809e27e 83 c4 0c        ADD        ESP,0xc
        0809e281 c7 02 01        MOV        dword ptr [EDX],0x1
                 00 00 00
        0809e287 52              PUSH       EDX
        0809e288 68 dd 94        PUSH       s_resetbg_082794dd                               = "resetbg"
                 27 08
        0809e28d 55              PUSH       EBP
        0809e28e e8 8d e1        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e293 8b 7c 24 1c     MOV        EDI,dword ptr [ESP + local_170]
        0809e297 c7 87 9c        MOV        dword ptr [EDI + 0x9c],0x3ecccccd
                 00 00 00
                 cd cc cc 3e
        0809e2a1 c7 87 94        MOV        dword ptr [EDI + 0x94],0x80
                 00 00 00
                 80 00 00 00
        0809e2ab 5b              POP        EBX
        0809e2ac 5e              POP        ESI
        0809e2ad 68 e5 94        PUSH       s_Shadow_082794e5                                = "Shadow"
                 27 08
        0809e2b2 55              PUSH       EBP
        0809e2b3 e8 c8 da        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e2b8 83 c4 10        ADD        ESP,0x10
        0809e2bb 40              INC        EAX
        0809e2bc 74 6e           JZ         LAB_0809e32c
        0809e2be 51              PUSH       ECX
        0809e2bf 51              PUSH       ECX
        0809e2c0 8d 44 24 64     LEA        EAX=>local_120,[ESP + 0x64]
        0809e2c4 50              PUSH       EAX
        0809e2c5 8d 44 24 64     LEA        EAX=>local_124,[ESP + 0x64]
        0809e2c9 50              PUSH       EAX
        0809e2ca 8d 44 24 64     LEA        EAX=>local_128,[ESP + 0x64]
        0809e2ce 50              PUSH       EAX
        0809e2cf 68 da 6c        PUSH       DAT_08276cda                                     = 25h    %
                 27 08
        0809e2d4 68 94 fb        PUSH       s_color_0827fb7c+24                              = "color"
                 27 08
        0809e2d9 55              PUSH       EBP
        0809e2da e8 81 e1        CALL       TPScanf                                          undefined TPScanf()
                 fd ff
        0809e2df 83 c4 1c        ADD        ESP,0x1c
        0809e2e2 89 f8           MOV        EAX,EDI
        0809e2e4 05 94 00        ADD        EAX,0x94
                 00 00
        0809e2e9 50              PUSH       EAX
        0809e2ea 68 ec 94        PUSH       s_intensity_082794ec                             = "intensity"
                 27 08
        0809e2ef 55              PUSH       EBP
        0809e2f0 e8 2b e1        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e2f5 83 c4 0c        ADD        ESP,0xc
        0809e2f8 89 f8           MOV        EAX,EDI
        0809e2fa 05 9c 00        ADD        EAX,0x9c
                 00 00
        0809e2ff 50              PUSH       EAX
        0809e300 68 f4 a1        PUSH       s_yscale_0827a1ef+5                              = "yscale"
                 27 08
        0809e305 55              PUSH       EBP
        0809e306 e8 d5 e0        CALL       TPGetValueFloat                                  undefined TPGetValueFloat()
                 fd ff
        0809e30b 89 f8           MOV        EAX,EDI
        0809e30d 05 a4 00        ADD        EAX,0xa4
                 00 00
        0809e312 89 04 24        MOV        dword ptr [ESP]=>local_18c,EAX
        0809e315 83 e8 04        SUB        EAX,0x4
        0809e318 50              PUSH       EAX
        0809e319 68 dd 6c        PUSH       DAT_08276cdd                                     = 25h    %
                 27 08
        0809e31e 68 f6 94        PUSH       s_fade.range_082794f6                            = "fade.range"
                 27 08
        0809e323 55              PUSH       EBP
        0809e324 e8 37 e1        CALL       TPScanf                                          undefined TPScanf()
                 fd ff
        0809e329 83 c4 20        ADD        ESP,0x20
                             LAB_0809e32c                                    XREF[1]:     0809e2bc(j)
        0809e32c 8b 44 24 54     MOV        EAX,dword ptr [ESP + local_128]
        0809e330 8b 54 24 58     MOV        EDX,dword ptr [ESP + local_124]
        0809e334 c1 f8 03        SAR        EAX,0x3
        0809e337 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        0809e33d c1 fa 02        SAR        EDX,0x2
        0809e340 8b 5c 24 5c     MOV        EBX,dword ptr [ESP + local_120]
        0809e344 d3 e0           SHL        EAX,CL
        0809e346 c1 fb 03        SAR        EBX,0x3
        0809e349 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        0809e34f d3 e2           SHL        EDX,CL
        0809e351 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        0809e357 09 d0           OR         EAX,EDX
        0809e359 d3 e3           SHL        EBX,CL
        0809e35b 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_170]
        0809e35f 09 d8           OR         EAX,EBX
        0809e361 89 82 98        MOV        dword ptr [EDX + 0x98],EAX
                 00 00 00
        0809e367 52              PUSH       EDX
        0809e368 52              PUSH       EDX
        0809e369 68 01 95        PUSH       s_Reflection_08279501                            = "Reflection"
                 27 08
        0809e36e 55              PUSH       EBP
        0809e36f e8 0c da        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e374 83 c4 10        ADD        ESP,0x10
        0809e377 40              INC        EAX
        0809e378 74 19           JZ         LAB_0809e393
        0809e37a 50              PUSH       EAX
        0809e37b 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e37f 05 a8 00        ADD        EAX,0xa8
                 00 00
        0809e384 50              PUSH       EAX
        0809e385 68 ec 94        PUSH       s_intensity_082794ec                             = "intensity"
                 27 08
        0809e38a 55              PUSH       EBP
        0809e38b e8 90 e0        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e390 83 c4 10        ADD        ESP,0x10
                             LAB_0809e393                                    XREF[1]:     0809e378(j)
        0809e393 57              PUSH       EDI
        0809e394 57              PUSH       EDI
        0809e395 68 0c 95        PUSH       s_Music_0827950c                                 = "Music"
                 27 08
        0809e39a 55              PUSH       EBP
        0809e39b e8 e0 d9        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e3a0 83 c4 10        ADD        ESP,0x10
        0809e3a3 40              INC        EAX
        0809e3a4 0f 84 93        JZ         LAB_0809e43d
                 00 00 00
        0809e3aa a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e3af 8b b0 cc        MOV        ESI,dword ptr [EAX + 0x1bbcc]
                 bb 01 00
        0809e3b5 85 f6           TEST       ESI,ESI
        0809e3b7 0f 84 80        JZ         LAB_0809e43d
                 00 00 00
        0809e3bd 53              PUSH       EBX
        0809e3be 53              PUSH       EBX
        0809e3bf 68 12 95        PUSH       s_bgmusic_08279512                               = "bgmusic"
                 27 08
        0809e3c4 55              PUSH       EBP
        0809e3c5 e8 d6 dc        CALL       TPGetValue                                       undefined TPGetValue()
                 fd ff
        0809e3ca 89 c3           MOV        EBX,EAX
        0809e3cc a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e3d1 83 c4 10        ADD        ESP,0x10
        0809e3d4 80 b8 13        CMP        byte ptr [EAX + 0x3013],0x0
                 30 00 00 00
        0809e3db 74 08           JZ         LAB_0809e3e5
        0809e3dd 8d 98 13        LEA        EBX,[EAX + 0x3013]
                 30 00 00
        0809e3e3 eb 1d           JMP        LAB_0809e402
                             LAB_0809e3e5                                    XREF[1]:     0809e3db(j)
        0809e3e5 85 db           TEST       EBX,EBX
        0809e3e7 74 19           JZ         LAB_0809e402
        0809e3e9 51              PUSH       ECX
        0809e3ea 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_170]
        0809e3ee 05 c4 00        ADD        EAX,0xc4
                 00 00
        0809e3f3 50              PUSH       EAX
        0809e3f4 68 1a 95        PUSH       s_bgvolume_0827951a                              = "bgvolume"
                 27 08
        0809e3f9 55              PUSH       EBP
        0809e3fa e8 21 e0        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fd ff
        0809e3ff 83 c4 10        ADD        ESP,0x10
                             LAB_0809e402                                    XREF[2]:     0809e3e3(j), 0809e3e7(j)
        0809e402 85 db           TEST       EBX,EBX
        0809e404 74 37           JZ         LAB_0809e43d
        0809e406 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e40b 8b 90 a0        MOV        EDX,dword ptr [EAX + 0x1d3a0]
                 d3 01 00
        0809e411 85 d2           TEST       EDX,EDX
        0809e413 74 0a           JZ         LAB_0809e41f
        0809e415 8b b8 b8        MOV        EDI,dword ptr [EAX + 0x1d3b8]
                 d3 01 00
        0809e41b 85 ff           TEST       EDI,EDI
        0809e41d 74 1e           JZ         LAB_0809e43d
                             LAB_0809e41f                                    XREF[1]:     0809e413(j)
        0809e41f 56              PUSH       ESI
        0809e420 6a 01           PUSH       0x1
        0809e422 53              PUSH       EBX
        0809e423 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_170]
        0809e427 05 ac 00        ADD        EAX,0xac
                 00 00
        0809e42c 50              PUSH       EAX
        0809e42d e8 de 73        CALL       BGMLoad                                          undefined BGMLoad()
                 fe ff
        0809e432 83 c4 10        ADD        ESP,0x10
        0809e435 85 c0           TEST       EAX,EAX
        0809e437 0f 84 c9        JZ         LAB_0809e606
                 01 00 00
                             LAB_0809e43d                                    XREF[4]:     0809e3a4(j), 0809e3b7(j),
                                                                                          0809e404(j), 0809e41d(j)
        0809e43d 83 ec 0c        SUB        ESP,0xc
        0809e440 55              PUSH       EBP
        0809e441 e8 ba cd        CALL       TPFree                                           undefined TPFree()
                 fd ff
        0809e446 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e44b 8b 15 08        MOV        EDX,dword ptr [Ticks]                            = ??
                 0c 2c 08
        0809e451 89 90 10        MOV        dword ptr [EAX + 0x20710],EDX
                 07 02 00
        0809e457 e8 d4 01        CALL       GameBGLoad                                       undefined GameBGLoad()
                 00 00
        0809e45c 83 c4 10        ADD        ESP,0x10
        0809e45f 85 c0           TEST       EAX,EAX
        0809e461 0f 84 9f        JZ         LAB_0809e606
                 01 00 00
        0809e467 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e46c 8b 15 08        MOV        EDX,dword ptr [Ticks]                            = ??
                 0c 2c 08
        0809e472 8b 98 10        MOV        EBX,dword ptr [EAX + 0x20710]
                 07 02 00
        0809e478 8b 88 5c        MOV        ECX,dword ptr [EAX + 0x1ce5c]
                 ce 01 00
        0809e47e 29 da           SUB        EDX,EBX
        0809e480 89 90 10        MOV        dword ptr [EAX + 0x20710],EDX
                 07 02 00
        0809e486 8b 90 58        MOV        EDX,dword ptr [EAX + 0x1ce58]
                 ce 01 00
        0809e48c 01 ca           ADD        EDX,ECX
        0809e48e 89 90 54        MOV        dword ptr [EAX + 0x1ce54],EDX
                 ce 01 00
        0809e494 ba 01 00        MOV        EDX,0x1
                 00 00
        0809e499 c7 80 74        MOV        dword ptr [EAX + 0x1d274],0x0
                 d2 01 00
                 00 00 00 00
        0809e4a3 05 e0 ce        ADD        EAX,0xcee0
                 00 00
                             LAB_0809e4a8                                    XREF[1]:     0809e4b4(j)
        0809e4a8 c7 00 00        MOV        dword ptr [EAX],0x0
                 00 00 00
        0809e4ae 05 9c 1a        ADD        EAX,0x1a9c
                 00 00
        0809e4b3 4a              DEC        EDX
        0809e4b4 79 f2           JNS        LAB_0809e4a8
        0809e4b6 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e4bb 31 ff           XOR        EDI,EDI
        0809e4bd be 05 00        MOV        ESI,0x5
                 00 00
        0809e4c2 3b b8 58        CMP        EDI,dword ptr [EAX + 0x1ce58]
                 ce 01 00
        0809e4c8 0f 8d 0c        JGE        LAB_0809e5da
                 01 00 00
        0809e4ce 8d 84 24        LEA        EAX=>local_fc,[ESP + 0x80]
                 80 00 00 00
        0809e4d5 8d 6c 24 60     LEA        EBP=>local_11c,[ESP + 0x60]
        0809e4d9 89 44 24 1c     MOV        dword ptr [ESP + local_160],EAX
        0809e4dd bb 74 cf        MOV        EBX,0x1cf74
                 01 00
                             LAB_0809e4e2                                    XREF[1]:     0809e5d4(j)
        0809e4e2 83 ec 0c        SUB        ESP,0xc
        0809e4e5 6a 00           PUSH       0x0
        0809e4e7 e8 04 14        CALL       PlayerNew                                        undefined PlayerNew()
                 01 00
        0809e4ec 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e4f2 83 c4 10        ADD        ESP,0x10
        0809e4f5 85 c0           TEST       EAX,EAX
        0809e4f7 89 44 13 04     MOV        dword ptr [EBX + EDX*0x1 + 0x4],EAX
        0809e4fb 0f 84 ef        JZ         LAB_0809e5f0
                 00 00 00
        0809e501 8d 4e ff        LEA        ECX,[ESI + -0x1]
        0809e504 89 70 08        MOV        dword ptr [EAX + 0x8],ESI
        0809e507 83 f9 1f        CMP        ECX,0x1f
        0809e50a 7f 64           JG         LAB_0809e570
        0809e50c b8 01 00        MOV        EAX,0x1
                 00 00
        0809e511 52              PUSH       EDX
        0809e512 6a 01           PUSH       0x1
        0809e514 d3 e0           SHL        EAX,CL
        0809e516 50              PUSH       EAX
        0809e517 8b 44 24 28     MOV        EAX,dword ptr [ESP + local_160]
        0809e51b 50              PUSH       EAX
        0809e51c e8 ef a7        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 01 00
        0809e521 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e526 83 c0 04        ADD        EAX,0x4
        0809e529 8b 14 03        MOV        EDX,dword ptr [EBX + EAX*0x1]
        0809e52c 8b 84 24        MOV        EAX,dword ptr [ESP + local_100]
                 8c 00 00 00
        0809e533 89 82 c8        MOV        dword ptr [EDX + 0x25c8],EAX
                 25 00 00
        0809e539 8b 84 24        MOV        EAX,dword ptr [ESP + local_fc]
                 90 00 00 00
        0809e540 89 82 cc        MOV        dword ptr [EDX + 0x25cc],EAX
                 25 00 00
        0809e546 8b 84 24        MOV        EAX,dword ptr [ESP + local_f8]
                 94 00 00 00
        0809e54d 89 82 d0        MOV        dword ptr [EDX + 0x25d0],EAX
                 25 00 00
        0809e553 8b 84 24        MOV        EAX,dword ptr [ESP + local_f4]
                 98 00 00 00
        0809e55a 89 82 d4        MOV        dword ptr [EDX + 0x25d4],EAX
                 25 00 00
        0809e560 8b 84 24        MOV        EAX,dword ptr [ESP + local_f0]
                 9c 00 00 00
        0809e567 eb 52           JMP        LAB_0809e5bb
        0809e569 8d              ??         8Dh
        0809e56a b4              ??         B4h
        0809e56b 26              ??         26h    &
        0809e56c 00              ??         00h
        0809e56d 00              ??         00h
        0809e56e 00              ??         00h
        0809e56f 00              ??         00h
                             LAB_0809e570                                    XREF[1]:     0809e50a(j)
        0809e570 b8 01 00        MOV        EAX,0x1
                 00 00
        0809e575 51              PUSH       ECX
        0809e576 8d 4e df        LEA        ECX,[ESI + -0x21]
        0809e579 6a 02           PUSH       0x2
        0809e57b d3 e0           SHL        EAX,CL
        0809e57d 50              PUSH       EAX
        0809e57e 55              PUSH       EBP
        0809e57f e8 8c a7        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 01 00
        0809e584 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e589 83 c0 04        ADD        EAX,0x4
        0809e58c 8b 14 03        MOV        EDX,dword ptr [EBX + EAX*0x1]
        0809e58f 8b 44 24 6c     MOV        EAX,dword ptr [ESP + local_120]
        0809e593 89 82 c8        MOV        dword ptr [EDX + 0x25c8],EAX
                 25 00 00
        0809e599 8b 44 24 70     MOV        EAX,dword ptr [ESP + local_11c]
        0809e59d 89 82 cc        MOV        dword ptr [EDX + 0x25cc],EAX
                 25 00 00
        0809e5a3 8b 44 24 74     MOV        EAX,dword ptr [ESP + local_118]
        0809e5a7 89 82 d0        MOV        dword ptr [EDX + 0x25d0],EAX
                 25 00 00
        0809e5ad 8b 44 24 78     MOV        EAX,dword ptr [ESP + local_114]
        0809e5b1 89 82 d4        MOV        dword ptr [EDX + 0x25d4],EAX
                 25 00 00
        0809e5b7 8b 44 24 7c     MOV        EAX,dword ptr [ESP + local_110]
                             LAB_0809e5bb                                    XREF[1]:     0809e567(j)
        0809e5bb 83 c4 0c        ADD        ESP,0xc
        0809e5be 89 82 d8        MOV        dword ptr [EDX + 0x25d8],EAX
                 25 00 00
        0809e5c4 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e5c9 47              INC        EDI
        0809e5ca 83 c3 04        ADD        EBX,0x4
        0809e5cd 46              INC        ESI
        0809e5ce 3b b8 58        CMP        EDI,dword ptr [EAX + 0x1ce58]
                 ce 01 00
        0809e5d4 0f 8c 08        JL         LAB_0809e4e2
                 ff ff ff
                             LAB_0809e5da                                    XREF[1]:     0809e4c8(j)
        0809e5da 8b 90 34        MOV        EDX,dword ptr [EAX + 0x20734]
                 07 02 00
        0809e5e0 85 d2           TEST       EDX,EDX
        0809e5e2 74 2c           JZ         LAB_0809e610
        0809e5e4 c7 80 2c        MOV        dword ptr [EAX + 0x2072c],0x1
                 07 02 00
                 01 00 00 00
        0809e5ee eb 2a           JMP        LAB_0809e61a
                             LAB_0809e5f0                                    XREF[1]:     0809e4fb(j)
        0809e5f0 50              PUSH       EAX
        0809e5f1 50              PUSH       EAX
        0809e5f2 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        0809e5f8 68 20 96        PUSH       s_Can't_create_helper_characters_08279620        = "\nCan't create helper charact
                 27 08
        0809e5fd 50              PUSH       EAX
        0809e5fe e8 0d 1c        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
                             LAB_0809e603                                    XREF[9]:     0809dcdd(j), 0809dd10(j),
                                                                                          0809de65(j), 0809dff9(j),
                                                                                          0809e084(j), 0809e11d(j),
                                                                                          0809e171(j), 0809e1c9(j),
                                                                                          0809e1fe(j)
        0809e603 83 c4 10        ADD        ESP,0x10
                             LAB_0809e606                                    XREF[2]:     0809e437(j), 0809e461(j)
        0809e606 31 c0           XOR        EAX,EAX
        0809e608 eb 15           JMP        LAB_0809e61f
        0809e60a 8d              ??         8Dh
        0809e60b b6              ??         B6h
        0809e60c 00              ??         00h
        0809e60d 00              ??         00h
        0809e60e 00              ??         00h
        0809e60f 00              ??         00h
                             LAB_0809e610                                    XREF[1]:     0809e5e2(j)
        0809e610 c7 80 2c        MOV        dword ptr [EAX + 0x2072c],0x0
                 07 02 00
                 00 00 00 00
                             LAB_0809e61a                                    XREF[1]:     0809e5ee(j)
        0809e61a b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_0809e61f                                    XREF[1]:     0809e608(j)
        0809e61f 81 c4 6c        ADD        ESP,0x16c
                 01 00 00
        0809e625 5b              POP        EBX
        0809e626 5e              POP        ESI
        0809e627 5f              POP        EDI
        0809e628 5d              POP        EBP
        0809e629 c3              RET
