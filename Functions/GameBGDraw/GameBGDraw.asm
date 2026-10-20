                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameBGDraw()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x4]:4  local_4                                 XREF[5,1]:   0809525d(W),
                                                                                                   08095261(R),
                                                                                                   0809526a(R),
                                                                                                   0809526e(W),
                                                                                                   08095276(R),
                                                                                                   08095265(W)
             undefined4        Stack[-0x8]:4  local_8                                 XREF[2]:     08095272(W),
                                                                                                   0809527a(R)
             undefined4        Stack[-0x24]:4 local_24                                XREF[1]:     080951d4(W)
             undefined4        Stack[-0x28]:4 local_28                                XREF[1]:     080951de(*)
                             GameBGDraw                                      XREF[2]:     GameLoop:0809046b(c),
                                                                                          ContinueScreenLoop:08097d91(c)
        080951b0 83 ec 18        SUB        ESP,0x18
        080951b3 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080951b9 8b 82 58        MOV        EAX,dword ptr [EDX + 0x1cc58]
                 cc 01 00
        080951bf f7 d8           NEG        EAX
        080951c1 50              PUSH       EAX
        080951c2 8b 82 54        MOV        EAX,dword ptr [EDX + 0x1cc54]
                 cc 01 00
        080951c8 f7 d8           NEG        EAX
        080951ca 50              PUSH       EAX
        080951cb db 82 48        FILD       dword ptr [EDX + 0x1cc48]
                 cc 01 00
        080951d1 83 ec 08        SUB        ESP,0x8
        080951d4 d9 5c 24 04     FSTP       float ptr [ESP + local_24]
        080951d8 db 82 44        FILD       dword ptr [EDX + 0x1cc44]
                 cc 01 00
        080951de d9 1c 24        FSTP       float ptr [ESP]=>local_28
        080951e1 8b 92 50        MOV        EDX,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        080951e7 52              PUSH       EDX
        080951e8 e8 23 76        CALL       BGArrayMoveOffset                                undefined BGArrayMoveOffset()
                 fb ff
        080951ed 83 c4 18        ADD        ESP,0x18
        080951f0 a1 74 7a        MOV        EAX,[g]
                 28 08
        080951f5 6a 00           PUSH       0x0
        080951f7 8b 80 50        MOV        EAX,dword ptr [EAX + 0x1bb50]
                 bb 01 00
        080951fd 50              PUSH       EAX
        080951fe e8 5d 78        CALL       BGArrayDrawLayer                                 undefined BGArrayDrawLayer()
                 fb ff
        08095203 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        08095209 83 c4 10        ADD        ESP,0x10
        0809520c 8b 82 04        MOV        EAX,dword ptr [EDX + 0x10504]
                 05 01 00
        08095212 89 82 00        MOV        dword ptr [EDX + 0x10500],EAX
                 05 01 00
        08095218 8b 82 08        MOV        EAX,dword ptr [EDX + 0x10508]
                 05 01 00
        0809521e 83 f8 ff        CMP        EAX,-0x1
        08095221 74 61           JZ         LAB_08095284
        08095223 51              PUSH       ECX
        08095224 51              PUSH       ECX
        08095225 50              PUSH       EAX
        08095226 8b 8a 50        MOV        ECX,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        0809522c 51              PUSH       ECX
        0809522d e8 5e 7d        CALL       BGAccessID                                       undefined BGAccessID()
                 fb ff
        08095232 83 c4 10        ADD        ESP,0x10
        08095235 85 c0           TEST       EAX,EAX
        08095237 74 4b           JZ         LAB_08095284
        08095239 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809523f db 40 10        FILD       dword ptr [EAX + 0x10]
        08095242 db 82 48        FILD       dword ptr [EDX + 0x1cc48]
                 cc 01 00
        08095248 db 82 00        FILD       dword ptr [EDX + 0x10500]
                 05 01 00
        0809524e d9 c9           FXCH
        08095250 d8 48 20        FMUL       float ptr [EAX + 0x20]
        08095253 de ea           FSUBP      ST2,ST0
        08095255 de c1           FADDP
        08095257 dc 05 50        FADD       double ptr [DAT_08278750]                        = E9h
                 87 27 08
        0809525d d9 7c 24 08     FNSTCW     word ptr [ESP + local_4]
        08095261 8b 4c 24 08     MOV        ECX,dword ptr [ESP + local_4]
        08095265 c6 44 24        MOV        byte ptr [ESP + local_4+0x1],0xc
                 09 0c
        0809526a d9 6c 24 08     FLDCW      word ptr [ESP + local_4]
        0809526e 89 4c 24 08     MOV        dword ptr [ESP + local_4],ECX
        08095272 db 5c 24 04     FISTP      dword ptr [ESP + local_8]
        08095276 d9 6c 24 08     FLDCW      word ptr [ESP + local_4]
        0809527a 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_8]
        0809527e 89 82 00        MOV        dword ptr [EDX + 0x10500],EAX
                 05 01 00
                             LAB_08095284                                    XREF[2]:     08095221(j), 08095237(j)
        08095284 a1 74 7a        MOV        EAX,[g]
                 28 08
        08095289 8b 88 58        MOV        ECX,dword ptr [EAX + 0x1cc58]
                 cc 01 00
        0809528f 85 c9           TEST       ECX,ECX
        08095291 7e 28           JLE        LAB_080952bb
        08095293 83 ec 0c        SUB        ESP,0xc
        08095296 a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        0809529b 89 c2           MOV        EDX,EAX
        0809529d 48              DEC        EAX
        0809529e 6a 00           PUSH       0x0
        080952a0 29 ca           SUB        EDX,ECX
        080952a2 52              PUSH       EDX
        080952a3 8b 15 b4        MOV        EDX,dword ptr [V_Width]                          = ??
                 08 2c 08
        080952a9 4a              DEC        EDX
        080952aa 52              PUSH       EDX
        080952ab 50              PUSH       EAX
        080952ac 6a 00           PUSH       0x0
        080952ae e8 0d a8        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
        080952b3 83 c4 20        ADD        ESP,0x20
        080952b6 a1 74 7a        MOV        EAX,[g]
                 28 08
                             LAB_080952bb                                    XREF[1]:     08095291(j)
        080952bb 8b 80 58        MOV        EAX,dword ptr [EAX + 0x1cc58]
                 cc 01 00
        080952c1 85 c0           TEST       EAX,EAX
        080952c3 79 1c           JNS        LAB_080952e1
        080952c5 83 ec 0c        SUB        ESP,0xc
        080952c8 83 f0 ff        XOR        EAX,0xffffffff
        080952cb 6a 00           PUSH       0x0
        080952cd 50              PUSH       EAX
        080952ce a1 b4 08        MOV        EAX,[V_Width]                                    = ??
                 2c 08
        080952d3 48              DEC        EAX
        080952d4 50              PUSH       EAX
        080952d5 6a 00           PUSH       0x0
        080952d7 6a 00           PUSH       0x0
        080952d9 e8 e2 a7        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
        080952de 83 c4 20        ADD        ESP,0x20
                             LAB_080952e1                                    XREF[1]:     080952c3(j)
        080952e1 83 c4 0c        ADD        ESP,0xc
        080952e4 c3              RET
