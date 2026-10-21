                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GamePowerBarDraw()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[3]:     08096ac5(W),
                                                                                                   08096b73(R),
                                                                                                   08096baa(R)
             undefined4        Stack[-0x18]:4 local_18                                XREF[2]:     08096ace(W),
                                                                                                   08096bee(R)
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[2]:     08096ad7(W),
                                                                                                   08096bde(R)
             undefined4        Stack[-0x20]:4 local_20                                XREF[2]:     08096ae0(W),
                                                                                                   08096be6(R)
             undefined4        Stack[-0x24]:4 local_24                                XREF[2]:     08096ae9(W),
                                                                                                   08096bd6(R)
             undefined4        Stack[-0x28]:4 local_28                                XREF[3]:     08096aef(W),
                                                                                                   08096b22(W),
                                                                                                   08096b47(R)
                             GamePowerBarDraw                                XREF[1]:     GameBarsDraw:080956eb(c)
        08096ab0 55              PUSH       EBP
        08096ab1 57              PUSH       EDI
        08096ab2 56              PUSH       ESI
        08096ab3 53              PUSH       EBX
        08096ab4 83 ec 1c        SUB        ESP,0x1c
        08096ab7 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08096abd 8b 44 24 44     MOV        EAX,dword ptr [ESP + Stack[0x18]]
        08096ac1 8b 5c 24 38     MOV        EBX,dword ptr [ESP + Stack[0xc]]
        08096ac5 89 44 24 18     MOV        dword ptr [ESP + local_14],EAX
        08096ac9 a1 94 08        MOV        EAX,[W_x1]                                       = ??
                 2c 08
        08096ace 89 44 24 14     MOV        dword ptr [ESP + local_18],EAX
        08096ad2 a1 b0 08        MOV        EAX,[W_x2]                                       = ??
                 2c 08
        08096ad7 89 44 24 10     MOV        dword ptr [ESP + local_1c],EAX
        08096adb a1 b8 08        MOV        EAX,[W_y1]                                       = ??
                 2c 08
        08096ae0 89 44 24 0c     MOV        dword ptr [ESP + local_20],EAX
        08096ae4 a1 88 08        MOV        EAX,[W_y2]                                       = ??
                 2c 08
        08096ae9 89 44 24 08     MOV        dword ptr [ESP + local_24],EAX
        08096aed 31 c0           XOR        EAX,EAX
        08096aef c7 44 24        MOV        dword ptr [ESP + local_28],0xffffffff
                 04 ff ff
                 ff ff
        08096af7 83 ba 64        CMP        dword ptr [EDX + 0x1d564],0x4
                 d5 01 00 04
        08096afe 0f 94 c0        SETZ       AL
        08096b01 40              INC        EAX
        08096b02 8b 4c 24 40     MOV        ECX,dword ptr [ESP + Stack[0x14]]
        08096b06 0f af d8        IMUL       EBX,EAX
        08096b09 0f af c8        IMUL       ECX,EAX
        08096b0c 8b 7c 24 30     MOV        EDI,dword ptr [ESP + Stack[0x4]]
        08096b10 8b 74 24 34     MOV        ESI,dword ptr [ESP + Stack[0x8]]
        08096b14 8d aa 3c        LEA        EBP,[EDX + 0x11b3c]
                 1b 01 00
        08096b1a 39 cb           CMP        EBX,ECX
        08096b1c 7e 0e           JLE        LAB_08096b2c
        08096b1e 89 d8           MOV        EAX,EBX
        08096b20 89 cb           MOV        EBX,ECX
        08096b22 c7 44 24        MOV        dword ptr [ESP + local_28],0x1
                 04 01 00
                 00 00
        08096b2a 89 c1           MOV        ECX,EAX
                             LAB_08096b2c                                    XREF[1]:     08096b1c(j)
        08096b2c 89 ca           MOV        EDX,ECX
        08096b2e 8b 86 80        MOV        EAX,dword ptr [ESI + 0x180]
                 01 00 00
        08096b34 29 da           SUB        EDX,EBX
        08096b36 8b b6 74        MOV        ESI,dword ptr [ESI + 0x174]
                 01 00 00
        08096b3c 42              INC        EDX
        08096b3d 0f af d0        IMUL       EDX,EAX
        08096b40 89 d0           MOV        EAX,EDX
        08096b42 c1 fa 1f        SAR        EDX,0x1f
        08096b45 f7 3e           IDIV       dword ptr [ESI]
        08096b47 83 7c 24        CMP        dword ptr [ESP + local_28],0x1
                 04 01
        08096b4c 89 c6           MOV        ESI,EAX
        08096b4e 75 42           JNZ        LAB_08096b92
        08096b50 85 f6           TEST       ESI,ESI
        08096b52 0f 8e 7e        JLE        LAB_08096bd6
                 00 00 00
        08096b58 a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        08096b5d 48              DEC        EAX
        08096b5e 50              PUSH       EAX
        08096b5f 51              PUSH       ECX
        08096b60 29 f1           SUB        ECX,ESI
        08096b62 6a 00           PUSH       0x0
        08096b64 8d 41 01        LEA        EAX,[ECX + 0x1]
        08096b67 50              PUSH       EAX
        08096b68 e8 03 6f        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096b6d 8d 04 ff        LEA        EAX,[EDI + EDI*0x8]
        08096b70 c1 e0 02        SHL        EAX,0x2
        08096b73 8b 5c 24 28     MOV        EBX,dword ptr [ESP + local_14]
        08096b77 29 f8           SUB        EAX,EDI
        08096b79 53              PUSH       EBX
        08096b7a c1 e0 04        SHL        EAX,0x4
        08096b7d 8d 90 d0        LEA        EDX,[EAX + 0xfffffdd0]
                 fd ff ff
        08096b83 8d 44 28 94     LEA        EAX,[EAX + EBP*0x1 + -0x6c]
        08096b87 8b 4c 2a 04     MOV        ECX,dword ptr [EDX + EBP*0x1 + 0x4]
        08096b8b 51              PUSH       ECX
        08096b8c 8b 14 2a        MOV        EDX,dword ptr [EDX + EBP*0x1]
        08096b8f 52              PUSH       EDX
        08096b90 eb 3b           JMP        LAB_08096bcd
                             LAB_08096b92                                    XREF[1]:     08096b4e(j)
        08096b92 85 f6           TEST       ESI,ESI
        08096b94 7e 40           JLE        LAB_08096bd6
        08096b96 a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        08096b9b 48              DEC        EAX
        08096b9c 50              PUSH       EAX
        08096b9d 8d 44 1e ff     LEA        EAX,[ESI + EBX*0x1 + -0x1]
        08096ba1 53              PUSH       EBX
        08096ba2 6a 00           PUSH       0x0
        08096ba4 50              PUSH       EAX
        08096ba5 e8 c6 6e        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096baa 8b 44 24 28     MOV        EAX,dword ptr [ESP + local_14]
        08096bae 50              PUSH       EAX
        08096baf 8d 04 ff        LEA        EAX,[EDI + EDI*0x8]
        08096bb2 c1 e0 02        SHL        EAX,0x2
        08096bb5 29 f8           SUB        EAX,EDI
        08096bb7 c1 e0 04        SHL        EAX,0x4
        08096bba 8d 90 d0        LEA        EDX,[EAX + 0xfffffdd0]
                 fd ff ff
        08096bc0 8d 44 28 94     LEA        EAX,[EAX + EBP*0x1 + -0x6c]
        08096bc4 8b 74 2a 04     MOV        ESI,dword ptr [EDX + EBP*0x1 + 0x4]
        08096bc8 56              PUSH       ESI
        08096bc9 8b 1c 2a        MOV        EBX,dword ptr [EDX + EBP*0x1]
        08096bcc 53              PUSH       EBX
                             LAB_08096bcd                                    XREF[1]:     08096b90(j)
        08096bcd 50              PUSH       EAX
        08096bce e8 4d 91        CALL       SysExplodCreateDraw_Fight                        undefined SysExplodCreateDraw_Fi
                 ff ff
        08096bd3 83 c4 20        ADD        ESP,0x20
                             LAB_08096bd6                                    XREF[2]:     08096b52(j), 08096b94(j)
        08096bd6 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_24]
        08096bda 89 44 24 3c     MOV        dword ptr [ESP + Stack[0x10]],EAX
        08096bde 8b 44 24 10     MOV        EAX,dword ptr [ESP + local_1c]
        08096be2 89 44 24 38     MOV        dword ptr [ESP + Stack[0xc]],EAX
        08096be6 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_20]
        08096bea 89 44 24 34     MOV        dword ptr [ESP + Stack[0x8]],EAX
        08096bee 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_18]
        08096bf2 89 44 24 30     MOV        dword ptr [ESP + Stack[0x4]],EAX
        08096bf6 83 c4 1c        ADD        ESP,0x1c
        08096bf9 5b              POP        EBX
        08096bfa 5e              POP        ESI
        08096bfb 5f              POP        EDI
        08096bfc 5d              POP        EBP
        08096bfd e9 6e 6e        JMP        W_Define                                         undefined W_Define()
                 fe ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
