                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameInit()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[10]:    08098ca3(*),
                                                                                                   08098df9(*),
                                                                                                   08098e0a(*),
                                                                                                   08098e2b(*),
                                                                                                   08098e37(*),
                                                                                                   08098e98(*),
                                                                                                   08098f3d(*),
                                                                                                   08098f6a(*),
                                                                                                   08099050(*),
                                                                                                   08099142(*)
                             GameInit                                        XREF[2]:     Entry Point(*),
                                                                                          gcc2_compiled.:0809c4b2(c)
        08098c60 57              PUSH       EDI
        08098c61 56              PUSH       ESI
        08098c62 53              PUSH       EBX
        08098c63 e8 a8 ac        CALL       ElecInit                                         undefined ElecInit()
                 fb ff
        08098c68 a1 e0 c5        MOV        EAX,[system_driver]
                 28 08
        08098c6d 8b 40 20        MOV        EAX,dword ptr [EAX + 0x20]
        08098c70 85 c0           TEST       EAX,EAX
        08098c72 74 0d           JZ         LAB_08098c81
        08098c74 83 ec 0c        SUB        ESP,0xc
        08098c77 68 98 88        PUSH       s_M.U.G.E.N_08278898                             = "M.U.G.E.N"
                 27 08
        08098c7c ff d0           CALL       EAX
        08098c7e 83 c4 10        ADD        ESP,0x10
                             LAB_08098c81                                    XREF[1]:     08098c72(j)
        08098c81 52              PUSH       EDX
        08098c82 52              PUSH       EDX
        08098c83 68 60 0b        PUSH       0x20b60
                 02 00
        08098c88 6a 01           PUSH       0x1
        08098c8a e8 41 80        CALL       ecalloc                                          undefined ecalloc()
                 fb ff
        08098c8f 83 c4 10        ADD        ESP,0x10
        08098c92 85 c0           TEST       EAX,EAX
        08098c94 75 1a           JNZ        LAB_08098cb0
        08098c96 83 ec 0c        SUB        ESP,0xc
        08098c99 68 00 90        PUSH       s_Can't_allocate_game_variables._08279000        = "Can't allocate game variables
                 27 08
        08098c9e e8 2d c1        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098ca3 c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x1
                 01 00 00 00
        08098caa e8 a1 c7        CALL       exit                                             void exit(int __status)
                 12 00
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        08098caf 90              ??         90h
                             LAB_08098cb0                                    XREF[1]:     08098c94(j)
        08098cb0 83 ec 0c        SUB        ESP,0xc
        08098cb3 a3 74 7a        MOV        [g],EAX
                 28 08
        08098cb8 68 b1 88        PUSH       s_data/mugen.cfg_082788a2+15                     = "data/mugen.cfg"
                 27 08
        08098cbd e8 ae b1        CALL       GameConfigRead                                   undefined GameConfigRead()
                 03 00
        08098cc2 83 c4 10        ADD        ESP,0x10
        08098cc5 85 c0           TEST       EAX,EAX
        08098cc7 75 1f           JNZ        LAB_08098ce8
        08098cc9 50              PUSH       EAX
        08098cca 50              PUSH       EAX
        08098ccb a1 74 7a        MOV        EAX,[g]
                 28 08
        08098cd0 68 a2 88        PUSH       s_Error_reading_data/mugen.cfg_082788a2          = "\nError reading data/mugen.cfg"
                 27 08
        08098cd5 05 48 07        ADD        EAX,0x20748
                 02 00
        08098cda 50              PUSH       EAX
        08098cdb e8 30 75        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        08098ce0 e8 1b 46        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
        08098ce5 83 c4 10        ADD        ESP,0x10
                             LAB_08098ce8                                    XREF[1]:     08098cc7(j)
        08098ce8 8b bc 24        MOV        EDI,dword ptr [ESP + Stack[0x290]]
                 9c 02 00 00
        08098cef 85 ff           TEST       EDI,EDI
        08098cf1 74 37           JZ         LAB_08098d2a
        08098cf3 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098cf8 c7 80 7c        MOV        dword ptr [EAX + 0x1d57c],0x1
                 d5 01 00
                 01 00 00 00
        08098d02 c7 80 8c        MOV        dword ptr [EAX + 0x1d58c],0x0
                 d5 01 00
                 00 00 00 00
        08098d0c c7 80 84        MOV        dword ptr [EAX + 0x1d584],0x0
                 d5 01 00
                 00 00 00 00
        08098d16 c7 80 80        MOV        dword ptr [EAX + 0x1d580],0x0
                 d5 01 00
                 00 00 00 00
        08098d20 c7 80 88        MOV        dword ptr [EAX + 0x1d588],0x0
                 d5 01 00
                 00 00 00 00
                             LAB_08098d2a                                    XREF[1]:     08098cf1(j)
        08098d2a 8b b4 24        MOV        ESI,dword ptr [ESP + Stack[0x188]]
                 94 01 00 00
        08098d31 85 f6           TEST       ESI,ESI
        08098d33 74 4e           JZ         LAB_08098d83
        08098d35 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098d3a c7 80 30        MOV        dword ptr [EAX + 0x1d630],0x1
                 d6 01 00
                 01 00 00 00
        08098d44 53              PUSH       EBX
        08098d45 05 34 d6        ADD        EAX,0x1d634
                 01 00
        08098d4a 53              PUSH       EBX
        08098d4b 8d 94 24        LEA        EDX=>Stack[0x18c],[ESP + 0x1a0]
                 a0 01 00 00
        08098d52 52              PUSH       EDX
        08098d53 50              PUSH       EAX
        08098d54 e8 77 78        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08098d59 5a              POP        EDX
        08098d5a a1 74 7a        MOV        EAX,[g]
                 28 08
        08098d5f 59              POP        ECX
        08098d60 05 34 d6        ADD        EAX,0x1d634
                 01 00
        08098d65 68 fc 72        PUSH       DAT_082772fc                                     = 77h    w
                 27 08
        08098d6a 50              PUSH       EAX
        08098d6b e8 a0 c4        CALL       fopen                                            FILE * fopen(char * __filename,
                 13 00
        08098d70 83 c4 10        ADD        ESP,0x10
        08098d73 85 c0           TEST       EAX,EAX
        08098d75 74 0c           JZ         LAB_08098d83
        08098d77 83 ec 0c        SUB        ESP,0xc
        08098d7a 50              PUSH       EAX
        08098d7b e8 50 c1        CALL       fclose                                           int fclose(FILE * __stream)
                 13 00
        08098d80 83 c4 10        ADD        ESP,0x10
                             LAB_08098d83                                    XREF[2]:     08098d33(j), 08098d75(j)
        08098d83 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        08098d89 8d b4 24        LEA        ESI=>Stack[0x29c],[ESP + 0x2a8]
                 a8 02 00 00
        08098d90 fc              CLD
        08098d91 81 c7 34        ADD        EDI,0x1e634
                 e6 01 00
        08098d97 b9 11 00        MOV        ECX,0x11
                 00 00
        08098d9c f3 a5           MOVSD.REP  ES:EDI,ESI
        08098d9e 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08098da4 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x2e8]]
                 f4 02 00 00
        08098dab 89 82 4c        MOV        dword ptr [EDX + 0x20b4c],EAX
                 0b 02 00
        08098db1 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x2ec]]
                 f8 02 00 00
        08098db8 89 82 58        MOV        dword ptr [EDX + 0x20b58],EAX
                 0b 02 00
        08098dbe 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x294]]
                 a0 02 00 00
        08098dc5 89 82 74        MOV        dword ptr [EDX + 0x1e674],EAX
                 e6 01 00
        08098dcb 80 7c 24        CMP        byte ptr [ESP + Stack[0x44]],0x0
                 50 00
        08098dd0 75 0f           JNZ        LAB_08098de1
        08098dd2 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x330]]
                 3c 03 00 00
        08098dd9 c7 00 01        MOV        dword ptr [EAX],0x1
                 00 00 00
        08098ddf eb 0a           JMP        LAB_08098deb
                             LAB_08098de1                                    XREF[1]:     08098dd0(j)
        08098de1 c7 82 30        MOV        dword ptr [EDX + 0x20730],0x1
                 07 02 00
                 01 00 00 00
                             LAB_08098deb                                    XREF[1]:     08098ddf(j)
        08098deb 50              PUSH       EAX
        08098dec 50              PUSH       EAX
        08098ded 6a 02           PUSH       0x2
        08098def 68 b4 00        PUSH       0xb4
                 00 00
        08098df4 e8 97 21        CALL       TimerInit                                        undefined TimerInit()
                 fe ff
        08098df9 c7 04 24        MOV        dword ptr [ESP]=>local_1c,s_Initializing_keybo   = "Initializing keyboard.\n"
                 c0 88 27 08
        08098e00 e8 cb bf        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098e05 e8 26 b8        CALL       KBInit                                           undefined KBInit()
                 fb ff
        08098e0a c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x2
                 02 00 00 00
        08098e11 e8 7a ba        CALL       KBBufferChange                                   undefined KBBufferChange()
                 fb ff
        08098e16 5e              POP        ESI
        08098e17 5f              POP        EDI
        08098e18 6a 00           PUSH       0x0
        08098e1a 6a 00           PUSH       0x0
        08098e1c e8 9f b9        CALL       KBRepeatSet                                      undefined KBRepeatSet()
                 fb ff
        08098e21 c7 05 70        MOV        dword ptr [KBFilterRelease],0x0                  = 00000001h
                 71 28 08
                 00 00 00 00
        08098e2b c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x1
                 01 00 00 00
        08098e32 e8 09 ba        CALL       KBLEDLockSet                                     undefined KBLEDLockSet()
                 fb ff
        08098e37 c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x0
                 00 00 00 00
        08098e3e e8 1d ba        CALL       KBLEDSet                                         undefined KBLEDSet()
                 fb ff
        08098e43 e8 a8 07        CALL       GameDefKeyInit                                   undefined GameDefKeyInit()
                 00 00
        08098e48 e8 93 b1        CALL       UInpInit                                         undefined UInpInit()
                 fb ff
        08098e4d 83 c4 10        ADD        ESP,0x10
        08098e50 85 c0           TEST       EAX,EAX
        08098e52 75 10           JNZ        LAB_08098e64
        08098e54 83 ec 0c        SUB        ESP,0xc
        08098e57 68 d8 88        PUSH       s_Can't_init_input_082788d8                      = "Can't init input"
                 27 08
        08098e5c e8 6f 45        CALL       ErrorExitM                                       undefined ErrorExitM()
                 ff ff
        08098e61 83 c4 10        ADD        ESP,0x10
                             LAB_08098e64                                    XREF[1]:     08098e52(j)
        08098e64 83 ec 0c        SUB        ESP,0xc
        08098e67 68 e9 88        PUSH       s_Initializing_sound..._082788e9                 = "Initializing sound..."
                 27 08
        08098e6c e8 5f bf        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098e71 83 c4 10        ADD        ESP,0x10
        08098e74 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0x28c]]
                 98 02 00 00
        08098e7b 85 db           TEST       EBX,EBX
        08098e7d 74 28           JZ         LAB_08098ea7
        08098e7f a1 74 7a        MOV        EAX,[g]
                 28 08
        08098e84 83 ec 0c        SUB        ESP,0xc
        08098e87 c7 80 cc        MOV        dword ptr [EAX + 0x1bbcc],0x0
                 bb 01 00
                 00 00 00 00
        08098e91 6a 00           PUSH       0x0
        08098e93 e8 c8 d8        CALL       SndSetMode                                       undefined SndSetMode()
                 fb ff
        08098e98 c7 04 24        MOV        dword ptr [ESP]=>local_1c,s_sound_is_disabled_   = "sound is disabled\n"
                 ff 88 27 08
        08098e9f e8 2c bf        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098ea4 83 c4 10        ADD        ESP,0x10
                             LAB_08098ea7                                    XREF[1]:     08098e7d(j)
        08098ea7 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098eac 8b 88 cc        MOV        ECX,dword ptr [EAX + 0x1bbcc]
                 bb 01 00
        08098eb2 85 c9           TEST       ECX,ECX
        08098eb4 0f 84 e0        JZ         LAB_08098f9a
                 00 00 00
        08098eba 52              PUSH       EDX
        08098ebb 8b b8 74        MOV        EDI,dword ptr [EAX + 0x1d574]
                 d5 01 00
        08098ec1 57              PUSH       EDI
        08098ec2 8b b0 70        MOV        ESI,dword ptr [EAX + 0x1d570]
                 d5 01 00
        08098ec8 56              PUSH       ESI
        08098ec9 8b 98 6c        MOV        EBX,dword ptr [EAX + 0x1d56c]
                 d5 01 00
        08098ecf 53              PUSH       EBX
        08098ed0 e8 cb d8        CALL       SndInit                                          undefined SndInit()
                 fb ff
        08098ed5 83 c4 10        ADD        ESP,0x10
        08098ed8 85 c0           TEST       EAX,EAX
        08098eda 0f 85 80        JNZ        LAB_08098f60
                 00 00 00
        08098ee0 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098ee5 51              PUSH       ECX
        08098ee6 8b 90 74        MOV        EDX,dword ptr [EAX + 0x1d574]
                 d5 01 00
        08098eec 52              PUSH       EDX
        08098eed 6a 00           PUSH       0x0
        08098eef 8b 80 6c        MOV        EAX,dword ptr [EAX + 0x1d56c]
                 d5 01 00
        08098ef5 50              PUSH       EAX
        08098ef6 e8 a5 d8        CALL       SndInit                                          undefined SndInit()
                 fb ff
        08098efb 83 c4 10        ADD        ESP,0x10
        08098efe 85 c0           TEST       EAX,EAX
        08098f00 75 4e           JNZ        LAB_08098f50
        08098f02 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098f07 57              PUSH       EDI
        08098f08 8b b0 74        MOV        ESI,dword ptr [EAX + 0x1d574]
                 d5 01 00
        08098f0e 56              PUSH       ESI
        08098f0f 8b 98 70        MOV        EBX,dword ptr [EAX + 0x1d570]
                 d5 01 00
        08098f15 53              PUSH       EBX
        08098f16 6a 00           PUSH       0x0
        08098f18 e8 83 d8        CALL       SndInit                                          undefined SndInit()
                 fb ff
        08098f1d 83 c4 10        ADD        ESP,0x10
        08098f20 85 c0           TEST       EAX,EAX
        08098f22 75 22           JNZ        LAB_08098f46
        08098f24 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098f29 83 ec 0c        SUB        ESP,0xc
        08098f2c c7 80 cc        MOV        dword ptr [EAX + 0x1bbcc],0x0
                 bb 01 00
                 00 00 00 00
        08098f36 6a 00           PUSH       0x0
        08098f38 e8 23 d8        CALL       SndSetMode                                       undefined SndSetMode()
                 fb ff
        08098f3d c7 04 24        MOV        dword ptr [ESP]=>local_1c,s_failed_to_init_har   = "failed to init hardware.\n"
                 12 89 27 08
        08098f44 eb 2b           JMP        LAB_08098f71
                             LAB_08098f46                                    XREF[1]:     08098f22(j)
        08098f46 83 ec 0c        SUB        ESP,0xc
        08098f49 68 2c 89        PUSH       s_no_wave_device_found._0827892c                 = "no wave device found.\n"
                 27 08
        08098f4e eb 21           JMP        LAB_08098f71
                             LAB_08098f50                                    XREF[1]:     08098f00(j)
        08098f50 83 ec 0c        SUB        ESP,0xc
        08098f53 68 43 89        PUSH       s_no_midi_device_found._08278943                 = "no midi device found.\n"
                 27 08
        08098f58 eb 17           JMP        LAB_08098f71
        08098f5a 8d              ??         8Dh
        08098f5b b6              ??         B6h
        08098f5c 00              ??         00h
        08098f5d 00              ??         00h
        08098f5e 00              ??         00h
        08098f5f 00              ??         00h
                             LAB_08098f60                                    XREF[1]:     08098eda(j)
        08098f60 83 ec 0c        SUB        ESP,0xc
        08098f63 6a 01           PUSH       0x1
        08098f65 e8 f6 d7        CALL       SndSetMode                                       undefined SndSetMode()
                 fb ff
        08098f6a c7 04 24        MOV        dword ptr [ESP]=>local_1c,s_ok_0827e459+19       = "ok\n"
                 6c e4 27 08
                             LAB_08098f71                                    XREF[3]:     08098f44(j), 08098f4e(j),
                                                                                          08098f58(j)
        08098f71 e8 5a be        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098f76 83 c4 10        ADD        ESP,0x10
        08098f79 83 ec 0c        SUB        ESP,0xc
        08098f7c 6a 00           PUSH       0x0
        08098f7e e8 7d 7d        CALL       ErrorSet                                         undefined ErrorSet()
                 fb ff
        08098f83 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098f88 83 c4 10        ADD        ESP,0x10
        08098f8b 8b 88 80        MOV        ECX,dword ptr [EAX + 0x1d580]
                 d5 01 00
        08098f91 85 c9           TEST       ECX,ECX
        08098f93 74 05           JZ         LAB_08098f9a
        08098f95 e8 e6 ef        CALL       MP3Init                                          undefined MP3Init()
                 fb ff
                             LAB_08098f9a                                    XREF[2]:     08098eb4(j), 08098f93(j)
        08098f9a 83 ec 0c        SUB        ESP,0xc
        08098f9d 68 5a 89        PUSH       s_Initializing_graphics._0827895a                = "Initializing graphics.\n"
                 27 08
        08098fa2 e8 29 be        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08098fa7 e8 a4 9a        CALL       G_Init                                           undefined G_Init()
                 fb ff
        08098fac 83 c4 10        ADD        ESP,0x10
        08098faf 85 c0           TEST       EAX,EAX
        08098fb1 75 05           JNZ        LAB_08098fb8
        08098fb3 e8 48 43        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_08098fb8                                    XREF[1]:     08098fb1(j)
        08098fb8 83 ec 0c        SUB        ESP,0xc
        08098fbb a1 74 7a        MOV        EAX,[g]
                 28 08
        08098fc0 8b 98 58        MOV        EBX,dword ptr [EAX + 0x1d558]
                 d5 01 00
        08098fc6 6a 00           PUSH       0x0
        08098fc8 e8 33 9b        CALL       G_SetRenderMode                                  undefined G_SetRenderMode()
                 fb ff
        08098fcd 83 c4 10        ADD        ESP,0x10
        08098fd0 85 c0           TEST       EAX,EAX
        08098fd2 75 05           JNZ        LAB_08098fd9
        08098fd4 e8 27 43        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_08098fd9                                    XREF[1]:     08098fd2(j)
        08098fd9 a1 74 7a        MOV        EAX,[g]
                 28 08
        08098fde 8b 90 54        MOV        EDX,dword ptr [EAX + 0x1d554]
                 d5 01 00
        08098fe4 52              PUSH       EDX
        08098fe5 8b b8 50        MOV        EDI,dword ptr [EAX + 0x1d550]
                 d5 01 00
        08098feb 57              PUSH       EDI
        08098fec 8b b0 4c        MOV        ESI,dword ptr [EAX + 0x1d54c]
                 d5 01 00
        08098ff2 56              PUSH       ESI
        08098ff3 53              PUSH       EBX
        08098ff4 e8 27 9b        CALL       G_SetMode                                        undefined G_SetMode()
                 fb ff
        08098ff9 83 c4 10        ADD        ESP,0x10
        08098ffc 85 c0           TEST       EAX,EAX
        08098ffe 0f 85 b4        JNZ        LAB_080990b8
                 00 00 00
        08099004 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        0809900a 89 f0           MOV        EAX,ESI
        0809900c 81 be 4c        CMP        dword ptr [ESI + 0x1d54c],0x280
                 d5 01 00
                 80 02 00 00
        08099016 75 19           JNZ        LAB_08099031
        08099018 81 be 50        CMP        dword ptr [ESI + 0x1d550],0x1e0
                 d5 01 00
                 e0 01 00 00
        08099022 75 0d           JNZ        LAB_08099031
        08099024 83 be 54        CMP        dword ptr [ESI + 0x1d554],0x10
                 d5 01 00 10
        0809902b 0f 84 82        JZ         LAB_080990b3
                 00 00 00
                             LAB_08099031                                    XREF[2]:     08099016(j), 08099022(j)
        08099031 8b 88 54        MOV        ECX,dword ptr [EAX + 0x1d554]
                 d5 01 00
        08099037 51              PUSH       ECX
        08099038 8b 90 50        MOV        EDX,dword ptr [EAX + 0x1d550]
                 d5 01 00
        0809903e 52              PUSH       EDX
        0809903f 8b 80 4c        MOV        EAX,dword ptr [EAX + 0x1d54c]
                 d5 01 00
        08099045 50              PUSH       EAX
        08099046 68 40 90        PUSH       s_Error:_Can't_change_video_mode_t_08279040      = "\nError: Can't change video m
                 27 08
        0809904b e8 80 bd        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08099050 c7 04 24        MOV        dword ptr [ESP]=>local_1c,s_Switch_to_640x480x   = "Switch to 640x480x16bits? (y/
                 80 90 27 08
        08099057 e8 74 bd        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        0809905c 5f              POP        EDI
        0809905d 8b 35 24        MOV        ESI,dword ptr [->_IO_2_1_stdout_]                = 082a4700
                 49 2a 08
        08099063 56              PUSH       ESI=>_IO_2_1_stdout_                             = 2084h
        08099064 e8 b7 bf        CALL       fflush                                           int fflush(FILE * __stream)
                 13 00
        08099069 e8 32 b8        CALL       KBBufferClear                                    undefined KBBufferClear()
                 fb ff
        0809906e 83 c4 10        ADD        ESP,0x10
                             LAB_08099071                                    XREF[1]:     0809907b(j)
        08099071 e8 ca b8        CALL       KBgetchraw                                       undefined KBgetchraw()
                 fb ff
        08099076 a9 00 01        TEST       EAX,0x100
                 00 00
        0809907b 75 f4           JNZ        LAB_08099071
        0809907d 83 f8 15        CMP        EAX,0x15
        08099080 74 05           JZ         LAB_08099087
        08099082 e8 79 42        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_08099087                                    XREF[1]:     08099080(j)
        08099087 6a 10           PUSH       0x10
        08099089 68 e0 01        PUSH       0x1e0
                 00 00
        0809908e 68 80 02        PUSH       0x280
                 00 00
        08099093 6a 00           PUSH       0x0
        08099095 e8 86 9a        CALL       G_SetMode                                        undefined G_SetMode()
                 fb ff
        0809909a 83 c4 10        ADD        ESP,0x10
        0809909d 85 c0           TEST       EAX,EAX
        0809909f 75 17           JNZ        LAB_080990b8
        080990a1 83 ec 0c        SUB        ESP,0xc
        080990a4 68 c0 90        PUSH       s_Unable_to_initialize_graphics_fo_082790c0      = "Unable to initialize graphics
                 27 08
        080990a9 e8 22 43        CALL       ErrorExitM                                       undefined ErrorExitM()
                 ff ff
        080990ae 83 c4 10        ADD        ESP,0x10
        080990b1 eb 05           JMP        LAB_080990b8
                             LAB_080990b3                                    XREF[1]:     0809902b(j)
        080990b3 e8 48 42        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_080990b8                                    XREF[3]:     08098ffe(j), 0809909f(j),
                                                                                          080990b1(j)
        080990b8 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080990be 83 be 54        CMP        dword ptr [ESI + 0x1d554],0x20
                 d5 01 00 20
        080990c5 75 13           JNZ        LAB_080990da
        080990c7 83 ec 0c        SUB        ESP,0xc
        080990ca 6a 01           PUSH       0x1
        080990cc e8 ff 9b        CALL       G_SetRGBtoBGR                                    undefined G_SetRGBtoBGR()
                 fb ff
        080990d1 83 c4 10        ADD        ESP,0x10
        080990d4 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_080990da                                    XREF[1]:     080990c5(j)
        080990da 8b 9e 5c        MOV        EBX,dword ptr [ESI + 0x1d55c]
                 d5 01 00
        080990e0 85 db           TEST       EBX,EBX
        080990e2 74 19           JZ         LAB_080990fd
        080990e4 51              PUSH       ECX
        080990e5 51              PUSH       ECX
        080990e6 6a 01           PUSH       0x1
        080990e8 8b 96 5c        MOV        EDX,dword ptr [ESI + 0x1d55c]
                 d5 01 00
        080990ee 52              PUSH       EDX
        080990ef e8 1c 9c        CALL       G_SetBlitMode                                    undefined G_SetBlitMode()
                 fb ff
        080990f4 83 c4 10        ADD        ESP,0x10
        080990f7 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_080990fd                                    XREF[1]:     080990e2(j)
        080990fd c7 86 9c        MOV        dword ptr [ESI + 0x1d39c],0x1
                 d3 01 00
                 01 00 00 00
        08099107 e8 f4 32        CALL       SwitchCallbacksInit                              undefined SwitchCallbacksInit()
                 00 00
        0809910c e8 df 2b        CALL       GameVarInit                                      undefined GameVarInit()
                 00 00
        08099111 85 c0           TEST       EAX,EAX
        08099113 75 05           JNZ        LAB_0809911a
        08099115 e8 e6 41        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_0809911a                                    XREF[1]:     08099113(j)
        0809911a 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        08099120 50              PUSH       EAX
        08099121 50              PUSH       EAX
        08099122 a1 74 7a        MOV        EAX,[g]
                 28 08
        08099127 57              PUSH       EDI
        08099128 05 ff 0f        ADD        EAX,0xfff
                 00 00
        0809912d 50              PUSH       EAX
        0809912e e8 9d 74        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08099133 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        08099139 8d 9e ff        LEA        EBX,[ESI + 0xfff]
                 0f 00 00
        0809913f 8d 7e 0f        LEA        EDI,[ESI + 0xf]
        08099142 89 1c 24        MOV        dword ptr [ESP]=>local_1c,EBX
        08099145 e8 e6 76        CALL       strlen                                           size_t strlen(char * __s)
                 14 00
        0809914a 83 c4 10        ADD        ESP,0x10
        0809914d 80 bc 07        CMP        byte ptr [EDI + EAX*0x1 + 0xfef],0x5c
                 ef 0f 00
                 00 5c
        08099155 75 1a           JNZ        LAB_08099171
        08099157 83 ec 0c        SUB        ESP,0xc
        0809915a 53              PUSH       EBX
        0809915b e8 d0 76        CALL       strlen                                           size_t strlen(char * __s)
                 14 00
        08099160 83 c4 10        ADD        ESP,0x10
        08099163 c6 84 07        MOV        byte ptr [EDI + EAX*0x1 + 0xfef],0x0
                 ef 0f 00
                 00 00
        0809916b 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_08099171                                    XREF[1]:     08099155(j)
        08099171 83 ec 0c        SUB        ESP,0xc
        08099174 8d 9e ff        LEA        EBX,[ESI + 0xfff]
                 0f 00 00
        0809917a 53              PUSH       EBX
        0809917b e8 b0 76        CALL       strlen                                           size_t strlen(char * __s)
                 14 00
        08099180 83 c4 10        ADD        ESP,0x10
        08099183 80 bc 30        CMP        byte ptr [EAX + ESI*0x1 + 0xffe],0x2f
                 fe 0f 00
                 00 2f
        0809918b 74 10           JZ         LAB_0809919d
        0809918d 56              PUSH       ESI
        0809918e 56              PUSH       ESI
        0809918f 68 77 43        PUSH       s_/_0828435b+28                                  = "/"
                 28 08
        08099194 53              PUSH       EBX
        08099195 e8 76 70        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        0809919a 83 c4 10        ADD        ESP,0x10
                             LAB_0809919d                                    XREF[1]:     0809918b(j)
        0809919d e8 be 2f        CALL       GameVarLoadFonts                                 undefined GameVarLoadFonts()
                 00 00
        080991a2 85 c0           TEST       EAX,EAX
        080991a4 75 05           JNZ        LAB_080991ab
        080991a6 e8 55 41        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_080991ab                                    XREF[1]:     080991a4(j)
        080991ab e8 f0 bc        CALL       GameResetOptions                                 undefined GameResetOptions()
                 03 00
        080991b0 e8 3b bd        CALL       GameLoadOptions                                  undefined GameLoadOptions()
                 03 00
        080991b5 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x2e0]]
                 ec 02 00 00
        080991bc 85 d2           TEST       EDX,EDX
        080991be 7e 0b           JLE        LAB_080991cb
        080991c0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080991c5 89 90 78        MOV        dword ptr [EAX + 0x1e678],EDX
                 e6 01 00
                             LAB_080991cb                                    XREF[1]:     080991be(j)
        080991cb 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x2e4]]
                 f0 02 00 00
        080991d2 8d 42 09        LEA        EAX,[EDX + 0x9]
        080991d5 83 f8 12        CMP        EAX,0x12
        080991d8 77 0b           JA         LAB_080991e5
        080991da a1 74 7a        MOV        EAX,[g]
                 28 08
        080991df 89 90 84        MOV        dword ptr [EAX + 0x1e684],EDX
                 e6 01 00
                             LAB_080991e5                                    XREF[1]:     080991d8(j)
        080991e5 80 bc 24        CMP        byte ptr [ESP + Stack[0x144]],0x0
                 50 01 00
                 00 00
        080991ed 0f 84 db        JZ         LAB_080992ce
                 00 00 00
        080991f3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080991f8 8d b4 24        LEA        ESI=>Stack[0x144],[ESP + 0x150]
                 50 01 00 00
        080991ff 89 f1           MOV        ECX,ESI
        08099201 89 f3           MOV        EBX,ESI
        08099203 c7 80 ff        MOV        dword ptr [EAX + 0x15aff],0x61746164
                 5a 01 00
                 64 61 74 61
        0809920d 66 c7 80        MOV        word ptr [EAX + 0x15b03],0x2f
                 03 5b 01
                 00 2f 00
                             LAB_08099216                                    XREF[1]:     0809922c(j)
        08099216 8b 01           MOV        EAX,dword ptr [ECX]=>Stack[0x144]
        08099218 83 c1 04        ADD        ECX,0x4
        0809921b 8d 90 ff        LEA        EDX,[EAX + 0xfefefeff]
                 fe fe fe
        08099221 83 f0 ff        XOR        EAX,0xffffffff
        08099224 21 c2           AND        EDX,EAX
        08099226 81 e2 80        AND        EDX,0x80808080
                 80 80 80
        0809922c 74 e8           JZ         LAB_08099216
        0809922e f7 c2 80        TEST       EDX,0x8080
                 80 00 00
        08099234 75 06           JNZ        LAB_0809923c
        08099236 c1 ea 10        SHR        EDX,0x10
        08099239 83 c1 02        ADD        ECX,0x2
                             LAB_0809923c                                    XREF[1]:     08099234(j)
        0809923c 00 d2           ADD        DL,DL
        0809923e 83 d9 03        SBB        ECX,0x3
        08099241 29 d9           SUB        ECX,EBX
        08099243 83 f9 03        CMP        ECX,0x3
        08099246 76 4c           JBE        LAB_08099294
        08099248 89 f1           MOV        ECX,ESI
        0809924a 53              PUSH       EBX
        0809924b 53              PUSH       EBX
        0809924c 89 cb           MOV        EBX,ECX
        0809924e 68 68 d8        PUSH       s_.def_0827d85d+11                               = ".def"
                 27 08
                             LAB_08099253                                    XREF[1]:     08099269(j)
        08099253 8b 01           MOV        EAX,dword ptr [ECX]=>Stack[0x144]
        08099255 83 c1 04        ADD        ECX,0x4
        08099258 8d 90 ff        LEA        EDX,[EAX + 0xfefefeff]
                 fe fe fe
        0809925e 83 f0 ff        XOR        EAX,0xffffffff
        08099261 21 c2           AND        EDX,EAX
        08099263 81 e2 80        AND        EDX,0x80808080
                 80 80 80
        08099269 74 e8           JZ         LAB_08099253
        0809926b f7 c2 80        TEST       EDX,0x8080
                 80 00 00
        08099271 75 06           JNZ        LAB_08099279
        08099273 c1 ea 10        SHR        EDX,0x10
        08099276 83 c1 02        ADD        ECX,0x2
                             LAB_08099279                                    XREF[1]:     08099271(j)
        08099279 00 d2           ADD        DL,DL
        0809927b 83 d9 03        SBB        ECX,0x3
        0809927e 29 d9           SUB        ECX,EBX
        08099280 8d 84 0c        LEA        EAX,[ESP + ECX*0x1 + 0x158]
                 58 01 00 00
        08099287 50              PUSH       EAX
        08099288 e8 f3 8d        CALL       _alemu_stricmp                                   undefined _alemu_stricmp()
                 06 00
        0809928d 83 c4 10        ADD        ESP,0x10
        08099290 85 c0           TEST       EAX,EAX
        08099292 74 17           JZ         LAB_080992ab
                             LAB_08099294                                    XREF[1]:     08099246(j)
        08099294 51              PUSH       ECX
        08099295 51              PUSH       ECX
        08099296 68 61 d8        PUSH       s_/system.def_0827d85d+4                         = "/system.def"
                 27 08
        0809929b 8d 84 24        LEA        EAX=>Stack[0x144],[ESP + 0x15c]
                 5c 01 00 00
        080992a2 50              PUSH       EAX
        080992a3 e8 68 6f        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        080992a8 83 c4 10        ADD        ESP,0x10
                             LAB_080992ab                                    XREF[1]:     08099292(j)
        080992ab a1 74 7a        MOV        EAX,[g]
                 28 08
        080992b0 52              PUSH       EDX
        080992b1 8d 90 00        LEA        EDX,[EAX + 0x14b00]
                 4b 01 00
        080992b7 05 04 5b        ADD        EAX,0x15b04
                 01 00
        080992bc 52              PUSH       EDX
        080992bd 50              PUSH       EAX
        080992be 8d 84 24        LEA        EAX=>Stack[0x144],[ESP + 0x15c]
                 5c 01 00 00
        080992c5 50              PUSH       EAX
        080992c6 e8 f5 7d        CALL       splitdirfile                                     undefined splitdirfile()
                 fb ff
        080992cb 83 c4 10        ADD        ESP,0x10
                             LAB_080992ce                                    XREF[1]:     080991ed(j)
        080992ce e8 8d 98        CALL       GameLoadSystem                                   undefined GameLoadSystem()
                 03 00
        080992d3 85 c0           TEST       EAX,EAX
        080992d5 75 51           JNZ        LAB_08099328
        080992d7 50              PUSH       EAX
        080992d8 50              PUSH       EAX
        080992d9 a1 74 7a        MOV        EAX,[g]
                 28 08
        080992de 68 72 89        PUSH       s_Error_loading_system_data:_08278972            = "\nError loading system data: "
                 27 08
        080992e3 05 48 07        ADD        EAX,0x20748
                 02 00
        080992e8 50              PUSH       EAX
        080992e9 e8 22 6f        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        080992ee 5e              POP        ESI
        080992ef a1 74 7a        MOV        EAX,[g]
                 28 08
        080992f4 5f              POP        EDI
        080992f5 8d 90 ff        LEA        EDX,[EAX + 0x15aff]
                 5a 01 00
        080992fb 05 48 07        ADD        EAX,0x20748
                 02 00
        08099300 52              PUSH       EDX
        08099301 50              PUSH       EAX
        08099302 e8 09 6f        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        08099307 59              POP        ECX
        08099308 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809930d 5b              POP        EBX
        0809930e 8d 90 00        LEA        EDX,[EAX + 0x14b00]
                 4b 01 00
        08099314 05 48 07        ADD        EAX,0x20748
                 02 00
        08099319 52              PUSH       EDX
        0809931a 50              PUSH       EAX
        0809931b e8 f0 6e        CALL       strcat                                           char * strcat(char * __dest, cha
                 14 00
        08099320 e8 db 3f        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
        08099325 83 c4 10        ADD        ESP,0x10
                             LAB_08099328                                    XREF[1]:     080992d5(j)
        08099328 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809932d 52              PUSH       EDX
        0809932e 52              PUSH       EDX
        0809932f 6a ff           PUSH       -0x1
        08099331 8b 80 d4        MOV        EAX,dword ptr [EAX + 0x1bbd4]
                 bb 01 00
        08099337 50              PUSH       EAX
        08099338 e8 63 0f        CALL       GameSetVol                                       undefined GameSetVol()
                 02 00
        0809933d 83 c4 10        ADD        ESP,0x10
        08099340 5b              POP        EBX
        08099341 5e              POP        ESI
        08099342 5f              POP        EDI
        08099343 c3              RET
