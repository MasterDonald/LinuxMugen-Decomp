                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameReloadStage()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[2]:     0809ed1b(*),
                                                                                                   0809edc8(*)
                             GameReloadStage                                 XREF[2]:     Entry Point(*),
                                                                                          GameLoop:0808ff24(c)
        0809ece0 53              PUSH       EBX
        0809ece1 bb 18 00        MOV        EBX,0x18
                 00 00
        0809ece6 83 ec 14        SUB        ESP,0x14
        0809ece9 6a 00           PUSH       0x0
        0809eceb e8 a0 ee        CALL       W_Cls                                            undefined W_Cls()
                 fd ff
        0809ecf0 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        0809ecf6 89 da           MOV        EDX,EBX
        0809ecf8 d3 e2           SHL        EDX,CL
        0809ecfa b8 30 00        MOV        EAX,0x30
                 00 00
        0809ecff 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        0809ed05 d3 e0           SHL        EAX,CL
        0809ed07 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        0809ed0d 09 c2           OR         EDX,EAX
        0809ed0f d3 e3           SHL        EBX,CL
        0809ed11 a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        0809ed16 09 da           OR         EDX,EBX
        0809ed18 83 e8 02        SUB        EAX,0x2
        0809ed1b 89 14 24        MOV        dword ptr [ESP]=>local_1c,EDX
        0809ed1e 50              PUSH       EAX
        0809ed1f a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        0809ed24 83 e8 04        SUB        EAX,0x4
        0809ed27 50              PUSH       EAX
        0809ed28 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809ed2d 8b 80 e8        MOV        EAX,dword ptr [EAX + 0x104e8]
                 04 01 00
        0809ed33 50              PUSH       EAX
        0809ed34 68 58 95        PUSH       s_Loading_08279558                               = "Loading"
                 27 08
        0809ed39 e8 c2 32        CALL       V_FontDrawRight                                  undefined V_FontDrawRight()
                 fb ff
        0809ed3e 83 c4 20        ADD        ESP,0x20
        0809ed41 e8 fa eb        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 fe ff
        0809ed46 e8 d5 ec        CALL       DrawToScreen                                     undefined DrawToScreen()
                 fe ff
        0809ed4b e8 10 9c        CALL       PalGrpClear                                      undefined PalGrpClear()
                 01 00
        0809ed50 e8 ab fd        CALL       GameStgDeInitFightData                           undefined GameStgDeInitFightData()
                 ff ff
        0809ed55 e8 d6 f9        CALL       GameUnloadStage                                  undefined GameUnloadStage()
                 ff ff
        0809ed5a e8 91 15        CALL       GameResetPersistVars                             undefined GameResetPersistVars()
                 01 00
        0809ed5f e8 dc dc        CALL       PlayerCacheClear                                 undefined PlayerCacheClear()
                 00 00
        0809ed64 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809ed6a a1 08 0c        MOV        EAX,[Ticks]                                      = ??
                 2c 08
        0809ed6f 89 82 24        MOV        dword ptr [EDX + 0x20724],EAX
                 07 02 00
        0809ed75 e8 d6 ee        CALL       GameLoadStage                                    undefined GameLoadStage()
                 ff ff
        0809ed7a 85 c0           TEST       EAX,EAX
        0809ed7c 74 09           JZ         LAB_0809ed87
        0809ed7e e8 4d fb        CALL       GameStgInitFightData                             undefined GameStgInitFightData()
                 ff ff
        0809ed83 85 c0           TEST       EAX,EAX
        0809ed85 75 09           JNZ        LAB_0809ed90
                             LAB_0809ed87                                    XREF[1]:     0809ed7c(j)
        0809ed87 31 c0           XOR        EAX,EAX
        0809ed89 eb 57           JMP        LAB_0809ede2
        0809ed8b 90              ??         90h
        0809ed8c 8d              ??         8Dh
        0809ed8d 74              ??         74h    t
        0809ed8e 26              ??         26h    &
        0809ed8f 00              ??         00h
                             LAB_0809ed90                                    XREF[1]:     0809ed85(j)
        0809ed90 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809ed95 8b 15 08        MOV        EDX,dword ptr [Ticks]                            = ??
                 0c 2c 08
        0809ed9b 8b 98 24        MOV        EBX,dword ptr [EAX + 0x20724]
                 07 02 00
        0809eda1 29 da           SUB        EDX,EBX
        0809eda3 89 90 24        MOV        dword ptr [EAX + 0x20724],EDX
                 07 02 00
        0809eda9 51              PUSH       ECX
        0809edaa 51              PUSH       ECX
        0809edab 8b 90 dc        MOV        EDX,dword ptr [EAX + 0x1bbdc]
                 bb 01 00
        0809edb1 52              PUSH       EDX
        0809edb2 8b 98 d4        MOV        EBX,dword ptr [EAX + 0x1bbd4]
                 bb 01 00
        0809edb8 53              PUSH       EBX
        0809edb9 e8 e2 b4        CALL       GameSetVol                                       undefined GameSetVol()
                 01 00
        0809edbe a1 74 7a        MOV        EAX,[g]
                 28 08
        0809edc3 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809edc8 89 04 24        MOV        dword ptr [ESP]=>local_1c,EAX
        0809edcb e8 e0 64        CALL       BGMStart                                         undefined BGMStart()
                 fe ff
        0809edd0 e8 1b 00        CALL       GameMatchReset                                   undefined GameMatchReset()
                 00 00
        0809edd5 e8 66 eb        CALL       FrameSkipReset                                   undefined FrameSkipReset()
                 fe ff
        0809edda b8 01 00        MOV        EAX,0x1
                 00 00
        0809eddf 83 c4 10        ADD        ESP,0x10
                             LAB_0809ede2                                    XREF[1]:     0809ed89(j)
        0809ede2 5a              POP        EDX
        0809ede3 59              POP        ECX
        0809ede4 5b              POP        EBX
        0809ede5 c3              RET
