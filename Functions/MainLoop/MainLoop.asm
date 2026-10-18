                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined MainLoop()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x101   local_101c                              XREF[1]:     0809cfff(*)
             undefined4        Stack[-0x102   local_102c                              XREF[1]:     0809d009(*)
                             MainLoop                                        XREF[1]:     gcc2_compiled.:0809c6c6(c)
        0809cb60 55              PUSH       EBP
        0809cb61 57              PUSH       EDI
        0809cb62 56              PUSH       ESI
        0809cb63 53              PUSH       EBX
        0809cb64 81 ec 0c        SUB        ESP,0x100c
                 10 00 00
        0809cb6a 8b bc 24        MOV        EDI,dword ptr [ESP + Stack[0x4]]
                 20 10 00 00
        0809cb71 e9 37 05        JMP        LAB_0809d0ad
                 00 00
                             LAB_0809cb76                                    XREF[1]:     0809d0e4(j)
        0809cb76 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cb7b c7 80 d4        MOV        dword ptr [EAX + 0xced4],0x1
                 ce 00 00
                 01 00 00 00
                             LAB_0809cb85                                    XREF[2]:     0809d0a7(j), 0809d0fb(j)
        0809cb85 e8 66 37        CALL       GameResetPersistVars                             undefined GameResetPersistVars()
                 01 00
        0809cb8a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cb8f 85 ff           TEST       EDI,EDI
        0809cb91 c7 80 0c        MOV        dword ptr [EAX + 0x1d50c],0x0
                 d5 01 00
                 00 00 00 00
        0809cb9b 0f 84 af        JZ         LAB_0809cc50
                 00 00 00
        0809cba1 8b a8 a0        MOV        EBP,dword ptr [EAX + 0x1d3a0]
                 d3 01 00
        0809cba7 85 ed           TEST       EBP,EBP
        0809cba9 74 0e           JZ         LAB_0809cbb9
        0809cbab 8b b0 ac        MOV        ESI,dword ptr [EAX + 0x1d3ac]
                 d3 01 00
        0809cbb1 85 f6           TEST       ESI,ESI
        0809cbb3 0f 84 97        JZ         LAB_0809cc50
                 00 00 00
                             LAB_0809cbb9                                    XREF[1]:     0809cba9(j)
        0809cbb9 53              PUSH       EBX
        0809cbba 53              PUSH       EBX
        0809cbbb 8b 88 d8        MOV        ECX,dword ptr [EAX + 0xced8]
                 ce 00 00
        0809cbc1 51              PUSH       ECX
        0809cbc2 8b 90 d4        MOV        EDX,dword ptr [EAX + 0xced4]
                 ce 00 00
        0809cbc8 52              PUSH       EDX
        0809cbc9 e8 82 a5        CALL       CharacterSelectScreen                            undefined CharacterSelectScreen()
                 fe ff
        0809cbce 83 c4 10        ADD        ESP,0x10
        0809cbd1 85 c0           TEST       EAX,EAX
        0809cbd3 0f 84 04        JZ         LAB_0809d0dd
                 05 00 00
        0809cbd9 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cbdf 8b 81 cc        MOV        EAX,dword ptr [ECX + 0xcecc]
                 ce 00 00
        0809cbe5 85 c0           TEST       EAX,EAX
        0809cbe7 74 25           JZ         LAB_0809cc0e
        0809cbe9 e8 02 ee        CALL       ArcadeListBuild                                  undefined ArcadeListBuild()
                 fe ff
        0809cbee 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cbf4 8b a9 40        MOV        EBP,dword ptr [ECX + 0x5340]
                 53 00 00
        0809cbfa 85 ed           TEST       EBP,EBP
        0809cbfc 74 10           JZ         LAB_0809cc0e
        0809cbfe e8 ed 8b        CALL       PrecacheRequestCurArcadeTeam                     undefined PrecacheRequestCurArca
                 03 00
        0809cc03 e8 f8 8c        CALL       PrecacheStart                                    undefined PrecacheStart()
                 03 00
        0809cc08 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809cc0e                                    XREF[2]:     0809cbe7(j), 0809cbfc(j)
        0809cc0e 8b 99 d0        MOV        EBX,dword ptr [ECX + 0xced0]
                 ce 00 00
        0809cc14 85 db           TEST       EBX,EBX
        0809cc16 74 69           JZ         LAB_0809cc81
        0809cc18 ba 02 00        MOV        EDX,0x2
                 00 00
        0809cc1d 56              PUSH       ESI
        0809cc1e 89 d0           MOV        EAX,EDX
        0809cc20 6a 01           PUSH       0x1
        0809cc22 29 d8           SUB        EAX,EBX
        0809cc24 50              PUSH       EAX
        0809cc25 8b 99 d0        MOV        EBX,dword ptr [ECX + 0xced0]
                 ce 00 00
        0809cc2b 29 da           SUB        EDX,EBX
        0809cc2d 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809cc30 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cc33 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cc36 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cc39 c1 e0 03        SHL        EAX,0x3
        0809cc3c 29 d0           SUB        EAX,EDX
        0809cc3e 8d 84 81        LEA        EAX,[ECX + EAX*0x4 + 0xcee0]
                 e0 ce 00 00
        0809cc45 50              PUSH       EAX
        0809cc46 e8 d5 f4        CALL       SurvivalBuildRandomTeam                          undefined SurvivalBuildRandomTea
                 fe ff
        0809cc4b eb 2b           JMP        LAB_0809cc78
        0809cc4d 8d              ??         8Dh
        0809cc4e 76              ??         76h    v
        0809cc4f 00              ??         00h
                             LAB_0809cc50                                    XREF[2]:     0809cb9b(j), 0809cbb3(j)
        0809cc50 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cc56 8b 81 a0        MOV        EAX,dword ptr [ECX + 0x1d3a0]
                 d3 01 00
        0809cc5c 85 c0           TEST       EAX,EAX
        0809cc5e 74 21           JZ         LAB_0809cc81
        0809cc60 e8 fb 0d        CALL       DemoFightSetup                                   undefined DemoFightSetup()
                 00 00
        0809cc65 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cc6a 83 ec 0c        SUB        ESP,0xc
        0809cc6d 05 e8 bb        ADD        EAX,0x1bbe8
                 01 00
        0809cc72 50              PUSH       EAX
        0809cc73 e8 c8 8e        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
                             LAB_0809cc78                                    XREF[1]:     0809cc4b(j)
        0809cc78 83 c4 10        ADD        ESP,0x10
        0809cc7b 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809cc81                                    XREF[2]:     0809cc16(j), 0809cc5e(j)
        0809cc81 85 ff           TEST       EDI,EDI
        0809cc83 74 63           JZ         LAB_0809cce8
        0809cc85 80 b9 14        CMP        byte ptr [ECX + 0x2014],0x0
                 20 00 00 00
        0809cc8c 75 7b           JNZ        LAB_0809cd09
        0809cc8e 83 ec 10        SUB        ESP,0x10
        0809cc91 e8 4a 8b        CALL       random                                           long random(void)
                 12 00
        0809cc96 89 c2           MOV        EDX,EAX
        0809cc98 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cc9e c1 fa 1f        SAR        EDX,0x1f
        0809cca1 f7 b9 d4        IDIV       dword ptr [ECX + 0x52d4]
                 52 00 00
        0809cca7 5e              POP        ESI
        0809cca8 8d 04 d5        LEA        EAX,[EDX*0x8 + 0x0]
                 00 00 00 00
        0809ccaf 5d              POP        EBP
        0809ccb0 29 d0           SUB        EAX,EDX
        0809ccb2 c1 e0 07        SHL        EAX,0x7
        0809ccb5 01 d0           ADD        EAX,EDX
        0809ccb7 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809ccba 8d 04 42        LEA        EAX,[EDX + EAX*0x2]
        0809ccbd 8b 91 d0        MOV        EDX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809ccc3 81 c1 14        ADD        ECX,0x2014
                 20 00 00
        0809ccc9 8d 84 82        LEA        EAX,[EDX + EAX*0x4 + 0x3009]
                 09 30 00 00
        0809ccd0 50              PUSH       EAX
        0809ccd1 51              PUSH       ECX
        0809ccd2 eb 2d           JMP        LAB_0809cd01
                             LAB_0809ccd4                                    XREF[1]:     0809cd65(j)
        0809ccd4 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809ccd9 c7 80 d0        MOV        dword ptr [EAX + 0x104d0],0x0
                 04 01 00
                 00 00 00 00
        0809cce3 e9 f5 03        JMP        LAB_0809d0dd
                 00 00
                             LAB_0809cce8                                    XREF[1]:     0809cc83(j)
        0809cce8 80 b9 14        CMP        byte ptr [ECX + 0x2014],0x0
                 20 00 00 00
        0809ccef 75 18           JNZ        LAB_0809cd09
        0809ccf1 8d 81 10        LEA        EAX,[ECX + 0x1f710]
                 f7 01 00
        0809ccf7 53              PUSH       EBX
        0809ccf8 53              PUSH       EBX
        0809ccf9 50              PUSH       EAX
        0809ccfa 8d 81 14        LEA        EAX,[ECX + 0x2014]
                 20 00 00
        0809cd00 50              PUSH       EAX
                             LAB_0809cd01                                    XREF[1]:     0809ccd2(j)
        0809cd01 e8 ca 38        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cd06 83 c4 10        ADD        ESP,0x10
                             LAB_0809cd09                                    XREF[2]:     0809cc8c(j), 0809ccef(j)
        0809cd09 e8 72 87        CALL       TrainingMenuReset                                undefined TrainingMenuReset()
                 00 00
        0809cd0e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cd14 e9 36 01        JMP        LAB_0809ce4f
                 00 00
        0809cd19 8d              ??         8Dh
        0809cd1a b4              ??         B4h
        0809cd1b 26              ??         26h    &
        0809cd1c 00              ??         00h
        0809cd1d 00              ??         00h
        0809cd1e 00              ??         00h
        0809cd1f 00              ??         00h
                             LAB_0809cd20                                    XREF[3]:     0809d036(j), 0809d053(j),
                                                                                          0809d060(j)
        0809cd20 e8 fb 03        CALL       GamePlay                                         undefined GamePlay()
                 00 00
        0809cd25 85 c0           TEST       EAX,EAX
        0809cd27 75 05           JNZ        LAB_0809cd2e
        0809cd29 e8 d2 05        CALL       ErrorExit                                        undefined ErrorExit()
                 ff ff
                             LAB_0809cd2e                                    XREF[1]:     0809cd27(j)
        0809cd2e a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cd33 8b 90 d0        MOV        EDX,dword ptr [EAX + 0x104d0]
                 04 01 00
        0809cd39 85 d2           TEST       EDX,EDX
        0809cd3b 0f 84 b0        JZ         LAB_0809cdf1
                 00 00 00
        0809cd41 e8 aa 35        CALL       GameResetPersistVars                             undefined GameResetPersistVars()
                 01 00
        0809cd46 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cd4b 56              PUSH       ESI
        0809cd4c 56              PUSH       ESI
        0809cd4d 8b 98 d8        MOV        EBX,dword ptr [EAX + 0xced8]
                 ce 00 00
        0809cd53 53              PUSH       EBX
        0809cd54 8b 88 d4        MOV        ECX,dword ptr [EAX + 0xced4]
                 ce 00 00
        0809cd5a 51              PUSH       ECX
        0809cd5b e8 f0 a3        CALL       CharacterSelectScreen                            undefined CharacterSelectScreen()
                 fe ff
        0809cd60 83 c4 10        ADD        ESP,0x10
        0809cd63 85 c0           TEST       EAX,EAX
        0809cd65 0f 84 69        JZ         LAB_0809ccd4
                 ff ff ff
        0809cd6b a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cd70 c7 80 d0        MOV        dword ptr [EAX + 0x104d0],0x0
                 04 01 00
                 00 00 00 00
        0809cd7a e8 01 f0        CALL       ArcadeListGetCurrent                             undefined ArcadeListGetCurrent()
                 fe ff
        0809cd7f 89 c2           MOV        EDX,EAX
        0809cd81 83 fa ff        CMP        EDX,-0x1
        0809cd84 74 54           JZ         LAB_0809cdda
        0809cd86 8d 04 d5        LEA        EAX,[EDX*0x8 + 0x0]
                 00 00 00 00
        0809cd8d 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cd93 29 d0           SUB        EAX,EDX
        0809cd95 c1 e0 07        SHL        EAX,0x7
        0809cd98 01 d0           ADD        EAX,EDX
        0809cd9a 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cd9d 8d 04 42        LEA        EAX,[EDX + EAX*0x2]
        0809cda0 8b 91 d0        MOV        EDX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809cda6 81 c1 14        ADD        ECX,0x2014
                 20 00 00
        0809cdac 8d 1c 82        LEA        EBX,[EDX + EAX*0x4]
        0809cdaf 52              PUSH       EDX
        0809cdb0 52              PUSH       EDX
        0809cdb1 8d 83 09        LEA        EAX,[EBX + 0x3009]
                 30 00 00
        0809cdb7 50              PUSH       EAX
        0809cdb8 51              PUSH       ECX
        0809cdb9 e8 12 38        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cdbe 5e              POP        ESI
        0809cdbf 58              POP        EAX
        0809cdc0 8d 83 08        LEA        EAX,[EBX + 0x4008]
                 40 00 00
        0809cdc6 50              PUSH       EAX
        0809cdc7 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cdcc 05 13 30        ADD        EAX,0x3013
                 00 00
        0809cdd1 50              PUSH       EAX
        0809cdd2 e8 f9 37        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cdd7 83 c4 10        ADD        ESP,0x10
                             LAB_0809cdda                                    XREF[1]:     0809cd84(j)
        0809cdda a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cddf 8b 98 10        MOV        EBX,dword ptr [EAX + 0x1d510]
                 d5 01 00
        0809cde5 43              INC        EBX
        0809cde6 89 98 10        MOV        dword ptr [EAX + 0x1d510],EBX
                 d5 01 00
        0809cdec e9 43 02        JMP        LAB_0809d034
                 00 00
                             LAB_0809cdf1                                    XREF[1]:     0809cd3b(j)
        0809cdf1 8b 88 cc        MOV        ECX,dword ptr [EAX + 0xcecc]
                 ce 00 00
        0809cdf7 85 c9           TEST       ECX,ECX
        0809cdf9 74 38           JZ         LAB_0809ce33
        0809cdfb 8b 90 ec        MOV        EDX,dword ptr [EAX + 0x52ec]
                 52 00 00
        0809ce01 42              INC        EDX
        0809ce02 89 90 ec        MOV        dword ptr [EAX + 0x52ec],EDX
                 52 00 00
        0809ce08 e8 63 f1        CALL       ArcadeListGetCurSize                             undefined ArcadeListGetCurSize()
                 fe ff
        0809ce0d 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809ce13 8b aa e8        MOV        EBP,dword ptr [EDX + 0x52e8]
                 52 00 00
        0809ce19 01 c5           ADD        EBP,EAX
        0809ce1b 89 aa e8        MOV        dword ptr [EDX + 0x52e8],EBP
                 52 00 00
        0809ce21 e8 da f2        CALL       ArcadeListEnemiesLeft                            undefined ArcadeListEnemiesLeft()
                 fe ff
        0809ce26 85 c0           TEST       EAX,EAX
        0809ce28 0f 84 38        JZ         LAB_0809d066
                 02 00 00
        0809ce2e bd 01 00        MOV        EBP,0x1
                 00 00
                             LAB_0809ce33                                    XREF[1]:     0809cdf9(j)
        0809ce33 85 ed           TEST       EBP,EBP
        0809ce35 0f 84 2b        JZ         LAB_0809d066
                 02 00 00
        0809ce3b 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809ce41 8b b1 d4        MOV        ESI,dword ptr [ECX + 0x104d4]
                 04 01 00
        0809ce47 85 f6           TEST       ESI,ESI
        0809ce49 0f 85 17        JNZ        LAB_0809d066
                 02 00 00
                             LAB_0809ce4f                                    XREF[1]:     0809cd14(j)
        0809ce4f 8b 99 0c        MOV        EBX,dword ptr [ECX + 0x1d50c]
                 d5 01 00
        0809ce55 8b 91 10        MOV        EDX,dword ptr [ECX + 0x1d510]
                 d5 01 00
        0809ce5b 43              INC        EBX
        0809ce5c 42              INC        EDX
        0809ce5d c6 81 13        MOV        byte ptr [ECX + 0x3013],0x0
                 30 00 00 00
        0809ce64 89 99 0c        MOV        dword ptr [ECX + 0x1d50c],EBX
                 d5 01 00
        0809ce6a 89 91 10        MOV        dword ptr [ECX + 0x1d510],EDX
                 d5 01 00
        0809ce70 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809ce76 31 ed           XOR        EBP,EBP
        0809ce78 8b 81 cc        MOV        EAX,dword ptr [ECX + 0xcecc]
                 ce 00 00
        0809ce7e 85 c0           TEST       EAX,EAX
        0809ce80 74 66           JZ         LAB_0809cee8
        0809ce82 e8 f9 ee        CALL       ArcadeListGetCurrent                             undefined ArcadeListGetCurrent()
                 fe ff
        0809ce87 89 c2           MOV        EDX,EAX
        0809ce89 83 fa ff        CMP        EDX,-0x1
        0809ce8c 74 54           JZ         LAB_0809cee2
        0809ce8e 8d 04 d5        LEA        EAX,[EDX*0x8 + 0x0]
                 00 00 00 00
        0809ce95 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809ce9b 29 d0           SUB        EAX,EDX
        0809ce9d c1 e0 07        SHL        EAX,0x7
        0809cea0 01 d0           ADD        EAX,EDX
        0809cea2 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cea5 8d 04 42        LEA        EAX,[EDX + EAX*0x2]
        0809cea8 8b 91 d0        MOV        EDX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809ceae 56              PUSH       ESI
        0809ceaf 81 c1 14        ADD        ECX,0x2014
                 20 00 00
        0809ceb5 8d 1c 82        LEA        EBX,[EDX + EAX*0x4]
        0809ceb8 56              PUSH       ESI
        0809ceb9 8d 83 09        LEA        EAX,[EBX + 0x3009]
                 30 00 00
        0809cebf 50              PUSH       EAX
        0809cec0 51              PUSH       ECX
        0809cec1 e8 0a 37        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cec6 58              POP        EAX
        0809cec7 8d 83 08        LEA        EAX,[EBX + 0x4008]
                 40 00 00
        0809cecd 5a              POP        EDX
        0809cece 50              PUSH       EAX
        0809cecf a1 74 7a        MOV        EAX,[g]
                 28 08
        0809ced4 05 13 30        ADD        EAX,0x3013
                 00 00
        0809ced9 50              PUSH       EAX
        0809ceda e8 f1 36        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cedf 83 c4 10        ADD        ESP,0x10
                             LAB_0809cee2                                    XREF[1]:     0809ce8c(j)
        0809cee2 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809cee8                                    XREF[1]:     0809ce80(j)
        0809cee8 80 b9 14        CMP        byte ptr [ECX + 0x2014],0x0
                 20 00 00 00
        0809ceef 74 20           JZ         LAB_0809cf11
        0809cef1 8d 81 14        LEA        EAX,[ECX + 0x2014]
                 20 00 00
        0809cef7 56              PUSH       ESI
        0809cef8 56              PUSH       ESI
        0809cef9 68 2e 7d        PUSH       s_random_08277d29+5                              = "random"
                 27 08
        0809cefe 50              PUSH       EAX
        0809ceff e8 7c 51        CALL       _alemu_stricmp                                   undefined _alemu_stricmp()
                 06 00
        0809cf04 83 c4 10        ADD        ESP,0x10
        0809cf07 85 c0           TEST       EAX,EAX
        0809cf09 75 63           JNZ        LAB_0809cf6e
        0809cf0b 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809cf11                                    XREF[1]:     0809ceef(j)
        0809cf11 8b 99 b4        MOV        EBX,dword ptr [ECX + 0xceb4]
                 ce 00 00
        0809cf17 85 db           TEST       EBX,EBX
        0809cf19 7e 3b           JLE        LAB_0809cf56
        0809cf1b 83 ec 10        SUB        ESP,0x10
        0809cf1e e8 bd 88        CALL       random                                           long random(void)
                 12 00
        0809cf23 5a              POP        EDX
        0809cf24 89 c2           MOV        EDX,EAX
        0809cf26 59              POP        ECX
        0809cf27 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cf2d c1 fa 1f        SAR        EDX,0x1f
        0809cf30 f7 b9 b4        IDIV       dword ptr [ECX + 0xceb4]
                 ce 00 00
        0809cf36 89 d0           MOV        EAX,EDX
        0809cf38 c1 e0 06        SHL        EAX,0x6
        0809cf3b 01 d0           ADD        EAX,EDX
        0809cf3d 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cf40 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cf43 8b 91 b0        MOV        EDX,dword ptr [ECX + 0xceb0]
                 ce 00 00
        0809cf49 81 c1 14        ADD        ECX,0x2014
                 20 00 00
        0809cf4f 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cf52 50              PUSH       EAX
        0809cf53 51              PUSH       ECX
        0809cf54 eb 10           JMP        LAB_0809cf66
                             LAB_0809cf56                                    XREF[1]:     0809cf19(j)
        0809cf56 50              PUSH       EAX
        0809cf57 50              PUSH       EAX
        0809cf58 8d 81 10        LEA        EAX,[ECX + 0x1f710]
                 f7 01 00
        0809cf5e 50              PUSH       EAX
        0809cf5f 8d 81 14        LEA        EAX,[ECX + 0x2014]
                 20 00 00
        0809cf65 50              PUSH       EAX
                             LAB_0809cf66                                    XREF[1]:     0809cf54(j)
        0809cf66 e8 65 36        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809cf6b 83 c4 10        ADD        ESP,0x10
                             LAB_0809cf6e                                    XREF[1]:     0809cf09(j)
        0809cf6e a1 74 7a        MOV        EAX,[g]
                 28 08
        0809cf73 8b b0 cc        MOV        ESI,dword ptr [EAX + 0xcecc]
                 ce 00 00
        0809cf79 85 f6           TEST       ESI,ESI
        0809cf7b 0f 84 b3        JZ         LAB_0809d034
                 00 00 00
        0809cf81 83 b8 0c        CMP        dword ptr [EAX + 0x1d50c],0x1
                 d5 01 00 01
        0809cf88 0f 85 a6        JNZ        LAB_0809d034
                 00 00 00
        0809cf8e 83 ec 0c        SUB        ESP,0xc
        0809cf91 6a 3c           PUSH       0x3c
        0809cf93 e8 78 e1        CALL       TimerSetSyncFPS                                  undefined TimerSetSyncFPS()
                 fd ff
        0809cf98 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809cf9e 83 c4 10        ADD        ESP,0x10
        0809cfa1 8b 91 cc        MOV        EDX,dword ptr [ECX + 0xcecc]
                 ce 00 00
        0809cfa7 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809cfaa 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cfad 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cfb0 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cfb3 c1 e0 03        SHL        EAX,0x3
        0809cfb6 29 d0           SUB        EAX,EDX
        0809cfb8 8b 94 81        MOV        EDX,dword ptr [ECX + EAX*0x4 + 0xb460]
                 60 b4 00 00
        0809cfbf 83 fa ff        CMP        EDX,-0x1
        0809cfc2 74 70           JZ         LAB_0809d034
        0809cfc4 8d 04 d5        LEA        EAX,[EDX*0x8 + 0x0]
                 00 00 00 00
        0809cfcb 8b 99 d0        MOV        EBX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809cfd1 29 d0           SUB        EAX,EDX
        0809cfd3 c1 e0 07        SHL        EAX,0x7
        0809cfd6 01 d0           ADD        EAX,EDX
        0809cfd8 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809cfdb 8d 04 42        LEA        EAX,[EDX + EAX*0x2]
        0809cfde c1 e0 02        SHL        EAX,0x2
        0809cfe1 89 c2           MOV        EDX,EAX
        0809cfe3 01 da           ADD        EDX,EBX
        0809cfe5 8d b2 28        LEA        ESI,[EDX + 0x5028]
                 50 00 00
        0809cfeb 56              PUSH       ESI
        0809cfec 8b 91 d0        MOV        EDX,dword ptr [ECX + 0x52d0]
                 52 00 00
        0809cff2 01 d0           ADD        EAX,EDX
        0809cff4 05 0a 20        ADD        EAX,0x200a
                 00 00
        0809cff9 50              PUSH       EAX
        0809cffa 68 64 92        PUSH       s_%s/%s_08279264                                 = "%s/%s"
                 27 08
        0809cfff 8d 5c 24 0c     LEA        EBX=>local_101c,[ESP + 0xc]
        0809d003 53              PUSH       EBX
        0809d004 e8 17 7e        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809d009 89 1c 24        MOV        dword ptr [ESP]=>local_102c,EBX
        0809d00c e8 ef 03        CALL       fileexist                                        undefined fileexist()
                 ff ff
        0809d011 83 c4 10        ADD        ESP,0x10
        0809d014 85 c0           TEST       EAX,EAX
        0809d016 75 0c           JNZ        LAB_0809d024
        0809d018 50              PUSH       EAX
        0809d019 50              PUSH       EAX
        0809d01a 56              PUSH       ESI
        0809d01b 53              PUSH       EBX
        0809d01c e8 af 35        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        0809d021 83 c4 10        ADD        ESP,0x10
                             LAB_0809d024                                    XREF[1]:     0809d016(j)
        0809d024 51              PUSH       ECX
        0809d025 51              PUSH       ECX
        0809d026 68 0b 6f        PUSH       s_scene_08276f06+5                               = "scene"
                 27 08
        0809d02b 53              PUSH       EBX
        0809d02c e8 5f 2d        CALL       PlayCutscene                                     undefined PlayCutscene()
                 00 00
        0809d031 83 c4 10        ADD        ESP,0x10
                             LAB_0809d034                                    XREF[4]:     0809cdec(j), 0809cf7b(j),
                                                                                          0809cf88(j), 0809cfc2(j)
        0809d034 85 ff           TEST       EDI,EDI
        0809d036 0f 84 e4        JZ         LAB_0809cd20
                 fc ff ff
        0809d03c a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d041 8b 90 a0        MOV        EDX,dword ptr [EAX + 0x1d3a0]
                 d3 01 00
        0809d047 85 d2           TEST       EDX,EDX
        0809d049 74 0e           JZ         LAB_0809d059
        0809d04b 8b 80 b0        MOV        EAX,dword ptr [EAX + 0x1d3b0]
                 d3 01 00
        0809d051 85 c0           TEST       EAX,EAX
        0809d053 0f 84 c7        JZ         LAB_0809cd20
                 fc ff ff
                             LAB_0809d059                                    XREF[1]:     0809d049(j)
        0809d059 e8 12 df        CALL       VersusScreen                                     undefined VersusScreen()
                 fe ff
        0809d05e 85 c0           TEST       EAX,EAX
        0809d060 0f 85 ba        JNZ        LAB_0809cd20
                 fc ff ff
                             LAB_0809d066                                    XREF[3]:     0809ce28(j), 0809ce35(j),
                                                                                          0809ce49(j)
        0809d066 e8 c5 89        CALL       PrecacheIsRunning                                undefined PrecacheIsRunning()
                 03 00
        0809d06b 85 c0           TEST       EAX,EAX
        0809d06d 74 0a           JZ         LAB_0809d079
        0809d06f e8 7c 89        CALL       PrecacheRequestCancel                            undefined PrecacheRequestCancel()
                 03 00
        0809d074 e8 57 8a        CALL       PrecacheFinish                                   undefined PrecacheFinish()
                 03 00
                             LAB_0809d079                                    XREF[1]:     0809d06d(j)
        0809d079 85 ff           TEST       EDI,EDI
        0809d07b 0f 84 91        JZ         LAB_0809d112
                 00 00 00
        0809d081 e8 7a f9        CALL       CharStopUsingPalAll                              undefined CharStopUsingPalAll()
                 fe ff
        0809d086 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d08b 8b a8 cc        MOV        EBP,dword ptr [EAX + 0xcecc]
                 ce 00 00
        0809d091 85 ed           TEST       EBP,EBP
        0809d093 75 18           JNZ        LAB_0809d0ad
        0809d095 8b b0 a0        MOV        ESI,dword ptr [EAX + 0x1d3a0]
                 d3 01 00
        0809d09b 85 f6           TEST       ESI,ESI
        0809d09d 75 0e           JNZ        LAB_0809d0ad
        0809d09f 8b 98 d0        MOV        EBX,dword ptr [EAX + 0xced0]
                 ce 00 00
        0809d0a5 85 db           TEST       EBX,EBX
        0809d0a7 0f 84 d8        JZ         LAB_0809cb85
                 fa ff ff
                             LAB_0809d0ad                                    XREF[3]:     0809cb71(j), 0809d093(j),
                                                                                          0809d09d(j)
        0809d0ad 85 ff           TEST       EDI,EDI
        0809d0af 74 2c           JZ         LAB_0809d0dd
        0809d0b1 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d0b6 80 b8 44        CMP        byte ptr [EAX + 0x7d44],0x0
                 7d 00 00 00
        0809d0bd 74 1e           JZ         LAB_0809d0dd
        0809d0bf 8b 88 44        MOV        ECX,dword ptr [EAX + 0x8d44]
                 8d 00 00
        0809d0c5 85 c9           TEST       ECX,ECX
        0809d0c7 75 14           JNZ        LAB_0809d0dd
        0809d0c9 e8 a2 2c        CALL       IntroScreen                                      undefined IntroScreen()
                 00 00
        0809d0ce a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d0d3 c7 80 44        MOV        dword ptr [EAX + 0x8d44],0x1
                 8d 00 00
                 01 00 00 00
                             LAB_0809d0dd                                    XREF[5]:     0809cbd3(j), 0809cce3(j),
                                                                                          0809d0af(j), 0809d0bd(j),
                                                                                          0809d0c7(j)
        0809d0dd e8 0e 32        CALL       GameResetPersistVars                             undefined GameResetPersistVars()
                 01 00
        0809d0e2 85 ff           TEST       EDI,EDI
        0809d0e4 0f 84 8c        JZ         LAB_0809cb76
                 fa ff ff
        0809d0ea e8 c1 30        CALL       ModeSelect                                       undefined ModeSelect()
                 00 00
        0809d0ef a1 74 7a        MOV        EAX,[g]
                 28 08
        0809d0f4 83 b8 d4        CMP        dword ptr [EAX + 0xced4],0xa
                 ce 00 00 0a
        0809d0fb 0f 85 84        JNZ        LAB_0809cb85
                 fa ff ff
        0809d101 83 ec 0c        SUB        ESP,0xc
        0809d104 05 e8 bb        ADD        EAX,0x1bbe8
                 01 00
        0809d109 50              PUSH       EAX
        0809d10a e8 31 8a        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
        0809d10f 83 c4 10        ADD        ESP,0x10
                             LAB_0809d112                                    XREF[1]:     0809d07b(j)
        0809d112 81 c4 0c        ADD        ESP,0x100c
                 10 00 00
        0809d118 5b              POP        EBX
        0809d119 5e              POP        ESI
        0809d11a 5f              POP        EDI
        0809d11b 5d              POP        EBP
        0809d11c c3              RET
