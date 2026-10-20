                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLifeBarDraw()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x11c   local_11c                               XREF[2]:     08096620(*),
                                                                                                   080967df(*)
             undefined4        Stack[-0x120   local_120                               XREF[9]:     080964de(W),
                                                                                                   080964e6(R),
                                                                                                   080964f4(W),
                                                                                                   080964f8(R),
                                                                                                   080964fe(W),
                                                                                                   0809654b(R),
                                                                                                   080966be(R),
                                                                                                   0809670a(R),
                                                                                                   08096878(R)
             undefined4        Stack[-0x124   local_124                               XREF[2]:     08096411(W),
                                                                                                   080968a5(R)
             undefined4        Stack[-0x128   local_128                               XREF[2]:     0809641a(W),
                                                                                                   0809689b(R)
             undefined4        Stack[-0x12c   local_12c                               XREF[7]:     08096423(W),
                                                                                                   08096508(R),
                                                                                                   08096546(R),
                                                                                                   08096596(R),
                                                                                                   08096705(R),
                                                                                                   08096755(R),
                                                                                                   080968a0(R)
             undefined4        Stack[-0x130   local_130                               XREF[7]:     0809642c(W),
                                                                                                   08096502(R),
                                                                                                   08096536(R),
                                                                                                   0809658e(R),
                                                                                                   080966f5(R),
                                                                                                   0809674d(R),
                                                                                                   08096896(R)
             undefined4        Stack[-0x134   local_134                               XREF[3]:     08096435(W),
                                                                                                   08096477(W),
                                                                                                   08096516(R)
             undefined4        Stack[-0x138   local_138                               XREF[3]:     0809645c(W),
                                                                                                   08096642(R),
                                                                                                   080967ff(R)
             undefined4        Stack[-0x13c   local_13c                               XREF[1]:     08096494(W)
             undefined4        Stack[-0x140   local_140                               XREF[4]:     080964b7(W),
                                                                                                   080964ee(R),
                                                                                                   0809653d(R),
                                                                                                   080966fc(R)
             undefined4        Stack[-0x144   local_144                               XREF[5]:     080964d9(W),
                                                                                                   0809659b(R),
                                                                                                   0809664a(R),
                                                                                                   0809675a(R),
                                                                                                   08096807(R)
             undefined4        Stack[-0x150   local_150                               XREF[3]:     080964a8(W),
                                                                                                   080964b1(R),
                                                                                                   080964d5(R)
                             GameLifeBarDraw                                 XREF[1]:     GameBarsDraw:080955e0(c)
        08096400 55              PUSH       EBP
        08096401 31 d2           XOR        EDX,EDX
        08096403 57              PUSH       EDI
        08096404 56              PUSH       ESI
        08096405 53              PUSH       EBX
        08096406 81 ec 4c        SUB        ESP,0x14c
                 01 00 00
        0809640c a1 94 08        MOV        EAX,[W_x1]                                       = ??
                 2c 08
        08096411 89 44 24 38     MOV        dword ptr [ESP + local_124],EAX
        08096415 a1 b0 08        MOV        EAX,[W_x2]                                       = ??
                 2c 08
        0809641a 89 44 24 34     MOV        dword ptr [ESP + local_128],EAX
        0809641e a1 b8 08        MOV        EAX,[W_y1]                                       = ??
                 2c 08
        08096423 89 44 24 30     MOV        dword ptr [ESP + local_12c],EAX
        08096427 a1 88 08        MOV        EAX,[W_y2]                                       = ??
                 2c 08
        0809642c 89 44 24 2c     MOV        dword ptr [ESP + local_130],EAX
        08096430 a1 74 7a        MOV        EAX,[g]
                 28 08
        08096435 c7 44 24        MOV        dword ptr [ESP + local_134],0xffffffff
                 28 ff ff
                 ff ff
        0809643d 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0xc]]
                 68 01 00 00
        08096444 83 b8 64        CMP        dword ptr [EAX + 0x1d564],0x4
                 d5 01 00 04
        0809644b 0f 94 c2        SETZ       DL
        0809644e 42              INC        EDX
        0809644f 8b 59 04        MOV        EBX,dword ptr [ECX + 0x4]
        08096452 0f af da        IMUL       EBX,EDX
        08096455 8b 01           MOV        EAX,dword ptr [ECX]
        08096457 8b 79 08        MOV        EDI,dword ptr [ECX + 0x8]
        0809645a 89 c5           MOV        EBP,EAX
        0809645c 89 5c 24 24     MOV        dword ptr [ESP + local_138],EBX
        08096460 01 fd           ADD        EBP,EDI
        08096462 89 c7           MOV        EDI,EAX
        08096464 8b 71 0c        MOV        ESI,dword ptr [ECX + 0xc]
        08096467 01 f7           ADD        EDI,ESI
        08096469 0f af ea        IMUL       EBP,EDX
        0809646c 0f af fa        IMUL       EDI,EDX
        0809646f 39 fd           CMP        EBP,EDI
        08096471 7e 0e           JLE        LAB_08096481
        08096473 89 e8           MOV        EAX,EBP
        08096475 89 fd           MOV        EBP,EDI
        08096477 c7 44 24        MOV        dword ptr [ESP + local_134],0x1
                 28 01 00
                 00 00
        0809647f 89 c7           MOV        EDI,EAX
                             LAB_08096481                                    XREF[1]:     08096471(j)
        08096481 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        08096488 89 fb           MOV        EBX,EDI
        0809648a 29 eb           SUB        EBX,EBP
        0809648c 8b 80 6c        MOV        EAX,dword ptr [EAX + 0x16c]
                 01 00 00
        08096492 89 c2           MOV        EDX,EAX
        08096494 89 44 24 20     MOV        dword ptr [ESP + local_13c],EAX
        08096498 0f af d3        IMUL       EDX,EBX
        0809649b 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        080964a2 8b 80 64        MOV        EAX,dword ptr [EAX + 0x164]
                 01 00 00
        080964a8 89 44 24 0c     MOV        dword ptr [ESP + local_150],EAX
        080964ac 89 d0           MOV        EAX,EDX
        080964ae c1 fa 1f        SAR        EDX,0x1f
        080964b1 f7 7c 24 0c     IDIV       dword ptr [ESP + local_150]
        080964b5 89 c6           MOV        ESI,EAX
        080964b7 89 44 24 1c     MOV        dword ptr [ESP + local_140],EAX
        080964bb 46              INC        ESI
        080964bc 39 de           CMP        ESI,EBX
        080964be 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        080964c5 8b 8a 68        MOV        ECX,dword ptr [EDX + 0x168]
                 01 00 00
        080964cb 89 ca           MOV        EDX,ECX
        080964cd 0f af d3        IMUL       EDX,EBX
        080964d0 89 d0           MOV        EAX,EDX
        080964d2 c1 fa 1f        SAR        EDX,0x1f
        080964d5 f7 7c 24 0c     IDIV       dword ptr [ESP + local_150]
        080964d9 89 44 24 18     MOV        dword ptr [ESP + local_144],EAX
        080964dd 40              INC        EAX
        080964de 89 44 24 3c     MOV        dword ptr [ESP + local_120],EAX
        080964e2 31 c0           XOR        EAX,EAX
        080964e4 85 c9           TEST       ECX,ECX
        080964e6 8b 5c 24 3c     MOV        EBX,dword ptr [ESP + local_120]
        080964ea 0f 94 c0        SETZ       AL
        080964ed 48              DEC        EAX
        080964ee 8b 54 24 1c     MOV        EDX,dword ptr [ESP + local_140]
        080964f2 21 c3           AND        EBX,EAX
        080964f4 89 5c 24 3c     MOV        dword ptr [ESP + local_120],EBX
        080964f8 39 54 24 3c     CMP        dword ptr [ESP + local_120],EDX
        080964fc 7e 04           JLE        LAB_08096502
        080964fe 89 54 24 3c     MOV        dword ptr [ESP + local_120],EDX
                             LAB_08096502                                    XREF[1]:     080964fc(j)
        08096502 8b 4c 24 2c     MOV        ECX,dword ptr [ESP + local_130]
        08096506 51              PUSH       ECX
        08096507 57              PUSH       EDI
        08096508 8b 54 24 38     MOV        EDX,dword ptr [ESP + local_12c]
        0809650c 52              PUSH       EDX
        0809650d 55              PUSH       EBP
        0809650e e8 5d 75        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096513 83 c4 10        ADD        ESP,0x10
        08096516 83 7c 24        CMP        dword ptr [ESP + local_134],0x1
                 28 01
        0809651b 0f 85 bf        JNZ        LAB_080966e0
                 01 00 00
        08096521 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        08096528 8b 81 68        MOV        EAX,dword ptr [ECX + 0x168]
                 01 00 00
        0809652e 39 81 6c        CMP        dword ptr [ECX + 0x16c],EAX
                 01 00 00
        08096534 7e 54           JLE        LAB_0809658a
        08096536 8b 44 24 2c     MOV        EAX,dword ptr [ESP + local_130]
        0809653a 50              PUSH       EAX
        0809653b 89 f8           MOV        EAX,EDI
        0809653d 8b 74 24 20     MOV        ESI,dword ptr [ESP + local_140]
        08096541 29 f0           SUB        EAX,ESI
        08096543 50              PUSH       EAX
        08096544 89 f8           MOV        EAX,EDI
        08096546 8b 5c 24 38     MOV        EBX,dword ptr [ESP + local_12c]
        0809654a 53              PUSH       EBX
        0809654b 8b 4c 24 48     MOV        ECX,dword ptr [ESP + local_120]
        0809654f 29 c8           SUB        EAX,ECX
        08096551 50              PUSH       EAX
        08096552 e8 19 75        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096557 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x10]]
                 7c 01 00 00
        0809655e 52              PUSH       EDX
        0809655f 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0xc]]
                 7c 01 00 00
        08096566 8b 43 04        MOV        EAX,dword ptr [EBX + 0x4]
        08096569 50              PUSH       EAX
        0809656a 89 d8           MOV        EAX,EBX
        0809656c 8b 33           MOV        ESI,dword ptr [EBX]
        0809656e 05 58 01        ADD        EAX,0x158
                 00 00
        08096573 56              PUSH       ESI
        08096574 50              PUSH       EAX
        08096575 e8 a6 97        CALL       SysExplodCreateDraw_Fight                        undefined SysExplodCreateDraw_Fi
                 ff ff
        0809657a 83 c4 20        ADD        ESP,0x20
        0809657d 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        08096584 8b 82 68        MOV        EAX,dword ptr [EDX + 0x168]
                 01 00 00
                             LAB_0809658a                                    XREF[1]:     08096534(j)
        0809658a 85 c0           TEST       EAX,EAX
        0809658c 7e 3f           JLE        LAB_080965cd
        0809658e 8b 5c 24 2c     MOV        EBX,dword ptr [ESP + local_130]
        08096592 89 f8           MOV        EAX,EDI
        08096594 53              PUSH       EBX
        08096595 57              PUSH       EDI
        08096596 8b 4c 24 38     MOV        ECX,dword ptr [ESP + local_12c]
        0809659a 51              PUSH       ECX
        0809659b 8b 54 24 24     MOV        EDX,dword ptr [ESP + local_144]
        0809659f 29 d0           SUB        EAX,EDX
        080965a1 50              PUSH       EAX
        080965a2 e8 c9 74        CALL       W_Define                                         undefined W_Define()
                 fe ff
        080965a7 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x10]]
                 7c 01 00 00
        080965ae 50              PUSH       EAX
        080965af 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0xc]]
                 7c 01 00 00
        080965b6 89 c8           MOV        EAX,ECX
        080965b8 8b 71 04        MOV        ESI,dword ptr [ECX + 0x4]
        080965bb 05 c4 01        ADD        EAX,0x1c4
                 00 00
        080965c0 56              PUSH       ESI
        080965c1 8b 19           MOV        EBX,dword ptr [ECX]
        080965c3 53              PUSH       EBX
        080965c4 50              PUSH       EAX
        080965c5 e8 56 97        CALL       SysExplodCreateDraw_Fight                        undefined SysExplodCreateDraw_Fi
                 ff ff
        080965ca 83 c4 20        ADD        ESP,0x20
                             LAB_080965cd                                    XREF[1]:     0809658c(j)
        080965cd a1 74 7a        MOV        EAX,[g]
                 28 08
        080965d2 8b 88 34        MOV        ECX,dword ptr [EAX + 0x20734]
                 07 02 00
        080965d8 85 c9           TEST       ECX,ECX
        080965da 0f 84 b6        JZ         LAB_08096896
                 02 00 00
        080965e0 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0xc]]
                 68 01 00 00
        080965e7 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x10]]
                 6c 01 00 00
        080965ee 39 83 e4        CMP        dword ptr [EBX + 0x1e4],EAX
                 01 00 00
        080965f4 0f 85 9c        JNZ        LAB_08096896
                 02 00 00
        080965fa a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        080965ff 48              DEC        EAX
        08096600 50              PUSH       EAX
        08096601 57              PUSH       EDI
        08096602 6a 00           PUSH       0x0
        08096604 55              PUSH       EBP
        08096605 e8 66 74        CALL       W_Define                                         undefined W_Define()
                 fe ff
        0809660a 83 c4 0c        ADD        ESP,0xc
        0809660d 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 68 01 00 00
        08096614 8b 92 60        MOV        EDX,dword ptr [EDX + 0x160]
                 01 00 00
        0809661a 52              PUSH       EDX
        0809661b 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        08096620 8d 5c 24 4c     LEA        EBX=>local_11c,[ESP + 0x4c]
        08096624 53              PUSH       EBX
        08096625 e8 f6 e7        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        0809662a 50              PUSH       EAX
        0809662b 6a 00           PUSH       0x0
        0809662d 68 80 00        PUSH       0x80
                 00 00
        08096632 68 80 00        PUSH       0x80
                 00 00
        08096637 e8 04 cd        CALL       makecol                                          undefined makecol()
                 05 00
        0809663c 83 c4 14        ADD        ESP,0x14
        0809663f 50              PUSH       EAX
        08096640 89 f8           MOV        EAX,EDI
        08096642 8b 74 24 34     MOV        ESI,dword ptr [ESP + local_138]
        08096646 83 c6 05        ADD        ESI,0x5
        08096649 56              PUSH       ESI
        0809664a 8b 6c 24 2c     MOV        EBP,dword ptr [ESP + local_144]
        0809664e 29 e8           SUB        EAX,EBP
        08096650 40              INC        EAX
        08096651 50              PUSH       EAX
        08096652 a1 74 7a        MOV        EAX,[g]
                 28 08
        08096657 8b 88 e8        MOV        ECX,dword ptr [EAX + 0x104e8]
                 04 01 00
        0809665d 51              PUSH       ECX
        0809665e 53              PUSH       EBX
        0809665f e8 6c b9        CALL       V_FontDraw                                       undefined V_FontDraw()
                 fb ff
        08096664 83 c4 1c        ADD        ESP,0x1c
        08096667 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0x8]]
                 68 01 00 00
        0809666e 8b 91 60        MOV        EDX,dword ptr [ECX + 0x160]
                 01 00 00
        08096674 8b 81 6c        MOV        EAX,dword ptr [ECX + 0x16c]
                 01 00 00
        0809667a 29 d0           SUB        EAX,EDX
        0809667c 50              PUSH       EAX
        0809667d 68 a6 86        PUSH       DAT_082786a6                                     = 25h    %
                 27 08
        08096682 53              PUSH       EBX
        08096683 e8 98 e7        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        08096688 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 74 01 00 00
        0809668f 83 c4 10        ADD        ESP,0x10
        08096692 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x16c]
                 01 00 00
        08096698 8b aa 60        MOV        EBP,dword ptr [EDX + 0x160]
                 01 00 00
        0809669e 29 e8           SUB        EAX,EBP
        080966a0 85 c0           TEST       EAX,EAX
        080966a2 0f 8e ee        JLE        LAB_08096896
                 01 00 00
        080966a8 83 ec 14        SUB        ESP,0x14
        080966ab 6a 00           PUSH       0x0
        080966ad 6a 00           PUSH       0x0
        080966af 68 80 00        PUSH       0x80
                 00 00
        080966b4 e8 87 cc        CALL       makecol                                          undefined makecol()
                 05 00
        080966b9 83 c4 14        ADD        ESP,0x14
        080966bc 50              PUSH       EAX
        080966bd 56              PUSH       ESI
        080966be 8b 4c 24 50     MOV        ECX,dword ptr [ESP + local_120]
        080966c2 29 cf           SUB        EDI,ECX
        080966c4 8d 47 f5        LEA        EAX,[EDI + -0xb]
        080966c7 50              PUSH       EAX
        080966c8 a1 74 7a        MOV        EAX,[g]
                 28 08
        080966cd 8b 90 e8        MOV        EDX,dword ptr [EAX + 0x104e8]
                 04 01 00
        080966d3 52              PUSH       EDX
        080966d4 e9 b4 01        JMP        LAB_0809688d
                 00 00
        080966d9 8d              ??         8Dh
        080966da b4              ??         B4h
        080966db 26              ??         26h    &
        080966dc 00              ??         00h
        080966dd 00              ??         00h
        080966de 00              ??         00h
        080966df 00              ??         00h
                             LAB_080966e0                                    XREF[1]:     0809651b(j)
        080966e0 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        080966e7 8b 81 68        MOV        EAX,dword ptr [ECX + 0x168]
                 01 00 00
        080966ed 39 81 6c        CMP        dword ptr [ECX + 0x16c],EAX
                 01 00 00
        080966f3 7e 54           JLE        LAB_08096749
        080966f5 8b 44 24 2c     MOV        EAX,dword ptr [ESP + local_130]
        080966f9 50              PUSH       EAX
        080966fa 89 e8           MOV        EAX,EBP
        080966fc 8b 74 24 20     MOV        ESI,dword ptr [ESP + local_140]
        08096700 01 f0           ADD        EAX,ESI
        08096702 50              PUSH       EAX
        08096703 89 e8           MOV        EAX,EBP
        08096705 8b 5c 24 38     MOV        EBX,dword ptr [ESP + local_12c]
        08096709 53              PUSH       EBX
        0809670a 8b 4c 24 48     MOV        ECX,dword ptr [ESP + local_120]
        0809670e 01 c8           ADD        EAX,ECX
        08096710 50              PUSH       EAX
        08096711 e8 5a 73        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096716 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x10]]
                 7c 01 00 00
        0809671d 52              PUSH       EDX
        0809671e 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0xc]]
                 7c 01 00 00
        08096725 8b 43 04        MOV        EAX,dword ptr [EBX + 0x4]
        08096728 50              PUSH       EAX
        08096729 89 d8           MOV        EAX,EBX
        0809672b 8b 33           MOV        ESI,dword ptr [EBX]
        0809672d 05 58 01        ADD        EAX,0x158
                 00 00
        08096732 56              PUSH       ESI
        08096733 50              PUSH       EAX
        08096734 e8 e7 95        CALL       SysExplodCreateDraw_Fight                        undefined SysExplodCreateDraw_Fi
                 ff ff
        08096739 83 c4 20        ADD        ESP,0x20
        0809673c 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 64 01 00 00
        08096743 8b 82 68        MOV        EAX,dword ptr [EDX + 0x168]
                 01 00 00
                             LAB_08096749                                    XREF[1]:     080966f3(j)
        08096749 85 c0           TEST       EAX,EAX
        0809674b 7e 3f           JLE        LAB_0809678c
        0809674d 8b 5c 24 2c     MOV        EBX,dword ptr [ESP + local_130]
        08096751 89 e8           MOV        EAX,EBP
        08096753 53              PUSH       EBX
        08096754 55              PUSH       EBP
        08096755 8b 4c 24 38     MOV        ECX,dword ptr [ESP + local_12c]
        08096759 51              PUSH       ECX
        0809675a 8b 54 24 24     MOV        EDX,dword ptr [ESP + local_144]
        0809675e 01 d0           ADD        EAX,EDX
        08096760 50              PUSH       EAX
        08096761 e8 0a 73        CALL       W_Define                                         undefined W_Define()
                 fe ff
        08096766 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x10]]
                 7c 01 00 00
        0809676d 50              PUSH       EAX
        0809676e 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0xc]]
                 7c 01 00 00
        08096775 89 c8           MOV        EAX,ECX
        08096777 8b 71 04        MOV        ESI,dword ptr [ECX + 0x4]
        0809677a 05 c4 01        ADD        EAX,0x1c4
                 00 00
        0809677f 56              PUSH       ESI
        08096780 8b 19           MOV        EBX,dword ptr [ECX]
        08096782 53              PUSH       EBX
        08096783 50              PUSH       EAX
        08096784 e8 97 95        CALL       SysExplodCreateDraw_Fight                        undefined SysExplodCreateDraw_Fi
                 ff ff
        08096789 83 c4 20        ADD        ESP,0x20
                             LAB_0809678c                                    XREF[1]:     0809674b(j)
        0809678c a1 74 7a        MOV        EAX,[g]
                 28 08
        08096791 8b 88 34        MOV        ECX,dword ptr [EAX + 0x20734]
                 07 02 00
        08096797 85 c9           TEST       ECX,ECX
        08096799 0f 84 f7        JZ         LAB_08096896
                 00 00 00
        0809679f 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0xc]]
                 68 01 00 00
        080967a6 8b 84 24        MOV        EAX,dword ptr [ESP + Stack[0x10]]
                 6c 01 00 00
        080967ad 39 83 e4        CMP        dword ptr [EBX + 0x1e4],EAX
                 01 00 00
        080967b3 0f 85 dd        JNZ        LAB_08096896
                 00 00 00
        080967b9 a1 84 08        MOV        EAX,[V_Height]                                   = ??
                 2c 08
        080967be 48              DEC        EAX
        080967bf 50              PUSH       EAX
        080967c0 57              PUSH       EDI
        080967c1 6a 00           PUSH       0x0
        080967c3 55              PUSH       EBP
        080967c4 e8 a7 72        CALL       W_Define                                         undefined W_Define()
                 fe ff
        080967c9 83 c4 0c        ADD        ESP,0xc
        080967cc 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 68 01 00 00
        080967d3 8b 92 60        MOV        EDX,dword ptr [EDX + 0x160]
                 01 00 00
        080967d9 52              PUSH       EDX
        080967da 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        080967df 8d 5c 24 4c     LEA        EBX=>local_11c,[ESP + 0x4c]
        080967e3 53              PUSH       EBX
        080967e4 e8 37 e6        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        080967e9 50              PUSH       EAX
        080967ea 6a 00           PUSH       0x0
        080967ec 68 80 00        PUSH       0x80
                 00 00
        080967f1 68 80 00        PUSH       0x80
                 00 00
        080967f6 e8 45 cb        CALL       makecol                                          undefined makecol()
                 05 00
        080967fb 83 c4 14        ADD        ESP,0x14
        080967fe 50              PUSH       EAX
        080967ff 8b 74 24 34     MOV        ESI,dword ptr [ESP + local_138]
        08096803 83 c6 05        ADD        ESI,0x5
        08096806 56              PUSH       ESI
        08096807 8b 4c 24 2c     MOV        ECX,dword ptr [ESP + local_144]
        0809680b 8d 44 29 ff     LEA        EAX,[ECX + EBP*0x1 + -0x1]
        0809680f 50              PUSH       EAX
        08096810 a1 74 7a        MOV        EAX,[g]
                 28 08
        08096815 8b b8 e8        MOV        EDI,dword ptr [EAX + 0x104e8]
                 04 01 00
        0809681b 57              PUSH       EDI
        0809681c 53              PUSH       EBX
        0809681d e8 de b7        CALL       V_FontDrawRight                                  undefined V_FontDrawRight()
                 fb ff
        08096822 83 c4 1c        ADD        ESP,0x1c
        08096825 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x8]]
                 68 01 00 00
        0809682c 8b 8a 60        MOV        ECX,dword ptr [EDX + 0x160]
                 01 00 00
        08096832 8b 82 6c        MOV        EAX,dword ptr [EDX + 0x16c]
                 01 00 00
        08096838 29 c8           SUB        EAX,ECX
        0809683a 50              PUSH       EAX
        0809683b 68 e0 6c        PUSH       DAT_08276ce0                                     = 25h    %
                 27 08
        08096840 53              PUSH       EBX
        08096841 e8 da e5        CALL       sprintf                                          int sprintf(char * __s, char * _
                 13 00
        08096846 8b 8c 24        MOV        ECX,dword ptr [ESP + Stack[0x8]]
                 74 01 00 00
        0809684d 83 c4 10        ADD        ESP,0x10
        08096850 8b 81 6c        MOV        EAX,dword ptr [ECX + 0x16c]
                 01 00 00
        08096856 8b b9 60        MOV        EDI,dword ptr [ECX + 0x160]
                 01 00 00
        0809685c 29 f8           SUB        EAX,EDI
        0809685e 85 c0           TEST       EAX,EAX
        08096860 7e 34           JLE        LAB_08096896
        08096862 83 ec 14        SUB        ESP,0x14
        08096865 6a 00           PUSH       0x0
        08096867 6a 00           PUSH       0x0
        08096869 68 80 00        PUSH       0x80
                 00 00
        0809686e e8 cd ca        CALL       makecol                                          undefined makecol()
                 05 00
        08096873 83 c4 14        ADD        ESP,0x14
        08096876 50              PUSH       EAX
        08096877 56              PUSH       ESI
        08096878 8b 54 24 50     MOV        EDX,dword ptr [ESP + local_120]
        0809687c 8d 44 2a 01     LEA        EAX,[EDX + EBP*0x1 + 0x1]
        08096880 50              PUSH       EAX
        08096881 a1 74 7a        MOV        EAX,[g]
                 28 08
        08096886 8b 88 e8        MOV        ECX,dword ptr [EAX + 0x104e8]
                 04 01 00
        0809688c 51              PUSH       ECX
                             LAB_0809688d                                    XREF[1]:     080966d4(j)
        0809688d 53              PUSH       EBX
        0809688e e8 3d b7        CALL       V_FontDraw                                       undefined V_FontDraw()
                 fb ff
        08096893 83 c4 20        ADD        ESP,0x20
                             LAB_08096896                                    XREF[6]:     080965da(j), 080965f4(j),
                                                                                          080966a2(j), 08096799(j),
                                                                                          080967b3(j), 08096860(j)
        08096896 8b 54 24 2c     MOV        EDX,dword ptr [ESP + local_130]
        0809689a 52              PUSH       EDX
        0809689b 8b 44 24 38     MOV        EAX,dword ptr [ESP + local_128]
        0809689f 50              PUSH       EAX
        080968a0 8b 6c 24 38     MOV        EBP,dword ptr [ESP + local_12c]
        080968a4 55              PUSH       EBP
        080968a5 8b 7c 24 44     MOV        EDI,dword ptr [ESP + local_124]
        080968a9 57              PUSH       EDI
        080968aa e8 c1 71        CALL       W_Define                                         undefined W_Define()
                 fe ff
        080968af 81 c4 5c        ADD        ESP,0x15c
                 01 00 00
        080968b5 5b              POP        EBX
        080968b6 5e              POP        ESI
        080968b7 5f              POP        EDI
        080968b8 5d              POP        EBP
        080968b9 c3              RET
