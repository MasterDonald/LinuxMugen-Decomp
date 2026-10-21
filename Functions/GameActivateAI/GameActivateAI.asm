                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameActivateAI()
             undefined         <UNASSIGNED>   <RETURN>
                             GameActivateAI                                  XREF[2]:     Entry Point(*),
                                                                                          GameLoadAndActivateTeam:080b054d
        080b0560 55              PUSH       EBP
        080b0561 31 ed           XOR        EBP,EBP
        080b0563 57              PUSH       EDI
        080b0564 56              PUSH       ESI
        080b0565 53              PUSH       EBX
        080b0566 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080b056c 8b bb 58        MOV        EDI,dword ptr [EBX + 0x20b58]
                 0b 02 00
        080b0572 85 ff           TEST       EDI,EDI
        080b0574 75 0a           JNZ        LAB_080b0580
        080b0576 8b b3 a0        MOV        ESI,dword ptr [EBX + 0x1d3a0]
                 d3 01 00
        080b057c 85 f6           TEST       ESI,ESI
        080b057e 74 05           JZ         LAB_080b0585
                             LAB_080b0580                                    XREF[1]:     080b0574(j)
        080b0580 bd 01 00        MOV        EBP,0x1
                 00 00
                             LAB_080b0585                                    XREF[1]:     080b057e(j)
        080b0585 31 f6           XOR        ESI,ESI
        080b0587 eb 0d           JMP        LAB_080b0596
        080b0589 8d              ??         8Dh
        080b058a b4              ??         B4h
        080b058b 26              ??         26h    &
        080b058c 00              ??         00h
        080b058d 00              ??         00h
        080b058e 00              ??         00h
        080b058f 00              ??         00h
                             LAB_080b0590                                    XREF[1]:     080b0608(j)
        080b0590 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
                             LAB_080b0596                                    XREF[1]:     080b0587(j)
        080b0596 8d 04 76        LEA        EAX,[ESI + ESI*0x2]
        080b0599 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        080b059c 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        080b059f 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        080b05a2 c1 e0 03        SHL        EAX,0x3
        080b05a5 29 f0           SUB        EAX,ESI
        080b05a7 c1 e0 02        SHL        EAX,0x2
        080b05aa 8b 8c 03        MOV        ECX,dword ptr [EBX + EAX*0x1 + 0xcee0]
                 e0 ce 00 00
        080b05b1 8d 14 49        LEA        EDX,[ECX + ECX*0x2]
        080b05b4 c1 e2 03        SHL        EDX,0x3
        080b05b7 29 ca           SUB        EDX,ECX
        080b05b9 31 c9           XOR        ECX,ECX
        080b05bb 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        080b05be 01 da           ADD        EDX,EBX
        080b05c0 8d 9a ec        LEA        EBX,[EDX + 0xceec]
                 ce 00 00
        080b05c6 3b 8a f4        CMP        ECX,dword ptr [EDX + 0xcef4]
                 ce 00 00
        080b05cc 7d 36           JGE        LAB_080b0604
        080b05ce 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        080b05d4 8d 53 0c        LEA        EDX,[EBX + 0xc]
        080b05d7 83 c7 04        ADD        EDI,0x4
        080b05da 8d b6 00        LEA        ESI,[ESI]
                 00 00 00
                             LAB_080b05e0                                    XREF[1]:     080b0602(j)
        080b05e0 8b 02           MOV        EAX,dword ptr [EDX]
        080b05e2 85 ed           TEST       EBP,EBP
        080b05e4 74 15           JZ         LAB_080b05fb
        080b05e6 8b 84 87        MOV        EAX,dword ptr [EDI + EAX*0x4 + 0x1cf60]
                 60 cf 01 00
        080b05ed 85 c0           TEST       EAX,EAX
        080b05ef 74 0a           JZ         LAB_080b05fb
        080b05f1 c7 80 2c        MOV        dword ptr [EAX + 0x262c],0x1
                 26 00 00
                 01 00 00 00
                             LAB_080b05fb                                    XREF[2]:     080b05e4(j), 080b05ef(j)
        080b05fb 41              INC        ECX
        080b05fc 83 c2 14        ADD        EDX,0x14
        080b05ff 3b 4b 08        CMP        ECX,dword ptr [EBX + 0x8]
        080b0602 7c dc           JL         LAB_080b05e0
                             LAB_080b0604                                    XREF[1]:     080b05cc(j)
        080b0604 46              INC        ESI
        080b0605 83 fe 01        CMP        ESI,0x1
        080b0608 7e 86           JLE        LAB_080b0590
        080b060a 5b              POP        EBX
        080b060b 5e              POP        ESI
        080b060c 5f              POP        EDI
        080b060d 5d              POP        EBP
        080b060e c3              RET
