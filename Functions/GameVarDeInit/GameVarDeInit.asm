                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameVarDeInit()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     0809c23b(*)
                             GameVarDeInit                                   XREF[11]:    Entry Point(*),
                                                                                          GameDeInit:08099454(c),
                                                                                          GameVarInit:0809be1b(c),
                                                                                          GameVarInit:0809be95(c),
                                                                                          GameVarInit:0809bedd(c),
                                                                                          GameVarInit:0809bf15(c),
                                                                                          GameVarInit:0809bf53(c),
                                                                                          GameVarInit:0809bf8e(c),
                                                                                          GameVarInit:0809bfc7(c),
                                                                                          GameVarInit:0809c12c(c),
                                                                                          GameVarLoadFonts:0809c1e7(c)
        0809c200 83 ec 0c        SUB        ESP,0xc
        0809c203 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c208 85 c0           TEST       EAX,EAX
        0809c20a 0f 84 fd        JZ         LAB_0809c30d
                 00 00 00
        0809c210 83 ec 0c        SUB        ESP,0xc
        0809c213 8b 90 e8        MOV        EDX,dword ptr [EAX + 0x104e8]
                 04 01 00
        0809c219 52              PUSH       EDX
        0809c21a e8 51 67        CALL       FontFree                                         undefined FontFree()
                 fb ff
        0809c21f 58              POP        EAX
        0809c220 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c225 8b 88 ec        MOV        ECX,dword ptr [EAX + 0x104ec]
                 04 01 00
        0809c22b 51              PUSH       ECX
        0809c22c e8 3f 67        CALL       FontFree                                         undefined FontFree()
                 fb ff
        0809c231 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c236 05 44 ce        ADD        EAX,0x1ce44
                 01 00
        0809c23b 89 04 24        MOV        dword ptr [ESP]=>local_1c,EAX
        0809c23e e8 2d 82        CALL       IntCircBufDeInit                                 undefined IntCircBufDeInit()
                 fb ff
        0809c243 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c248 5a              POP        EDX
        0809c249 8b 88 f8        MOV        ECX,dword ptr [EAX + 0x104f8]
                 04 01 00
        0809c24f 51              PUSH       ECX
        0809c250 e8 4b 36        CALL       free                                             void free(void * __ptr)
                 14 00
        0809c255 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c25a 5a              POP        EDX
        0809c25b 8b 80 f4        MOV        EAX,dword ptr [EAX + 0x104f4]
                 04 01 00
        0809c261 50              PUSH       EAX
        0809c262 e8 09 d9        CALL       PRSprArrayFree                                   undefined PRSprArrayFree()
                 fa ff
        0809c267 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c26c 59              POP        ECX
        0809c26d 8b 90 fc        MOV        EDX,dword ptr [EAX + 0x104fc]
                 04 01 00
        0809c273 52              PUSH       EDX
        0809c274 e8 37 01        CALL       GameAftImgArrayFree                              undefined GameAftImgArrayFree()
                 00 00
        0809c279 58              POP        EAX
        0809c27a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c27f 8b 88 f0        MOV        ECX,dword ptr [EAX + 0x104f0]
                 04 01 00
        0809c285 51              PUSH       ECX
        0809c286 e8 c5 dd        CALL       AnimPerArrayFree                                 undefined AnimPerArrayFree()
                 fa ff
        0809c28b a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c290 5a              POP        EDX
        0809c291 8b 80 d8        MOV        EAX,dword ptr [EAX + 0x104d8]
                 04 01 00
        0809c297 50              PUSH       EAX
        0809c298 e8 c3 0c        CALL       V_DeAlloc                                        undefined V_DeAlloc()
                 fe ff
        0809c29d a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c2a2 83 c4 10        ADD        ESP,0x10
        0809c2a5 8b 90 dc        MOV        EDX,dword ptr [EAX + 0x104dc]
                 04 01 00
        0809c2ab 85 d2           TEST       EDX,EDX
        0809c2ad 74 11           JZ         LAB_0809c2c0
        0809c2af 83 ec 0c        SUB        ESP,0xc
        0809c2b2 52              PUSH       EDX
        0809c2b3 e8 a8 0c        CALL       V_DeAlloc                                        undefined V_DeAlloc()
                 fe ff
        0809c2b8 83 c4 10        ADD        ESP,0x10
        0809c2bb a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_0809c2c0                                    XREF[1]:     0809c2ad(j)
        0809c2c0 8b 90 e0        MOV        EDX,dword ptr [EAX + 0x104e0]
                 04 01 00
        0809c2c6 85 d2           TEST       EDX,EDX
        0809c2c8 74 11           JZ         LAB_0809c2db
        0809c2ca 83 ec 0c        SUB        ESP,0xc
        0809c2cd 52              PUSH       EDX
        0809c2ce e8 8d 0c        CALL       V_DeAlloc                                        undefined V_DeAlloc()
                 fe ff
        0809c2d3 83 c4 10        ADD        ESP,0x10
        0809c2d6 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_0809c2db                                    XREF[1]:     0809c2c8(j)
        0809c2db 8b 80 44        MOV        EAX,dword ptr [EAX + 0x20744]
                 07 02 00
        0809c2e1 85 c0           TEST       EAX,EAX
        0809c2e3 74 0c           JZ         LAB_0809c2f1
        0809c2e5 83 ec 0c        SUB        ESP,0xc
        0809c2e8 50              PUSH       EAX
        0809c2e9 e8 f2 21        CALL       ClipboardFree                                    undefined ClipboardFree()
                 fb ff
        0809c2ee 83 c4 10        ADD        ESP,0x10
                             LAB_0809c2f1                                    XREF[1]:     0809c2e3(j)
        0809c2f1 83 ec 0c        SUB        ESP,0xc
        0809c2f4 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809c2fa 51              PUSH       ECX
        0809c2fb e8 a0 35        CALL       free                                             void free(void * __ptr)
                 14 00
        0809c300 83 c4 10        ADD        ESP,0x10
        0809c303 c7 05 74        MOV        dword ptr [g],0x0
                 7a 28 08
                 00 00 00 00
                             LAB_0809c30d                                    XREF[1]:     0809c20a(j)
        0809c30d 83 c4 0c        ADD        ESP,0xc
        0809c310 c3              RET
