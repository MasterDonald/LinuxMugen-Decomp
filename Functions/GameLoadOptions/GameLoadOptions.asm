                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoadOptions()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     080d51ac(*)
                             GameLoadOptions                                 XREF[3]:     Entry Point(*),
                                                                                          GameInit:080991b0(c),
                                                                                          OptionsScreen:080a2237(c)
        080d4ef0 56              PUSH       ESI
        080d4ef1 53              PUSH       EBX
        080d4ef2 83 ec 10        SUB        ESP,0x10
        080d4ef5 68 b1 88        PUSH       s_data/mugen.cfg_082788a2+15                     = "data/mugen.cfg"
                 27 08
        080d4efa e8 c1 68        CALL       TPReadFile                                       undefined TPReadFile()
                 fa ff
        080d4eff 89 c6           MOV        ESI,EAX
        080d4f01 83 c4 10        ADD        ESP,0x10
        080d4f04 85 f6           TEST       ESI,ESI
        080d4f06 75 1f           JNZ        LAB_080d4f27
        080d4f08 50              PUSH       EAX
        080d4f09 50              PUSH       EAX
        080d4f0a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4f0f 68 1d d8        PUSH       s_Error_loading_options_0827d81d                 = "Error loading options"
                 27 08
        080d4f14 05 48 07        ADD        EAX,0x20748
                 02 00
        080d4f19 50              PUSH       EAX
        080d4f1a e8 01 ff        CALL       sprintf                                          int sprintf(char * __s, char * _
                 0f 00
        080d4f1f e8 dc 83        CALL       ErrorExit                                        undefined ErrorExit()
                 fb ff
        080d4f24 83 c4 10        ADD        ESP,0x10
                             LAB_080d4f27                                    XREF[1]:     080d4f06(j)
        080d4f27 53              PUSH       EBX
        080d4f28 53              PUSH       EBX
        080d4f29 68 97 97        PUSH       s_Options_0827978d+10                            = "Options"
                 27 08
        080d4f2e 56              PUSH       ESI
        080d4f2f e8 4c 6e        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d4f34 83 c4 10        ADD        ESP,0x10
        080d4f37 40              INC        EAX
        080d4f38 0f 84 2e        JZ         LAB_080d506c
                 01 00 00
        080d4f3e a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4f43 51              PUSH       ECX
        080d4f44 05 78 e6        ADD        EAX,0x1e678
                 01 00
        080d4f49 50              PUSH       EAX
        080d4f4a 68 e1 96        PUSH       s_Difficulty_082796e1                            = "Difficulty"
                 27 08
        080d4f4f 56              PUSH       ESI
        080d4f50 e8 cb 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4f55 83 c4 0c        ADD        ESP,0xc
        080d4f58 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4f5d 05 7c e6        ADD        EAX,0x1e67c
                 01 00
        080d4f62 50              PUSH       EAX
        080d4f63 68 76 d8        PUSH       DAT_0827d876                                     = 4Ch    L
                 27 08
        080d4f68 56              PUSH       ESI
        080d4f69 e8 b2 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4f6e 83 c4 0c        ADD        ESP,0xc
        080d4f71 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4f76 05 80 e6        ADD        EAX,0x1e680
                 01 00
        080d4f7b 50              PUSH       EAX
        080d4f7c 68 33 d8        PUSH       DAT_0827d833                                     = 54h    T
                 27 08
        080d4f81 56              PUSH       ESI
        080d4f82 e8 99 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4f87 83 c4 0c        ADD        ESP,0xc
        080d4f8a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4f8f 05 84 e6        ADD        EAX,0x1e684
                 01 00
        080d4f94 50              PUSH       EAX
        080d4f95 68 38 d8        PUSH       s_GameSpeed_0827d838                             = "GameSpeed"
                 27 08
        080d4f9a 56              PUSH       ESI
        080d4f9b e8 80 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4fa0 83 c4 0c        ADD        ESP,0xc
        080d4fa3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4fa8 05 88 e6        ADD        EAX,0x1e688
                 01 00
        080d4fad 50              PUSH       EAX
        080d4fae 68 42 d8        PUSH       s_WavVolume_0827d842                             = "WavVolume"
                 27 08
        080d4fb3 56              PUSH       ESI
        080d4fb4 e8 67 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4fb9 83 c4 0c        ADD        ESP,0xc
        080d4fbc a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4fc1 05 8c e6        ADD        EAX,0x1e68c
                 01 00
        080d4fc6 50              PUSH       EAX
        080d4fc7 68 4c d8        PUSH       s_MidiVolume_0827d84c                            = "MidiVolume"
                 27 08
        080d4fcc 56              PUSH       ESI
        080d4fcd e8 4e 74        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d4fd2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d4fd7 05 e0 e6        ADD        EAX,0x1e6e0
                 01 00
        080d4fdc 50              PUSH       EAX
        080d4fdd 68 f6 f3        PUSH       s_%s_0827f3dd+25                                 = "%s"
                 27 08
        080d4fe2 68 57 d8        PUSH       s_motif_0827d857                                 = "motif"
                 27 08
        080d4fe7 56              PUSH       ESI
        080d4fe8 e8 73 74        CALL       TPScanf                                          undefined TPScanf()
                 fa ff
        080d4fed 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d4ff3 83 c4 20        ADD        ESP,0x20
        080d4ff6 80 ba e0        CMP        byte ptr [EDX + 0x1e6e0],0x0
                 e6 01 00 00
        080d4ffd 75 1d           JNZ        LAB_080d501c
        080d4fff 8d 82 e0        LEA        EAX,[EDX + 0x1e6e0]
                 e6 01 00
        080d5005 52              PUSH       EDX
        080d5006 6a 10           PUSH       0x10
        080d5008 68 5d d8        PUSH       s_data/system.def_0827d85d                       = "data/system.def"
                 27 08
        080d500d 50              PUSH       EAX
        080d500e e8 1d c0        CALL       memcpy                                           void * memcpy(void * __dest, voi
                 10 00
        080d5013 83 c4 10        ADD        ESP,0x10
        080d5016 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d501c                                    XREF[1]:     080d4ffd(j)
        080d501c 8d 82 00        LEA        EAX,[EDX + 0x14b00]
                 4b 01 00
        080d5022 53              PUSH       EBX
        080d5023 50              PUSH       EAX
        080d5024 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d502a 50              PUSH       EAX
        080d502b 8d 82 e0        LEA        EAX,[EDX + 0x1e6e0]
                 e6 01 00
        080d5031 50              PUSH       EAX
        080d5032 e8 89 c0        CALL       splitdirfile                                     undefined splitdirfile()
                 f7 ff
        080d5037 83 c4 0c        ADD        ESP,0xc
        080d503a a1 74 7a        MOV        EAX,[g]
                 28 08
        080d503f 05 d0 e6        ADD        EAX,0x1e6d0
                 01 00
        080d5044 50              PUSH       EAX
        080d5045 68 6d d8        PUSH       DAT_0827d86d                                     = 54h    T
                 27 08
        080d504a 56              PUSH       ESI
        080d504b e8 d0 73        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d5050 83 c4 0c        ADD        ESP,0xc
        080d5053 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5058 05 d4 e6        ADD        EAX,0x1e6d4
                 01 00
        080d505d 50              PUSH       EAX
        080d505e 68 7b d8        PUSH       s_Team.LoseOnKO_0827d87b                         = "Team.LoseOnKO"
                 27 08
        080d5063 56              PUSH       ESI
        080d5064 e8 b7 73        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d5069 83 c4 10        ADD        ESP,0x10
                             LAB_080d506c                                    XREF[1]:     080d4f38(j)
        080d506c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5071 c7 80 a4        MOV        dword ptr [EAX + 0x1e6a4],0x1
                 e6 01 00
                 01 00 00 00
        080d507b 51              PUSH       ECX
        080d507c 05 84 cc        ADD        EAX,0x1cc84
                 01 00
        080d5081 68 b8 d7        PUSH       s_p1_keys_0827d7b8                               = "p1 keys"
                 27 08
        080d5086 50              PUSH       EAX
        080d5087 56              PUSH       ESI
        080d5088 e8 f3 03        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d508d 83 c4 0c        ADD        ESP,0xc
        080d5090 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5095 05 b8 cc        ADD        EAX,0x1ccb8
                 01 00
        080d509a 68 da d7        PUSH       s_p2_keys_0827d7da                               = "p2 keys"
                 27 08
        080d509f 50              PUSH       EAX
        080d50a0 56              PUSH       ESI
        080d50a1 e8 da 03        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d50a6 58              POP        EAX
        080d50a7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d50ac 5a              POP        EDX
        080d50ad 05 84 cc        ADD        EAX,0x1cc84
                 01 00
        080d50b2 68 00 01        PUSH       0x100
                 00 00
        080d50b7 50              PUSH       EAX
        080d50b8 e8 e3 05        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d50bd 59              POP        ECX
        080d50be a1 74 7a        MOV        EAX,[g]
                 28 08
        080d50c3 5b              POP        EBX
        080d50c4 05 b8 cc        ADD        EAX,0x1ccb8
                 01 00
        080d50c9 68 00 01        PUSH       0x100
                 00 00
        080d50ce 50              PUSH       EAX
        080d50cf e8 cc 05        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d50d4 58              POP        EAX
        080d50d5 5a              POP        EDX
        080d50d6 68 50 d7        PUSH       s_Input_0827d750                                 = "Input"
                 27 08
        080d50db 56              PUSH       ESI
        080d50dc e8 9f 6c        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d50e1 83 c4 10        ADD        ESP,0x10
        080d50e4 40              INC        EAX
        080d50e5 74 33           JZ         LAB_080d511a
        080d50e7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d50ec 53              PUSH       EBX
        080d50ed 05 ac e6        ADD        EAX,0x1e6ac
                 01 00
        080d50f2 50              PUSH       EAX
        080d50f3 68 8d d7        PUSH       s_p1.joystick.type_0827d78d                      = "p1.joystick.type"
                 27 08
        080d50f8 56              PUSH       ESI
        080d50f9 e8 22 73        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d50fe 83 c4 0c        ADD        ESP,0xc
        080d5101 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5106 05 c0 e6        ADD        EAX,0x1e6c0
                 01 00
        080d510b 50              PUSH       EAX
        080d510c 68 9e d7        PUSH       s_p2.joystick.type_0827d79e                      = "p2.joystick.type"
                 27 08
        080d5111 56              PUSH       ESI
        080d5112 e8 09 73        CALL       TPGetValueInt                                    undefined TPGetValueInt()
                 fa ff
        080d5117 83 c4 10        ADD        ESP,0x10
                             LAB_080d511a                                    XREF[1]:     080d50e5(j)
        080d511a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d5120 31 c0           XOR        EAX,EAX
        080d5122 8b 8a ac        MOV        ECX,dword ptr [EDX + 0x1e6ac]
                 e6 01 00
        080d5128 8b 9a c0        MOV        EBX,dword ptr [EDX + 0x1e6c0]
                 e6 01 00
        080d512e 85 c9           TEST       ECX,ECX
        080d5130 89 8a 34        MOV        dword ptr [EDX + 0x1ce34],ECX
                 ce 01 00
        080d5136 0f 95 c0        SETNZ      AL
        080d5139 89 82 2c        MOV        dword ptr [EDX + 0x1ce2c],EAX
                 ce 01 00
        080d513f 31 c0           XOR        EAX,EAX
        080d5141 85 db           TEST       EBX,EBX
        080d5143 89 9a 38        MOV        dword ptr [EDX + 0x1ce38],EBX
                 ce 01 00
        080d5149 0f 95 c0        SETNZ      AL
        080d514c 89 82 30        MOV        dword ptr [EDX + 0x1ce30],EAX
                 ce 01 00
        080d5152 51              PUSH       ECX
        080d5153 81 c2 bc        ADD        EDX,0x1cdbc
                 cd 01 00
        080d5159 68 fc d7        PUSH       s_P1_joystick_0827d7fc                           = "P1 joystick"
                 27 08
        080d515e 52              PUSH       EDX
        080d515f 56              PUSH       ESI
        080d5160 e8 1b 03        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d5165 83 c4 0c        ADD        ESP,0xc
        080d5168 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d516d 05 f0 cd        ADD        EAX,0x1cdf0
                 01 00
        080d5172 68 08 d8        PUSH       s_P2_joystick_0827d808                           = "P2 joystick"
                 27 08
        080d5177 50              PUSH       EAX
        080d5178 56              PUSH       ESI
        080d5179 e8 02 03        CALL       PlayerLoadKeys                                   undefined PlayerLoadKeys()
                 00 00
        080d517e 5b              POP        EBX
        080d517f 58              POP        EAX
        080d5180 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5185 05 bc cd        ADD        EAX,0x1cdbc
                 01 00
        080d518a 68 80 00        PUSH       0x80
                 00 00
        080d518f 50              PUSH       EAX
        080d5190 e8 0b 05        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d5195 5a              POP        EDX
        080d5196 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d519b 59              POP        ECX
        080d519c 05 f0 cd        ADD        EAX,0x1cdf0
                 01 00
        080d51a1 68 80 00        PUSH       0x80
                 00 00
        080d51a6 50              PUSH       EAX
        080d51a7 e8 f4 04        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 00 00
        080d51ac 89 34 24        MOV        dword ptr [ESP]=>local_1c,ESI
        080d51af e8 4c 60        CALL       TPFree                                           undefined TPFree()
                 fa ff
        080d51b4 e8 d7 42        CALL       GameInitPads                                     undefined GameInitPads()
                 fc ff
        080d51b9 e8 82 44        CALL       GameInputSetup                                   undefined GameInputSetup()
                 fc ff
        080d51be 83 c4 10        ADD        ESP,0x10
        080d51c1 85 c0           TEST       EAX,EAX
        080d51c3 75 10           JNZ        LAB_080d51d5
        080d51c5 83 ec 0c        SUB        ESP,0xc
        080d51c8 68 89 d8        PUSH       s_Cannot_init_input_0827d889                     = "Cannot init input"
                 27 08
        080d51cd e8 fe 81        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d51d2 83 c4 10        ADD        ESP,0x10
                             LAB_080d51d5                                    XREF[1]:     080d51c3(j)
        080d51d5 58              POP        EAX
        080d51d6 5b              POP        EBX
        080d51d7 5e              POP        ESI
        080d51d8 c3              RET
