                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameDefKeyInit()
             undefined         <UNASSIGNED>   <RETURN>
                             GameDefKeyInit                                  XREF[2]:     Entry Point(*),
                                                                                          GameInit:08098e43(c)
        080995f0 55              PUSH       EBP
        080995f1 31 ed           XOR        EBP,EBP
        080995f3 57              PUSH       EDI
        080995f4 31 ff           XOR        EDI,EDI
        080995f6 56              PUSH       ESI
        080995f7 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080995fd 53              PUSH       EBX
        080995fe 81 c6 ec        ADD        ESI,0x1ccec
                 cc 01 00
                             LAB_08099604                                    XREF[1]:     0809962f(j)
        08099604 31 db           XOR        EBX,EBX
        08099606 8d 8f a0        LEA        ECX,[EDI + DefaultKeyCfg]                        = 000000C8h
                 1e 22 08
        0809960c 8d 74 26 00     LEA        ESI,[ESI]
                             LAB_08099610                                    XREF[1]:     08099623(j)
        08099610 8b 14 9d        MOV        EDX,dword ptr [EBX*0x4 + KeyCfgToKBIMap]         = 00000001h
                 60 1f 22 08                                                                 = 00000003h
        08099617 43              INC        EBX
        08099618 8b 01           MOV        EAX,dword ptr [ECX]=>DefaultKeyCfg               = 000000C8h
                                                                                             = 000000D0h
                                                                                             = 00000048h
        0809961a 83 c1 04        ADD        ECX,0x4
        0809961d 89 04 96        MOV        dword ptr [ESI + EDX*0x4],EAX
        08099620 83 fb 0a        CMP        EBX,0xa
        08099623 7e eb           JLE        LAB_08099610
        08099625 45              INC        EBP
        08099626 83 c6 34        ADD        ESI,0x34
        08099629 83 c7 2c        ADD        EDI,0x2c
        0809962c 83 fd 01        CMP        EBP,0x1
        0809962f 7e d3           JLE        LAB_08099604
        08099631 5b              POP        EBX
        08099632 5e              POP        ESI
        08099633 5f              POP        EDI
        08099634 5d              POP        EBP
        08099635 c3              RET
