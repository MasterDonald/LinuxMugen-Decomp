                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameFreeFightData()
             undefined         <UNASSIGNED>   <RETURN>
                             GameFreeFightData                               XREF[2]:     Entry Point(*),
                                                                                          GameDeInit:0809943b(c)
        0809bc20 56              PUSH       ESI
        0809bc21 be 20 05        MOV        ESI,0x10520
                 01 00
        0809bc26 53              PUSH       EBX
        0809bc27 53              PUSH       EBX
        0809bc28 bb 09 00        MOV        EBX,0x9
                 00 00
        0809bc2d 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809bc33                                    XREF[1]:     0809bc55(j)
        0809bc33 8b 44 16 0c     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0xc]
        0809bc37 3b 82 e8        CMP        EAX,dword ptr [EDX + 0x104e8]
                 04 01 00
        0809bc3d 74 12           JZ         LAB_0809bc51
        0809bc3f 83 ec 0c        SUB        ESP,0xc
        0809bc42 50              PUSH       EAX
        0809bc43 e8 28 6d        CALL       FontFree                                         undefined FontFree()
                 fb ff
        0809bc48 83 c4 10        ADD        ESP,0x10
        0809bc4b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_0809bc51                                    XREF[1]:     0809bc3d(j)
        0809bc51 83 c6 04        ADD        ESI,0x4
        0809bc54 4b              DEC        EBX
        0809bc55 79 dc           JNS        LAB_0809bc33
        0809bc57 83 ec 0c        SUB        ESP,0xc
        0809bc5a 8b 8a 28        MOV        ECX,dword ptr [EDX + 0x10528]
                 05 01 00
        0809bc60 51              PUSH       ECX
        0809bc61 e8 da ce        CALL       AnimRCFree                                       undefined AnimRCFree()
                 fa ff
        0809bc66 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bc6b 5a              POP        EDX
        0809bc6c 8b 80 24        MOV        EAX,dword ptr [EAX + 0x10524]
                 05 01 00
        0809bc72 50              PUSH       EAX
        0809bc73 e8 48 cf        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 fb ff
        0809bc78 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bc7d 5e              POP        ESI
        0809bc7e 8b 98 58        MOV        EBX,dword ptr [EAX + 0x10558]
                 05 01 00
        0809bc84 53              PUSH       EBX
        0809bc85 e8 76 af        CALL       SndArrayFree                                     undefined SndArrayFree()
                 fb ff
        0809bc8a a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bc8f 59              POP        ECX
        0809bc90 8b 90 54        MOV        EDX,dword ptr [EAX + 0x10554]
                 05 01 00
        0809bc96 52              PUSH       EDX
        0809bc97 e8 64 af        CALL       SndArrayFree                                     undefined SndArrayFree()
                 fb ff
        0809bc9c 58              POP        EAX
        0809bc9d a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bca2 8b b0 1c        MOV        ESI,dword ptr [EAX + 0x1051c]
                 05 01 00
        0809bca8 56              PUSH       ESI
        0809bca9 e8 12 cf        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 fb ff
        0809bcae a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bcb3 5b              POP        EBX
        0809bcb4 8b 88 20        MOV        ECX,dword ptr [EAX + 0x10520]
                 05 01 00
        0809bcba 51              PUSH       ECX
        0809bcbb e8 80 ce        CALL       AnimRCFree                                       undefined AnimRCFree()
                 fa ff
        0809bcc0 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bcc5 5a              POP        EDX
        0809bcc6 8b 80 fc        MOV        EAX,dword ptr [EAX + 0x14afc]
                 4a 01 00
        0809bccc 50              PUSH       EAX
        0809bccd e8 de 1f        CALL       ExplodArrayFree                                  undefined ExplodArrayFree()
                 ff ff
        0809bcd2 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809bcd7 5e              POP        ESI
        0809bcd8 8b 98 f8        MOV        EBX,dword ptr [EAX + 0x14af8]
                 4a 01 00
        0809bcde 53              PUSH       EBX
        0809bcdf e8 cc 1f        CALL       ExplodArrayFree                                  undefined ExplodArrayFree()
                 ff ff
        0809bce4 83 c4 14        ADD        ESP,0x14
        0809bce7 5b              POP        EBX
        0809bce8 5e              POP        ESI
        0809bce9 c3              RET
