                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameAftImgReset()
             undefined         <UNASSIGNED>   <RETURN>
                             GameAftImgReset                                 XREF[2]:     Entry Point(*),
                                                                                          GameRoundReset:0809f7d6(c)
        08096d30 56              PUSH       ESI
        08096d31 53              PUSH       EBX
        08096d32 31 db           XOR        EBX,EBX
        08096d34 52              PUSH       EDX
        08096d35 8b 74 24 10     MOV        ESI,dword ptr [ESP + Stack[0x4]]
        08096d39 3b 5e 0c        CMP        EBX,dword ptr [ESI + 0xc]
        08096d3c 7d 23           JGE        LAB_08096d61
        08096d3e 89 f6           MOV        ESI,ESI
                             LAB_08096d40                                    XREF[1]:     08096d5f(j)
        08096d40 50              PUSH       EAX
        08096d41 53              PUSH       EBX
        08096d42 43              INC        EBX
        08096d43 6a 00           PUSH       0x0
        08096d45 56              PUSH       ESI
        08096d46 e8 95 42        CALL       ArrayAccessGrpItem                               undefined ArrayAccessGrpItem()
                 fb ff
        08096d4b 83 c4 10        ADD        ESP,0x10
        08096d4e c7 40 18        MOV        dword ptr [EAX + 0x18],0x0
                 00 00 00 00
        08096d55 c7 40 08        MOV        dword ptr [EAX + 0x8],0x0
                 00 00 00 00
        08096d5c 3b 5e 0c        CMP        EBX,dword ptr [ESI + 0xc]
        08096d5f 7c df           JL         LAB_08096d40
                             LAB_08096d61                                    XREF[1]:     08096d3c(j)
        08096d61 5e              POP        ESI
        08096d62 5b              POP        EBX
        08096d63 5e              POP        ESI
        08096d64 c3              RET
