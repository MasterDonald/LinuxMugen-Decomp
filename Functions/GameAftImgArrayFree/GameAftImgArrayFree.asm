                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameAftImgArrayFree()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     0809c3cd(*)
                             GameAftImgArrayFree                             XREF[3]:     Entry Point(*),
                                                                                          GameVarDeInit:0809c274(c),
                                                                                          GameAftImgArrayNew:0809c34c(c)
        0809c3b0 56              PUSH       ESI
        0809c3b1 53              PUSH       EBX
        0809c3b2 53              PUSH       EBX
        0809c3b3 8b 5c 24 10     MOV        EBX,dword ptr [ESP + Stack[0x4]]
        0809c3b7 85 db           TEST       EBX,EBX
        0809c3b9 74 35           JZ         LAB_0809c3f0
        0809c3bb 31 f6           XOR        ESI,ESI
        0809c3bd 3b 73 0c        CMP        ESI,dword ptr [EBX + 0xc]
        0809c3c0 7d 1b           JGE        LAB_0809c3dd
                             LAB_0809c3c2                                    XREF[1]:     0809c3db(j)
        0809c3c2 51              PUSH       ECX
        0809c3c3 56              PUSH       ESI
        0809c3c4 46              INC        ESI
        0809c3c5 6a 00           PUSH       0x0
        0809c3c7 53              PUSH       EBX
        0809c3c8 e8 13 ec        CALL       ArrayAccessGrpItem                               undefined ArrayAccessGrpItem()
                 fa ff
        0809c3cd 89 04 24        MOV        dword ptr [ESP]=>local_1c,EAX
        0809c3d0 e8 ab 5d        CALL       AftImgDeInit                                     undefined AftImgDeInit()
                 fe ff
        0809c3d5 83 c4 10        ADD        ESP,0x10
        0809c3d8 3b 73 0c        CMP        ESI,dword ptr [EBX + 0xc]
        0809c3db 7c e5           JL         LAB_0809c3c2
                             LAB_0809c3dd                                    XREF[1]:     0809c3c0(j)
        0809c3dd 89 5c 24 10     MOV        dword ptr [ESP + Stack[0x4]],EBX
        0809c3e1 5a              POP        EDX
        0809c3e2 5b              POP        EBX
        0809c3e3 5e              POP        ESI
        0809c3e4 e9 17 e7        JMP        ArrayFree                                        undefined ArrayFree()
                 fa ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
        0809c3e9 8d              ??         8Dh
        0809c3ea b4              ??         B4h
        0809c3eb 26              ??         26h    &
        0809c3ec 00              ??         00h
        0809c3ed 00              ??         00h
        0809c3ee 00              ??         00h
        0809c3ef 00              ??         00h
                             LAB_0809c3f0                                    XREF[1]:     0809c3b9(j)
        0809c3f0 58              POP        EAX
        0809c3f1 5b              POP        EBX
        0809c3f2 5e              POP        ESI
        0809c3f3 c3              RET
