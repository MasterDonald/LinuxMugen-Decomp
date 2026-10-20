                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameInitPads()
             undefined         <UNASSIGNED>   <RETURN>
                             GameInitPads                                    XREF[2]:     Entry Point(*),
                                                                                          GameLoadOptions:080d51b4(c)
        08099490 57              PUSH       EDI
        08099491 b9 0d 00        MOV        ECX,0xd
                 00 00
        08099496 56              PUSH       ESI
        08099497 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        0809949d fc              CLD
        0809949e 53              PUSH       EBX
        0809949f 31 db           XOR        EBX,EBX
        080994a1 8d be 54        LEA        EDI,[ESI + 0x1cd54]
                 cd 01 00
        080994a7 81 c6 bc        ADD        ESI,0x1cdbc
                 cd 01 00
        080994ad f3 a5           MOVSD.REP  ES:EDI,ESI
        080994af 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080994b5 b9 0d 00        MOV        ECX,0xd
                 00 00
        080994ba 8d be 88        LEA        EDI,[ESI + 0x1cd88]
                 cd 01 00
        080994c0 81 c6 f0        ADD        ESI,0x1cdf0
                 cd 01 00
        080994c6 f3 a5           MOVSD.REP  ES:EDI,ESI
        080994c8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080994cd 8b b0 2c        MOV        ESI,dword ptr [EAX + 0x1ce2c]
                 ce 01 00
        080994d3 85 f6           TEST       ESI,ESI
        080994d5 75 2e           JNZ        LAB_08099505
        080994d7 8d b8 54        LEA        EDI,[EAX + 0x1cd54]
                 cd 01 00
        080994dd 89 d8           MOV        EAX,EBX
        080994df b9 0d 00        MOV        ECX,0xd
                 00 00
        080994e4 f3 ab           STOSD.REP  ES:EDI
        080994e6 51              PUSH       ECX
        080994e7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080994ec 51              PUSH       ECX
        080994ed 05 54 cd        ADD        EAX,0x1cd54
                 01 00
        080994f2 68 80 00        PUSH       0x80
                 00 00
        080994f7 50              PUSH       EAX
        080994f8 e8 a3 c1        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 03 00
        080994fd 83 c4 10        ADD        ESP,0x10
        08099500 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_08099505                                    XREF[1]:     080994d5(j)
        08099505 8b 90 30        MOV        EDX,dword ptr [EAX + 0x1ce30]
                 ce 01 00
        0809950b 85 d2           TEST       EDX,EDX
        0809950d 75 2a           JNZ        LAB_08099539
        0809950f fc              CLD
        08099510 8d b8 88        LEA        EDI,[EAX + 0x1cd88]
                 cd 01 00
        08099516 89 d8           MOV        EAX,EBX
        08099518 b9 0d 00        MOV        ECX,0xd
                 00 00
        0809951d f3 ab           STOSD.REP  ES:EDI
        0809951f 57              PUSH       EDI
        08099520 a1 74 7a        MOV        EAX,[g]
                 28 08
        08099525 57              PUSH       EDI
        08099526 05 88 cd        ADD        EAX,0x1cd88
                 01 00
        0809952b 68 80 00        PUSH       0x80
                 00 00
        08099530 50              PUSH       EAX
        08099531 e8 6a c1        CALL       PlayerKeysRemoveZero                             undefined PlayerKeysRemoveZero()
                 03 00
        08099536 83 c4 10        ADD        ESP,0x10
                             LAB_08099539                                    XREF[1]:     0809950d(j)
        08099539 8b 35 c0        MOV        ESI,dword ptr [PadInstalled]
                 79 28 08
        0809953f 85 f6           TEST       ESI,ESI
        08099541 74 05           JZ         LAB_08099548
        08099543 e8 38 ba        CALL       PadDeInit                                        undefined PadDeInit()
                 fb ff
                             LAB_08099548                                    XREF[1]:     08099541(j)
        08099548 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809954d 8b 90 2c        MOV        EDX,dword ptr [EAX + 0x1ce2c]
                 ce 01 00
        08099553 85 d2           TEST       EDX,EDX
        08099555 75 0a           JNZ        LAB_08099561
        08099557 8b 98 30        MOV        EBX,dword ptr [EAX + 0x1ce30]
                 ce 01 00
        0809955d 85 db           TEST       EBX,EBX
        0809955f 74 6a           JZ         LAB_080995cb
                             LAB_08099561                                    XREF[1]:     08099555(j)
        08099561 8b 88 74        MOV        ECX,dword ptr [EAX + 0x1e674]
                 e6 01 00
        08099567 85 c9           TEST       ECX,ECX
        08099569 75 60           JNZ        LAB_080995cb
        0809956b 85 d2           TEST       EDX,EDX
        0809956d 74 11           JZ         LAB_08099580
        0809956f 8b 98 34        MOV        EBX,dword ptr [EAX + 0x1ce34]
                 ce 01 00
        08099575 31 f6           XOR        ESI,ESI
        08099577 eb 12           JMP        LAB_0809958b
        08099579 8d              ??         8Dh
        0809957a b4              ??         B4h
        0809957b 26              ??         26h    &
        0809957c 00              ??         00h
        0809957d 00              ??         00h
        0809957e 00              ??         00h
        0809957f 00              ??         00h
                             LAB_08099580                                    XREF[1]:     0809956d(j)
        08099580 8b 98 38        MOV        EBX,dword ptr [EAX + 0x1ce38]
                 ce 01 00
        08099586 be 01 00        MOV        ESI,0x1
                 00 00
                             LAB_0809958b                                    XREF[1]:     08099577(j)
        0809958b 83 fb 16        CMP        EBX,0x16
        0809958e 75 12           JNZ        LAB_080995a2
        08099590 05 40 ce        ADD        EAX,0x1ce40
                 01 00
        08099595 52              PUSH       EDX
        08099596 52              PUSH       EDX
        08099597 50              PUSH       EAX
        08099598 6a 16           PUSH       0x16
        0809959a e8 81 b9        CALL       DeviceInit                                       undefined DeviceInit()
                 fb ff
        0809959f 83 c4 10        ADD        ESP,0x10
                             LAB_080995a2                                    XREF[1]:     0809958e(j)
        080995a2 57              PUSH       EDI
        080995a3 57              PUSH       EDI
        080995a4 56              PUSH       ESI
        080995a5 53              PUSH       EBX
        080995a6 e8 d5 b8        CALL       PadInit                                          undefined PadInit()
                 fb ff
        080995ab 83 c4 10        ADD        ESP,0x10
        080995ae 85 c0           TEST       EAX,EAX
        080995b0 75 19           JNZ        LAB_080995cb
        080995b2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080995b7 c7 80 30        MOV        dword ptr [EAX + 0x1ce30],0x0
                 ce 01 00
                 00 00 00 00
        080995c1 c7 80 2c        MOV        dword ptr [EAX + 0x1ce2c],0x0
                 ce 01 00
                 00 00 00 00
                             LAB_080995cb                                    XREF[3]:     0809955f(j), 08099569(j),
                                                                                          080995b0(j)
        080995cb e8 a0 aa        CALL       UInpReInit                                       undefined UInpReInit()
                 fb ff
        080995d0 85 c0           TEST       EAX,EAX
        080995d2 75 10           JNZ        LAB_080995e4
        080995d4 83 ec 0c        SUB        ESP,0xc
        080995d7 68 d8 88        PUSH       s_Can't_init_input_082788d8                      = "Can't init input"
                 27 08
        080995dc e8 ef 3d        CALL       ErrorExitM                                       undefined ErrorExitM()
                 ff ff
        080995e1 83 c4 10        ADD        ESP,0x10
                             LAB_080995e4                                    XREF[1]:     080995d2(j)
        080995e4 5b              POP        EBX
        080995e5 5e              POP        ESI
        080995e6 5f              POP        EDI
        080995e7 c3              RET
