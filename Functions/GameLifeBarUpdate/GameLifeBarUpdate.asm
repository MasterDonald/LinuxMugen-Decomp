                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLifeBarUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[10,2]:  080969c9(W),
                                                                                                   080969cd(R),
                                                                                                   080969d6(R),
                                                                                                   080969da(W),
                                                                                                   080969e2(R),
                                                                                                   08096a65(W),
                                                                                                   08096a69(R),
                                                                                                   08096a72(R),
                                                                                                   08096a76(W),
                                                                                                   08096a7e(R),
                                                                                                   080969d1(W),
                                                                                                   08096a6d(W)
             undefined4        Stack[-0x18]:4 local_18                                XREF[4]:     080969de(W),
                                                                                                   080969e6(R),
                                                                                                   08096a7a(W),
                                                                                                   08096a82(R)
             undefined4        Stack[-0x20]:4 local_20                                XREF[6]:     080969ae(*),
                                                                                                   080969b5(*),
                                                                                                   080969b8(*),
                                                                                                   080969bb(*),
                                                                                                   08096a52(*),
                                                                                                   08096a59(*)
                             GameLifeBarUpdate                               XREF[4]:     GameBarsUpdate:080968e5(c),
                                                                                          GameBarsUpdate:080968ed(c),
                                                                                          GameBarsUpdate:080968fd(c),
                                                                                          GameBarsUpdate:0809690d(c)
        08096930 55              PUSH       EBP
        08096931 57              PUSH       EDI
        08096932 56              PUSH       ESI
        08096933 be d3 4d        MOV        ESI,0x10624dd3
                 62 10
        08096938 53              PUSH       EBX
        08096939 83 ec 0c        SUB        ESP,0xc
        0809693c 8b 7c 24 20     MOV        EDI,dword ptr [ESP + Stack[0x4]]
        08096940 8b 8f 64        MOV        ECX,dword ptr [EDI + 0x164]
                 01 00 00
        08096946 8d 1c c9        LEA        EBX,[ECX + ECX*0x8]
        08096949 89 d8           MOV        EAX,EBX
        0809694b c1 fb 1f        SAR        EBX,0x1f
        0809694e f7 ee           IMUL       ESI
        08096950 be 1f 85        MOV        ESI,0x51eb851f
                 eb 51
        08096955 89 d5           MOV        EBP,EDX
        08096957 c1 fd 06        SAR        EBP,0x6
        0809695a 89 f0           MOV        EAX,ESI
        0809695c f7 e9           IMUL       ECX
        0809695e c1 f9 1f        SAR        ECX,0x1f
        08096961 89 d6           MOV        ESI,EDX
        08096963 c1 fe 03        SAR        ESI,0x3
        08096966 89 ea           MOV        EDX,EBP
        08096968 29 ce           SUB        ESI,ECX
        0809696a 29 da           SUB        EDX,EBX
        0809696c 75 05           JNZ        LAB_08096973
        0809696e ba 01 00        MOV        EDX,0x1
                 00 00
                             LAB_08096973                                    XREF[1]:     0809696c(j)
        08096973 85 f6           TEST       ESI,ESI
        08096975 75 05           JNZ        LAB_0809697c
        08096977 be 01 00        MOV        ESI,0x1
                 00 00
                             LAB_0809697c                                    XREF[1]:     08096975(j)
        0809697c a1 74 7a        MOV        EAX,[g]
                 28 08
        08096981 8b 88 24        MOV        ECX,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        08096987 85 c9           TEST       ECX,ECX
        08096989 0f 85 0d        JNZ        LAB_08096a9c
                 01 00 00
        0809698f 8b a8 34        MOV        EBP,dword ptr [EAX + 0x1d434]
                 d4 01 00
        08096995 85 ed           TEST       EBP,EBP
        08096997 0f 85 ff        JNZ        LAB_08096a9c
                 00 00 00
        0809699d 8b 8f 68        MOV        ECX,dword ptr [EDI + 0x168]
                 01 00 00
        080969a3 8b 9f 60        MOV        EBX,dword ptr [EDI + 0x160]
                 01 00 00
        080969a9 39 d9           CMP        ECX,EBX
        080969ab 7e 59           JLE        LAB_08096a06
        080969ad 51              PUSH       ECX
        080969ae db 04 24        FILD       dword ptr [ESP]=>local_20
        080969b1 59              POP        ECX
        080969b2 29 d9           SUB        ECX,EBX
        080969b4 52              PUSH       EDX
        080969b5 db 04 24        FILD       dword ptr [ESP]=>local_20
        080969b8 89 0c 24        MOV        dword ptr [ESP]=>local_20,ECX
        080969bb db 04 24        FILD       dword ptr [ESP]=>local_20
        080969be 59              POP        ECX
        080969bf dc 0d 58        FMUL       double ptr [DAT_08278758]                        = 9Ah
                 87 27 08
        080969c5 de c1           FADDP
        080969c7 de e9           FSUBP
        080969c9 d9 7c 24 08     FNSTCW     word ptr [ESP + local_14]
        080969cd 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
        080969d1 c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 09 0c
        080969d6 d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        080969da 89 54 24 08     MOV        dword ptr [ESP + local_14],EDX
        080969de db 5c 24 04     FISTP      dword ptr [ESP + local_18]
        080969e2 d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        080969e6 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        080969ea 8b 9f 60        MOV        EBX,dword ptr [EDI + 0x160]
                 01 00 00
        080969f0 89 87 68        MOV        dword ptr [EDI + 0x168],EAX
                 01 00 00
        080969f6 39 d8           CMP        EAX,EBX
        080969f8 7d 0a           JGE        LAB_08096a04
        080969fa 89 9f 68        MOV        dword ptr [EDI + 0x168],EBX
                 01 00 00
        08096a00 89 d9           MOV        ECX,EBX
        08096a02 eb 02           JMP        LAB_08096a06
                             LAB_08096a04                                    XREF[1]:     080969f8(j)
        08096a04 89 c1           MOV        ECX,EAX
                             LAB_08096a06                                    XREF[2]:     080969ab(j), 08096a02(j)
        08096a06 39 d9           CMP        ECX,EBX
        08096a08 7d 15           JGE        LAB_08096a1f
        08096a0a 89 d8           MOV        EAX,EBX
        08096a0c 89 f2           MOV        EDX,ESI
        08096a0e 29 c8           SUB        EAX,ECX
        08096a10 39 c2           CMP        EDX,EAX
        08096a12 7e 02           JLE        LAB_08096a16
        08096a14 89 c2           MOV        EDX,EAX
                             LAB_08096a16                                    XREF[1]:     08096a12(j)
        08096a16 8d 04 0a        LEA        EAX,[EDX + ECX*0x1]
        08096a19 89 87 68        MOV        dword ptr [EDI + 0x168],EAX
                 01 00 00
                             LAB_08096a1f                                    XREF[1]:     08096a08(j)
        08096a1f 83 bf 04        CMP        dword ptr [EDI + 0xe04],0x2
                 0e 00 00 02
        08096a26 75 11           JNZ        LAB_08096a39
        08096a28 83 ec 0c        SUB        ESP,0xc
        08096a2b 57              PUSH       EDI
        08096a2c e8 3f 52        CALL       PlayerLyingDead                                  undefined PlayerLyingDead()
                 01 00
        08096a31 83 c4 10        ADD        ESP,0x10
        08096a34 83 f8 3c        CMP        EAX,0x3c
        08096a37 7e 63           JLE        LAB_08096a9c
                             LAB_08096a39                                    XREF[1]:     08096a26(j)
        08096a39 8b 8f 68        MOV        ECX,dword ptr [EDI + 0x168]
                 01 00 00
        08096a3f 3b 8f 60        CMP        ECX,dword ptr [EDI + 0x160]
                 01 00 00
        08096a45 75 55           JNZ        LAB_08096a9c
        08096a47 8b 87 6c        MOV        EAX,dword ptr [EDI + 0x16c]
                 01 00 00
        08096a4d 39 c8           CMP        EAX,ECX
        08096a4f 7e 41           JLE        LAB_08096a92
        08096a51 50              PUSH       EAX
        08096a52 db 04 24        FILD       dword ptr [ESP]=>local_20
        08096a55 58              POP        EAX
        08096a56 29 c8           SUB        EAX,ECX
        08096a58 50              PUSH       EAX
        08096a59 db 04 24        FILD       dword ptr [ESP]=>local_20
        08096a5c 58              POP        EAX
        08096a5d dc 0d 58        FMUL       double ptr [DAT_08278758]                        = 9Ah
                 87 27 08
        08096a63 de e9           FSUBP
        08096a65 d9 7c 24 08     FNSTCW     word ptr [ESP + local_14]
        08096a69 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
        08096a6d c6 44 24        MOV        byte ptr [ESP + local_14+0x1],0xc
                 09 0c
        08096a72 d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        08096a76 89 54 24 08     MOV        dword ptr [ESP + local_14],EDX
        08096a7a db 5c 24 04     FISTP      dword ptr [ESP + local_18]
        08096a7e d9 6c 24 08     FLDCW      word ptr [ESP + local_14]
        08096a82 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        08096a86 8b 8f 68        MOV        ECX,dword ptr [EDI + 0x168]
                 01 00 00
        08096a8c 89 87 6c        MOV        dword ptr [EDI + 0x16c],EAX
                 01 00 00
                             LAB_08096a92                                    XREF[1]:     08096a4f(j)
        08096a92 39 c8           CMP        EAX,ECX
        08096a94 7d 06           JGE        LAB_08096a9c
        08096a96 89 8f 6c        MOV        dword ptr [EDI + 0x16c],ECX
                 01 00 00
                             LAB_08096a9c                                    XREF[5]:     08096989(j), 08096997(j),
                                                                                          08096a37(j), 08096a45(j),
                                                                                          08096a94(j)
        08096a9c 83 c4 0c        ADD        ESP,0xc
        08096a9f 5b              POP        EBX
        08096aa0 5e              POP        ESI
        08096aa1 5f              POP        EDI
        08096aa2 5d              POP        EBP
        08096aa3 c3              RET
