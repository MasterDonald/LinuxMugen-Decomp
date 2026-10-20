                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameRoundDraw()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x5c]:1 local_5c                                XREF[6]:     08093609(*),
                                                                                                   080936b3(*),
                                                                                                   080936f9(*),
                                                                                                   0809375f(*),
                                                                                                   080937a9(*),
                                                                                                   0809380c(*)
             undefined4        Stack[-0x60]:4 local_60                                XREF[3]:     0809355d(W),
                                                                                                   080936c0(R),
                                                                                                   08093710(R)
             undefined4        Stack[-0x64]:4 local_64                                XREF[4]:     0809354d(W),
                                                                                                   08093801(R),
                                                                                                   0809382d(R),
                                                                                                   0809383f(R)
             undefined4        Stack[-0x68]:4 local_68                                XREF[4]:     08093567(W),
                                                                                                   0809376c(R),
                                                                                                   080937c0(R),
                                                                                                   08093819(R)
             undefined4        Stack[-0x6c]:4 local_6c                                XREF[3]:     08093571(W),
                                                                                                   080936a2(R),
                                                                                                   08093706(R)
             undefined4        Stack[-0x70]:4 local_70                                XREF[3]:     0809357b(W),
                                                                                                   0809374e(R),
                                                                                                   080937b6(R)
                             GameRoundDraw                                   XREF[1]:     GameLoop:08090893(c)
        08093540 55              PUSH       EBP
        08093541 57              PUSH       EDI
        08093542 56              PUSH       ESI
        08093543 53              PUSH       EBX
        08093544 83 ec 6c        SUB        ESP,0x6c
        08093547 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        0809354d 89 7c 24 18     MOV        dword ptr [ESP + local_64],EDI
        08093551 8b 87 68        MOV        EAX,dword ptr [EDI + 0x1cf68]
                 cf 01 00
        08093557 8d af d4        LEA        EBP,[EDI + 0x139d4]
                 39 01 00
        0809355d 89 44 24 1c     MOV        dword ptr [ESP + local_60],EAX
        08093561 8b 87 6c        MOV        EAX,dword ptr [EDI + 0x1cf6c]
                 cf 01 00
        08093567 89 44 24 14     MOV        dword ptr [ESP + local_68],EAX
        0809356b 8b 87 70        MOV        EAX,dword ptr [EDI + 0x1cf70]
                 cf 01 00
        08093571 89 44 24 10     MOV        dword ptr [ESP + local_6c],EAX
        08093575 8b 87 74        MOV        EAX,dword ptr [EDI + 0x1cf74]
                 cf 01 00
        0809357b 89 44 24 0c     MOV        dword ptr [ESP + local_70],EAX
        0809357f 8b 87 44        MOV        EAX,dword ptr [EDI + 0x1d444]
                 d4 01 00
        08093585 83 f8 02        CMP        EAX,0x2
        08093588 0f 84 b4        JZ         LAB_08093642
                 00 00 00
        0809358e 83 f8 02        CMP        EAX,0x2
        08093591 7f 0d           JG         LAB_080935a0
        08093593 48              DEC        EAX
        08093594 74 1a           JZ         LAB_080935b0
        08093596 e9 c5 02        JMP        LAB_08093860
                 00 00
        0809359b 90              ??         90h
        0809359c 8d              ??         8Dh
        0809359d 74              ??         74h    t
        0809359e 26              ??         26h    &
        0809359f 00              ??         00h
                             LAB_080935a0                                    XREF[1]:     08093591(j)
        080935a0 83 f8 04        CMP        EAX,0x4
        080935a3 0f 84 da        JZ         LAB_08093683
                 00 00 00
        080935a9 e9 b2 02        JMP        LAB_08093860
                 00 00
        080935ae 89              ??         89h
        080935af f6              ??         F6h
                             LAB_080935b0                                    XREF[1]:     08093594(j)
        080935b0 8b 85 bc        MOV        EAX,dword ptr [EBP + 0x4bc]
                 04 00 00
        080935b6 83 c0 02        ADD        EAX,0x2
        080935b9 39 87 38        CMP        dword ptr [EDI + 0x1d438],EAX
                 d4 01 00
        080935bf 0f 85 9b        JNZ        LAB_08093860
                 02 00 00
        080935c5 8b 87 a0        MOV        EAX,dword ptr [EDI + 0x1d3a0]
                 d3 01 00
        080935cb 85 c0           TEST       EAX,EAX
        080935cd 0f 85 8d        JNZ        LAB_08093860
                 02 00 00
        080935d3 8b 87 18        MOV        EAX,dword ptr [EDI + 0x1d418]
                 d4 01 00
        080935d9 83 f8 09        CMP        EAX,0x9
        080935dc 7f 25           JG         LAB_08093603
        080935de 8d 04 40        LEA        EAX,[EAX + EAX*0x2]
        080935e1 56              PUSH       ESI
        080935e2 8b 9f e8        MOV        EBX,dword ptr [EDI + 0x139e8]
                 39 01 00
        080935e8 8d 04 c0        LEA        EAX,[EAX + EAX*0x8]
        080935eb 53              PUSH       EBX
        080935ec 8b 8f e4        MOV        ECX,dword ptr [EDI + 0x139e4]
                 39 01 00
        080935f2 8d 84 85        LEA        EAX,[EBP + EAX*0x4 + 0x84]
                 84 00 00 00
        080935f9 51              PUSH       ECX
        080935fa 50              PUSH       EAX
        080935fb e8 90 c6        CALL       SysExplodCreate_Fight                            undefined SysExplodCreate_Fight()
                 ff ff
        08093600 83 c4 10        ADD        ESP,0x10
                             LAB_08093603                                    XREF[1]:     080935dc(j)
        08093603 8d 75 54        LEA        ESI,[EBP + 0x54]
        08093606 52              PUSH       EDX
        08093607 52              PUSH       EDX
        08093608 56              PUSH       ESI
        08093609 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        0809360d 53              PUSH       EBX
        0809360e e8 bd cf        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08093613 a1 74 7a        MOV        EAX,[g]
                 28 08
        08093618 83 c4 0c        ADD        ESP,0xc
        0809361b 8b 80 18        MOV        EAX,dword ptr [EAX + 0x1d418]
                 d4 01 00
        08093621 50              PUSH       EAX
        08093622 53              PUSH       EBX
        08093623 56              PUSH       ESI
        08093624 e8 f7 17        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        08093629 83 c4 0c        ADD        ESP,0xc
        0809362c 8b 8f e8        MOV        ECX,dword ptr [EDI + 0x139e8]
                 39 01 00
        08093632 8d 45 18        LEA        EAX,[EBP + 0x18]
        08093635 51              PUSH       ECX
        08093636 8b 97 e4        MOV        EDX,dword ptr [EDI + 0x139e4]
                 39 01 00
        0809363c 52              PUSH       EDX
        0809363d e9 06 02        JMP        LAB_08093848
                 00 00
                             LAB_08093642                                    XREF[1]:     08093588(j)
        08093642 8b 85 80        MOV        EAX,dword ptr [EBP + 0x580]
                 05 00 00
        08093648 40              INC        EAX
        08093649 39 87 50        CMP        dword ptr [EDI + 0x1d450],EAX
                 d4 01 00
        0809364f 0f 85 0b        JNZ        LAB_08093860
                 02 00 00
        08093655 8b 9f a0        MOV        EBX,dword ptr [EDI + 0x1d3a0]
                 d3 01 00
        0809365b 85 db           TEST       EBX,EBX
        0809365d 0f 85 fd        JNZ        LAB_08093860
                 01 00 00
        08093663 51              PUSH       ECX
        08093664 8b 97 e8        MOV        EDX,dword ptr [EDI + 0x139e8]
                 39 01 00
        0809366a 52              PUSH       EDX
        0809366b 8b 87 e4        MOV        EAX,dword ptr [EDI + 0x139e4]
                 39 01 00
        08093671 50              PUSH       EAX
        08093672 8d 87 e8        LEA        EAX,[EDI + 0x13ee8]
                 3e 01 00
        08093678 50              PUSH       EAX
        08093679 e8 12 c6        CALL       SysExplodCreate_Fight                            undefined SysExplodCreate_Fight()
                 ff ff
        0809367e e9 d4 01        JMP        LAB_08093857
                 00 00
                             LAB_08093683                                    XREF[1]:     080935a3(j)
        08093683 8b 85 50        MOV        EAX,dword ptr [EBP + 0x850]
                 08 00 00
        08093689 40              INC        EAX
        0809368a 39 87 50        CMP        dword ptr [EDI + 0x1d450],EAX
                 d4 01 00
        08093690 0f 85 ca        JNZ        LAB_08093860
                 01 00 00
        08093696 e8 c5 c2        CALL       GameRoundWinner                                  undefined GameRoundWinner()
                 00 00
        0809369b 48              DEC        EAX
        0809369c 0f 85 9e        JNZ        LAB_08093740
                 00 00 00
        080936a2 8b 74 24 10     MOV        ESI,dword ptr [ESP + local_6c]
        080936a6 85 f6           TEST       ESI,ESI
        080936a8 75 46           JNZ        LAB_080936f0
        080936aa 8d b7 04        LEA        ESI,[EDI + 0x14104]
                 41 01 00
        080936b0 53              PUSH       EBX
        080936b1 53              PUSH       EBX
        080936b2 56              PUSH       ESI
        080936b3 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        080936b7 53              PUSH       EBX
        080936b8 e8 13 cf        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        080936bd 83 c4 0c        ADD        ESP,0xc
        080936c0 8b 54 24 20     MOV        EDX,dword ptr [ESP + local_60]
        080936c4 8b 02           MOV        EAX,dword ptr [EDX]
        080936c6 83 c0 30        ADD        EAX,0x30
        080936c9 50              PUSH       EAX
        080936ca 53              PUSH       EBX
        080936cb 56              PUSH       ESI
        080936cc e8 4f 17        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        080936d1 83 c4 0c        ADD        ESP,0xc
        080936d4 8b 8f e8        MOV        ECX,dword ptr [EDI + 0x139e8]
                 39 01 00
        080936da 8d 87 c8        LEA        EAX,[EDI + 0x140c8]
                 40 01 00
        080936e0 51              PUSH       ECX
        080936e1 8b 97 e4        MOV        EDX,dword ptr [EDI + 0x139e4]
                 39 01 00
        080936e7 52              PUSH       EDX
        080936e8 e9 5b 01        JMP        LAB_08093848
                 00 00
        080936ed 8d              ??         8Dh
        080936ee 76              ??         76h    v
        080936ef 00              ??         00h
                             LAB_080936f0                                    XREF[1]:     080936a8(j)
        080936f0 8d b7 70        LEA        ESI,[EDI + 0x14170]
                 41 01 00
        080936f6 53              PUSH       EBX
        080936f7 53              PUSH       EBX
        080936f8 56              PUSH       ESI
        080936f9 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        080936fd 53              PUSH       EBX
        080936fe e8 cd ce        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08093703 83 c4 10        ADD        ESP,0x10
        08093706 8b 54 24 10     MOV        EDX,dword ptr [ESP + local_6c]
        0809370a 8b 02           MOV        EAX,dword ptr [EDX]
        0809370c 83 c0 30        ADD        EAX,0x30
        0809370f 50              PUSH       EAX
        08093710 8b 54 24 20     MOV        EDX,dword ptr [ESP + local_60]
        08093714 8b 02           MOV        EAX,dword ptr [EDX]
        08093716 83 c0 30        ADD        EAX,0x30
        08093719 50              PUSH       EAX
        0809371a 53              PUSH       EBX
        0809371b 56              PUSH       ESI
        0809371c e8 ff 16        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        08093721 83 c4 0c        ADD        ESP,0xc
        08093724 8b 8f e8        MOV        ECX,dword ptr [EDI + 0x139e8]
                 39 01 00
        0809372a 8d 87 34        LEA        EAX,[EDI + 0x14134]
                 41 01 00
        08093730 51              PUSH       ECX
        08093731 8b 97 e4        MOV        EDX,dword ptr [EDI + 0x139e4]
                 39 01 00
        08093737 52              PUSH       EDX
        08093738 e9 0b 01        JMP        LAB_08093848
                 00 00
        0809373d 8d              ??         8Dh
        0809373e 76              ??         76h    v
        0809373f 00              ??         00h
                             LAB_08093740                                    XREF[1]:     0809369c(j)
        08093740 e8 1b c2        CALL       GameRoundWinner                                  undefined GameRoundWinner()
                 00 00
        08093745 83 f8 02        CMP        EAX,0x2
        08093748 0f 85 a2        JNZ        LAB_080937f0
                 00 00 00
        0809374e 8b 74 24 0c     MOV        ESI,dword ptr [ESP + local_70]
        08093752 85 f6           TEST       ESI,ESI
        08093754 75 4a           JNZ        LAB_080937a0
        08093756 8d b7 04        LEA        ESI,[EDI + 0x14104]
                 41 01 00
        0809375c 53              PUSH       EBX
        0809375d 53              PUSH       EBX
        0809375e 56              PUSH       ESI
        0809375f 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        08093763 53              PUSH       EBX
        08093764 e8 67 ce        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08093769 83 c4 0c        ADD        ESP,0xc
        0809376c 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_68]
        08093770 8b 02           MOV        EAX,dword ptr [EDX]
        08093772 83 c0 30        ADD        EAX,0x30
        08093775 50              PUSH       EAX
        08093776 53              PUSH       EBX
        08093777 56              PUSH       ESI
        08093778 e8 a3 16        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        0809377d 83 c4 0c        ADD        ESP,0xc
        08093780 8b 8f e8        MOV        ECX,dword ptr [EDI + 0x139e8]
                 39 01 00
        08093786 8d 87 c8        LEA        EAX,[EDI + 0x140c8]
                 40 01 00
        0809378c 51              PUSH       ECX
        0809378d 8b 97 e4        MOV        EDX,dword ptr [EDI + 0x139e4]
                 39 01 00
        08093793 52              PUSH       EDX
        08093794 e9 af 00        JMP        LAB_08093848
                 00 00
        08093799 8d              ??         8Dh
        0809379a b4              ??         B4h
        0809379b 26              ??         26h    &
        0809379c 00              ??         00h
        0809379d 00              ??         00h
        0809379e 00              ??         00h
        0809379f 00              ??         00h
                             LAB_080937a0                                    XREF[1]:     08093754(j)
        080937a0 8d b7 70        LEA        ESI,[EDI + 0x14170]
                 41 01 00
        080937a6 53              PUSH       EBX
        080937a7 53              PUSH       EBX
        080937a8 56              PUSH       ESI
        080937a9 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        080937ad 53              PUSH       EBX
        080937ae e8 1d ce        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        080937b3 83 c4 10        ADD        ESP,0x10
        080937b6 8b 54 24 0c     MOV        EDX,dword ptr [ESP + local_70]
        080937ba 8b 02           MOV        EAX,dword ptr [EDX]
        080937bc 83 c0 30        ADD        EAX,0x30
        080937bf 50              PUSH       EAX
        080937c0 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_68]
        080937c4 8b 02           MOV        EAX,dword ptr [EDX]
        080937c6 83 c0 30        ADD        EAX,0x30
        080937c9 50              PUSH       EAX
        080937ca 53              PUSH       EBX
        080937cb 56              PUSH       ESI
        080937cc e8 4f 16        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        080937d1 83 c4 0c        ADD        ESP,0xc
        080937d4 8b 8f e8        MOV        ECX,dword ptr [EDI + 0x139e8]
                 39 01 00
        080937da 8d 87 34        LEA        EAX,[EDI + 0x14134]
                 41 01 00
        080937e0 51              PUSH       ECX
        080937e1 8b 97 e4        MOV        EDX,dword ptr [EDI + 0x139e4]
                 39 01 00
        080937e7 52              PUSH       EDX
        080937e8 eb 5e           JMP        LAB_08093848
        080937ea 8d              ??         8Dh
        080937eb b6              ??         B6h
        080937ec 00              ??         00h
        080937ed 00              ??         00h
        080937ee 00              ??         00h
        080937ef 00              ??         00h
                             LAB_080937f0                                    XREF[1]:     08093748(j)
        080937f0 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
        080937f6 83 bf 4c        CMP        dword ptr [EDI + 0x1d44c],0x3
                 d4 01 00 03
        080937fd 75 61           JNZ        LAB_08093860
        080937ff 53              PUSH       EBX
        08093800 53              PUSH       EBX
        08093801 8b 74 24 20     MOV        ESI,dword ptr [ESP + local_64]
        08093805 81 c6 dc        ADD        ESI,0x141dc
                 41 01 00
        0809380b 56              PUSH       ESI
        0809380c 8d 5c 24 2c     LEA        EBX=>local_5c,[ESP + 0x2c]
        08093810 53              PUSH       EBX
        08093811 e8 ba cd        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
        08093816 83 c4 0c        ADD        ESP,0xc
        08093819 8b 54 24 18     MOV        EDX,dword ptr [ESP + local_68]
        0809381d 8b 02           MOV        EAX,dword ptr [EDX]
        0809381f 83 c0 30        ADD        EAX,0x30
        08093822 50              PUSH       EAX
        08093823 53              PUSH       EBX
        08093824 56              PUSH       ESI
        08093825 e8 f6 15        CALL       sprintf                                          int sprintf(char * __s, char * _
                 14 00
        0809382a 83 c4 0c        ADD        ESP,0xc
        0809382d 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_64]
        08093831 8b 88 e8        MOV        ECX,dword ptr [EAX + 0x139e8]
                 39 01 00
        08093837 51              PUSH       ECX
        08093838 8b 90 e4        MOV        EDX,dword ptr [EAX + 0x139e4]
                 39 01 00
        0809383e 52              PUSH       EDX
        0809383f 8b 44 24 24     MOV        EAX,dword ptr [ESP + local_64]
        08093843 05 a0 41        ADD        EAX,0x141a0
                 01 00
                             LAB_08093848                                    XREF[5]:     0809363d(j), 080936e8(j),
                                                                                          08093738(j), 08093794(j),
                                                                                          080937e8(j)
        08093848 50              PUSH       EAX
        08093849 e8 42 c4        CALL       SysExplodCreate_Fight                            undefined SysExplodCreate_Fight()
                 ff ff
        0809384e 5f              POP        EDI
        0809384f 58              POP        EAX
        08093850 53              PUSH       EBX
        08093851 56              PUSH       ESI
        08093852 e8 79 cd        CALL       strcpy                                           char * strcpy(char * __dest, cha
                 14 00
                             LAB_08093857                                    XREF[1]:     0809367e(j)
        08093857 83 c4 10        ADD        ESP,0x10
        0809385a 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
                             LAB_08093860                                    XREF[8]:     08093596(j), 080935a9(j),
                                                                                          080935bf(j), 080935cd(j),
                                                                                          0809364f(j), 0809365d(j),
                                                                                          08093690(j), 080937fd(j)
        08093860 8b 8f 44        MOV        ECX,dword ptr [EDI + 0x1d444]
                 d4 01 00
        08093866 8d 41 fd        LEA        EAX,[ECX + -0x3]
        08093869 83 f8 01        CMP        EAX,0x1
        0809386c 77 69           JA         LAB_080938d7
        0809386e 8b 97 50        MOV        EDX,dword ptr [EDI + 0x1d450]
                 d4 01 00
        08093874 83 f9 04        CMP        ECX,0x4
        08093877 75 08           JNZ        LAB_08093881
        08093879 8b b7 3c        MOV        ESI,dword ptr [EDI + 0x1d43c]
                 d4 01 00
        0809387f 01 f2           ADD        EDX,ESI
                             LAB_08093881                                    XREF[1]:     08093877(j)
        08093881 8b 85 d4        MOV        EAX,dword ptr [EBP + 0x6d4]
                 06 00 00
        08093887 40              INC        EAX
        08093888 39 c2           CMP        EDX,EAX
        0809388a 75 4b           JNZ        LAB_080938d7
        0809388c 8b 87 4c        MOV        EAX,dword ptr [EDI + 0x1d44c]
                 d4 01 00
        08093892 83 f8 03        CMP        EAX,0x3
        08093895 75 09           JNZ        LAB_080938a0
        08093897 8d 85 68        LEA        EAX,[EBP + 0x668]
                 06 00 00
        0809389d eb 20           JMP        LAB_080938bf
        0809389f 90              ??         90h
                             LAB_080938a0                                    XREF[1]:     08093895(j)
        080938a0 83 f8 02        CMP        EAX,0x2
        080938a3 75 11           JNZ        LAB_080938b6
        080938a5 50              PUSH       EAX
        080938a6 8d 85 fc        LEA        EAX,[EBP + 0x5fc]
                 05 00 00
        080938ac 8b 7d 14        MOV        EDI,dword ptr [EBP + 0x14]
        080938af 57              PUSH       EDI
        080938b0 8b 75 10        MOV        ESI,dword ptr [EBP + 0x10]
        080938b3 56              PUSH       ESI
        080938b4 eb 12           JMP        LAB_080938c8
                             LAB_080938b6                                    XREF[1]:     080938a3(j)
        080938b6 48              DEC        EAX
        080938b7 75 1e           JNZ        LAB_080938d7
        080938b9 8d 85 90        LEA        EAX,[EBP + 0x590]
                 05 00 00
                             LAB_080938bf                                    XREF[1]:     0809389d(j)
        080938bf 53              PUSH       EBX
        080938c0 8b 4d 14        MOV        ECX,dword ptr [EBP + 0x14]
        080938c3 51              PUSH       ECX
        080938c4 8b 55 10        MOV        EDX,dword ptr [EBP + 0x10]
        080938c7 52              PUSH       EDX
                             LAB_080938c8                                    XREF[1]:     080938b4(j)
        080938c8 50              PUSH       EAX
        080938c9 e8 c2 c3        CALL       SysExplodCreate_Fight                            undefined SysExplodCreate_Fight()
                 ff ff
        080938ce 83 c4 10        ADD        ESP,0x10
        080938d1 8b 3d 74        MOV        EDI,dword ptr [g]
                 7a 28 08
                             LAB_080938d7                                    XREF[3]:     0809386c(j), 0809388a(j),
                                                                                          080938b7(j)
        080938d7 8b 87 1c        MOV        EAX,dword ptr [EDI + 0x1cc1c]
                 cc 01 00
        080938dd 85 c0           TEST       EAX,EAX
        080938df 75 13           JNZ        LAB_080938f4
        080938e1 55              PUSH       EBP
        080938e2 55              PUSH       EBP
        080938e3 6a ff           PUSH       -0x1
        080938e5 8b b7 fc        MOV        ESI,dword ptr [EDI + 0x14afc]
                 4a 01 00
        080938eb 56              PUSH       ESI
        080938ec e8 df a5        CALL       ExplodArrayDraw                                  undefined ExplodArrayDraw()
                 ff ff
        080938f1 83 c4 10        ADD        ESP,0x10
                             LAB_080938f4                                    XREF[1]:     080938df(j)
        080938f4 83 c4 6c        ADD        ESP,0x6c
        080938f7 5b              POP        EBX
        080938f8 5e              POP        ESI
        080938f9 5f              POP        EDI
        080938fa 5d              POP        EBP
        080938fb c3              RET
        0809f965 8b 80 48        MOV        EAX,dword ptr [EAX + 0x1d448]
                 d4 01 00
        0809f96b c3              RET
