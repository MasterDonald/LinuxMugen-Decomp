                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameAftImgCount()
             undefined         <UNASSIGNED>   <RETURN>
                             GameAftImgCount                                 XREF[1]:     Entry Point(*)
        08096d70 57              PUSH       EDI
        08096d71 56              PUSH       ESI
        08096d72 31 f6           XOR        ESI,ESI
        08096d74 53              PUSH       EBX
        08096d75 31 db           XOR        EBX,EBX
        08096d77 8b 7c 24 10     MOV        EDI,dword ptr [ESP + Stack[0x4]]
        08096d7b 3b 77 0c        CMP        ESI,dword ptr [EDI + 0xc]
        08096d7e 7d 1b           JGE        LAB_08096d9b
                             LAB_08096d80                                    XREF[1]:     08096d99(j)
        08096d80 50              PUSH       EAX
        08096d81 53              PUSH       EBX
        08096d82 6a 00           PUSH       0x0
        08096d84 57              PUSH       EDI
        08096d85 e8 56 42        CALL       ArrayAccessGrpItem                               undefined ArrayAccessGrpItem()
                 fb ff
        08096d8a 83 c4 10        ADD        ESP,0x10
        08096d8d 8b 48 08        MOV        ECX,dword ptr [EAX + 0x8]
        08096d90 85 c9           TEST       ECX,ECX
        08096d92 74 01           JZ         LAB_08096d95
        08096d94 46              INC        ESI
                             LAB_08096d95                                    XREF[1]:     08096d92(j)
        08096d95 43              INC        EBX
        08096d96 3b 5f 0c        CMP        EBX,dword ptr [EDI + 0xc]
        08096d99 7c e5           JL         LAB_08096d80
                             LAB_08096d9b                                    XREF[1]:     08096d7e(j)
        08096d9b 5b              POP        EBX
        08096d9c 89 f0           MOV        EAX,ESI
        08096d9e 5e              POP        ESI
        08096d9f 5f              POP        EDI
        08096da0 c3              RET
