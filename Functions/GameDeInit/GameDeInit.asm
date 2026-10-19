                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameDeInit()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1[10]    Stack[-0x1c]   local_1c                                XREF[2]:     080993cf(W),
                                                                                                   080993ee(R)
             undefined8        Stack[-0x28]:8 local_28                                XREF[2]:     080993a9(W),
                                                                                                   080993f4(*)
             undefined8        Stack[-0x30]:8 local_30                                XREF[1,1]:   080993b7(W),
                                                                                                   08099419(*)
             undefined8        Stack[-0x38]:8 local_38                                XREF[1]:     080993c7(*)
                             GameDeInit                                      XREF[2]:     Entry Point(*),
                                                                                          gcc2_compiled.:0809c6db(c)
        08099350 53              PUSH       EBX
        08099351 83 ec 18        SUB        ESP,0x18
        08099354 8b 5c 24 20     MOV        EBX,dword ptr [ESP + Stack[0x4]]
        08099358 6a 08           PUSH       0x8
        0809935a 6a 19           PUSH       0x19
        0809935c 6a 50           PUSH       0x50
        0809935e 6a ff           PUSH       -0x1
        08099360 e8 bb 97        CALL       G_SetMode                                        undefined G_SetMode()
                 fb ff
        08099365 59              POP        ECX
        08099366 8b 0d 7c        MOV        ECX,dword ptr [MUGENDATE_M]                      = 00000004h
                 7a 28 08
        0809936c 8b 15 78        MOV        EDX,dword ptr [MUGENDATE_Y]                      = 000007D2h
                 7a 28 08
        08099372 a1 80 7a        MOV        EAX,[MUGENDATE_D]                                = 0000000Eh
                 28 08
        08099377 52              PUSH       EDX
        08099378 8b 15 78        MOV        EDX,dword ptr [MUGENDATE_Y]                      = 000007D2h
                 7a 28 08
        0809937e 50              PUSH       EAX
        0809937f 51              PUSH       ECX
        08099380 52              PUSH       EDX
        08099381 68 00 91        PUSH       s_M.U.G.E.N_test_ver_%i.%02i.%02i_(_08279100     = "M.U.G.E.N test ver %i.%02i.%0
                 27 08
        08099386 e8 45 ba        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        0809938b 58              POP        EAX
        0809938c a1 74 7a        MOV        EAX,[g]
                 28 08
        08099391 db 05 20        FILD       dword ptr [TicksPerSecond]                       = ??
                 0c 2c 08
        08099397 db 80 18        FILD       dword ptr [EAX + 0x20718]
                 07 02 00
        0809939d d9 05 2c        FLD        float ptr [DAT_0827922c]
                 92 27 08
        080993a3 d9 c9           FXCH
        080993a5 d8 f2           FDIV       ST0,ST2
        080993a7 d8 c9           FMUL       ST1
        080993a9 dd 5c 24 10     FSTP       double ptr [ESP + local_28]
        080993ad db 80 14        FILD       dword ptr [EAX + 0x20714]
                 07 02 00
        080993b3 d8 f2           FDIV       ST0,ST2
        080993b5 d8 c9           FMUL       ST1
        080993b7 dd 5c 24 08     FSTP       double ptr [ESP + local_30]
        080993bb db 80 10        FILD       dword ptr [EAX + 0x20710]
                 07 02 00
        080993c1 de f2           FDIVRP     ST2,ST0
        080993c3 dc c9           FMUL       ST1
        080993c5 d9 c9           FXCH
        080993c7 dd 1c 24        FSTP       double ptr [ESP]=>local_38
        080993ca 68 40 91        PUSH       s_BG_load_time:_%.1f_ms_Player_loa_08279140      = "BG load time: %.1f ms\nPlayer
                 27 08
        080993cf db 7c 24 20     FSTP       extended double ptr [ESP + local_1c[0]]
        080993d3 e8 f8 b9        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        080993d8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080993dd db 05 20        FILD       dword ptr [TicksPerSecond]                       = ??
                 0c 2c 08
        080993e3 db 80 24        FILD       dword ptr [EAX + 0x20724]
                 07 02 00
        080993e9 83 c4 14        ADD        ESP,0x14
        080993ec de f1           FDIVRP
        080993ee db 6c 24 0c     FLD        extended double ptr [ESP + local_1c[0]]
        080993f2 de c9           FMULP
        080993f4 dd 1c 24        FSTP       double ptr [ESP]=>local_28
        080993f7 68 8f 89        PUSH       s_Total_load_time:_%.1f_ms_0827898f              = "Total load time: %.1f ms\n"
                 27 08
        080993fc e8 cf b9        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08099401 5a              POP        EDX
        08099402 a1 74 7a        MOV        EAX,[g]
                 28 08
        08099407 59              POP        ECX
        08099408 8b 80 28        MOV        EAX,dword ptr [EAX + 0x20728]
                 07 02 00
        0809940e 50              PUSH       EAX
        0809940f 68 a9 89        PUSH       s_Pal_groups_in_background:_%i_082789a9          = "Pal groups in background: %i\n"
                 27 08
        08099414 e8 b7 b9        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08099419 c7 04 24        MOV        dword ptr [ESP]=>local_30+0x4,s__08285968+28     = "\n"
                 84 59 28 08
        08099420 e8 ab b9        CALL       printf                                           int printf(char * __format, ...)
                 13 00
        08099425 e8 16 36        CALL       PlayerCacheClear                                 undefined PlayerCacheClear()
                 01 00
        0809942a e8 81 c9        CALL       CharInfoFree                                     undefined CharInfoFree()
                 fe ff
        0809942f 83 c4 10        ADD        ESP,0x10
        08099432 85 db           TEST       EBX,EBX
        08099434 74 05           JZ         LAB_0809943b
        08099436 e8 95 c8        CALL       FreeSelectScreenMatrix                           undefined FreeSelectScreenMatrix()
                 fe ff
                             LAB_0809943b                                    XREF[1]:     08099434(j)
        0809943b e8 e0 27        CALL       GameFreeFightData                                undefined GameFreeFightData()
                 00 00
        08099440 e8 6b a5        CALL       GameUnloadSystem                                 undefined GameUnloadSystem()
                 03 00
        08099445 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809944b 83 ec 0c        SUB        ESP,0xc
        0809944e 51              PUSH       ECX
        0809944f e8 6c ca        CALL       chdir                                            int chdir(char * __path)
                 14 00
        08099454 e8 a7 2d        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        08099459 e8 32 ac        CALL       UInpDeInit                                       undefined UInpDeInit()
                 fb ff
        0809945e e8 1d bb        CALL       PadDeInit                                        undefined PadDeInit()
                 fb ff
        08099463 e8 58 b2        CALL       KBDeInit                                         undefined KBDeInit()
                 fb ff
        08099468 e8 a3 2f        CALL       SwitchCallbacksDeInit                            undefined SwitchCallbacksDeInit()
                 00 00
        0809946d e8 8e 1b        CALL       TimerDeInit                                      undefined TimerDeInit()
                 fe ff
        08099472 e8 29 96        CALL       G_DeInit                                         undefined G_DeInit()
                 fb ff
        08099477 e8 14 ee        CALL       CDADeInit                                        undefined CDADeInit()
                 fb ff
        0809947c e8 2f eb        CALL       MP3DeInit                                        undefined MP3DeInit()
                 fb ff
        08099481 e8 aa d5        CALL       SndDeInit                                        undefined SndDeInit()
                 fb ff
        08099486 83 c4 28        ADD        ESP,0x28
        08099489 5b              POP        EBX
        0809948a e9 d1 a4        JMP        ElecDeInit                                       undefined ElecDeInit()
                 fb ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
