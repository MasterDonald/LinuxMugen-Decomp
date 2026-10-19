                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameUnloadSystem()
             undefined         <UNASSIGNED>   <RETURN>
                             GameUnloadSystem                                XREF[2]:     Entry Point(*),
                                                                                          GameDeInit:08099440(c)
        080d39b0 56              PUSH       ESI
        080d39b1 53              PUSH       EBX
        080d39b2 83 ec 10        SUB        ESP,0x10
        080d39b5 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d39ba 8b 88 40        MOV        ECX,dword ptr [EAX + 0x18b40]
                 8b 01 00
        080d39c0 51              PUSH       ECX
        080d39c1 e8 fa 89        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d39c6 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d39cb c7 80 40        MOV        dword ptr [EAX + 0x18b40],0x0
                 8b 01 00
                 00 00 00 00
        080d39d5 5a              POP        EDX
        080d39d6 8b 80 3c        MOV        EAX,dword ptr [EAX + 0x18b3c]
                 8b 01 00
        080d39dc 50              PUSH       EAX
        080d39dd e8 de 89        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d39e2 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d39e7 c7 80 3c        MOV        dword ptr [EAX + 0x18b3c],0x0
                 8b 01 00
                 00 00 00 00
        080d39f1 5e              POP        ESI
        080d39f2 8b 98 34        MOV        EBX,dword ptr [EAX + 0x18b34]
                 8b 01 00
        080d39f8 53              PUSH       EBX
        080d39f9 e8 c2 89        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d39fe a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3a03 c7 80 34        MOV        dword ptr [EAX + 0x18b34],0x0
                 8b 01 00
                 00 00 00 00
        080d3a0d 59              POP        ECX
        080d3a0e 8b 90 38        MOV        EDX,dword ptr [EAX + 0x18b38]
                 8b 01 00
        080d3a14 52              PUSH       EDX
        080d3a15 e8 a6 89        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d3a1a 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3a20 83 c4 10        ADD        ESP,0x10
        080d3a23 8b 82 40        MOV        EAX,dword ptr [EDX + 0x6d40]
                 6d 00 00
        080d3a29 c7 82 38        MOV        dword ptr [EDX + 0x18b38],0x0
                 8b 01 00
                 00 00 00 00
        080d3a33 85 c0           TEST       EAX,EAX
        080d3a35 74 68           JZ         LAB_080d3a9f
        080d3a37 8b 82 94        MOV        EAX,dword ptr [EDX + 0x6394]
                 63 00 00
        080d3a3d 8b b2 90        MOV        ESI,dword ptr [EDX + 0x6390]
                 63 00 00
        080d3a43 0f af c6        IMUL       EAX,ESI
        080d3a46 31 db           XOR        EBX,EBX
        080d3a48 39 c3           CMP        EBX,EAX
        080d3a4a 7d 41           JGE        LAB_080d3a8d
        080d3a4c 31 f6           XOR        ESI,ESI
        080d3a4e 89 f6           MOV        ESI,ESI
                             LAB_080d3a50                                    XREF[1]:     080d3a8b(j)
        080d3a50 8b 82 40        MOV        EAX,dword ptr [EDX + 0x6d40]
                 6d 00 00
        080d3a56 8b 84 30        MOV        EAX,dword ptr [EAX + ESI*0x1 + 0x2034]
                 34 20 00 00
        080d3a5d 85 c0           TEST       EAX,EAX
        080d3a5f 74 12           JZ         LAB_080d3a73
        080d3a61 83 ec 0c        SUB        ESP,0xc
        080d3a64 50              PUSH       EAX
        080d3a65 e8 56 51        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 f8 ff
        080d3a6a 83 c4 10        ADD        ESP,0x10
        080d3a6d 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3a73                                    XREF[1]:     080d3a5f(j)
        080d3a73 8b 82 94        MOV        EAX,dword ptr [EDX + 0x6394]
                 63 00 00
        080d3a79 8b 8a 90        MOV        ECX,dword ptr [EDX + 0x6390]
                 63 00 00
        080d3a7f 0f af c1        IMUL       EAX,ECX
        080d3a82 43              INC        EBX
        080d3a83 81 c6 38        ADD        ESI,0x2038
                 20 00 00
        080d3a89 39 c3           CMP        EBX,EAX
        080d3a8b 7c c3           JL         LAB_080d3a50
                             LAB_080d3a8d                                    XREF[1]:     080d3a4a(j)
        080d3a8d 83 ec 0c        SUB        ESP,0xc
        080d3a90 8b 9a 40        MOV        EBX,dword ptr [EDX + 0x6d40]
                 6d 00 00
        080d3a96 53              PUSH       EBX
        080d3a97 e8 04 be        CALL       free                                             void free(void * __ptr)
                 10 00
        080d3a9c 83 c4 10        ADD        ESP,0x10
                             LAB_080d3a9f                                    XREF[1]:     080d3a35(j)
        080d3a9f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3aa5 be 00 8b        MOV        ESI,0x18b00
                 01 00
        080d3aaa bb 09 00        MOV        EBX,0x9
                 00 00
        080d3aaf 90              NOP
                             LAB_080d3ab0                                    XREF[1]:     080d3ad2(j)
        080d3ab0 8b 44 16 0c     MOV        EAX,dword ptr [ESI + EDX*0x1 + 0xc]
        080d3ab4 3b 82 e8        CMP        EAX,dword ptr [EDX + 0x104e8]
                 04 01 00
        080d3aba 74 12           JZ         LAB_080d3ace
        080d3abc 83 ec 0c        SUB        ESP,0xc
        080d3abf 50              PUSH       EAX
        080d3ac0 e8 ab ee        CALL       FontFree                                         undefined FontFree()
                 f7 ff
        080d3ac5 83 c4 10        ADD        ESP,0x10
        080d3ac8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3ace                                    XREF[1]:     080d3aba(j)
        080d3ace 83 c6 04        ADD        ESI,0x4
        080d3ad1 4b              DEC        EBX
        080d3ad2 79 dc           JNS        LAB_080d3ab0
        080d3ad4 83 ec 0c        SUB        ESP,0xc
        080d3ad7 8b 8a 08        MOV        ECX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3add 51              PUSH       ECX
        080d3ade e8 5d 50        CALL       AnimRCFree                                       undefined AnimRCFree()
                 f7 ff
        080d3ae3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3ae8 5a              POP        EDX
        080d3ae9 8b 80 04        MOV        EAX,dword ptr [EAX + 0x17b04]
                 7b 01 00
        080d3aef 50              PUSH       EAX
        080d3af0 e8 0b 31        CALL       SndArrayFree                                     undefined SndArrayFree()
                 f8 ff
        080d3af5 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3afa c6 80 08        MOV        byte ptr [EAX + 0x17b08],0x0
                 7b 01 00 00
        080d3b01 c7 80 04        MOV        dword ptr [EAX + 0x17b04],0x0
                 7b 01 00
                 00 00 00 00
        080d3b0b a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3b10 5e              POP        ESI
        080d3b11 8b 98 00        MOV        EBX,dword ptr [EAX + 0x16b00]
                 6b 01 00
        080d3b17 53              PUSH       EBX
        080d3b18 e8 a3 50        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 f8 ff
        080d3b1d a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3b22 83 c4 14        ADD        ESP,0x14
        080d3b25 c7 80 00        MOV        dword ptr [EAX + 0x16b00],0x0
                 6b 01 00
                 00 00 00 00
        080d3b2f c6 80 04        MOV        byte ptr [EAX + 0x16b04],0x0
                 6b 01 00 00
        080d3b36 5b              POP        EBX
        080d3b37 5e              POP        ESI
        080d3b38 c3              RET
