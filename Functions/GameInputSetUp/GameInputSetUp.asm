                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameInputSetup()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x30]:4 local_30                                XREF[2]:     0809964f(*),
                                                                                                   08099656(*)
             undefined         Stack[-0x62c   local_62c                               XREF[1]:     0809972d(*)
             undefined4        Stack[-0x630   local_630                               XREF[4]:     0809967e(W),
                                                                                                   0809973c(R),
                                                                                                   08099756(W),
                                                                                                   08099766(R)
             undefined4        Stack[-0x634   local_634                               XREF[6]:     0809965e(W),
                                                                                                   08099666(R),
                                                                                                   080996a0(R),
                                                                                                   08099771(R),
                                                                                                   08099776(W),
                                                                                                   0809977a(R)
             undefined4        Stack[-0x638   local_638                               XREF[2]:     0809966a(W),
                                                                                                   08099676(W)
             undefined4        Stack[-0x63c   local_63c                               XREF[4]:     08099686(W),
                                                                                                   080996d2(R),
                                                                                                   08099740(R),
                                                                                                   0809975a(W)
             undefined4        Stack[-0x640   local_640                               XREF[4]:     0809968e(W),
                                                                                                   080996c0(R),
                                                                                                   08099744(R),
                                                                                                   0809975e(W)
             undefined4        Stack[-0x644   local_644                               XREF[4]:     08099696(W),
                                                                                                   080996a8(R),
                                                                                                   08099748(R),
                                                                                                   08099762(W)
                             GameInputSetup                                  XREF[4]:     Entry Point(*),
                                                                                          OptionsScreen:080a2480(c),
                                                                                          KeyConfigScreen:080a4fc0(c),
                                                                                          GameLoadOptions:080d51b9(c)
        08099640 55              PUSH       EBP
        08099641 57              PUSH       EDI
        08099642 56              PUSH       ESI
        08099643 be 7f 01        MOV        ESI,0x17f
                 00 00
        08099648 53              PUSH       EBX
        08099649 81 ec 3c        SUB        ESP,0x63c
                 06 00 00
        0809964f 8d 84 24        LEA        EAX=>local_30,[ESP + 0x61c]
                 1c 06 00 00
                             LAB_08099656                                    XREF[1]:     0809965c(j)
        08099656 89 30           MOV        dword ptr [EAX]=>local_30,ESI
        08099658 83 e8 04        SUB        EAX,0x4
        0809965b 4e              DEC        ESI
        0809965c 79 f8           JNS        LAB_08099656
        0809965e c7 44 24        MOV        dword ptr [ESP + local_634],0x0
                 18 00 00
                 00 00
                             LAB_08099666                                    XREF[1]:     0809977f(j)
        08099666 8b 74 24 18     MOV        ESI,dword ptr [ESP + local_634]
        0809966a c7 44 24        MOV        dword ptr [ESP + local_638],KBToUInp
                 14 60 43
                 05 08
        08099672 85 f6           TEST       ESI,ESI
        08099674 74 08           JZ         LAB_0809967e
        08099676 c7 44 24        MOV        dword ptr [ESP + local_638],PadToUInp
                 14 c0 43
                 05 08
                             LAB_0809967e                                    XREF[1]:     08099674(j)
        0809967e c7 44 24        MOV        dword ptr [ESP + local_630],0x0
                 1c 00 00
                 00 00
        08099686 c7 44 24        MOV        dword ptr [ESP + local_63c],DefaultKeyCfg        = 000000C8h
                 10 a0 1e
                 22 08
        0809968e c7 44 24        MOV        dword ptr [ESP + local_640],0x0
                 0c 00 00
                 00 00
        08099696 c7 44 24        MOV        dword ptr [ESP + local_644],0x0
                 08 00 00
                 00 00
        0809969e 89 f6           MOV        ESI,ESI
                             LAB_080996a0                                    XREF[1]:     0809976b(j)
        080996a0 8b 5c 24 18     MOV        EBX,dword ptr [ESP + local_634]
        080996a4 85 db           TEST       EBX,EBX
        080996a6 75 18           JNZ        LAB_080996c0
        080996a8 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_644]
        080996ac 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080996b2 01 c8           ADD        EAX,ECX
        080996b4 8d b8 84        LEA        EDI,[EAX + 0x1cc84]
                 cc 01 00
        080996ba eb 16           JMP        LAB_080996d2
        080996bc 8d              ??         8Dh
        080996bd 74              ??         74h    t
        080996be 26              ??         26h    &
        080996bf 00              ??         00h
                             LAB_080996c0                                    XREF[1]:     080996a6(j)
        080996c0 8b 44 24 0c     MOV        EAX,dword ptr [ESP + local_640]
        080996c4 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080996ca 01 d0           ADD        EAX,EDX
        080996cc 8d b8 54        LEA        EDI,[EAX + 0x1cd54]
                 cd 01 00
                             LAB_080996d2                                    XREF[1]:     080996ba(j)
        080996d2 8b 6c 24 10     MOV        EBP,dword ptr [ESP + local_63c]
        080996d6 31 f6           XOR        ESI,ESI
                             LAB_080996d8                                    XREF[1]:     0809973a(j)
        080996d8 8b 04 b5        MOV        EAX,dword ptr [ESI*0x4 + KeyCfgToKBIMap]         = 00000001h
                 60 1f 22 08                                                                 = 00000003h
        080996df 83 ec 0c        SUB        ESP,0xc
        080996e2 8d 1c 85        LEA        EBX,[EAX*0x4 + 0x0]
                 00 00 00 00
        080996e9 8b 04 3b        MOV        EAX,dword ptr [EBX + EDI*0x1]
        080996ec 50              PUSH       EAX
        080996ed ff 54 24 24     CALL       dword ptr [ESP + 0x24]=>PadToUInp                undefined PadToUInp()
        080996f1 83 c4 10        ADD        ESP,0x10
        080996f4 3d 80 01        CMP        EAX,0x180
                 00 00
        080996f9 7e 19           JLE        LAB_08099714
        080996fb 68 c7 89        PUSH       s_GameInputSetup_082789c7                        = "GameInputSetup"
                 27 08
        08099700 68 54 02        PUSH       0x254
                 00 00
        08099705 68 d6 89        PUSH       s_src/mugen/init.c_082789d6                      = "src/mugen/init.c"
                 27 08
        0809970a 68 80 91        PUSH       s_KeyConvFunc(key_pad->sc[KeyCfgTo_08279180      = "KeyConvFunc(key_pad->sc[KeyCf
                 27 08
        0809970f e8 6c 7d        CALL       __assert_fail                                    void __assert_fail(char * __asse
                 12 00
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_08099714                                    XREF[1]:     080996f9(j)
        08099714 83 ec 0c        SUB        ESP,0xc
        08099717 8b 0c 3b        MOV        ECX,dword ptr [EBX + EDI*0x1]
        0809971a 51              PUSH       ECX
        0809971b ff 54 24 24     CALL       dword ptr [ESP + 0x24]=>PadToUInp                undefined PadToUInp()
        0809971f 5a              POP        EDX
        08099720 89 c3           MOV        EBX,EAX
        08099722 8b 44 b5 00     MOV        EAX,dword ptr [EBP + ESI*0x4]=>DefaultKeyCfg     = 000000C8h
        08099726 46              INC        ESI
        08099727 50              PUSH       EAX
        08099728 e8 33 ac        CALL       KBToUInp                                         undefined KBToUInp()
                 fb ff
        0809972d 8d 54 24 30     LEA        EDX=>local_62c,[ESP + 0x30]
        08099731 83 c4 10        ADD        ESP,0x10
        08099734 83 fe 0a        CMP        ESI,0xa
        08099737 89 04 9a        MOV        dword ptr [EDX + EBX*0x4],EAX
        0809973a 7e 9c           JLE        LAB_080996d8
        0809973c 8b 6c 24 1c     MOV        EBP,dword ptr [ESP + local_630]
        08099740 8b 5c 24 10     MOV        EBX,dword ptr [ESP + local_63c]
        08099744 8b 4c 24 0c     MOV        ECX,dword ptr [ESP + local_640]
        08099748 8b 44 24 08     MOV        EAX,dword ptr [ESP + local_644]
        0809974c 45              INC        EBP
        0809974d 83 c3 2c        ADD        EBX,0x2c
        08099750 83 c1 34        ADD        ECX,0x34
        08099753 83 c0 34        ADD        EAX,0x34
        08099756 89 6c 24 1c     MOV        dword ptr [ESP + local_630],EBP
        0809975a 89 5c 24 10     MOV        dword ptr [ESP + local_63c],EBX=>DAT_08221ecc    = 00000048h
        0809975e 89 4c 24 0c     MOV        dword ptr [ESP + local_640],ECX
        08099762 89 44 24 08     MOV        dword ptr [ESP + local_644],EAX
        08099766 83 7c 24        CMP        dword ptr [ESP + local_630],0x1
                 1c 01
        0809976b 0f 8e 2f        JLE        LAB_080996a0
                 ff ff ff
        08099771 8b 7c 24 18     MOV        EDI,dword ptr [ESP + local_634]
        08099775 47              INC        EDI
        08099776 89 7c 24 18     MOV        dword ptr [ESP + local_634],EDI
        0809977a 83 7c 24        CMP        dword ptr [ESP + local_634],0x1
                 18 01
        0809977f 0f 8e e1        JLE        LAB_08099666
                 fe ff ff
        08099785 83 ec 0c        SUB        ESP,0xc
        08099788 52              PUSH       EDX
        08099789 e8 12 aa        CALL       UInpSetKeyMap                                    undefined UInpSetKeyMap()
                 fb ff
        0809978e 83 c4 10        ADD        ESP,0x10
        08099791 85 c0           TEST       EAX,EAX
        08099793 75 0b           JNZ        LAB_080997a0
        08099795 31 c0           XOR        EAX,EAX
        08099797 eb 15           JMP        LAB_080997ae
        08099799 8d              ??         8Dh
        0809979a b4              ??         B4h
        0809979b 26              ??         26h    &
        0809979c 00              ??         00h
        0809979d 00              ??         00h
        0809979e 00              ??         00h
        0809979f 00              ??         00h
                             LAB_080997a0                                    XREF[1]:     08099793(j)
        080997a0 e8 cb a8        CALL       UInpReInit                                       undefined UInpReInit()
                 fb ff
        080997a5 89 c2           MOV        EDX,EAX
        080997a7 31 c0           XOR        EAX,EAX
        080997a9 85 d2           TEST       EDX,EDX
        080997ab 0f 95 c0        SETNZ      AL
                             LAB_080997ae                                    XREF[1]:     08099797(j)
        080997ae 81 c4 3c        ADD        ESP,0x63c
                 06 00 00
        080997b4 5b              POP        EBX
        080997b5 5e              POP        ESI
        080997b6 5f              POP        EDI
        080997b7 5d              POP        EBP
        080997b8 c3              RET
