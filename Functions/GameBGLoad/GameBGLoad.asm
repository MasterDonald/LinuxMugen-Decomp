        080951b9 8b 82 58        MOV        EAX,dword ptr [EDX + 0x1cc58]
                 cc 01 00
        080951bf f7 d8           NEG        EAX
        080951c2 8b 82 54        MOV        EAX,dword ptr [EDX + 0x1cc54]
                 cc 01 00
        080951c8 f7 d8           NEG        EAX
        080951cb db 82 48        FILD       dword ptr [EDX + 0x1cc48]
                 cc 01 00
        080951d8 db 82 44        FILD       dword ptr [EDX + 0x1cc44]
                 cc 01 00
        080951e1 8b 92 50        MOV        EDX,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        080951e8 e8 23 76        CALL       BGArrayMoveOffset                                undefined BGArrayMoveOffset()
                 fb ff
        080951f7 8b 80 50        MOV        EAX,dword ptr [EAX + 0x1bb50]
                 bb 01 00
        080951fe e8 5d 78        CALL       BGArrayDrawLayer                                 undefined BGArrayDrawLayer()
                 fb ff
        0809520c 8b 82 04        MOV        EAX,dword ptr [EDX + 0x10504]
                 05 01 00
        08095212 89 82 00        MOV        dword ptr [EDX + 0x10500],EAX
                 05 01 00
        08095218 8b 82 08        MOV        EAX,dword ptr [EDX + 0x10508]
                 05 01 00
        0809521e 83 f8 ff        CMP        EAX,-0x1
        08095221 74 61           JZ         LAB_08095284
        08095226 8b 8a 50        MOV        ECX,dword ptr [EDX + 0x1bb50]
                 bb 01 00
        0809522d e8 5e 7d        CALL       BGAccessID                                       undefined BGAccessID()
                 fb ff
        08095235 85 c0           TEST       EAX,EAX
        08095237 74 4b           JZ         LAB_08095284
        0809523f db 40 10        FILD       dword ptr [EAX + 0x10]
        08095242 db 82 48        FILD       dword ptr [EDX + 0x1cc48]
                 cc 01 00
        08095248 db 82 00        FILD       dword ptr [EDX + 0x10500]
                 05 01 00
        08095250 d8 48 20        FMUL       float ptr [EAX + 0x20]
        08095253 de ea           FSUBP      ST2,ST0
        08095255 de c1           FADDP
        08095257 dc 05 50        FADD       double ptr [DAT_08278750]                        = E9h
                 87 27 08
        08095272 db 5c 24 04     FISTP      dword ptr [ESP + local_8]
        0809527e 89 82 00        MOV        dword ptr [EDX + 0x10500],EAX
                 05 01 00
        08095289 8b 88 58        MOV        ECX,dword ptr [EAX + 0x1cc58]
                 cc 01 00
        08095291 7e 28           JLE        LAB_080952bb
        0809529d 48              DEC        EAX
        080952a0 29 ca           SUB        EDX,ECX
        080952a9 4a              DEC        EDX
        080952ae e8 0d a8        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
                             LAB_080952bb                                    XREF[1]:     08095291(j)
        080952bb 8b 80 58        MOV        EAX,dword ptr [EAX + 0x1cc58]
                 cc 01 00
        080952c1 85 c0           TEST       EAX,EAX
        080952c3 79 1c           JNS        LAB_080952e1
        080952c8 83 f0 ff        XOR        EAX,0xffffffff
        080952d3 48              DEC        EAX
        080952d9 e8 e2 a7        CALL       W_BoxFill                                        undefined W_BoxFill()
                 fe ff
        080952e4 c3              RET
                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameBGLoad()
             undefined         <UNASSIGNED>   <RETURN>
             undefined1        Stack[-0x100   local_100c                              XREF[3]:     0809e670(*),
                                                                                                   0809e6b3(*),
                                                                                                   0809e6d7(*)
                             GameBGLoad                                      XREF[1]:     GameLoadStage:0809e457(c)
        0809e630 53              PUSH       EBX
        0809e631 81 ec 14        SUB        ESP,0x1014
                 10 00 00
        0809e637 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e63c 05 14 20        ADD        EAX,0x2014
                 00 00
        0809e641 50              PUSH       EAX
        0809e642 e8 79 d1        CALL       TPReadFile                                       undefined TPReadFile()
                 fd ff
        0809e647 89 c3           MOV        EBX,EAX
        0809e649 83 c4 10        ADD        ESP,0x10
        0809e64c 85 db           TEST       EBX,EBX
        0809e64e 75 20           JNZ        LAB_0809e670
        0809e650 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e655 51              PUSH       ECX
        0809e656 8d 90 14        LEA        EDX,[EAX + 0x2014]
                 20 00 00
        0809e65c 05 48 07        ADD        EAX,0x20748
                 02 00
        0809e661 52              PUSH       EDX
        0809e662 68 23 95        PUSH       s_Error_opening_%s_08279523                      = "\nError opening %s"
                 27 08
        0809e667 50              PUSH       EAX
        0809e668 e8 b3 67        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e66d 83 c4 10        ADD        ESP,0x10
                             LAB_0809e670                                    XREF[1]:     0809e64e(j)
        0809e670 c6 04 24 00     MOV        byte ptr [ESP]=>local_100c,0x0
        0809e674 52              PUSH       EDX
        0809e675 52              PUSH       EDX
        0809e676 68 35 95        PUSH       s_BGdef_08279535                                 = "BGdef"
                 27 08
        0809e67b 53              PUSH       EBX
        0809e67c e8 ff d6        CALL       TPGroupSeek                                      undefined TPGroupSeek()
                 fd ff
        0809e681 83 c4 10        ADD        ESP,0x10
        0809e684 40              INC        EAX
        0809e685 74 44           JZ         LAB_0809e6cb
        0809e687 50              PUSH       EAX
        0809e688 50              PUSH       EAX
        0809e689 68 9b 85        PUSH       DAT_0827859b                                     = 73h    s
                 27 08
        0809e68e 53              PUSH       EBX
        0809e68f e8 0c da        CALL       TPGetValue                                       undefined TPGetValue()
                 fd ff
        0809e694 83 c4 10        ADD        ESP,0x10
        0809e697 85 c0           TEST       EAX,EAX
        0809e699 74 30           JZ         LAB_0809e6cb
        0809e69b 51              PUSH       ECX
        0809e69c 6a 07           PUSH       0x7
        0809e69e 68 3b 95        PUSH       s_stages/_0827953b                               = "stages/"
                 27 08
        0809e6a3 50              PUSH       EAX
        0809e6a4 e8 a7 29        CALL       strmatchlen                                      undefined strmatchlen()
                 fb ff
        0809e6a9 83 c4 10        ADD        ESP,0x10
        0809e6ac 85 c0           TEST       EAX,EAX
        0809e6ae 75 1b           JNZ        LAB_0809e6cb
        0809e6b0 52              PUSH       EDX
        0809e6b1 6a 00           PUSH       0x0
        0809e6b3 8d 44 24 08     LEA        EAX=>local_100c,[ESP + 0x8]
        0809e6b7 50              PUSH       EAX
        0809e6b8 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e6bd 05 14 20        ADD        EAX,0x2014
                 00 00
        0809e6c2 50              PUSH       EAX
        0809e6c3 e8 f8 29        CALL       splitdirfile                                     undefined splitdirfile()
                 fb ff
        0809e6c8 83 c4 10        ADD        ESP,0x10
                             LAB_0809e6cb                                    XREF[3]:     0809e685(j), 0809e699(j),
                                                                                          0809e6ae(j)
        0809e6cb 83 ec 0c        SUB        ESP,0xc
        0809e6ce 6a 00           PUSH       0x0
        0809e6d0 6a 00           PUSH       0x0
        0809e6d2 68 a1 d3        PUSH       s_BG_0827d38b+22                                 = "BG"
                 27 08
        0809e6d7 8d 44 24 18     LEA        EAX=>local_100c,[ESP + 0x18]
        0809e6db 50              PUSH       EAX
        0809e6dc 53              PUSH       EBX
        0809e6dd e8 ee ca        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 fa ff
        0809e6e2 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e6e8 83 c4 20        ADD        ESP,0x20
        0809e6eb 85 c0           TEST       EAX,EAX
        0809e6ed 89 82 50        MOV        dword ptr [EDX + 0x1bb50],EAX
                 bb 01 00
        0809e6f3 75 20           JNZ        LAB_0809e715
        0809e6f5 50              PUSH       EAX
        0809e6f6 8d 82 14        LEA        EAX,[EDX + 0x2014]
                 20 00 00
        0809e6fc 50              PUSH       EAX
        0809e6fd 8d 82 48        LEA        EAX,[EDX + 0x20748]
                 07 02 00
        0809e703 68 43 95        PUSH       s_BG_error_reading_%s_08279543                   = "\nBG error reading %s"
                 27 08
        0809e708 50              PUSH       EAX
        0809e709 e8 12 67        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809e70e 83 c4 10        ADD        ESP,0x10
        0809e711 31 c0           XOR        EAX,EAX
        0809e713 eb 11           JMP        LAB_0809e726
                             LAB_0809e715                                    XREF[1]:     0809e6f3(j)
        0809e715 83 ec 0c        SUB        ESP,0xc
        0809e718 53              PUSH       EBX
        0809e719 e8 e2 ca        CALL       TPFree                                           undefined TPFree()
                 fd ff
        0809e71e 83 c4 10        ADD        ESP,0x10
        0809e721 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_0809e726                                    XREF[1]:     0809e713(j)
        0809e726 81 c4 08        ADD        ESP,0x1008
                 10 00 00
        0809e72c 5b              POP        EBX
        0809e72d c3              RET
