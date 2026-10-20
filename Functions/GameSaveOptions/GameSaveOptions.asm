                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSaveOptions()
             undefined         <UNASSIGNED>   <RETURN>
                             GameSaveOptions                                 XREF[2]:     Entry Point(*),
                                                                                          OptionsScreen:080a2240(c)
        080d51e0 55              PUSH       EBP
        080d51e1 57              PUSH       EDI
        080d51e2 56              PUSH       ESI
        080d51e3 53              PUSH       EBX
        080d51e4 83 ec 4c        SUB        ESP,0x4c
        080d51e7 89 e5           MOV        EBP,ESP
        080d51e9 83 ec 0c        SUB        ESP,0xc
        080d51ec 68 b1 88        PUSH       s_data/mugen.cfg_082788a2+15                     = "data/mugen.cfg"
                 27 08
        080d51f1 e8 4a 66        CALL       TPReadFileForWrite                               undefined TPReadFileForWrite()
                 fa ff
        080d51f6 89 c3           MOV        EBX,EAX
        080d51f8 83 c4 10        ADD        ESP,0x10
        080d51fb 85 db           TEST       EBX,EBX
        080d51fd 75 1f           JNZ        LAB_080d521e
        080d51ff a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5204 56              PUSH       ESI
        080d5205 05 48 07        ADD        EAX,0x20748
                 02 00
        080d520a 56              PUSH       ESI
        080d520b 68 9b d8        PUSH       s_Error_saving_options_0827d89b                  = "Error saving options"
                 27 08
        080d5210 50              PUSH       EAX
        080d5211 e8 0a fc        CALL       sprintf                                          int sprintf(char * __s, char * _
                 0f 00
        080d5216 e8 e5 80        CALL       ErrorExit                                        undefined ErrorExit()
                 fb ff
        080d521b 83 c4 10        ADD        ESP,0x10
                             LAB_080d521e                                    XREF[1]:     080d51fd(j)
        080d521e 51              PUSH       ECX
        080d521f 51              PUSH       ECX
        080d5220 68 97 97        PUSH       s_Options_0827978d+10                            = "Options"
                 27 08
        080d5225 53              PUSH       EBX
        080d5226 e8 55 6b        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d522b 83 c4 10        ADD        ESP,0x10
        080d522e 40              INC        EAX
        080d522f 0f 84 ec        JZ         LAB_080d5321
                 00 00 00
        080d5235 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d523a 8b 90 78        MOV        EDX,dword ptr [EAX + 0x1e678]
                 e6 01 00
        080d5240 52              PUSH       EDX
        080d5241 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5246 68 e1 96        PUSH       s_Difficulty_082796e1                            = "Difficulty"
                 27 08
        080d524b 53              PUSH       EBX
        080d524c e8 ff 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d5251 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5256 8b 80 7c        MOV        EAX,dword ptr [EAX + 0x1e67c]
                 e6 01 00
        080d525c 50              PUSH       EAX
        080d525d 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5262 68 76 d8        PUSH       DAT_0827d876                                     = 4Ch    L
                 27 08
        080d5267 53              PUSH       EBX
        080d5268 e8 e3 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d526d a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5272 83 c4 20        ADD        ESP,0x20
        080d5275 8b b8 80        MOV        EDI,dword ptr [EAX + 0x1e680]
                 e6 01 00
        080d527b 57              PUSH       EDI
        080d527c 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5281 68 33 d8        PUSH       DAT_0827d833                                     = 54h    T
                 27 08
        080d5286 53              PUSH       EBX
        080d5287 e8 c4 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d528c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5291 8b b0 84        MOV        ESI,dword ptr [EAX + 0x1e684]
                 e6 01 00
        080d5297 56              PUSH       ESI
        080d5298 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d529d 68 38 d8        PUSH       s_GameSpeed_0827d838                             = "GameSpeed"
                 27 08
        080d52a2 53              PUSH       EBX
        080d52a3 e8 a8 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d52a8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d52ad 83 c4 20        ADD        ESP,0x20
        080d52b0 8b 88 88        MOV        ECX,dword ptr [EAX + 0x1e688]
                 e6 01 00
        080d52b6 51              PUSH       ECX
        080d52b7 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d52bc 68 42 d8        PUSH       s_WavVolume_0827d842                             = "WavVolume"
                 27 08
        080d52c1 53              PUSH       EBX
        080d52c2 e8 89 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d52c7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d52cc 8b 90 8c        MOV        EDX,dword ptr [EAX + 0x1e68c]
                 e6 01 00
        080d52d2 52              PUSH       EDX
        080d52d3 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d52d8 68 4c d8        PUSH       s_MidiVolume_0827d84c                            = "MidiVolume"
                 27 08
        080d52dd 53              PUSH       EBX
        080d52de e8 6d 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d52e3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d52e8 83 c4 20        ADD        ESP,0x20
        080d52eb 8b 80 d0        MOV        EAX,dword ptr [EAX + 0x1e6d0]
                 e6 01 00
        080d52f1 50              PUSH       EAX
        080d52f2 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d52f7 68 6d d8        PUSH       DAT_0827d86d                                     = 54h    T
                 27 08
        080d52fc 53              PUSH       EBX
        080d52fd e8 4e 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d5302 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5307 8b b8 d4        MOV        EDI,dword ptr [EAX + 0x1e6d4]
                 e6 01 00
        080d530d 57              PUSH       EDI
        080d530e 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5313 68 7b d8        PUSH       s_Team.LoseOnKO_0827d87b                         = "Team.LoseOnKO"
                 27 08
        080d5318 53              PUSH       EBX
        080d5319 e8 32 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d531e 83 c4 20        ADD        ESP,0x20
                             LAB_080d5321                                    XREF[1]:     080d522f(j)
        080d5321 56              PUSH       ESI
        080d5322 56              PUSH       ESI
        080d5323 68 50 d7        PUSH       s_Input_0827d750                                 = "Input"
                 27 08
        080d5328 53              PUSH       EBX
        080d5329 e8 52 6a        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fa ff
        080d532e 83 c4 10        ADD        ESP,0x10
        080d5331 40              INC        EAX
        080d5332 74 3b           JZ         LAB_080d536f
        080d5334 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5339 8b 88 ac        MOV        ECX,dword ptr [EAX + 0x1e6ac]
                 e6 01 00
        080d533f 51              PUSH       ECX
        080d5340 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5345 68 8d d7        PUSH       s_p1.joystick.type_0827d78d                      = "p1.joystick.type"
                 27 08
        080d534a 53              PUSH       EBX
        080d534b e8 00 75        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d5350 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5355 8b 90 c0        MOV        EDX,dword ptr [EAX + 0x1e6c0]
                 e6 01 00
        080d535b 52              PUSH       EDX
        080d535c 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080d5361 68 9e d7        PUSH       s_p2.joystick.type_0827d79e                      = "p2.joystick.type"
                 27 08
        080d5366 53              PUSH       EBX
        080d5367 e8 e4 74        CALL       TPPrintf                                         undefined TPPrintf()
                 fa ff
        080d536c 83 c4 20        ADD        ESP,0x20
                             LAB_080d536f                                    XREF[1]:     080d5332(j)
        080d536f fc              CLD
        080d5370 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d5376 b9 0d 00        MOV        ECX,0xd
                 00 00
        080d537b 81 c6 84        ADD        ESI,0x1cc84
                 cc 01 00
        080d5381 89 ef           MOV        EDI,EBP
        080d5383 f3 a5           MOVSD.REP  ES:EDI,ESI
        080d5385 50              PUSH       EAX
        080d5386 89 ef           MOV        EDI,EBP
        080d5388 50              PUSH       EAX
        080d5389 68 00 01        PUSH       0x100
                 00 00
        080d538e 55              PUSH       EBP
        080d538f e8 3c 03        CALL       PlayerKeysConvertToZero                          undefined PlayerKeysConvertToZer
                 00 00
        080d5394 83 c4 0c        ADD        ESP,0xc
        080d5397 68 b8 d7        PUSH       s_p1_keys_0827d7b8                               = "p1 keys"
                 27 08
        080d539c 55              PUSH       EBP
        080d539d 53              PUSH       EBX
        080d539e e8 dd 01        CALL       PlayerSaveKeys                                   undefined PlayerSaveKeys()
                 00 00
        080d53a3 fc              CLD
        080d53a4 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d53aa b9 0d 00        MOV        ECX,0xd
                 00 00
        080d53af 81 c6 b8        ADD        ESI,0x1ccb8
                 cc 01 00
        080d53b5 f3 a5           MOVSD.REP  ES:EDI,ESI
        080d53b7 5e              POP        ESI
        080d53b8 5f              POP        EDI
        080d53b9 89 ef           MOV        EDI,EBP
        080d53bb 68 00 01        PUSH       0x100
                 00 00
        080d53c0 55              PUSH       EBP
        080d53c1 e8 0a 03        CALL       PlayerKeysConvertToZero                          undefined PlayerKeysConvertToZer
                 00 00
        080d53c6 83 c4 0c        ADD        ESP,0xc
        080d53c9 68 da d7        PUSH       s_p2_keys_0827d7da                               = "p2 keys"
                 27 08
        080d53ce 55              PUSH       EBP
        080d53cf 53              PUSH       EBX
        080d53d0 e8 ab 01        CALL       PlayerSaveKeys                                   undefined PlayerSaveKeys()
                 00 00
        080d53d5 fc              CLD
        080d53d6 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d53dc b9 0d 00        MOV        ECX,0xd
                 00 00
        080d53e1 81 c6 bc        ADD        ESI,0x1cdbc
                 cd 01 00
        080d53e7 f3 a5           MOVSD.REP  ES:EDI,ESI
        080d53e9 5a              POP        EDX
        080d53ea 89 ef           MOV        EDI,EBP
        080d53ec 59              POP        ECX
        080d53ed 68 80 00        PUSH       0x80
                 00 00
        080d53f2 55              PUSH       EBP
        080d53f3 e8 d8 02        CALL       PlayerKeysConvertToZero                          undefined PlayerKeysConvertToZer
                 00 00
        080d53f8 83 c4 0c        ADD        ESP,0xc
        080d53fb 68 b0 d8        PUSH       s_p1_joystick_0827d8b0                           = "p1 joystick"
                 27 08
        080d5400 55              PUSH       EBP
        080d5401 53              PUSH       EBX
        080d5402 e8 79 01        CALL       PlayerSaveKeys                                   undefined PlayerSaveKeys()
                 00 00
        080d5407 fc              CLD
        080d5408 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080d540e b9 0d 00        MOV        ECX,0xd
                 00 00
        080d5413 81 c6 f0        ADD        ESI,0x1cdf0
                 cd 01 00
        080d5419 f3 a5           MOVSD.REP  ES:EDI,ESI
        080d541b 5f              POP        EDI
        080d541c 58              POP        EAX
        080d541d 68 80 00        PUSH       0x80
                 00 00
        080d5422 55              PUSH       EBP
        080d5423 e8 a8 02        CALL       PlayerKeysConvertToZero                          undefined PlayerKeysConvertToZer
                 00 00
        080d5428 83 c4 0c        ADD        ESP,0xc
        080d542b 68 bc d8        PUSH       s_p2_joystick_0827d8bc                           = "p2 joystick"
                 27 08
        080d5430 55              PUSH       EBP
        080d5431 53              PUSH       EBX
        080d5432 e8 49 01        CALL       PlayerSaveKeys                                   undefined PlayerSaveKeys()
                 00 00
        080d5437 59              POP        ECX
        080d5438 5e              POP        ESI
        080d5439 68 b1 88        PUSH       s_data/mugen.cfg_082788a2+15                     = "data/mugen.cfg"
                 27 08
        080d543e 53              PUSH       EBX
        080d543f e8 cc 68        CALL       TPWriteFile                                      undefined TPWriteFile()
                 fa ff
        080d5444 83 c4 10        ADD        ESP,0x10
        080d5447 85 c0           TEST       EAX,EAX
        080d5449 75 1f           JNZ        LAB_080d546a
        080d544b a1 74 7a        MOV        EAX,[g]
                 28 08
        080d5450 52              PUSH       EDX
        080d5451 05 48 07        ADD        EAX,0x20748
                 02 00
        080d5456 52              PUSH       EDX
        080d5457 68 9b d8        PUSH       s_Error_saving_options_0827d89b                  = "Error saving options"
                 27 08
        080d545c 50              PUSH       EAX
        080d545d e8 be f9        CALL       sprintf                                          int sprintf(char * __s, char * _
                 0f 00
        080d5462 e8 99 7e        CALL       ErrorExit                                        undefined ErrorExit()
                 fb ff
        080d5467 83 c4 10        ADD        ESP,0x10
                             LAB_080d546a                                    XREF[1]:     080d5449(j)
        080d546a 83 ec 0c        SUB        ESP,0xc
        080d546d 53              PUSH       EBX
        080d546e e8 8d 5d        CALL       TPFree                                           undefined TPFree()
                 fa ff
        080d5473 83 c4 5c        ADD        ESP,0x5c
        080d5476 5b              POP        EBX
        080d5477 5e              POP        ESI
        080d5478 5f              POP        EDI
        080d5479 5d              POP        EBP
        080d547a c3              RET
