                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSndPlayIDPos()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[2]:     080ba13b(*),
                                                                                                   080ba16a(*)
                             GameSndPlayIDPos                                XREF[8]:     Entry Point(*),
                                                                                          PlayerUpdate:080b2621(c),
                                                                                          PlayerUpdate:080b273c(c),
                                                                                          PlayerUpdate:080b27a1(c),
                                                                                          PlayerGetHit:080b44b2(c),
                                                                                          PlayerGetHitG:080b50ca(c),
                                                                                          PlayerCheckHitProj:080b5d3c(c),
                                                                                          PlayerSCtrlApplyElem:080c2a7e(c)
        080ba090 55              PUSH       EBP
        080ba091 57              PUSH       EDI
        080ba092 56              PUSH       ESI
        080ba093 53              PUSH       EBX
        080ba094 83 ec 0c        SUB        ESP,0xc
        080ba097 a1 74 7a        MOV        EAX,[g]
                 28 08
        080ba09c 8b 4c 24 28     MOV        ECX,dword ptr [ESP + Stack[0xc]]
        080ba0a0 8b 54 24 2c     MOV        EDX,dword ptr [ESP + Stack[0x10]]
        080ba0a4 8b a8 cc        MOV        EBP,dword ptr [EAX + 0x1bbcc]
                 bb 01 00
        080ba0aa 85 ed           TEST       EBP,EBP
        080ba0ac 0f 84 c3        JZ         LAB_080ba175
                 00 00 00
        080ba0b2 85 c9           TEST       ECX,ECX
        080ba0b4 0f 84 bb        JZ         LAB_080ba175
                 00 00 00
        080ba0ba 8b b8 20        MOV        EDI,dword ptr [EAX + 0x1cc20]
                 cc 01 00
        080ba0c0 85 ff           TEST       EDI,EDI
        080ba0c2 0f 85 ad        JNZ        LAB_080ba175
                 00 00 00
        080ba0c8 83 fa ff        CMP        EDX,-0x1
        080ba0cb 0f 84 a4        JZ         LAB_080ba175
                 00 00 00
        080ba0d1 8b 74 24 30     MOV        ESI,dword ptr [ESP + Stack[0x14]]
        080ba0d5 56              PUSH       ESI
        080ba0d6 52              PUSH       EDX
        080ba0d7 51              PUSH       ECX
        080ba0d8 8b 5c 24 2c     MOV        EBX,dword ptr [ESP + Stack[0x4]]
        080ba0dc 53              PUSH       EBX
        080ba0dd e8 be d4        CALL       SndIDPrepare                                     undefined SndIDPrepare()
                 f9 ff
        080ba0e2 89 c7           MOV        EDI,EAX
        080ba0e4 83 c4 10        ADD        ESP,0x10
        080ba0e7 83 ff ff        CMP        EDI,-0x1
        080ba0ea 0f 84 85        JZ         LAB_080ba175
                 00 00 00
        080ba0f0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080ba0f5 8b 88 b0        MOV        ECX,dword ptr [EAX + 0x1d5b0]
                 d5 01 00
        080ba0fb 85 c9           TEST       ECX,ECX
        080ba0fd 74 14           JZ         LAB_080ba113
        080ba0ff 83 ec 0c        SUB        ESP,0xc
        080ba102 8b 54 24 30     MOV        EDX,dword ptr [ESP + Stack[0x8]]
        080ba106 52              PUSH       EDX
        080ba107 e8 74 00        CALL       ScrPositionToPan                                 undefined ScrPositionToPan()
                 00 00
        080ba10c 89 c5           MOV        EBP,EAX
        080ba10e 83 c4 10        ADD        ESP,0x10
        080ba111 eb 02           JMP        LAB_080ba115
                             LAB_080ba113                                    XREF[1]:     080ba0fd(j)
        080ba113 31 ed           XOR        EBP,EBP
                             LAB_080ba115                                    XREF[1]:     080ba111(j)
        080ba115 83 ec 0c        SUB        ESP,0xc
        080ba118 8b 44 24 40     MOV        EAX,dword ptr [ESP + Stack[0x18]]
        080ba11c 50              PUSH       EAX
        080ba11d e8 5e dc        CALL       SndCorrectVolOff                                 undefined SndCorrectVolOff()
                 f9 ff
        080ba122 59              POP        ECX
        080ba123 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080ba129 5b              POP        EBX
        080ba12a 8b b2 d0        MOV        ESI,dword ptr [EDX + 0x1bbd0]
                 bb 01 00
        080ba130 01 f0           ADD        EAX,ESI
        080ba132 55              PUSH       EBP
        080ba133 50              PUSH       EAX
        080ba134 e8 f7 00        CALL       PanVolumeAdjust                                  undefined PanVolumeAdjust()
                 00 00
        080ba139 89 c3           MOV        EBX,EAX
        080ba13b 89 3c 24        MOV        dword ptr [ESP]=>local_2c,EDI
        080ba13e e8 3d d2        CALL       SndVoiceGetFreq                                  undefined SndVoiceGetFreq()
                 f9 ff
        080ba143 89 c6           MOV        ESI,EAX
        080ba145 58              POP        EAX
        080ba146 5a              POP        EDX
        080ba147 53              PUSH       EBX
        080ba148 57              PUSH       EDI
        080ba149 e8 72 d1        CALL       SndVoiceSetVol                                   undefined SndVoiceSetVol()
                 f9 ff
        080ba14e 5a              POP        EDX
        080ba14f 59              POP        ECX
        080ba150 56              PUSH       ESI
        080ba151 57              PUSH       EDI
        080ba152 e8 e9 d1        CALL       SndVoiceSetFreq                                  undefined SndVoiceSetFreq()
                 f9 ff
        080ba157 5e              POP        ESI
        080ba158 58              POP        EAX
        080ba159 55              PUSH       EBP
        080ba15a 57              PUSH       EDI
        080ba15b e8 60 d2        CALL       SndVoiceSetPan                                   undefined SndVoiceSetPan()
                 f9 ff
        080ba160 59              POP        ECX
        080ba161 5b              POP        EBX
        080ba162 6a 00           PUSH       0x0
        080ba164 57              PUSH       EDI
        080ba165 e8 f6 d2        CALL       SndVoiceSetLoop                                  undefined SndVoiceSetLoop()
                 f9 ff
        080ba16a 89 3c 24        MOV        dword ptr [ESP]=>local_2c,EDI
        080ba16d e8 7e d0        CALL       SndVoiceStart                                    undefined SndVoiceStart()
                 f9 ff
        080ba172 83 c4 10        ADD        ESP,0x10
                             LAB_080ba175                                    XREF[5]:     080ba0ac(j), 080ba0b4(j),
                                                                                          080ba0c2(j), 080ba0cb(j),
                                                                                          080ba0ea(j)
        080ba175 83 c4 0c        ADD        ESP,0xc
        080ba178 5b              POP        EBX
        080ba179 5e              POP        ESI
        080ba17a 5f              POP        EDI
        080ba17b 5d              POP        EBP
        080ba17c c3              RET
