                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameClsnUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[2]:     080b2fbf(W),
                                                                                                   080b3001(R)
                             GameClsnUpdate                                  XREF[2]:     Entry Point(*),
                                                                                          GameUpdate:08091c62(c)
        080b2fa0 55              PUSH       EBP
        080b2fa1 31 ed           XOR        EBP,EBP
        080b2fa3 57              PUSH       EDI
        080b2fa4 56              PUSH       ESI
        080b2fa5 53              PUSH       EBX
        080b2fa6 83 ec 0c        SUB        ESP,0xc
        080b2fa9 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080b2faf 89 d0           MOV        EAX,EDX
        080b2fb1 8b 8a 64        MOV        ECX,dword ptr [EDX + 0x1d164]
                 d1 01 00
        080b2fb7 3b 8a 68        CMP        ECX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080b2fbd 7f 54           JG         LAB_080b3013
        080b2fbf 89 54 24 08     MOV        dword ptr [ESP + local_14],EDX
        080b2fc3 8d 1c 8d        LEA        EBX,[ECX*0x4 + 0x1cf60]
                 60 cf 01 00
        080b2fca bf 60 d1        MOV        EDI,0x1d160
                 01 00
        080b2fcf 90              NOP
                             LAB_080b2fd0                                    XREF[1]:     080b3011(j)
        080b2fd0 8b 74 03 04     MOV        ESI,dword ptr [EBX + EAX*0x1 + 0x4]
        080b2fd4 85 f6           TEST       ESI,ESI
        080b2fd6 74 0e           JZ         LAB_080b2fe6
        080b2fd8 b8 01 00        MOV        EAX,0x1
                 00 00
        080b2fdd 83 be 58        CMP        dword ptr [ESI + 0x158],0x0
                 01 00 00 00
        080b2fe4 75 02           JNZ        LAB_080b2fe8
                             LAB_080b2fe6                                    XREF[1]:     080b2fd6(j)
        080b2fe6 31 c0           XOR        EAX,EAX
                             LAB_080b2fe8                                    XREF[1]:     080b2fe4(j)
        080b2fe8 85 c0           TEST       EAX,EAX
        080b2fea 74 19           JZ         LAB_080b3005
        080b2fec 8b 86 bc        MOV        EAX,dword ptr [ESI + 0x13bc]
                 13 00 00
        080b2ff2 8b 40 10        MOV        EAX,dword ptr [EAX + 0x10]
        080b2ff5 85 c0           TEST       EAX,EAX
        080b2ff7 74 0c           JZ         LAB_080b3005
        080b2ff9 89 74 17 0c     MOV        dword ptr [EDI + EDX*0x1 + 0xc],ESI
        080b2ffd 83 c7 04        ADD        EDI,0x4
        080b3000 45              INC        EBP
        080b3001 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
                             LAB_080b3005                                    XREF[2]:     080b2fea(j), 080b2ff7(j)
        080b3005 41              INC        ECX
        080b3006 83 c3 04        ADD        EBX,0x4
        080b3009 89 d0           MOV        EAX,EDX
        080b300b 3b 8a 68        CMP        ECX,dword ptr [EDX + 0x1d168]
                 d1 01 00
        080b3011 7e bd           JLE        LAB_080b2fd0
                             LAB_080b3013                                    XREF[1]:     080b2fbd(j)
        080b3013 c7 84 aa        MOV        dword ptr [EDX + EBP*0x4 + 0x1d16c],0x0
                 6c d1 01
                 00 00 00
        080b301e 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b3024 89 aa 70        MOV        dword ptr [EDX + 0x1d270],EBP
                 d2 01 00
        080b302a 85 c0           TEST       EAX,EAX
        080b302c 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b3032 74 27           JZ         LAB_080b305b
        080b3034 89 c6           MOV        ESI,EAX
                             LAB_080b3036                                    XREF[1]:     080b3059(j)
        080b3036 8b 86 f8        MOV        EAX,dword ptr [ESI + 0xff8]
                 0f 00 00
        080b303c 85 c0           TEST       EAX,EAX
        080b303e 7e 07           JLE        LAB_080b3047
        080b3040 48              DEC        EAX
        080b3041 89 86 f8        MOV        dword ptr [ESI + 0xff8],EAX
                 0f 00 00
                             LAB_080b3047                                    XREF[1]:     080b303e(j)
        080b3047 83 c5 04        ADD        EBP,0x4
        080b304a c7 86 44        MOV        dword ptr [ESI + 0x1344],0x0
                 13 00 00
                 00 00 00 00
        080b3054 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b3057 85 f6           TEST       ESI,ESI
        080b3059 75 db           JNZ        LAB_080b3036
                             LAB_080b305b                                    XREF[1]:     080b3032(j)
        080b305b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080b3061 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b3067 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b306d 85 c0           TEST       EAX,EAX
        080b306f 74 45           JZ         LAB_080b30b6
        080b3071 89 c6           MOV        ESI,EAX
                             LAB_080b3073                                    XREF[1]:     080b30ae(j)
        080b3073 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b3076 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b3079 85 c0           TEST       EAX,EAX
        080b307b 74 29           JZ         LAB_080b30a6
        080b307d 89 c3           MOV        EBX,EAX
        080b307f 90              NOP
                             LAB_080b3080                                    XREF[1]:     080b30a4(j)
        080b3080 52              PUSH       EDX
        080b3081 52              PUSH       EDX
        080b3082 53              PUSH       EBX
        080b3083 56              PUSH       ESI
        080b3084 e8 57 8a        CALL       PlayerAreEnemies                                 undefined PlayerAreEnemies()
                 ff ff
        080b3089 83 c4 10        ADD        ESP,0x10
        080b308c 85 c0           TEST       EAX,EAX
        080b308e 74 0d           JZ         LAB_080b309d
        080b3090 50              PUSH       EAX
        080b3091 6a 00           PUSH       0x0
        080b3093 53              PUSH       EBX
        080b3094 56              PUSH       ESI
        080b3095 e8 96 03        CALL       PlayerPushCheck                                  undefined PlayerPushCheck()
                 00 00
        080b309a 83 c4 10        ADD        ESP,0x10
                             LAB_080b309d                                    XREF[1]:     080b308e(j)
        080b309d 83 c7 04        ADD        EDI,0x4
        080b30a0 8b 1f           MOV        EBX,dword ptr [EDI]
        080b30a2 85 db           TEST       EBX,EBX
        080b30a4 75 da           JNZ        LAB_080b3080
                             LAB_080b30a6                                    XREF[1]:     080b307b(j)
        080b30a6 83 c5 04        ADD        EBP,0x4
        080b30a9 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b30ac 85 f6           TEST       ESI,ESI
        080b30ae 75 c3           JNZ        LAB_080b3073
        080b30b0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b30b6                                    XREF[1]:     080b306f(j)
        080b30b6 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b30bc 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b30c2 85 c0           TEST       EAX,EAX
        080b30c4 74 6f           JZ         LAB_080b3135
        080b30c6 89 c6           MOV        ESI,EAX
                             LAB_080b30c8                                    XREF[1]:     080b312d(j)
        080b30c8 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b30cb 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b30ce 85 c0           TEST       EAX,EAX
        080b30d0 74 53           JZ         LAB_080b3125
        080b30d2 89 c3           MOV        EBX,EAX
                             LAB_080b30d4                                    XREF[1]:     080b3123(j)
        080b30d4 51              PUSH       ECX
        080b30d5 51              PUSH       ECX
        080b30d6 53              PUSH       EBX
        080b30d7 56              PUSH       ESI
        080b30d8 e8 03 8a        CALL       PlayerAreEnemies                                 undefined PlayerAreEnemies()
                 ff ff
        080b30dd 83 c4 10        ADD        ESP,0x10
        080b30e0 85 c0           TEST       EAX,EAX
        080b30e2 74 38           JZ         LAB_080b311c
        080b30e4 52              PUSH       EDX
        080b30e5 52              PUSH       EDX
        080b30e6 53              PUSH       EBX
        080b30e7 56              PUSH       ESI
        080b30e8 e8 23 22        CALL       PlayerCheckReversal                              undefined PlayerCheckReversal()
                 00 00
        080b30ed 83 c4 10        ADD        ESP,0x10
        080b30f0 85 c0           TEST       EAX,EAX
        080b30f2 74 0c           JZ         LAB_080b3100
        080b30f4 50              PUSH       EAX
        080b30f5 50              PUSH       EAX
        080b30f6 53              PUSH       EBX
        080b30f7 56              PUSH       ESI
        080b30f8 e8 13 24        CALL       Player1ReverseP2                                 undefined Player1ReverseP2()
                 00 00
        080b30fd 83 c4 10        ADD        ESP,0x10
                             LAB_080b3100                                    XREF[1]:     080b30f2(j)
        080b3100 51              PUSH       ECX
        080b3101 51              PUSH       ECX
        080b3102 56              PUSH       ESI
        080b3103 53              PUSH       EBX
        080b3104 e8 07 22        CALL       PlayerCheckReversal                              undefined PlayerCheckReversal()
                 00 00
        080b3109 83 c4 10        ADD        ESP,0x10
        080b310c 85 c0           TEST       EAX,EAX
        080b310e 74 0c           JZ         LAB_080b311c
        080b3110 52              PUSH       EDX
        080b3111 52              PUSH       EDX
        080b3112 56              PUSH       ESI
        080b3113 53              PUSH       EBX
        080b3114 e8 f7 23        CALL       Player1ReverseP2                                 undefined Player1ReverseP2()
                 00 00
        080b3119 83 c4 10        ADD        ESP,0x10
                             LAB_080b311c                                    XREF[2]:     080b30e2(j), 080b310e(j)
        080b311c 83 c7 04        ADD        EDI,0x4
        080b311f 8b 1f           MOV        EBX,dword ptr [EDI]
        080b3121 85 db           TEST       EBX,EBX
        080b3123 75 af           JNZ        LAB_080b30d4
                             LAB_080b3125                                    XREF[1]:     080b30d0(j)
        080b3125 83 c5 04        ADD        EBP,0x4
        080b3128 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b312b 85 f6           TEST       ESI,ESI
        080b312d 75 99           JNZ        LAB_080b30c8
        080b312f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b3135                                    XREF[1]:     080b30c4(j)
        080b3135 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b313b 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b3141 85 c0           TEST       EAX,EAX
        080b3143 74 54           JZ         LAB_080b3199
        080b3145 89 c6           MOV        ESI,EAX
                             LAB_080b3147                                    XREF[1]:     080b3191(j)
        080b3147 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b314a 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b314d 85 c0           TEST       EAX,EAX
        080b314f 74 38           JZ         LAB_080b3189
        080b3151 89 c3           MOV        EBX,EAX
                             LAB_080b3153                                    XREF[1]:     080b3187(j)
        080b3153 83 c7 04        ADD        EDI,0x4
        080b3156 50              PUSH       EAX
        080b3157 50              PUSH       EAX
        080b3158 53              PUSH       EBX
        080b3159 56              PUSH       ESI
        080b315a e8 71 06        CALL       PlayerCheckP1HitP2                               undefined PlayerCheckP1HitP2()
                 00 00
        080b315f 8b 93 54        MOV        EDX,dword ptr [EBX + 0x1154]
                 11 00 00
        080b3165 8b 4e 08        MOV        ECX,dword ptr [ESI + 0x8]
        080b3168 89 04 8a        MOV        dword ptr [EDX + ECX*0x4],EAX
        080b316b 5a              POP        EDX
        080b316c 59              POP        ECX
        080b316d 56              PUSH       ESI
        080b316e 53              PUSH       EBX
        080b316f e8 5c 06        CALL       PlayerCheckP1HitP2                               undefined PlayerCheckP1HitP2()
                 00 00
        080b3174 8b 4b 08        MOV        ECX,dword ptr [EBX + 0x8]
        080b3177 8b 1f           MOV        EBX,dword ptr [EDI]
        080b3179 8b 96 54        MOV        EDX,dword ptr [ESI + 0x1154]
                 11 00 00
        080b317f 83 c4 10        ADD        ESP,0x10
        080b3182 85 db           TEST       EBX,EBX
        080b3184 89 04 8a        MOV        dword ptr [EDX + ECX*0x4],EAX
        080b3187 75 ca           JNZ        LAB_080b3153
                             LAB_080b3189                                    XREF[1]:     080b314f(j)
        080b3189 83 c5 04        ADD        EBP,0x4
        080b318c 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b318f 85 f6           TEST       ESI,ESI
        080b3191 75 b4           JNZ        LAB_080b3147
        080b3193 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b3199                                    XREF[1]:     080b3143(j)
        080b3199 f6 82 10        TEST       byte ptr [EDX + 0x1cc10],0x1
                 cc 01 00 01
        080b31a0 74 7e           JZ         LAB_080b3220
        080b31a2 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b31a8 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b31ae 85 c0           TEST       EAX,EAX
        080b31b0 0f 84 e9        JZ         LAB_080b329f
                 00 00 00
        080b31b6 89 c6           MOV        ESI,EAX
                             LAB_080b31b8                                    XREF[1]:     080b3213(j)
        080b31b8 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b31be 8d ba 6c        LEA        EDI,[EDX + 0x1d16c]
                 d1 01 00
        080b31c4 85 c0           TEST       EAX,EAX
        080b31c6 74 43           JZ         LAB_080b320b
        080b31c8 89 c3           MOV        EBX,EAX
        080b31ca 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_080b31d0                                    XREF[1]:     080b3203(j)
        080b31d0 8b 53 08        MOV        EDX,dword ptr [EBX + 0x8]
        080b31d3 8b 86 54        MOV        EAX,dword ptr [ESI + 0x1154]
                 11 00 00
        080b31d9 8b 04 90        MOV        EAX,dword ptr [EAX + EDX*0x4]
        080b31dc 85 c0           TEST       EAX,EAX
        080b31de 74 1c           JZ         LAB_080b31fc
        080b31e0 51              PUSH       ECX
        080b31e1 51              PUSH       ECX
        080b31e2 56              PUSH       ESI
        080b31e3 53              PUSH       EBX
        080b31e4 e8 57 09        CALL       Player1HitP2                                     undefined Player1HitP2()
                 00 00
        080b31e9 8b 53 08        MOV        EDX,dword ptr [EBX + 0x8]
        080b31ec 8b 86 54        MOV        EAX,dword ptr [ESI + 0x1154]
                 11 00 00
        080b31f2 83 c4 10        ADD        ESP,0x10
        080b31f5 c7 04 90        MOV        dword ptr [EAX + EDX*0x4],0x0
                 00 00 00 00
                             LAB_080b31fc                                    XREF[1]:     080b31de(j)
        080b31fc 83 c7 04        ADD        EDI,0x4
        080b31ff 8b 1f           MOV        EBX,dword ptr [EDI]
        080b3201 85 db           TEST       EBX,EBX
        080b3203 75 cb           JNZ        LAB_080b31d0
        080b3205 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b320b                                    XREF[1]:     080b31c6(j)
        080b320b 83 c5 04        ADD        EBP,0x4
        080b320e 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b3211 85 f6           TEST       ESI,ESI
        080b3213 75 a3           JNZ        LAB_080b31b8
        080b3215 e9 85 00        JMP        LAB_080b329f
                 00 00
        080b321a 8d              ??         8Dh
        080b321b b6              ??         B6h
        080b321c 00              ??         00h
        080b321d 00              ??         00h
        080b321e 00              ??         00h
        080b321f 00              ??         00h
                             LAB_080b3220                                    XREF[1]:     080b31a0(j)
        080b3220 8b 82 70        MOV        EAX,dword ptr [EDX + 0x1d270]
                 d2 01 00
        080b3226 89 d1           MOV        ECX,EDX
        080b3228 8d ac 82        LEA        EBP,[EDX + EAX*0x4 + 0x1d168]
                 68 d1 01 00
        080b322f 8d 82 6c        LEA        EAX,[EDX + 0x1d16c]
                 d1 01 00
        080b3235 39 c5           CMP        EBP,EAX
        080b3237 72 66           JC         LAB_080b329f
        080b3239 8d b4 26        LEA        ESI,[ESI]
                 00 00 00 00
                             LAB_080b3240                                    XREF[1]:     080b329d(j)
        080b3240 8b 81 6c        MOV        EAX,dword ptr [ECX + 0x1d16c]
                 d1 01 00
        080b3246 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b3249 8d b9 6c        LEA        EDI,[ECX + 0x1d16c]
                 d1 01 00
        080b324f 85 c0           TEST       EAX,EAX
        080b3251 74 3d           JZ         LAB_080b3290
        080b3253 89 c3           MOV        EBX,EAX
                             LAB_080b3255                                    XREF[1]:     080b3288(j)
        080b3255 8b 53 08        MOV        EDX,dword ptr [EBX + 0x8]
        080b3258 8b 86 54        MOV        EAX,dword ptr [ESI + 0x1154]
                 11 00 00
        080b325e 8b 14 90        MOV        EDX,dword ptr [EAX + EDX*0x4]
        080b3261 85 d2           TEST       EDX,EDX
        080b3263 74 1c           JZ         LAB_080b3281
        080b3265 50              PUSH       EAX
        080b3266 50              PUSH       EAX
        080b3267 56              PUSH       ESI
        080b3268 53              PUSH       EBX
        080b3269 e8 d2 08        CALL       Player1HitP2                                     undefined Player1HitP2()
                 00 00
        080b326e 8b 53 08        MOV        EDX,dword ptr [EBX + 0x8]
        080b3271 8b 86 54        MOV        EAX,dword ptr [ESI + 0x1154]
                 11 00 00
        080b3277 83 c4 10        ADD        ESP,0x10
        080b327a c7 04 90        MOV        dword ptr [EAX + EDX*0x4],0x0
                 00 00 00 00
                             LAB_080b3281                                    XREF[1]:     080b3263(j)
        080b3281 83 c7 04        ADD        EDI,0x4
        080b3284 8b 1f           MOV        EBX,dword ptr [EDI]
        080b3286 85 db           TEST       EBX,EBX
        080b3288 75 cb           JNZ        LAB_080b3255
        080b328a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b3290                                    XREF[1]:     080b3251(j)
        080b3290 83 ed 04        SUB        EBP,0x4
        080b3293 8d 82 6c        LEA        EAX,[EDX + 0x1d16c]
                 d1 01 00
        080b3299 89 d1           MOV        ECX,EDX
        080b329b 39 c5           CMP        EBP,EAX
        080b329d 73 a1           JNC        LAB_080b3240
                             LAB_080b329f                                    XREF[3]:     080b31b0(j), 080b3215(j),
                                                                                          080b3237(j)
        080b329f 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b32a5 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b32ab 85 c0           TEST       EAX,EAX
        080b32ad 74 3f           JZ         LAB_080b32ee
        080b32af 89 c6           MOV        ESI,EAX
                             LAB_080b32b1                                    XREF[1]:     080b32e6(j)
        080b32b1 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b32b4 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b32b7 85 c0           TEST       EAX,EAX
        080b32b9 74 23           JZ         LAB_080b32de
        080b32bb 89 c3           MOV        EBX,EAX
        080b32bd 8d 76 00        LEA        ESI,[ESI]
                             LAB_080b32c0                                    XREF[1]:     080b32dc(j)
        080b32c0 83 c7 04        ADD        EDI,0x4
        080b32c3 51              PUSH       ECX
        080b32c4 51              PUSH       ECX
        080b32c5 53              PUSH       EBX
        080b32c6 56              PUSH       ESI
        080b32c7 e8 c4 27        CALL       PlayerCheckHitProj                               undefined PlayerCheckHitProj()
                 00 00
        080b32cc 58              POP        EAX
        080b32cd 5a              POP        EDX
        080b32ce 56              PUSH       ESI
        080b32cf 53              PUSH       EBX
        080b32d0 e8 bb 27        CALL       PlayerCheckHitProj                               undefined PlayerCheckHitProj()
                 00 00
        080b32d5 8b 1f           MOV        EBX,dword ptr [EDI]
        080b32d7 83 c4 10        ADD        ESP,0x10
        080b32da 85 db           TEST       EBX,EBX
        080b32dc 75 e2           JNZ        LAB_080b32c0
                             LAB_080b32de                                    XREF[1]:     080b32b9(j)
        080b32de 83 c5 04        ADD        EBP,0x4
        080b32e1 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b32e4 85 f6           TEST       ESI,ESI
        080b32e6 75 c9           JNZ        LAB_080b32b1
        080b32e8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b32ee                                    XREF[1]:     080b32ad(j)
        080b32ee 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b32f4 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b32fa 85 c0           TEST       EAX,EAX
        080b32fc 74 5f           JZ         LAB_080b335d
        080b32fe 89 c6           MOV        ESI,EAX
                             LAB_080b3300                                    XREF[1]:     080b3355(j)
        080b3300 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b3303 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b3306 85 c0           TEST       EAX,EAX
        080b3308 74 43           JZ         LAB_080b334d
        080b330a 89 c3           MOV        EBX,EAX
        080b330c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_080b3310                                    XREF[1]:     080b334b(j)
        080b3310 8b 83 00        MOV        EAX,dword ptr [EBX + 0x1000]
                 10 00 00
        080b3316 85 83 fc        TEST       dword ptr [EBX + 0xffc],EAX
                 0f 00 00
        080b331c 74 0c           JZ         LAB_080b332a
        080b331e 51              PUSH       ECX
        080b331f 51              PUSH       ECX
        080b3320 53              PUSH       EBX
        080b3321 56              PUSH       ESI
        080b3322 e8 89 2a        CALL       PlayerCheckProjHit                               undefined PlayerCheckProjHit()
                 00 00
        080b3327 83 c4 10        ADD        ESP,0x10
                             LAB_080b332a                                    XREF[1]:     080b331c(j)
        080b332a 8b 86 00        MOV        EAX,dword ptr [ESI + 0x1000]
                 10 00 00
        080b3330 85 86 fc        TEST       dword ptr [ESI + 0xffc],EAX
                 0f 00 00
        080b3336 74 0c           JZ         LAB_080b3344
        080b3338 52              PUSH       EDX
        080b3339 52              PUSH       EDX
        080b333a 56              PUSH       ESI
        080b333b 53              PUSH       EBX
        080b333c e8 6f 2a        CALL       PlayerCheckProjHit                               undefined PlayerCheckProjHit()
                 00 00
        080b3341 83 c4 10        ADD        ESP,0x10
                             LAB_080b3344                                    XREF[1]:     080b3336(j)
        080b3344 83 c7 04        ADD        EDI,0x4
        080b3347 8b 1f           MOV        EBX,dword ptr [EDI]
        080b3349 85 db           TEST       EBX,EBX
        080b334b 75 c3           JNZ        LAB_080b3310
                             LAB_080b334d                                    XREF[1]:     080b3308(j)
        080b334d 83 c5 04        ADD        EBP,0x4
        080b3350 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b3353 85 f6           TEST       ESI,ESI
        080b3355 75 a9           JNZ        LAB_080b3300
        080b3357 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b335d                                    XREF[1]:     080b32fc(j)
        080b335d 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b3363 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b3369 85 c0           TEST       EAX,EAX
        080b336b 74 1f           JZ         LAB_080b338c
        080b336d 89 c6           MOV        ESI,EAX
        080b336f 90              NOP
                             LAB_080b3370                                    XREF[1]:     080b3384(j)
        080b3370 83 ec 0c        SUB        ESP,0xc
        080b3373 83 c5 04        ADD        EBP,0x4
        080b3376 56              PUSH       ESI
        080b3377 e8 e4 33        CALL       PlayerProjDoHit                                  undefined PlayerProjDoHit()
                 00 00
        080b337c 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b337f 83 c4 10        ADD        ESP,0x10
        080b3382 85 f6           TEST       ESI,ESI
        080b3384 75 ea           JNZ        LAB_080b3370
        080b3386 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b338c                                    XREF[1]:     080b336b(j)
        080b338c 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b3392 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b3398 85 c0           TEST       EAX,EAX
        080b339a 74 39           JZ         LAB_080b33d5
        080b339c 89 c6           MOV        ESI,EAX
        080b339e 89 f6           MOV        ESI,ESI
                             LAB_080b33a0                                    XREF[1]:     080b33cd(j)
        080b33a0 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b33a3 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b33a6 85 c0           TEST       EAX,EAX
        080b33a8 74 1b           JZ         LAB_080b33c5
        080b33aa 89 c3           MOV        EBX,EAX
        080b33ac 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_080b33b0                                    XREF[1]:     080b33c3(j)
        080b33b0 83 c7 04        ADD        EDI,0x4
        080b33b3 50              PUSH       EAX
        080b33b4 50              PUSH       EAX
        080b33b5 53              PUSH       EBX
        080b33b6 56              PUSH       ESI
        080b33b7 e8 24 34        CALL       CheckProjHitProj                                 undefined CheckProjHitProj()
                 00 00
        080b33bc 8b 1f           MOV        EBX,dword ptr [EDI]
        080b33be 83 c4 10        ADD        ESP,0x10
        080b33c1 85 db           TEST       EBX,EBX
        080b33c3 75 eb           JNZ        LAB_080b33b0
                             LAB_080b33c5                                    XREF[1]:     080b33a8(j)
        080b33c5 83 c5 04        ADD        EBP,0x4
        080b33c8 8b 75 00        MOV        ESI,dword ptr [EBP]
        080b33cb 85 f6           TEST       ESI,ESI
        080b33cd 75 d1           JNZ        LAB_080b33a0
        080b33cf 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080b33d5                                    XREF[1]:     080b339a(j)
        080b33d5 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x1d16c]
                 d1 01 00
        080b33db 8d aa 6c        LEA        EBP,[EDX + 0x1d16c]
                 d1 01 00
        080b33e1 85 c0           TEST       EAX,EAX
        080b33e3 74 42           JZ         LAB_080b3427
        080b33e5 89 c6           MOV        ESI,EAX
                             LAB_080b33e7                                    XREF[1]:     080b3425(j)
        080b33e7 8b 45 04        MOV        EAX,dword ptr [EBP + 0x4]
        080b33ea 8d 7d 04        LEA        EDI,[EBP + 0x4]
        080b33ed 85 c0           TEST       EAX,EAX
        080b33ef 74 2a           JZ         LAB_080b341b
        080b33f1 89 c3           MOV        EBX,EAX
                             LAB_080b33f3                                    XREF[1]:     080b3419(j)
        080b33f3 51              PUSH       ECX
        080b33f4 51              PUSH       ECX
        080b33f5 53              PUSH       EBX
        080b33f6 56              PUSH       ESI
        080b33f7 e8 e4 86        CALL       PlayerAreEnemies                                 undefined PlayerAreEnemies()
                 ff ff
        080b33fc 83 c4 10        ADD        ESP,0x10
        080b33ff 85 c0           TEST       EAX,EAX
        080b3401 74 0d           JZ         LAB_080b3410
        080b3403 52              PUSH       EDX
        080b3404 6a 00           PUSH       0x0
        080b3406 53              PUSH       EBX
        080b3407 56              PUSH       ESI
        080b3408 e8 23 00        CALL       PlayerPushCheck                                  undefined PlayerPushCheck()
                 00 00
        080b340d 83 c4 10        ADD        ESP,0x10
                             LAB_080b3410                                    XREF[1]:     080b3401(j)
        080b3410 83 c7 04        ADD        EDI,0x4
        080b3413 8b 07           MOV        EAX,dword ptr [EDI]
        080b3415 89 c3           MOV        EBX,EAX
        080b3417 85 db           TEST       EBX,EBX
        080b3419 75 d8           JNZ        LAB_080b33f3
                             LAB_080b341b                                    XREF[1]:     080b33ef(j)
        080b341b 83 c5 04        ADD        EBP,0x4
        080b341e 8b 45 00        MOV        EAX,dword ptr [EBP]
        080b3421 89 c6           MOV        ESI,EAX
        080b3423 85 f6           TEST       ESI,ESI
        080b3425 75 c0           JNZ        LAB_080b33e7
                             LAB_080b3427                                    XREF[1]:     080b33e3(j)
        080b3427 83 c4 0c        ADD        ESP,0xc
        080b342a 5b              POP        EBX
        080b342b 5e              POP        ESI
        080b342c 5f              POP        EDI
        080b342d 5d              POP        EBP
        080b342e c3              RET
