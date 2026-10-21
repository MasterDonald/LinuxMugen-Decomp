                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameClsnDraw()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[20,4]:  080970ba(W),
                                                                                                   080970be(R),
                                                                                                   080970c7(R),
                                                                                                   080970cb(W),
                                                                                                   080970d3(R),
                                                                                                   080970e6(W),
                                                                                                   080970ea(R),
                                                                                                   080970f3(R),
                                                                                                   080970f7(W),
                                                                                                   080970ff(R),
                                                                                                   08097114(W),
                                                                                                   08097118(R),
                                                                                                   08097121(R),
                                                                                                   08097125(W),
                                                                                                   0809712d(R),
                                                                                                   0809714a(W),
                                                                                                   0809714e(R),
                                                                                                   08097157(R),
                                                                                                   0809715b(W),
                                                                                                   08097163(R)
             undefined4        Stack[-0x18]:4 local_18                                XREF[8]:     080970cf(W),
                                                                                                   080970da(R),
                                                                                                   080970fb(W),
                                                                                                   08097106(R),
                                                                                                   08097129(W),
                                                                                                   08097134(R),
                                                                                                   0809715f(W),
                                                                                                   0809716d(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[5]:     08097070(W),
                                                                                                   0809707b(R),
                                                                                                   080971dc(R),
                                                                                                   080971e8(W),
                                                                                                   080971f0(R)
             undefined4        Stack[-0x20]:4 local_20                                XREF[2]:     0809703e(W),
                                                                                                   080970aa(R)
             undefined4        Stack[-0x24]:4 local_24                                XREF[4]:     08097085(W),
                                                                                                   08097094(R),
                                                                                                   080971e0(R),
                                                                                                   080971ec(W)
                             GameClsnDraw                                    XREF[4]:     Entry Point(*),
                                                                                          PlayerDrawClsn:080b7cb6(c),
                                                                                          PlayerDrawClsn:080b7d1a(c),
                                                                                          ProjClsnDraw:080b9fb9(c)
        08097020 55              PUSH       EBP
        08097021 31 c0           XOR        EAX,EAX
        08097023 57              PUSH       EDI
        08097024 56              PUSH       ESI
        08097025 53              PUSH       EBX
        08097026 83 ec 1c        SUB        ESP,0x1c
        08097029 f7 44 24        TEST       dword ptr [ESP + Stack[0x1c]],0x1
                 48 01 00
                 00 00
        08097031 8b 7c 24 30     MOV        EDI,dword ptr [ESP + Stack[0x4]]
        08097035 0f 94 c0        SETZ       AL
        08097038 85 ff           TEST       EDI,EDI
        0809703a 8d 44 00 ff     LEA        EAX,[EAX + EAX*0x1 + -0x1]
        0809703e 89 44 24 0c     MOV        dword ptr [ESP + local_20],EAX
        08097042 0f 84 b6        JZ         LAB_080971fe
                 01 00 00
        08097048 d9 ee           FLDZ
        0809704a d9 44 24 3c     FLD        float ptr [ESP + Stack[0x10]]
        0809704e d8 d9           FCOMP
        08097050 df e0           FNSTSW     AX
        08097052 f6 c4 40        TEST       AH,0x40
        08097055 0f 85 a1        JNZ        LAB_080971fc
                 01 00 00
        0809705b d9 44 24 40     FLD        float ptr [ESP + Stack[0x14]]
        0809705f de d9           FCOMPP
        08097061 df e0           FNSTSW     AX
        08097063 f6 c4 40        TEST       AH,0x40
        08097066 0f 85 92        JNZ        LAB_080971fe
                 01 00 00
        0809706c 8b 44 24 30     MOV        EAX,dword ptr [ESP + Stack[0x4]]
        08097070 c7 44 24        MOV        dword ptr [ESP + local_1c],0x0
                 10 00 00
                 00 00
        08097078 8b 50 04        MOV        EDX,dword ptr [EAX + 0x4]
        0809707b 39 54 24 10     CMP        dword ptr [ESP + local_1c],EDX
        0809707f 0f 8d 79        JGE        LAB_080971fe
                 01 00 00
        08097085 c7 44 24        MOV        dword ptr [ESP + local_24],0x0
                 08 00 00
                 00 00
        0809708d 8d 76 00        LEA        ESI,[ESI]
                             LAB_08097090                                    XREF[1]:     080971f4(j)
        08097090 8b 4c 24 30     MOV        ECX,dword ptr [ESP + Stack[0x4]]
        08097094 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_24]
        08097098 8b 71 08        MOV        ESI,dword ptr [ECX + 0x8]
        0809709b 01 f0           ADD        EAX,ESI
        0809709d 8b 18           MOV        EBX,dword ptr [EAX]
        0809709f 85 db           TEST       EBX,EBX
        080970a1 0f 85 35        JNZ        LAB_080971dc
                 01 00 00
        080970a7 db 40 04        FILD       dword ptr [EAX + 0x4]
        080970aa db 44 24 0c     FILD       dword ptr [ESP + local_20]
        080970ae d9 c9           FXCH
        080970b0 d8 4c 24 3c     FMUL       float ptr [ESP + Stack[0x10]]
        080970b4 d8 c9           FMUL       ST1
        080970b6 d8 44 24 34     FADD       float ptr [ESP + Stack[0x8]]
        080970ba d9 7c 24 18     FNSTCW     word ptr [ESP + local_14]
        080970be 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_14]
        080970c2 c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 19 0c
        080970c7 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        080970cb 89 54 24 18     MOV        dword ptr [ESP + local_14],EDX
        080970cf db 5c 24 14     FISTP      dword ptr [ESP + local_18]
        080970d3 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        080970d7 db 40 08        FILD       dword ptr [EAX + 0x8]
        080970da 8b 6c 24 14     MOV        EBP,dword ptr [ESP + local_18]
        080970de d8 4c 24 40     FMUL       float ptr [ESP + Stack[0x14]]
        080970e2 d8 44 24 38     FADD       float ptr [ESP + Stack[0xc]]
        080970e6 d9 7c 24 18     FNSTCW     word ptr [ESP + local_14]
        080970ea 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_14]
        080970ee c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 19 0c
        080970f3 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        080970f7 89 4c 24 18     MOV        dword ptr [ESP + local_14],ECX
        080970fb db 5c 24 14     FISTP      dword ptr [ESP + local_18]
        080970ff d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        08097103 db 40 0c        FILD       dword ptr [EAX + 0xc]
        08097106 8b 7c 24 14     MOV        EDI,dword ptr [ESP + local_18]
        0809710a d8 4c 24 3c     FMUL       float ptr [ESP + Stack[0x10]]
        0809710e de c9           FMULP
        08097110 d8 44 24 34     FADD       float ptr [ESP + Stack[0x8]]
        08097114 d9 7c 24 18     FNSTCW     word ptr [ESP + local_14]
        08097118 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_14]
        0809711c c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 19 0c
        08097121 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        08097125 89 54 24 18     MOV        dword ptr [ESP + local_14],EDX
        08097129 db 5c 24 14     FISTP      dword ptr [ESP + local_18]
        0809712d d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        08097131 db 40 10        FILD       dword ptr [EAX + 0x10]
        08097134 8b 74 24 14     MOV        ESI,dword ptr [ESP + local_18]
        08097138 ba 04 00        MOV        EDX,0x4
                 00 00
        0809713d d8 4c 24 40     FMUL       float ptr [ESP + Stack[0x14]]
        08097141 b8 08 00        MOV        EAX,0x8
                 00 00
        08097146 d8 44 24 38     FADD       float ptr [ESP + Stack[0xc]]
        0809714a d9 7c 24 18     FNSTCW     word ptr [ESP + local_14]
        0809714e 8b 4c 24 18     MOV        ECX,dword ptr [ESP + local_14]
        08097152 c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 19 0c
        08097157 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        0809715b 89 4c 24 18     MOV        dword ptr [ESP + local_14],ECX
        0809715f db 5c 24 14     FISTP      dword ptr [ESP + local_18]
        08097163 d9 6c 24 18     FLDCW      word ptr [ESP + local_14]
        08097167 8b 0d 10        MOV        ECX,dword ptr [_rgb_r_shift_16]
                 d3 28 08
        0809716d 8b 5c 24 14     MOV        EBX,dword ptr [ESP + local_18]
        08097171 d3 e2           SHL        EDX,CL
        08097173 8b 0d 14        MOV        ECX,dword ptr [_rgb_g_shift_16]                  = 00000005h
                 d3 28 08
        08097179 83 ec 0c        SUB        ESP,0xc
        0809717c d3 e0           SHL        EAX,CL
        0809717e 09 c2           OR         EDX,EAX
        08097180 b8 04 00        MOV        EAX,0x4
                 00 00
        08097185 8b 0d 18        MOV        ECX,dword ptr [_rgb_b_shift_16]                  = 0000000Bh
                 d3 28 08
        0809718b d3 e0           SHL        EAX,CL
        0809718d 09 c2           OR         EDX,EAX
        0809718f 52              PUSH       EDX
        08097190 53              PUSH       EBX
        08097191 56              PUSH       ESI
        08097192 57              PUSH       EDI
        08097193 55              PUSH       EBP
        08097194 e8 47 88        CALL       W_BoxTransSub16                                  undefined W_BoxTransSub16()
                 fe ff
        08097199 83 c4 20        ADD        ESP,0x20
        0809719c 8b 4c 24 4c     MOV        ECX,dword ptr [ESP + Stack[0x20]]
        080971a0 85 c9           TEST       ECX,ECX
        080971a2 74 1d           JZ         LAB_080971c1
        080971a4 83 ec 0c        SUB        ESP,0xc
        080971a7 8b 54 24 50     MOV        EDX,dword ptr [ESP + Stack[0x18]]
        080971ab 52              PUSH       EDX
        080971ac 53              PUSH       EBX
        080971ad 56              PUSH       ESI
        080971ae 57              PUSH       EDI
        080971af 55              PUSH       EBP
        080971b0 e8 3b 8a        CALL       W_BoxFillTransAdd16                              undefined W_BoxFillTransAdd16()
                 fe ff
        080971b5 83 c4 20        ADD        ESP,0x20
        080971b8 8b 44 24 30     MOV        EAX,dword ptr [ESP + Stack[0x4]]
        080971bc 8b 50 04        MOV        EDX,dword ptr [EAX + 0x4]
        080971bf eb 1b           JMP        LAB_080971dc
                             LAB_080971c1                                    XREF[1]:     080971a2(j)
        080971c1 83 ec 0c        SUB        ESP,0xc
        080971c4 8b 44 24 50     MOV        EAX,dword ptr [ESP + Stack[0x18]]
        080971c8 50              PUSH       EAX
        080971c9 53              PUSH       EBX
        080971ca 56              PUSH       ESI
        080971cb 57              PUSH       EDI
        080971cc 55              PUSH       EBP
        080971cd e8 2e 87        CALL       W_BoxTransAdd16                                  undefined W_BoxTransAdd16()
                 fe ff
        080971d2 83 c4 20        ADD        ESP,0x20
        080971d5 8b 4c 24 30     MOV        ECX,dword ptr [ESP + Stack[0x4]]
        080971d9 8b 51 04        MOV        EDX,dword ptr [ECX + 0x4]
                             LAB_080971dc                                    XREF[2]:     080970a1(j), 080971bf(j)
        080971dc 8b 4c 24 10     MOV        ECX,dword ptr [ESP + local_1c]
        080971e0 8b 5c 24 08     MOV        EBX,dword ptr [ESP + local_24]
        080971e4 41              INC        ECX
        080971e5 83 c3 14        ADD        EBX,0x14
        080971e8 89 4c 24 10     MOV        dword ptr [ESP + local_1c],ECX
        080971ec 89 5c 24 08     MOV        dword ptr [ESP + local_24],EBX
        080971f0 39 54 24 10     CMP        dword ptr [ESP + local_1c],EDX
        080971f4 0f 8c 96        JL         LAB_08097090
                 fe ff ff
        080971fa eb 02           JMP        LAB_080971fe
                             LAB_080971fc                                    XREF[1]:     08097055(j)
        080971fc dd d8           FSTP       ST0
                             LAB_080971fe                                    XREF[4]:     08097042(j), 08097066(j),
                                                                                          0809707f(j), 080971fa(j)
        080971fe 83 c4 1c        ADD        ESP,0x1c
        08097201 5b              POP        EBX
        08097202 5e              POP        ESI
        08097203 5f              POP        EDI
        08097204 5d              POP        EBP
        08097205 c3              RET
