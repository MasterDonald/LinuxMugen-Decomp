                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameAftImgArrayNew()
             undefined         <UNASSIGNED>   <RETURN>
                             GameAftImgArrayNew                              XREF[2]:     Entry Point(*),
                                                                                          GameVarInit:0809bf3b(c)
        0809c320 55              PUSH       EBP
        0809c321 57              PUSH       EDI
        0809c322 56              PUSH       ESI
        0809c323 53              PUSH       EBX
        0809c324 81 ec 90        SUB        ESP,0x90
                 00 00 00
        0809c32a 6a 00           PUSH       0x0
        0809c32c 6a 7c           PUSH       0x7c
        0809c32e 8b ac 24        MOV        EBP,dword ptr [ESP + Stack[0x4]]
                 ac 00 00 00
        0809c335 55              PUSH       EBP
        0809c336 e8 f5 e5        CALL       ArrayNew                                         undefined ArrayNew()
                 fa ff
        0809c33b 89 c6           MOV        ESI,EAX
        0809c33d 83 c4 10        ADD        ESP,0x10
        0809c340 85 f6           TEST       ESI,ESI
        0809c342 75 14           JNZ        LAB_0809c358
        0809c344 31 c0           XOR        EAX,EAX
        0809c346 eb 59           JMP        LAB_0809c3a1
                             LAB_0809c348                                    XREF[1]:     0809c386(j)
        0809c348 83 ec 0c        SUB        ESP,0xc
        0809c34b 56              PUSH       ESI
        0809c34c e8 5f 00        CALL       GameAftImgArrayFree                              undefined GameAftImgArrayFree()
                 00 00
        0809c351 83 c4 10        ADD        ESP,0x10
        0809c354 31 c0           XOR        EAX,EAX
        0809c356 eb 49           JMP        LAB_0809c3a1
                             LAB_0809c358                                    XREF[1]:     0809c342(j)
        0809c358 31 db           XOR        EBX,EBX
        0809c35a 3b 9c 24        CMP        EBX,dword ptr [ESP + Stack[0x4]]
                 a0 00 00 00
        0809c361 7d 3c           JGE        LAB_0809c39f
        0809c363 89 e5           MOV        EBP,ESP
                             LAB_0809c365                                    XREF[1]:     0809c39d(j)
        0809c365 fc              CLD
        0809c366 89 e7           MOV        EDI,ESP
        0809c368 31 c0           XOR        EAX,EAX
        0809c36a b9 1f 00        MOV        ECX,0x1f
                 00 00
        0809c36f f3 ab           STOSD.REP  ES:EDI
        0809c371 57              PUSH       EDI
        0809c372 57              PUSH       EDI
        0809c373 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0x8]]
                 ac 00 00 00
        0809c37a 51              PUSH       ECX
        0809c37b 55              PUSH       EBP
        0809c37c e8 3f 5d        CALL       AftImgInit                                       undefined AftImgInit()
                 fe ff
        0809c381 83 c4 10        ADD        ESP,0x10
        0809c384 85 c0           TEST       EAX,EAX
        0809c386 74 c0           JZ         LAB_0809c348
        0809c388 53              PUSH       EBX
        0809c389 43              INC        EBX
        0809c38a 6a 00           PUSH       0x0
        0809c38c 55              PUSH       EBP
        0809c38d 56              PUSH       ESI
        0809c38e e8 cd e7        CALL       ArrayAdd                                         undefined ArrayAdd()
                 fa ff
        0809c393 83 c4 10        ADD        ESP,0x10
        0809c396 3b 9c 24        CMP        EBX,dword ptr [ESP + Stack[0x4]]
                 a0 00 00 00
        0809c39d 7c c6           JL         LAB_0809c365
                             LAB_0809c39f                                    XREF[1]:     0809c361(j)
        0809c39f 89 f0           MOV        EAX,ESI
                             LAB_0809c3a1                                    XREF[2]:     0809c346(j), 0809c356(j)
        0809c3a1 81 c4 8c        ADD        ESP,0x8c
                 00 00 00
        0809c3a7 5b              POP        EBX
        0809c3a8 5e              POP        ESI
        0809c3a9 5f              POP        EDI
        0809c3aa 5d              POP        EBP
        0809c3ab c3              RET
