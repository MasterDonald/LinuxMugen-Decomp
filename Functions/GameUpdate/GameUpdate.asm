                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x120   local_120                               XREF[15,3]:  080911bd(W),
                                                                                                   080911c1(R),
                                                                                                   080911ca(R),
                                                                                                   080911ce(W),
                                                                                                   080911d6(R),
                                                                                                   08091a63(W),
                                                                                                   08091a67(R),
                                                                                                   08091a70(R),
                                                                                                   08091a74(W),
                                                                                                   08091a7c(R),
                                                                                                   08091cc9(W),
                                                                                                   08091ccd(R),
                                                                                                   08091cd6(R),
                                                                                                   08091cda(W),
                                                                                                   08091ce2(R),
                                                                                                   080911c5(W),
                                                                                                   08091a6b(W),
                                                                                                   08091cd1(W)
             undefined4        Stack[-0x124   local_124                               XREF[6]:     080911d2(W),
                                                                                                   080911da(R),
                                                                                                   08091a78(W),
                                                                                                   08091a80(R),
                                                                                                   08091cde(W),
                                                                                                   08091ce6(R)
             undefined4        Stack[-0x128   local_128                               XREF[14]:    08091115(W),
                                                                                                   08091179(R),
                                                                                                   080912b6(R),
                                                                                                   0809158b(R),
                                                                                                   0809160b(R),
                                                                                                   080917b5(R),
                                                                                                   0809183d(R),
                                                                                                   080918bd(R),
                                                                                                   0809194d(R),
                                                                                                   080919dd(R),
                                                                                                   08091afd(R),
                                                                                                   08091b7d(R),
                                                                                                   08091c0d(R),
                                                                                                   08091d5f(R)
                             GameUpdate                                      XREF[2]:     Entry Point(*),
                                                                                          GameLoop:08090343(c)
        08091100 55              PUSH       EBP
        08091101 57              PUSH       EDI
        08091102 56              PUSH       ESI
        08091103 53              PUSH       EBX
        08091104 81 ec 1c        SUB        ESP,0x11c
                 01 00 00
        0809110a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809110f 8d 90 78        LEA        EDX,[EAX + 0x1d278]
                 d2 01 00
        08091115 89 54 24 04     MOV        dword ptr [ESP + local_128],EDX
        08091119 83 b8 b8        CMP        dword ptr [EAX + 0xceb8],0x3
                 ce 00 00 03
        08091120 c7 80 2c        MOV        dword ptr [EAX + 0x1cc2c],0x0
                 cc 01 00
                 00 00 00 00
        0809112a 74 0a           JZ         LAB_08091136
        0809112c 8b 98 a0        MOV        EBX,dword ptr [EAX + 0x1d3a0]
                 d3 01 00
        08091132 85 db           TEST       EBX,EBX
        08091134 74 0a           JZ         LAB_08091140
                             LAB_08091136                                    XREF[1]:     0809112a(j)
        08091136 c7 80 2c        MOV        dword ptr [EAX + 0x1cc2c],0x1
                 cc 01 00
                 01 00 00 00
                             LAB_08091140                                    XREF[1]:     08091134(j)
        08091140 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08091146 89 c8           MOV        EAX,ECX
        08091148 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        0809114e 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091154 7f 3a           JG         LAB_08091190
        08091156 89 cf           MOV        EDI,ECX
        08091158 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809115f 90              NOP
                             LAB_08091160                                    XREF[1]:     0809118e(j)
        08091160 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        08091164 85 c0           TEST       EAX,EAX
        08091166 74 0f           JZ         LAB_08091177
        08091168 8b 88 58        MOV        ECX,dword ptr [EAX + 0x158]
                 01 00 00
        0809116e ba 01 00        MOV        EDX,0x1
                 00 00
        08091173 85 c9           TEST       ECX,ECX
        08091175 75 02           JNZ        LAB_08091179
                             LAB_08091177                                    XREF[1]:     08091166(j)
        08091177 31 d2           XOR        EDX,EDX
                             LAB_08091179                                    XREF[1]:     08091175(j)
        08091179 8b 4c 24 04     MOV        ECX,dword ptr [ESP + local_128]
        0809117d 83 c3 04        ADD        EBX,0x4
        08091180 89 14 b1        MOV        dword ptr [ECX + ESI*0x4],EDX
        08091183 46              INC        ESI
        08091184 89 f9           MOV        ECX,EDI
        08091186 89 c8           MOV        EAX,ECX
        08091188 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        0809118e 7e d0           JLE        LAB_08091160
                             LAB_08091190                                    XREF[1]:     08091154(j)
        08091190 be 01 00        MOV        ESI,0x1
                 00 00
        08091195 89 c8           MOV        EAX,ECX
        08091197 3b b1 54        CMP        ESI,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809119d 0f 8f ae        JG         LAB_08091251
                 00 00 00
        080911a3 bb 64 cf        MOV        EBX,0x1cf64
                 01 00
                             LAB_080911a8                                    XREF[1]:     0809124b(j)
        080911a8 8b 7c 03 04     MOV        EDI,dword ptr [EBX + EAX*0x1 + 0x4]
        080911ac 8d 14 b5        LEA        EDX,[ESI*0x4 + 0x0]
                 00 00 00 00
        080911b3 85 ff           TEST       EDI,EDI
        080911b5 74 2b           JZ         LAB_080911e2
        080911b7 d9 87 9c        FLD        float ptr [EDI + 0x19c]
                 01 00 00
        080911bd d9 7c 24 0c     FNSTCW     word ptr [ESP + local_120]
        080911c1 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_120]
        080911c5 c6 44 24        MOV        byte ptr [ESP + local_120+0x1],0xc
                 0d 0c
        080911ca d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        080911ce 89 4c 24 0c     MOV        dword ptr [ESP + local_120],ECX
        080911d2 db 5c 24 08     FISTP      dword ptr [ESP + local_124]
        080911d6 d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        080911da 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_124]
        080911de 89 44 14 10     MOV        dword ptr [ESP + EDX*0x1 + 0x10],EAX
                             LAB_080911e2                                    XREF[1]:     080911b5(j)
        080911e2 85 ff           TEST       EDI,EDI
        080911e4 74 0f           JZ         LAB_080911f5
        080911e6 8b 97 58        MOV        EDX,dword ptr [EDI + 0x158]
                 01 00 00
        080911ec b8 01 00        MOV        EAX,0x1
                 00 00
        080911f1 85 d2           TEST       EDX,EDX
        080911f3 75 02           JNZ        LAB_080911f7
                             LAB_080911f5                                    XREF[1]:     080911e4(j)
        080911f5 31 c0           XOR        EAX,EAX
                             LAB_080911f7                                    XREF[1]:     080911f3(j)
        080911f7 85 c0           TEST       EAX,EAX
        080911f9 74 3e           JZ         LAB_08091239
        080911fb 8b 87 24        MOV        EAX,dword ptr [EDI + 0x3424]
                 34 00 00
        08091201 85 c0           TEST       EAX,EAX
        08091203 74 16           JZ         LAB_0809121b
        08091205 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        0809120b 85 ed           TEST       EBP,EBP
        0809120d 74 0c           JZ         LAB_0809121b
        0809120f 8b 48 1c        MOV        ECX,dword ptr [EAX + 0x1c]
        08091212 ba 01 00        MOV        EDX,0x1
                 00 00
        08091217 85 c9           TEST       ECX,ECX
        08091219 74 02           JZ         LAB_0809121d
                             LAB_0809121b                                    XREF[2]:     08091203(j), 0809120d(j)
        0809121b 31 d2           XOR        EDX,EDX
                             LAB_0809121d                                    XREF[1]:     08091219(j)
        0809121d 85 d2           TEST       EDX,EDX
        0809121f 74 06           JZ         LAB_08091227
        08091221 89 87 28        MOV        dword ptr [EDI + 0x3428],EAX
                 34 00 00
                             LAB_08091227                                    XREF[1]:     0809121f(j)
        08091227 83 ec 0c        SUB        ESP,0xc
        0809122a 57              PUSH       EDI
        0809122b e8 90 9f        CALL       PlayerNearestEnemy                               undefined PlayerNearestEnemy()
                 01 00
        08091230 83 c4 10        ADD        ESP,0x10
        08091233 89 87 24        MOV        dword ptr [EDI + 0x3424],EAX
                 34 00 00
                             LAB_08091239                                    XREF[1]:     080911f9(j)
        08091239 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809123f 46              INC        ESI
        08091240 83 c3 04        ADD        EBX,0x4
        08091243 89 c8           MOV        EAX,ECX
        08091245 3b b1 54        CMP        ESI,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809124b 0f 8e 57        JLE        LAB_080911a8
                 ff ff ff
                             LAB_08091251                                    XREF[1]:     0809119d(j)
        08091251 89 c8           MOV        EAX,ECX
        08091253 83 b9 cc        CMP        dword ptr [ECX + 0x1d3cc],-0x1
                 d3 01 00 ff
        0809125a 0f 84 09        JZ         LAB_08091369
                 01 00 00
        08091260 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091266 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        0809126c 0f 8f f7        JG         LAB_08091369
                 00 00 00
        08091272 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091279 8b 2d 74        MOV        EBP,dword ptr [g]
                 7a 28 08
        0809127f 89 df           MOV        EDI,EBX
                             LAB_08091281                                    XREF[1]:     080912d2(j)
        08091281 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091285 85 c0           TEST       EAX,EAX
        08091287 74 0f           JZ         LAB_08091298
        08091289 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809128f ba 01 00        MOV        EDX,0x1
                 00 00
        08091294 85 c0           TEST       EAX,EAX
        08091296 75 02           JNZ        LAB_0809129a
                             LAB_08091298                                    XREF[1]:     08091287(j)
        08091298 31 d2           XOR        EDX,EDX
                             LAB_0809129a                                    XREF[1]:     08091296(j)
        0809129a 85 d2           TEST       EDX,EDX
        0809129c 74 25           JZ         LAB_080912c3
        0809129e 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        080912a2 8b 91 cc        MOV        EDX,dword ptr [ECX + 0x1d3cc]
                 d3 01 00
        080912a8 83 c0 0c        ADD        EAX,0xc
        080912ab 8b 84 90        MOV        EAX,dword ptr [EAX + EDX*0x4 + 0x1d0]
                 d0 01 00 00
        080912b2 85 c0           TEST       EAX,EAX
        080912b4 75 0d           JNZ        LAB_080912c3
        080912b6 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        080912ba 89 e9           MOV        ECX,EBP
        080912bc c7 04 b0        MOV        dword ptr [EAX + ESI*0x4],0x0
                 00 00 00 00
                             LAB_080912c3                                    XREF[2]:     0809129c(j), 080912b4(j)
        080912c3 46              INC        ESI
        080912c4 83 c3 04        ADD        EBX,0x4
        080912c7 83 c7 04        ADD        EDI,0x4
        080912ca 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080912d0 89 c8           MOV        EAX,ECX
        080912d2 7e ad           JLE        LAB_08091281
        080912d4 e9 90 00        JMP        LAB_08091369
                 00 00
        080912d9 8d              ??         8Dh
        080912da b4              ??         B4h
        080912db 26              ??         26h    &
        080912dc 00              ??         00h
        080912dd 00              ??         00h
        080912de 00              ??         00h
        080912df 00              ??         00h
                             LAB_080912e0                                    XREF[1]:     0809137f(j)
        080912e0 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080912e6 8b 91 24        MOV        EDX,dword ptr [ECX + 0x1cc24]
                 cc 01 00
        080912ec 85 d2           TEST       EDX,EDX
        080912ee 74 08           JZ         LAB_080912f8
        080912f0 f7 c7 00        TEST       EDI,0x1000
                 10 00 00
        080912f6 74 71           JZ         LAB_08091369
                             LAB_080912f8                                    XREF[1]:     080912ee(j)
        080912f8 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080912fe 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091304 7f 63           JG         LAB_08091369
        08091306 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809130d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08091310                                    XREF[1]:     08091367(j)
        08091310 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091314 85 c0           TEST       EAX,EAX
        08091316 74 0f           JZ         LAB_08091327
        08091318 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809131e ba 01 00        MOV        EDX,0x1
                 00 00
        08091323 85 c0           TEST       EAX,EAX
        08091325 75 02           JNZ        LAB_08091329
                             LAB_08091327                                    XREF[1]:     08091316(j)
        08091327 31 d2           XOR        EDX,EDX
                             LAB_08091329                                    XREF[1]:     08091325(j)
        08091329 85 d2           TEST       EDX,EDX
        0809132b 74 30           JZ         LAB_0809135d
        0809132d 8d 51 04        LEA        EDX,[ECX + 0x4]
        08091330 8b 04 13        MOV        EAX,dword ptr [EBX + EDX*0x1]
        08091333 8b a8 2c        MOV        EBP,dword ptr [EAX + 0x262c]
                 26 00 00
        08091339 85 ed           TEST       EBP,EBP
        0809133b 75 20           JNZ        LAB_0809135d
        0809133d 05 48 02        ADD        EAX,0x248
                 00 00
        08091342 55              PUSH       EBP
        08091343 57              PUSH       EDI
        08091344 50              PUSH       EAX
        08091345 8b 04 13        MOV        EAX,dword ptr [EBX + EDX*0x1]
        08091348 8b 88 60        MOV        ECX,dword ptr [EAX + 0x960]
                 09 00 00
        0809134e 51              PUSH       ECX
        0809134f e8 5c 27        CALL       KBIUpdate                                        undefined KBIUpdate()
                 fc ff
        08091354 83 c4 10        ADD        ESP,0x10
        08091357 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809135d                                    XREF[2]:     0809132b(j), 0809133b(j)
        0809135d 46              INC        ESI
        0809135e 83 c3 04        ADD        EBX,0x4
        08091361 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091367 7e a7           JLE        LAB_08091310
                             LAB_08091369                                    XREF[5]:     0809125a(j), 0809126c(j),
                                                                                          080912d4(j), 080912f6(j),
                                                                                          08091304(j)
        08091369 83 ec 0c        SUB        ESP,0xc
        0809136c 8d 81 44        LEA        EAX,[ECX + 0x1ce44]
                 ce 01 00
        08091372 50              PUSH       EAX
        08091373 e8 88 31        CALL       IntCircBufGet                                    undefined IntCircBufGet()
                 fc ff
        08091378 89 c7           MOV        EDI,EAX
        0809137a 83 c4 10        ADD        ESP,0x10
        0809137d 85 ff           TEST       EDI,EDI
        0809137f 0f 85 5b        JNZ        LAB_080912e0
                 ff ff ff
        08091385 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809138b 8b 91 24        MOV        EDX,dword ptr [ECX + 0x1cc24]
                 cc 01 00
        08091391 85 d2           TEST       EDX,EDX
        08091393 0f 85 83        JNZ        LAB_08091e1c
                 0a 00 00
        08091399 8b 81 34        MOV        EAX,dword ptr [ECX + 0x1d434]
                 d4 01 00
        0809139f 85 c0           TEST       EAX,EAX
        080913a1 0f 8f 75        JG         LAB_08091e1c
                 0a 00 00
        080913a7 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080913ad 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080913b3 7f 4d           JG         LAB_08091402
        080913b5 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080913bc 89 df           MOV        EDI,EBX
        080913be 89 f6           MOV        ESI,ESI
                             LAB_080913c0                                    XREF[1]:     08091400(j)
        080913c0 8b 44 0f 04     MOV        EAX,dword ptr [EDI + ECX*0x1 + 0x4]
        080913c4 85 c0           TEST       EAX,EAX
        080913c6 74 0f           JZ         LAB_080913d7
        080913c8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        080913ce ba 01 00        MOV        EDX,0x1
                 00 00
        080913d3 85 ed           TEST       EBP,EBP
        080913d5 75 02           JNZ        LAB_080913d9
                             LAB_080913d7                                    XREF[1]:     080913c6(j)
        080913d7 31 d2           XOR        EDX,EDX
                             LAB_080913d9                                    XREF[1]:     080913d5(j)
        080913d9 85 d2           TEST       EDX,EDX
        080913db 74 16           JZ         LAB_080913f3
        080913dd 83 ec 0c        SUB        ESP,0xc
        080913e0 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        080913e4 50              PUSH       EAX
        080913e5 e8 a6 69        CALL       PlayerAIMsgStateUpdate                           undefined PlayerAIMsgStateUpdate()
                 01 00
        080913ea 83 c4 10        ADD        ESP,0x10
        080913ed 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080913f3                                    XREF[1]:     080913db(j)
        080913f3 46              INC        ESI
        080913f4 83 c3 04        ADD        EBX,0x4
        080913f7 83 c7 04        ADD        EDI,0x4
        080913fa 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091400 7e be           JLE        LAB_080913c0
                             LAB_08091402                                    XREF[1]:     080913b3(j)
        08091402 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091408 89 c8           MOV        EAX,ECX
        0809140a 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091410 7f 52           JG         LAB_08091464
        08091412 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091419 89 df           MOV        EDI,EBX
        0809141b 90              NOP
        0809141c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08091420                                    XREF[1]:     08091462(j)
        08091420 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091424 85 c0           TEST       EAX,EAX
        08091426 74 0f           JZ         LAB_08091437
        08091428 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        0809142e ba 01 00        MOV        EDX,0x1
                 00 00
        08091433 85 ed           TEST       EBP,EBP
        08091435 75 02           JNZ        LAB_08091439
                             LAB_08091437                                    XREF[1]:     08091426(j)
        08091437 31 d2           XOR        EDX,EDX
                             LAB_08091439                                    XREF[1]:     08091435(j)
        08091439 85 d2           TEST       EDX,EDX
        0809143b 74 16           JZ         LAB_08091453
        0809143d 83 ec 0c        SUB        ESP,0xc
        08091440 8b 54 0b 04     MOV        EDX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091444 52              PUSH       EDX
        08091445 e8 f6 4f        CALL       PlayerAI                                         undefined PlayerAI()
                 01 00
        0809144a 83 c4 10        ADD        ESP,0x10
        0809144d 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091453                                    XREF[1]:     0809143b(j)
        08091453 46              INC        ESI
        08091454 83 c3 04        ADD        EBX,0x4
        08091457 83 c7 04        ADD        EDI,0x4
        0809145a 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091460 89 c8           MOV        EAX,ECX
        08091462 7e bc           JLE        LAB_08091420
                             LAB_08091464                                    XREF[1]:     08091410(j)
        08091464 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        0809146a 89 c8           MOV        EAX,ECX
        0809146c 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091472 7f 50           JG         LAB_080914c4
        08091474 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809147b 89 df           MOV        EDI,EBX
        0809147d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08091480                                    XREF[1]:     080914c2(j)
        08091480 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091484 85 c0           TEST       EAX,EAX
        08091486 74 0f           JZ         LAB_08091497
        08091488 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809148e ba 01 00        MOV        EDX,0x1
                 00 00
        08091493 85 c0           TEST       EAX,EAX
        08091495 75 02           JNZ        LAB_08091499
                             LAB_08091497                                    XREF[1]:     08091486(j)
        08091497 31 d2           XOR        EDX,EDX
                             LAB_08091499                                    XREF[1]:     08091495(j)
        08091499 85 d2           TEST       EDX,EDX
        0809149b 74 16           JZ         LAB_080914b3
        0809149d 83 ec 0c        SUB        ESP,0xc
        080914a0 8b 6c 0b 04     MOV        EBP,dword ptr [EBX + ECX*0x1 + 0x4]
        080914a4 55              PUSH       EBP
        080914a5 e8 d6 68        CALL       PlayerAIClearMsg                                 undefined PlayerAIClearMsg()
                 01 00
        080914aa 83 c4 10        ADD        ESP,0x10
        080914ad 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080914b3                                    XREF[1]:     0809149b(j)
        080914b3 46              INC        ESI
        080914b4 83 c3 04        ADD        EBX,0x4
        080914b7 83 c7 04        ADD        EDI,0x4
        080914ba 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080914c0 89 c8           MOV        EAX,ECX
        080914c2 7e bc           JLE        LAB_08091480
                             LAB_080914c4                                    XREF[1]:     08091472(j)
        080914c4 8b 81 dc        MOV        EAX,dword ptr [ECX + 0xcedc]
                 ce 00 00
        080914ca 83 f8 05        CMP        EAX,0x5
        080914cd 74 58           JZ         LAB_08091527
        080914cf 83 f8 05        CMP        EAX,0x5
        080914d2 7f 0c           JG         LAB_080914e0
        080914d4 83 f8 04        CMP        EAX,0x4
        080914d7 74 0e           JZ         LAB_080914e7
        080914d9 eb 60           JMP        LAB_0809153b
        080914db 90              ??         90h
        080914dc 8d              ??         8Dh
        080914dd 74              ??         74h    t
        080914de 26              ??         26h    &
        080914df 00              ??         00h
                             LAB_080914e0                                    XREF[1]:     080914d2(j)
        080914e0 83 f8 06        CMP        EAX,0x6
        080914e3 74 4b           JZ         LAB_08091530
        080914e5 eb 54           JMP        LAB_0809153b
                             LAB_080914e7                                    XREF[1]:     080914d7(j)
        080914e7 8b b1 24        MOV        ESI,dword ptr [ECX + 0x1cc24]
                 cc 01 00
        080914ed 85 f6           TEST       ESI,ESI
        080914ef 75 0f           JNZ        LAB_08091500
        080914f1 e8 5a 0d        CALL       GameRoundUpdate                                  undefined GameRoundUpdate()
                 00 00
        080914f6 85 c0           TEST       EAX,EAX
        080914f8 75 23           JNZ        LAB_0809151d
        080914fa 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091500                                    XREF[1]:     080914ef(j)
        08091500 8b 99 24        MOV        EBX,dword ptr [ECX + 0x1cc24]
                 cc 01 00
        08091506 85 db           TEST       EBX,EBX
        08091508 75 31           JNZ        LAB_0809153b
        0809150a 8b 91 a0        MOV        EDX,dword ptr [ECX + 0x1d3a0]
                 d3 01 00
        08091510 85 d2           TEST       EDX,EDX
        08091512 74 27           JZ         LAB_0809153b
        08091514 e8 67 0c        CALL       GameDemoUpdate                                   undefined GameDemoUpdate()
                 00 00
        08091519 85 c0           TEST       EAX,EAX
        0809151b 74 18           JZ         LAB_08091535
                             LAB_0809151d                                    XREF[1]:     080914f8(j)
        0809151d b8 01 00        MOV        EAX,0x1
                 00 00
        08091522 e9 f7 08        JMP        LAB_08091e1e
                 00 00
                             LAB_08091527                                    XREF[1]:     080914cd(j)
        08091527 e8 04 09        CALL       GameWinScreenUpdate                              undefined GameWinScreenUpdate()
                 00 00
        0809152c eb 07           JMP        LAB_08091535
        0809152e 89              ??         89h
        0809152f f6              ??         F6h
                             LAB_08091530                                    XREF[1]:     080914e3(j)
        08091530 e8 8b 0a        CALL       GameSurvivalResultsUpdate                        undefined GameSurvivalResultsUpd
                 00 00
                             LAB_08091535                                    XREF[2]:     0809151b(j), 0809152c(j)
        08091535 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809153b                                    XREF[4]:     080914d9(j), 080914e5(j),
                                                                                          08091508(j), 08091512(j)
        0809153b 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091541 89 c8           MOV        EAX,ECX
        08091543 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091549 7f 5e           JG         LAB_080915a9
        0809154b 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091552 8b 2d 74        MOV        EBP,dword ptr [g]
                 7a 28 08
        08091558 89 df           MOV        EDI,EBX
        0809155a 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_08091560                                    XREF[1]:     080915a7(j)
        08091560 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091564 85 c0           TEST       EAX,EAX
        08091566 74 0f           JZ         LAB_08091577
        08091568 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809156e ba 01 00        MOV        EDX,0x1
                 00 00
        08091573 85 c0           TEST       EAX,EAX
        08091575 75 02           JNZ        LAB_08091579
                             LAB_08091577                                    XREF[1]:     08091566(j)
        08091577 31 d2           XOR        EDX,EDX
                             LAB_08091579                                    XREF[1]:     08091575(j)
        08091579 85 d2           TEST       EDX,EDX
        0809157b 74 1b           JZ         LAB_08091598
        0809157d 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091581 8b 80 5c        MOV        EAX,dword ptr [EAX + 0x15c]
                 01 00 00
        08091587 85 c0           TEST       EAX,EAX
        08091589 74 0d           JZ         LAB_08091598
        0809158b 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_128]
        0809158f 89 e9           MOV        ECX,EBP
        08091591 c7 04 b2        MOV        dword ptr [EDX + ESI*0x4],0x0
                 00 00 00 00
                             LAB_08091598                                    XREF[2]:     0809157b(j), 08091589(j)
        08091598 46              INC        ESI
        08091599 83 c3 04        ADD        EBX,0x4
        0809159c 83 c7 04        ADD        EDI,0x4
        0809159f 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080915a5 89 c8           MOV        EAX,ECX
        080915a7 7e b7           JLE        LAB_08091560
                             LAB_080915a9                                    XREF[1]:     08091549(j)
        080915a9 8b a9 74        MOV        EBP,dword ptr [ECX + 0x4274]
                 42 00 00
        080915af 85 ed           TEST       EBP,EBP
        080915b1 0f 84 41        JZ         LAB_080916f8
                 01 00 00
        080915b7 e8 74 c6        CALL       GameModeInPassiveFightScreen                     undefined GameModeInPassiveFight
                 00 00
        080915bc 85 c0           TEST       EAX,EAX
        080915be 0f 85 2e        JNZ        LAB_080916f2
                 01 00 00
        080915c4 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080915ca 89 c8           MOV        EAX,ECX
        080915cc 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080915d2 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080915d8 0f 8f 1a        JG         LAB_080916f8
                 01 00 00
        080915de 89 f6           MOV        ESI,ESI
                             LAB_080915e0                                    XREF[1]:     080916ea(j)
        080915e0 8b 84 b0        MOV        EAX,dword ptr [EAX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        080915e7 85 c0           TEST       EAX,EAX
        080915e9 74 16           JZ         LAB_08091601
        080915eb 8b b8 58        MOV        EDI,dword ptr [EAX + 0x158]
                 01 00 00
        080915f1 85 ff           TEST       EDI,EDI
        080915f3 74 0c           JZ         LAB_08091601
        080915f5 8b 58 1c        MOV        EBX,dword ptr [EAX + 0x1c]
        080915f8 ba 01 00        MOV        EDX,0x1
                 00 00
        080915fd 85 db           TEST       EBX,EBX
        080915ff 74 02           JZ         LAB_08091603
                             LAB_08091601                                    XREF[2]:     080915e9(j), 080915f3(j)
        08091601 31 d2           XOR        EDX,EDX
                             LAB_08091603                                    XREF[1]:     080915ff(j)
        08091603 85 d2           TEST       EDX,EDX
        08091605 0f 84 d6        JZ         LAB_080916e1
                 00 00 00
        0809160b 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        0809160f 8b 04 b0        MOV        EAX,dword ptr [EAX + ESI*0x4]
        08091612 85 c0           TEST       EAX,EAX
        08091614 0f 84 c7        JZ         LAB_080916e1
                 00 00 00
        0809161a 8b 84 b1        MOV        EAX,dword ptr [ECX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        08091621 8b b8 24        MOV        EDI,dword ptr [EAX + 0x3424]
                 34 00 00
        08091627 85 ff           TEST       EDI,EDI
        08091629 74 0f           JZ         LAB_0809163a
        0809162b 8b af 58        MOV        EBP,dword ptr [EDI + 0x158]
                 01 00 00
        08091631 b8 01 00        MOV        EAX,0x1
                 00 00
        08091636 85 ed           TEST       EBP,EBP
        08091638 75 02           JNZ        LAB_0809163c
                             LAB_0809163a                                    XREF[1]:     08091629(j)
        0809163a 31 c0           XOR        EAX,EAX
                             LAB_0809163c                                    XREF[1]:     08091638(j)
        0809163c 83 f0 01        XOR        EAX,0x1
        0809163f 48              DEC        EAX
        08091640 21 c7           AND        EDI,EAX
        08091642 75 3c           JNZ        LAB_08091680
        08091644 83 b9 44        CMP        dword ptr [ECX + 0x1d444],0x2
                 d4 01 00 02
        0809164b 7e 33           JLE        LAB_08091680
        0809164d 8b 84 b1        MOV        EAX,dword ptr [ECX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        08091654 8b 80 28        MOV        EAX,dword ptr [EAX + 0x3428]
                 34 00 00
        0809165a 85 c0           TEST       EAX,EAX
        0809165c 74 0f           JZ         LAB_0809166d
        0809165e 8b 98 58        MOV        EBX,dword ptr [EAX + 0x158]
                 01 00 00
        08091664 ba 01 00        MOV        EDX,0x1
                 00 00
        08091669 85 db           TEST       EBX,EBX
        0809166b 75 02           JNZ        LAB_0809166f
                             LAB_0809166d                                    XREF[1]:     0809165c(j)
        0809166d 31 d2           XOR        EDX,EDX
                             LAB_0809166f                                    XREF[1]:     0809166b(j)
        0809166f 85 d2           TEST       EDX,EDX
        08091671 74 0d           JZ         LAB_08091680
        08091673 8b 84 b1        MOV        EAX,dword ptr [ECX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        0809167a 8b b8 28        MOV        EDI,dword ptr [EAX + 0x3428]
                 34 00 00
                             LAB_08091680                                    XREF[3]:     08091642(j), 0809164b(j),
                                                                                          08091671(j)
        08091680 85 ff           TEST       EDI,EDI
        08091682 74 5d           JZ         LAB_080916e1
        08091684 8b 94 b1        MOV        EDX,dword ptr [ECX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        0809168b 8b 82 f4        MOV        EAX,dword ptr [EDX + 0xbf4]
                 0b 00 00
        08091691 85 c0           TEST       EAX,EAX
        08091693 74 32           JZ         LAB_080916c7
        08091695 83 f8 0b        CMP        EAX,0xb
        08091698 74 2d           JZ         LAB_080916c7
        0809169a 83 f8 14        CMP        EAX,0x14
        0809169d 74 28           JZ         LAB_080916c7
        0809169f 83 f8 28        CMP        EAX,0x28
        080916a2 74 23           JZ         LAB_080916c7
        080916a4 83 f8 34        CMP        EAX,0x34
        080916a7 75 38           JNZ        LAB_080916e1
        080916a9 83 ec 0c        SUB        ESP,0xc
        080916ac 8b 9a bc        MOV        EBX,dword ptr [EDX + 0x13bc]
                 13 00 00
        080916b2 53              PUSH       EBX
        080916b3 e8 48 83        CALL       AnimGetLooptime                                  undefined AnimGetLooptime()
                 fb ff
        080916b8 48              DEC        EAX
        080916b9 83 c4 10        ADD        ESP,0x10
        080916bc 39 43 1c        CMP        dword ptr [EBX + 0x1c],EAX
        080916bf 7c 1a           JL         LAB_080916db
        080916c1 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080916c7                                    XREF[4]:     08091693(j), 08091698(j),
                                                                                          0809169d(j), 080916a2(j)
        080916c7 52              PUSH       EDX
        080916c8 6a 01           PUSH       0x1
        080916ca 57              PUSH       EDI
        080916cb 8b 84 b1        MOV        EAX,dword ptr [ECX + ESI*0x4 + 0x1cf64]
                 64 cf 01 00
        080916d2 50              PUSH       EAX
        080916d3 e8 28 04        CALL       PlayerAutoTurn                                   undefined PlayerAutoTurn()
                 02 00
        080916d8 83 c4 10        ADD        ESP,0x10
                             LAB_080916db                                    XREF[1]:     080916bf(j)
        080916db 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080916e1                                    XREF[4]:     08091605(j), 08091614(j),
                                                                                          08091682(j), 080916a7(j)
        080916e1 46              INC        ESI
        080916e2 89 c8           MOV        EAX,ECX
        080916e4 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080916ea 0f 8e f0        JLE        LAB_080915e0
                 fe ff ff
        080916f0 eb 06           JMP        LAB_080916f8
                             LAB_080916f2                                    XREF[1]:     080915be(j)
        080916f2 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080916f8                                    XREF[3]:     080915b1(j), 080915d8(j),
                                                                                          080916f0(j)
        080916f8 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080916fe 89 c8           MOV        EAX,ECX
        08091700 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091706 7f 4d           JG         LAB_08091755
        08091708 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        0809170f 89 df           MOV        EDI,EBX
                             LAB_08091711                                    XREF[1]:     08091753(j)
        08091711 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091715 85 c0           TEST       EAX,EAX
        08091717 74 0f           JZ         LAB_08091728
        08091719 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        0809171f ba 01 00        MOV        EDX,0x1
                 00 00
        08091724 85 ed           TEST       EBP,EBP
        08091726 75 02           JNZ        LAB_0809172a
                             LAB_08091728                                    XREF[1]:     08091717(j)
        08091728 31 d2           XOR        EDX,EDX
                             LAB_0809172a                                    XREF[1]:     08091726(j)
        0809172a 85 d2           TEST       EDX,EDX
        0809172c 74 16           JZ         LAB_08091744
        0809172e 83 ec 0c        SUB        ESP,0xc
        08091731 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091735 50              PUSH       EAX
        08091736 e8 05 a6        CALL       PlayerKBUpdate                                   undefined PlayerKBUpdate()
                 01 00
        0809173b 83 c4 10        ADD        ESP,0x10
        0809173e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091744                                    XREF[1]:     0809172c(j)
        08091744 46              INC        ESI
        08091745 83 c3 04        ADD        EBX,0x4
        08091748 83 c7 04        ADD        EDI,0x4
        0809174b 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091751 89 c8           MOV        EAX,ECX
        08091753 7e bc           JLE        LAB_08091711
                             LAB_08091755                                    XREF[1]:     08091706(j)
        08091755 c6 81 96        MOV        byte ptr [ECX + 0x1d396],0x0
                 d3 01 00 00
        0809175c c7 81 8c        MOV        dword ptr [ECX + 0x1d38c],0x0
                 d3 01 00
                 00 00 00 00
        08091766 c7 81 90        MOV        dword ptr [ECX + 0x1d390],0x0
                 d3 01 00
                 00 00 00 00
        08091770 66 c7 81        MOV        word ptr [ECX + 0x1d394],0x0
                 94 d3 01
                 00 00 00
        08091779 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809177f 89 c8           MOV        EAX,ECX
        08091781 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091787 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        0809178d 7f 67           JG         LAB_080917f6
        0809178f 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091796 89 df           MOV        EDI,EBX
                             LAB_08091798                                    XREF[1]:     080917f4(j)
        08091798 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        0809179c 85 c0           TEST       EAX,EAX
        0809179e 74 0f           JZ         LAB_080917af
        080917a0 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        080917a6 ba 01 00        MOV        EDX,0x1
                 00 00
        080917ab 85 ed           TEST       EBP,EBP
        080917ad 75 02           JNZ        LAB_080917b1
                             LAB_080917af                                    XREF[1]:     0809179e(j)
        080917af 31 d2           XOR        EDX,EDX
                             LAB_080917b1                                    XREF[1]:     080917ad(j)
        080917b1 85 d2           TEST       EDX,EDX
        080917b3 74 30           JZ         LAB_080917e5
        080917b5 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_128]
        080917b9 8b 04 b2        MOV        EAX,dword ptr [EDX + ESI*0x4]
        080917bc 85 c0           TEST       EAX,EAX
        080917be 74 25           JZ         LAB_080917e5
        080917c0 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        080917c4 c6 80 0c        MOV        byte ptr [EAX + 0x20c],0x0
                 02 00 00 00
        080917cb c7 80 04        MOV        dword ptr [EAX + 0x204],0x0
                 02 00 00
                 00 00 00 00
        080917d5 c7 80 08        MOV        dword ptr [EAX + 0x208],0x0
                 02 00 00
                 00 00 00 00
        080917df 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080917e5                                    XREF[2]:     080917b3(j), 080917be(j)
        080917e5 46              INC        ESI
        080917e6 83 c3 04        ADD        EBX,0x4
        080917e9 83 c7 04        ADD        EDI,0x4
        080917ec 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080917f2 89 c8           MOV        EAX,ECX
        080917f4 7e a2           JLE        LAB_08091798
                             LAB_080917f6                                    XREF[1]:     0809178d(j)
        080917f6 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080917fc c7 81 78        MOV        dword ptr [ECX + 0x1d378],0x0
                 d3 01 00
                 00 00 00 00
        08091806 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        0809180c 7f 6a           JG         LAB_08091878
        0809180e 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091815 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809181b 89 df           MOV        EDI,EBX
        0809181d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08091820                                    XREF[1]:     08091874(j)
        08091820 8b 44 0f 04     MOV        EAX,dword ptr [EDI + ECX*0x1 + 0x4]
        08091824 85 c0           TEST       EAX,EAX
        08091826 74 0f           JZ         LAB_08091837
        08091828 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        0809182e ba 01 00        MOV        EDX,0x1
                 00 00
        08091833 85 ed           TEST       EBP,EBP
        08091835 75 02           JNZ        LAB_08091839
                             LAB_08091837                                    XREF[1]:     08091826(j)
        08091837 31 d2           XOR        EDX,EDX
                             LAB_08091839                                    XREF[1]:     08091835(j)
        08091839 85 d2           TEST       EDX,EDX
        0809183b 74 2a           JZ         LAB_08091867
        0809183d 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        08091841 8b 14 b0        MOV        EDX,dword ptr [EAX + ESI*0x4]
        08091844 85 d2           TEST       EDX,EDX
        08091846 74 1f           JZ         LAB_08091867
        08091848 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        0809184c 83 b8 04        CMP        dword ptr [EAX + 0xe04],0x1
                 0e 00 00 01
        08091853 75 12           JNZ        LAB_08091867
        08091855 83 ec 0c        SUB        ESP,0xc
        08091858 50              PUSH       EAX
        08091859 e8 92 03        CALL       PlayerUpdate                                     undefined PlayerUpdate()
                 02 00
        0809185e 83 c4 10        ADD        ESP,0x10
        08091861 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091867                                    XREF[3]:     0809183b(j), 08091846(j),
                                                                                          08091853(j)
        08091867 46              INC        ESI
        08091868 83 c3 04        ADD        EBX,0x4
        0809186b 83 c7 04        ADD        EDI,0x4
        0809186e 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091874 7e aa           JLE        LAB_08091820
        08091876 eb 06           JMP        LAB_0809187e
                             LAB_08091878                                    XREF[1]:     0809180c(j)
        08091878 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809187e                                    XREF[1]:     08091876(j)
        0809187e 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091884 89 c8           MOV        EAX,ECX
        08091886 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        0809188c 0f 8f 04        JG         LAB_08091996
                 01 00 00
        08091892 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091899 89 df           MOV        EDI,EBX
        0809189b 90              NOP
        0809189c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_080918a0                                    XREF[1]:     080918fb(j)
        080918a0 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        080918a4 85 c0           TEST       EAX,EAX
        080918a6 74 0f           JZ         LAB_080918b7
        080918a8 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        080918ae ba 01 00        MOV        EDX,0x1
                 00 00
        080918b3 85 c0           TEST       EAX,EAX
        080918b5 75 02           JNZ        LAB_080918b9
                             LAB_080918b7                                    XREF[1]:     080918a6(j)
        080918b7 31 d2           XOR        EDX,EDX
                             LAB_080918b9                                    XREF[1]:     080918b5(j)
        080918b9 85 d2           TEST       EDX,EDX
        080918bb 74 2f           JZ         LAB_080918ec
        080918bd 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_128]
        080918c1 8b 2c b2        MOV        EBP,dword ptr [EDX + ESI*0x4]
        080918c4 85 ed           TEST       EBP,EBP
        080918c6 74 24           JZ         LAB_080918ec
        080918c8 8b 54 0b 04     MOV        EDX,dword ptr [EBX + ECX*0x1 + 0x4]
        080918cc 8b 81 10        MOV        EAX,dword ptr [ECX + 0x1cc10]
                 cc 01 00
        080918d2 39 82 2c        CMP        dword ptr [EDX + 0xe2c],EAX
                 0e 00 00
        080918d8 74 12           JZ         LAB_080918ec
        080918da 83 ec 0c        SUB        ESP,0xc
        080918dd 52              PUSH       EDX
        080918de e8 0d 03        CALL       PlayerUpdate                                     undefined PlayerUpdate()
                 02 00
        080918e3 83 c4 10        ADD        ESP,0x10
        080918e6 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080918ec                                    XREF[3]:     080918bb(j), 080918c6(j),
                                                                                          080918d8(j)
        080918ec 46              INC        ESI
        080918ed 83 c3 04        ADD        EBX,0x4
        080918f0 83 c7 04        ADD        EDI,0x4
        080918f3 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080918f9 89 c8           MOV        EAX,ECX
        080918fb 7e a3           JLE        LAB_080918a0
        080918fd e9 94 00        JMP        LAB_08091996
                 00 00
                             LAB_08091902                                    XREF[1]:     080919a0(j)
        08091902 8b b0 64        MOV        ESI,dword ptr [EAX + 0x1d164]
                 d1 01 00
        08091908 c7 80 78        MOV        dword ptr [EAX + 0x1d378],0x0
                 d3 01 00
                 00 00 00 00
        08091912 3b b0 68        CMP        ESI,dword ptr [EAX + 0x1d168]
                 d1 01 00
        08091918 7f 76           JG         LAB_08091990
        0809191a 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091921 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08091927 89 df           MOV        EDI,EBX
        08091929 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_08091930                                    XREF[1]:     08091989(j)
        08091930 8b 44 0f 04     MOV        EAX,dword ptr [EDI + ECX*0x1 + 0x4]
        08091934 85 c0           TEST       EAX,EAX
        08091936 74 0f           JZ         LAB_08091947
        08091938 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        0809193e ba 01 00        MOV        EDX,0x1
                 00 00
        08091943 85 c0           TEST       EAX,EAX
        08091945 75 02           JNZ        LAB_08091949
                             LAB_08091947                                    XREF[1]:     08091936(j)
        08091947 31 d2           XOR        EDX,EDX
                             LAB_08091949                                    XREF[1]:     08091945(j)
        08091949 85 d2           TEST       EDX,EDX
        0809194b 74 2f           JZ         LAB_0809197c
        0809194d 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        08091951 8b 2c b0        MOV        EBP,dword ptr [EAX + ESI*0x4]
        08091954 85 ed           TEST       EBP,EBP
        08091956 74 24           JZ         LAB_0809197c
        08091958 8b 54 0b 04     MOV        EDX,dword ptr [EBX + ECX*0x1 + 0x4]
        0809195c 8b 81 10        MOV        EAX,dword ptr [ECX + 0x1cc10]
                 cc 01 00
        08091962 39 82 2c        CMP        dword ptr [EDX + 0xe2c],EAX
                 0e 00 00
        08091968 74 12           JZ         LAB_0809197c
        0809196a 83 ec 0c        SUB        ESP,0xc
        0809196d 52              PUSH       EDX
        0809196e e8 7d 02        CALL       PlayerUpdate                                     undefined PlayerUpdate()
                 02 00
        08091973 83 c4 10        ADD        ESP,0x10
        08091976 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809197c                                    XREF[3]:     0809194b(j), 08091956(j),
                                                                                          08091968(j)
        0809197c 46              INC        ESI
        0809197d 83 c3 04        ADD        EBX,0x4
        08091980 83 c7 04        ADD        EDI,0x4
        08091983 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091989 7e a5           JLE        LAB_08091930
        0809198b eb 09           JMP        LAB_08091996
        0809198d 8d              ??         8Dh
        0809198e 76              ??         76h    v
        0809198f 00              ??         00h
                             LAB_08091990                                    XREF[1]:     08091918(j)
        08091990 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091996                                    XREF[3]:     0809188c(j), 080918fd(j),
                                                                                          0809198b(j)
        08091996 8b 91 78        MOV        EDX,dword ptr [ECX + 0x1d378]
                 d3 01 00
        0809199c 89 c8           MOV        EAX,ECX
        0809199e 85 d2           TEST       EDX,EDX
        080919a0 0f 85 5c        JNZ        LAB_08091902
                 ff ff ff
        080919a6 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        080919ac 89 c8           MOV        EAX,ECX
        080919ae 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        080919b4 7f 59           JG         LAB_08091a0f
        080919b6 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        080919bd 89 df           MOV        EDI,EBX
        080919bf 90              NOP
                             LAB_080919c0                                    XREF[1]:     08091a0d(j)
        080919c0 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        080919c4 85 c0           TEST       EAX,EAX
        080919c6 74 0f           JZ         LAB_080919d7
        080919c8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        080919ce ba 01 00        MOV        EDX,0x1
                 00 00
        080919d3 85 ed           TEST       EBP,EBP
        080919d5 75 02           JNZ        LAB_080919d9
                             LAB_080919d7                                    XREF[1]:     080919c6(j)
        080919d7 31 d2           XOR        EDX,EDX
                             LAB_080919d9                                    XREF[1]:     080919d5(j)
        080919d9 85 d2           TEST       EDX,EDX
        080919db 74 21           JZ         LAB_080919fe
        080919dd 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_128]
        080919e1 8b 04 b2        MOV        EAX,dword ptr [EDX + ESI*0x4]
        080919e4 85 c0           TEST       EAX,EAX
        080919e6 74 16           JZ         LAB_080919fe
        080919e8 83 ec 0c        SUB        ESP,0xc
        080919eb 8b 6c 0b 04     MOV        EBP,dword ptr [EBX + ECX*0x1 + 0x4]
        080919ef 55              PUSH       EBP
        080919f0 e8 fb 12        CALL       PlayerUpdateBindTo                               undefined PlayerUpdateBindTo()
                 02 00
        080919f5 83 c4 10        ADD        ESP,0x10
        080919f8 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080919fe                                    XREF[2]:     080919db(j), 080919e6(j)
        080919fe 46              INC        ESI
        080919ff 83 c3 04        ADD        EBX,0x4
        08091a02 83 c7 04        ADD        EDI,0x4
        08091a05 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091a0b 89 c8           MOV        EAX,ECX
        08091a0d 7e b1           JLE        LAB_080919c0
                             LAB_08091a0f                                    XREF[1]:     080919b4(j)
        08091a0f 8b 99 60        MOV        EBX,dword ptr [ECX + 0x1cc60]
                 cc 01 00
        08091a15 85 db           TEST       EBX,EBX
        08091a17 0f 8e a6        JLE        LAB_08091ac3
                 00 00 00
        08091a1d 8b 91 24        MOV        EDX,dword ptr [ECX + 0x1cc24]
                 cc 01 00
        08091a23 85 d2           TEST       EDX,EDX
        08091a25 0f 85 98        JNZ        LAB_08091ac3
                 00 00 00
        08091a2b 8b 81 34        MOV        EAX,dword ptr [ECX + 0x1d434]
                 d4 01 00
        08091a31 85 c0           TEST       EAX,EAX
        08091a33 0f 85 8a        JNZ        LAB_08091ac3
                 00 00 00
        08091a39 db 81 5c        FILD       dword ptr [ECX + 0x1cc5c]
                 cc 01 00
        08091a3f dd 05 e0        FLD        double ptr [DAT_08276ee0]                        = 6Eh    n
                 6e 27 08
        08091a45 d9 c9           FXCH
        08091a47 d8 89 68        FMUL       float ptr [ECX + 0x1cc68]
                 cc 01 00
        08091a4d d8 81 70        FADD       float ptr [ECX + 0x1cc70]
                 cc 01 00
        08091a53 de c9           FMULP
        08091a55 dc 0d 38        FMUL       double ptr [DAT_08278738]                        = 17h
                 87 27 08
        08091a5b d9 fe           FSIN
        08091a5d d8 89 6c        FMUL       float ptr [ECX + 0x1cc6c]
                 cc 01 00
        08091a63 d9 7c 24 0c     FNSTCW     word ptr [ESP + local_120]
        08091a67 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_120]
        08091a6b c6 44 24        MOV        byte ptr [ESP + local_120+0x1],0xc
                 0d 0c
        08091a70 d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        08091a74 89 54 24 0c     MOV        dword ptr [ESP + local_120],EDX
        08091a78 db 5c 24 08     FISTP      dword ptr [ESP + local_124]
        08091a7c d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        08091a80 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_124]
        08091a84 89 81 58        MOV        dword ptr [ECX + 0x1cc58],EAX
                 cc 01 00
        08091a8a 8b 81 5c        MOV        EAX,dword ptr [ECX + 0x1cc5c]
                 cc 01 00
        08091a90 40              INC        EAX
        08091a91 89 81 5c        MOV        dword ptr [ECX + 0x1cc5c],EAX
                 cc 01 00
        08091a97 3b 81 60        CMP        EAX,dword ptr [ECX + 0x1cc60]
                 cc 01 00
        08091a9d 75 1e           JNZ        LAB_08091abd
        08091a9f c7 81 60        MOV        dword ptr [ECX + 0x1cc60],0x0
                 cc 01 00
                 00 00 00 00
        08091aa9 c7 81 58        MOV        dword ptr [ECX + 0x1cc58],0x0
                 cc 01 00
                 00 00 00 00
        08091ab3 c7 81 54        MOV        dword ptr [ECX + 0x1cc54],0x0
                 cc 01 00
                 00 00 00 00
                             LAB_08091abd                                    XREF[1]:     08091a9d(j)
        08091abd 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091ac3                                    XREF[3]:     08091a17(j), 08091a25(j),
                                                                                          08091a33(j)
        08091ac3 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091ac9 89 c8           MOV        EAX,ECX
        08091acb 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091ad1 7f 6c           JG         LAB_08091b3f
        08091ad3 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091ada 89 df           MOV        EDI,EBX
        08091adc 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08091ae0                                    XREF[1]:     08091b3d(j)
        08091ae0 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091ae4 85 c0           TEST       EAX,EAX
        08091ae6 74 0f           JZ         LAB_08091af7
        08091ae8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        08091aee ba 01 00        MOV        EDX,0x1
                 00 00
        08091af3 85 ed           TEST       EBP,EBP
        08091af5 75 02           JNZ        LAB_08091af9
                             LAB_08091af7                                    XREF[1]:     08091ae6(j)
        08091af7 31 d2           XOR        EDX,EDX
                             LAB_08091af9                                    XREF[1]:     08091af5(j)
        08091af9 85 d2           TEST       EDX,EDX
        08091afb 74 31           JZ         LAB_08091b2e
        08091afd 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        08091b01 8b 04 b0        MOV        EAX,dword ptr [EAX + ESI*0x4]
        08091b04 85 c0           TEST       EAX,EAX
        08091b06 74 26           JZ         LAB_08091b2e
        08091b08 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091b0c 8b a8 18        MOV        EBP,dword ptr [EAX + 0xe18]
                 0e 00 00
        08091b12 85 ed           TEST       EBP,EBP
        08091b14 75 18           JNZ        LAB_08091b2e
        08091b16 83 ec 0c        SUB        ESP,0xc
        08091b19 8b 90 bc        MOV        EDX,dword ptr [EAX + 0x13bc]
                 13 00 00
        08091b1f 52              PUSH       EDX
        08091b20 e8 ab 71        CALL       AnimUpdate                                       undefined AnimUpdate()
                 fb ff
        08091b25 83 c4 10        ADD        ESP,0x10
        08091b28 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091b2e                                    XREF[3]:     08091afb(j), 08091b06(j),
                                                                                          08091b14(j)
        08091b2e 46              INC        ESI
        08091b2f 83 c3 04        ADD        EBX,0x4
        08091b32 83 c7 04        ADD        EDI,0x4
        08091b35 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091b3b 89 c8           MOV        EAX,ECX
        08091b3d 7e a1           JLE        LAB_08091ae0
                             LAB_08091b3f                                    XREF[1]:     08091ad1(j)
        08091b3f 8b b1 68        MOV        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091b45 89 c8           MOV        EAX,ECX
        08091b47 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091b4d 0f 8c 81        JL         LAB_08091bd4
                 00 00 00
        08091b53 8d 3c b5        LEA        EDI,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091b5a 89 fb           MOV        EBX,EDI
        08091b5c 89 dd           MOV        EBP,EBX
        08091b5e 89 f6           MOV        ESI,ESI
                             LAB_08091b60                                    XREF[1]:     08091bd2(j)
        08091b60 8b 44 05 04     MOV        EAX,dword ptr [EBP + EAX*0x1 + 0x4]
        08091b64 85 c0           TEST       EAX,EAX
        08091b66 74 0f           JZ         LAB_08091b77
        08091b68 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        08091b6e ba 01 00        MOV        EDX,0x1
                 00 00
        08091b73 85 c0           TEST       EAX,EAX
        08091b75 75 02           JNZ        LAB_08091b79
                             LAB_08091b77                                    XREF[1]:     08091b66(j)
        08091b77 31 d2           XOR        EDX,EDX
                             LAB_08091b79                                    XREF[1]:     08091b75(j)
        08091b79 85 d2           TEST       EDX,EDX
        08091b7b 74 43           JZ         LAB_08091bc0
        08091b7d 8b 54 24 04     MOV        EDX,dword ptr [ESP + local_128]
        08091b81 8b 04 b2        MOV        EAX,dword ptr [EDX + ESI*0x4]
        08091b84 85 c0           TEST       EAX,EAX
        08091b86 74 1c           JZ         LAB_08091ba4
        08091b88 8b 44 0b 04     MOV        EAX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091b8c 83 ec 0c        SUB        ESP,0xc
        08091b8f 8b 88 1c        MOV        ECX,dword ptr [EAX + 0x21c]
                 02 00 00
        08091b95 51              PUSH       ECX
        08091b96 e8 75 77        CALL       ProjArrayUpdate                                  undefined ProjArrayUpdate()
                 02 00
        08091b9b 83 c4 10        ADD        ESP,0x10
        08091b9e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091ba4                                    XREF[1]:     08091b86(j)
        08091ba4 8b 44 0f 04     MOV        EAX,dword ptr [EDI + ECX*0x1 + 0x4]
        08091ba8 83 ec 0c        SUB        ESP,0xc
        08091bab 8b 90 1c        MOV        EDX,dword ptr [EAX + 0x21c]
                 02 00 00
        08091bb1 52              PUSH       EDX
        08091bb2 e8 b9 7a        CALL       ProjArrayCalcDraw                                undefined ProjArrayCalcDraw()
                 02 00
        08091bb7 83 c4 10        ADD        ESP,0x10
        08091bba 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091bc0                                    XREF[1]:     08091b7b(j)
        08091bc0 4e              DEC        ESI
        08091bc1 83 ef 04        SUB        EDI,0x4
        08091bc4 83 eb 04        SUB        EBX,0x4
        08091bc7 83 ed 04        SUB        EBP,0x4
        08091bca 89 c8           MOV        EAX,ECX
        08091bcc 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091bd2 7d 8c           JGE        LAB_08091b60
                             LAB_08091bd4                                    XREF[1]:     08091b4d(j)
        08091bd4 8b b1 68        MOV        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091bda 89 c8           MOV        EAX,ECX
        08091bdc 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091be2 7c 74           JL         LAB_08091c58
        08091be4 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091beb 90              NOP
        08091bec 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08091bf0                                    XREF[1]:     08091c56(j)
        08091bf0 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        08091bf4 85 c0           TEST       EAX,EAX
        08091bf6 74 0f           JZ         LAB_08091c07
        08091bf8 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        08091bfe ba 01 00        MOV        EDX,0x1
                 00 00
        08091c03 85 c0           TEST       EAX,EAX
        08091c05 75 02           JNZ        LAB_08091c09
                             LAB_08091c07                                    XREF[1]:     08091bf6(j)
        08091c07 31 d2           XOR        EDX,EDX
                             LAB_08091c09                                    XREF[1]:     08091c05(j)
        08091c09 85 d2           TEST       EDX,EDX
        08091c0b 74 3d           JZ         LAB_08091c4a
        08091c0d 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_128]
        08091c11 8b ac 18        MOV        EBP,dword ptr [EAX + EBX*0x1 + 0xfffe30a0]
                 a0 30 fe ff
        08091c18 85 ed           TEST       EBP,EBP
        08091c1a 74 2e           JZ         LAB_08091c4a
        08091c1c 83 ec 0c        SUB        ESP,0xc
        08091c1f 8b 7c 0b 04     MOV        EDI,dword ptr [EBX + ECX*0x1 + 0x4]
        08091c23 57              PUSH       EDI
        08091c24 e8 87 51        CALL       PlayerAftImgUpdate                               undefined PlayerAftImgUpdate()
                 00 00
        08091c29 a1 74 7a        MOV        EAX,[g]
                 28 08
        08091c2e 59              POP        ECX
        08091c2f 83 c0 04        ADD        EAX,0x4
        08091c32 8b 04 03        MOV        EAX,dword ptr [EBX + EAX*0x1]
        08091c35 8b 90 1c        MOV        EDX,dword ptr [EAX + 0x21c]
                 02 00 00
        08091c3b 52              PUSH       EDX
        08091c3c e8 8f 52        CALL       ProjArrayAftImgUpdate                            undefined ProjArrayAftImgUpdate()
                 00 00
        08091c41 83 c4 10        ADD        ESP,0x10
        08091c44 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091c4a                                    XREF[2]:     08091c0b(j), 08091c1a(j)
        08091c4a 4e              DEC        ESI
        08091c4b 83 eb 04        SUB        EBX,0x4
        08091c4e 89 c8           MOV        EAX,ECX
        08091c50 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091c56 7d 98           JGE        LAB_08091bf0
                             LAB_08091c58                                    XREF[1]:     08091be2(j)
        08091c58 8b 81 80        MOV        EAX,dword ptr [ECX + 0x1d380]
                 d3 01 00
        08091c5e 85 c0           TEST       EAX,EAX
        08091c60 74 0b           JZ         LAB_08091c6d
        08091c62 e8 39 13        CALL       GameClsnUpdate                                   undefined GameClsnUpdate()
                 02 00
        08091c67 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091c6d                                    XREF[1]:     08091c60(j)
        08091c6d 89 ca           MOV        EDX,ECX
        08091c6f 83 b9 cc        CMP        dword ptr [ECX + 0x1d3cc],-0x1
                 d3 01 00 ff
        08091c76 0f 85 9a        JNZ        LAB_08091d16
                 00 00 00
        08091c7c 8b b1 68        MOV        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091c82 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091c88 0f 8c 88        JL         LAB_08091d16
                 00 00 00
        08091c8e 8d 04 b5        LEA        EAX,[ESI*0x4 + 0x0]
                 00 00 00 00
        08091c95 89 c7           MOV        EDI,EAX
        08091c97 8d 98 60        LEA        EBX,[EAX + 0x1cf60]
                 cf 01 00
        08091c9d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08091ca0                                    XREF[1]:     08091d14(j)
        08091ca0 8b 44 13 04     MOV        EAX,dword ptr [EBX + EDX*0x1 + 0x4]
        08091ca4 85 c0           TEST       EAX,EAX
        08091ca6 74 0f           JZ         LAB_08091cb7
        08091ca8 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        08091cae ba 01 00        MOV        EDX,0x1
                 00 00
        08091cb3 85 ed           TEST       EBP,EBP
        08091cb5 75 02           JNZ        LAB_08091cb9
                             LAB_08091cb7                                    XREF[1]:     08091ca6(j)
        08091cb7 31 d2           XOR        EDX,EDX
                             LAB_08091cb9                                    XREF[1]:     08091cb5(j)
        08091cb9 85 d2           TEST       EDX,EDX
        08091cbb 74 48           JZ         LAB_08091d05
        08091cbd 8d 51 04        LEA        EDX,[ECX + 0x4]
        08091cc0 8b 04 13        MOV        EAX,dword ptr [EBX + EDX*0x1]
        08091cc3 d9 80 9c        FLD        float ptr [EAX + 0x19c]
                 01 00 00
        08091cc9 d9 7c 24 0c     FNSTCW     word ptr [ESP + local_120]
        08091ccd 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_120]
        08091cd1 c6 44 24        MOV        byte ptr [ESP + local_120+0x1],0xc
                 0d 0c
        08091cd6 d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        08091cda 89 4c 24 0c     MOV        dword ptr [ESP + local_120],ECX
        08091cde db 5c 24 08     FISTP      dword ptr [ESP + local_124]
        08091ce2 d9 6c 24 0c     FLDCW      word ptr [ESP + local_120]
        08091ce6 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_124]
        08091cea 3b 44 3c 10     CMP        EAX,dword ptr [ESP + EDI*0x1 + 0x10]
        08091cee 74 0f           JZ         LAB_08091cff
        08091cf0 83 ec 0c        SUB        ESP,0xc
        08091cf3 8b 14 13        MOV        EDX,dword ptr [EBX + EDX*0x1]
        08091cf6 52              PUSH       EDX
        08091cf7 e8 a4 50        CALL       PlayerMakeDust                                   undefined PlayerMakeDust()
                 02 00
        08091cfc 83 c4 10        ADD        ESP,0x10
                             LAB_08091cff                                    XREF[1]:     08091cee(j)
        08091cff 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091d05                                    XREF[1]:     08091cbb(j)
        08091d05 4e              DEC        ESI
        08091d06 83 eb 04        SUB        EBX,0x4
        08091d09 83 ef 04        SUB        EDI,0x4
        08091d0c 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091d12 89 ca           MOV        EDX,ECX
        08091d14 7d 8a           JGE        LAB_08091ca0
                             LAB_08091d16                                    XREF[2]:     08091c76(j), 08091c88(j)
        08091d16 8b b1 68        MOV        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091d1c 89 c8           MOV        EAX,ECX
        08091d1e 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091d24 7c 65           JL         LAB_08091d8b
        08091d26 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091d2d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08091d30                                    XREF[1]:     08091d89(j)
        08091d30 8b 44 03 04     MOV        EAX,dword ptr [EBX + EAX*0x1 + 0x4]
        08091d34 85 c0           TEST       EAX,EAX
        08091d36 74 0f           JZ         LAB_08091d47
        08091d38 8b 80 58        MOV        EAX,dword ptr [EAX + 0x158]
                 01 00 00
        08091d3e ba 01 00        MOV        EDX,0x1
                 00 00
        08091d43 85 c0           TEST       EAX,EAX
        08091d45 75 02           JNZ        LAB_08091d49
                             LAB_08091d47                                    XREF[1]:     08091d36(j)
        08091d47 31 d2           XOR        EDX,EDX
                             LAB_08091d49                                    XREF[1]:     08091d45(j)
        08091d49 85 d2           TEST       EDX,EDX
        08091d4b 74 30           JZ         LAB_08091d7d
        08091d4d 8d 51 04        LEA        EDX,[ECX + 0x4]
        08091d50 8b 04 13        MOV        EAX,dword ptr [EBX + EDX*0x1]
        08091d53 8b a8 5c        MOV        EBP,dword ptr [EAX + 0x15c]
                 01 00 00
        08091d59 85 ed           TEST       EBP,EBP
        08091d5b 75 20           JNZ        LAB_08091d7d
        08091d5d 57              PUSH       EDI
        08091d5e 57              PUSH       EDI
        08091d5f 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_128]
        08091d63 8b 8c 18        MOV        ECX,dword ptr [EAX + EBX*0x1 + 0xfffe30a0]
                 a0 30 fe ff
        08091d6a 51              PUSH       ECX
        08091d6b 8b 14 13        MOV        EDX,dword ptr [EBX + EDX*0x1]
        08091d6e 52              PUSH       EDX
        08091d6f e8 7c 4a        CALL       PlayerAILearnMoveUpdate                          undefined PlayerAILearnMoveUpdat
                 01 00
        08091d74 83 c4 10        ADD        ESP,0x10
        08091d77 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091d7d                                    XREF[2]:     08091d4b(j), 08091d5b(j)
        08091d7d 4e              DEC        ESI
        08091d7e 83 eb 04        SUB        EBX,0x4
        08091d81 89 c8           MOV        EAX,ECX
        08091d83 3b b1 64        CMP        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091d89 7d a5           JGE        LAB_08091d30
                             LAB_08091d8b                                    XREF[1]:     08091d24(j)
        08091d8b e8 40 26        CALL       CameraMoveP                                      undefined CameraMoveP()
                 00 00
        08091d90 a1 74 7a        MOV        EAX,[g]
                 28 08
        08091d95 83 ec 0c        SUB        ESP,0xc
        08091d98 8b 80 f0        MOV        EAX,dword ptr [EAX + 0x104f0]
                 04 01 00
        08091d9e 50              PUSH       EAX
        08091d9f e8 ec 83        CALL       AnimPerArrayUpdate                               undefined AnimPerArrayUpdate()
                 fb ff
        08091da4 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08091daa 83 c4 10        ADD        ESP,0x10
        08091dad 89 c8           MOV        EAX,ECX
        08091daf 8b b1 64        MOV        ESI,dword ptr [ECX + 0x1d164]
                 d1 01 00
        08091db5 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091dbb 7f 4d           JG         LAB_08091e0a
        08091dbd 8d 1c b5        LEA        EBX,[ESI*0x4 + 0x1cf60]
                 60 cf 01 00
        08091dc4 89 df           MOV        EDI,EBX
                             LAB_08091dc6                                    XREF[1]:     08091e08(j)
        08091dc6 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        08091dca 85 c0           TEST       EAX,EAX
        08091dcc 74 0f           JZ         LAB_08091ddd
        08091dce 8b a8 58        MOV        EBP,dword ptr [EAX + 0x158]
                 01 00 00
        08091dd4 ba 01 00        MOV        EDX,0x1
                 00 00
        08091dd9 85 ed           TEST       EBP,EBP
        08091ddb 75 02           JNZ        LAB_08091ddf
                             LAB_08091ddd                                    XREF[1]:     08091dcc(j)
        08091ddd 31 d2           XOR        EDX,EDX
                             LAB_08091ddf                                    XREF[1]:     08091ddb(j)
        08091ddf 85 d2           TEST       EDX,EDX
        08091de1 74 16           JZ         LAB_08091df9
        08091de3 83 ec 0c        SUB        ESP,0xc
        08091de6 8b 54 0b 04     MOV        EDX,dword ptr [EBX + ECX*0x1 + 0x4]
        08091dea 52              PUSH       EDX
        08091deb e8 20 33        CALL       PlayerComboCountCheck                            undefined PlayerComboCountCheck()
                 00 00
        08091df0 83 c4 10        ADD        ESP,0x10
        08091df3 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08091df9                                    XREF[1]:     08091de1(j)
        08091df9 46              INC        ESI
        08091dfa 83 c3 04        ADD        EBX,0x4
        08091dfd 83 c7 04        ADD        EDI,0x4
        08091e00 3b b1 68        CMP        ESI,dword ptr [ECX + 0x1d168]
                 d1 01 00
        08091e06 89 c8           MOV        EAX,ECX
        08091e08 7e bc           JLE        LAB_08091dc6
                             LAB_08091e0a                                    XREF[1]:     08091dbb(j)
        08091e0a 83 ec 0c        SUB        ESP,0xc
        08091e0d 8b 81 f8        MOV        EAX,dword ptr [ECX + 0x14af8]
                 4a 01 00
        08091e13 50              PUSH       EAX
        08091e14 e8 07 bf        CALL       ExplodArrayUpdate                                undefined ExplodArrayUpdate()
                 ff ff
        08091e19 83 c4 10        ADD        ESP,0x10
                             LAB_08091e1c                                    XREF[2]:     08091393(j), 080913a1(j)
        08091e1c 31 c0           XOR        EAX,EAX
                             LAB_08091e1e                                    XREF[1]:     08091522(j)
        08091e1e 81 c4 1c        ADD        ESP,0x11c
                 01 00 00
        08091e24 5b              POP        EBX
        08091e25 5e              POP        ESI
        08091e26 5f              POP        EDI
        08091e27 5d              POP        EBP
        08091e28 c3              RET
