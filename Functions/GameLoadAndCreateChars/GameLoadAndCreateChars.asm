                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameLoadAndCreateChars()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x30]:4 local_30                                XREF[1]:     080b094e(R)
             undefined4        Stack[-0x34]:4 local_34                                XREF[1]:     080b0944(R)
             undefined4        Stack[-0x38]:4 local_38                                XREF[1]:     080b093a(R)
             undefined4        Stack[-0x3c]:4 local_3c                                XREF[2]:     080b0911(*),
                                                                                                   080b0930(R)
             undefined4        Stack[-0x40]:4 local_40                                XREF[1]:     080b0926(R)
             undefined4        Stack[-0x50]:4 local_50                                XREF[1]:     080b0994(R)
             undefined4        Stack[-0x54]:4 local_54                                XREF[1]:     080b098a(R)
             undefined4        Stack[-0x58]:4 local_58                                XREF[1]:     080b0980(R)
             undefined4        Stack[-0x5c]:4 local_5c                                XREF[2]:     080b0954(*),
                                                                                                   080b0976(R)
             undefined4        Stack[-0x60]:4 local_60                                XREF[10]:    080b0655(W),
                                                                                                   080b0668(R),
                                                                                                   080b069b(R),
                                                                                                   080b072e(R),
                                                                                                   080b0737(R),
                                                                                                   080b079b(W),
                                                                                                   080b07ba(R),
                                                                                                   080b0899(R),
                                                                                                   080b08d5(R),
                                                                                                   080b096c(R)
             undefined4        Stack[-0x64]:4 local_64                                XREF[4]:     080b077b(W),
                                                                                                   080b0844(R),
                                                                                                   080b086e(R),
                                                                                                   080b09a5(R)
             undefined4        Stack[-0x68]:4 local_68                                XREF[8]:     080b063e(W),
                                                                                                   080b065c(R),
                                                                                                   080b073e(R),
                                                                                                   080b0746(W),
                                                                                                   080b074a(R),
                                                                                                   080b0785(W),
                                                                                                   080b07b6(R),
                                                                                                   080b084d(R)
             undefined4        Stack[-0x6c]:4 local_6c                                XREF[5]:     080b07ca(W),
                                                                                                   080b0880(R),
                                                                                                   080b09a1(R),
                                                                                                   080b09aa(W),
                                                                                                   080b09ae(R)
             undefined4        Stack[-0x70]:4 local_70                                XREF[2]:     080b07c4(W),
                                                                                                   080b08bc(R)
             undefined4        Stack[-0x8c]:4 local_8c                                XREF[1]:     080b08fb(*)
                             GameLoadAndCreateChars                          XREF[2]:     Entry Point(*),
                                                                                          GameLoadAndActivateTeam:080b04e6
        080b0610 55              PUSH       EBP
        080b0611 57              PUSH       EDI
        080b0612 56              PUSH       ESI
        080b0613 53              PUSH       EBX
        080b0614 83 ec 6c        SUB        ESP,0x6c
        080b0617 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080b061d 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 80 00 00 00
        080b0624 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        080b0627 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b062a 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b062d 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0630 c1 e0 03        SHL        EAX,0x3
        080b0633 29 d0           SUB        EAX,EDX
        080b0635 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        080b0638 8b 88 e0        MOV        ECX,dword ptr [EAX + 0xcee0]
                 ce 00 00
        080b063e c7 44 24        MOV        dword ptr [ESP + local_68],0x0
                 14 00 00
                 00 00
        080b0646 8d 14 49        LEA        EDX,[ECX + ECX*0x2]
        080b0649 c1 e2 03        SHL        EDX,0x3
        080b064c 29 ca           SUB        EDX,ECX
        080b064e 8d 94 90        LEA        EDX,[EAX + EDX*0x4 + 0xceec]
                 ec ce 00 00
        080b0655 89 54 24 1c     MOV        dword ptr [ESP + local_60],EDX
        080b0659 8b 42 08        MOV        EAX,dword ptr [EDX + 0x8]
        080b065c 39 44 24 14     CMP        dword ptr [ESP + local_68],EAX
        080b0660 0f 8d f4        JGE        LAB_080b075a
                 00 00 00
        080b0666 31 ed           XOR        EBP,EBP
                             LAB_080b0668                                    XREF[1]:     080b074e(j)
        080b0668 8b 5c 24 1c     MOV        EBX,dword ptr [ESP + local_60]
        080b066c 8b 7c 1d 0c     MOV        EDI,dword ptr [EBP + EBX*0x1 + 0xc]
        080b0670 83 7c 2b        CMP        dword ptr [EBX + EBP*0x1 + 0x10],-0x1
                 10 ff
        080b0675 0f 84 c3        JZ         LAB_080b073e
                 00 00 00
        080b067b 8d 77 ff        LEA        ESI,[EDI + -0x1]
        080b067e 83 fe 03        CMP        ESI,0x3
        080b0681 7f 15           JG         LAB_080b0698
        080b0683 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080b0689 a1 08 0c        MOV        EAX,[Ticks]                                      = ??
                 2c 08
        080b068e 83 c2 04        ADD        EDX,0x4
        080b0691 89 84 ba        MOV        dword ptr [EDX + EDI*0x4 + 0x2070c],EAX
                 0c 07 02 00
                             LAB_080b0698                                    XREF[1]:     080b0681(j)
        080b0698 83 ec 0c        SUB        ESP,0xc
        080b069b 8b 44 24 28     MOV        EAX,dword ptr [ESP + local_60]
        080b069f 8b 44 28 10     MOV        EAX,dword ptr [EAX + EBP*0x1 + 0x10]
        080b06a3 50              PUSH       EAX
        080b06a4 e8 b7 bf        CALL       PlayerCacheLoad                                  undefined PlayerCacheLoad()
                 ff ff
        080b06a9 8b 1d 74        MOV        EBX,dword ptr [g]
                 7a 28 08
        080b06af 8d 14 bd        LEA        EDX,[EDI*0x4 + 0x0]
                 00 00 00 00
        080b06b6 83 c4 10        ADD        ESP,0x10
        080b06b9 85 c0           TEST       EAX,EAX
        080b06bb 8d 4b 04        LEA        ECX,[EBX + 0x4]
        080b06be 89 84 11        MOV        dword ptr [ECX + EDX*0x1 + 0x1ce60],EAX
                 60 ce 01 00
        080b06c5 75 4f           JNZ        LAB_080b0716
        080b06c7 8d 8b 48        LEA        ECX,[EBX + 0x20748]
                 07 02 00
        080b06cd 55              PUSH       EBP
        080b06ce 89 cb           MOV        EBX,ECX
        080b06d0 57              PUSH       EDI
        080b06d1 68 59 a6        PUSH       s_Error_loading_p%i_0827a659                     = "\nError loading p%i"
                 27 08
                             LAB_080b06d6                                    XREF[1]:     080b06ec(j)
        080b06d6 8b 01           MOV        EAX,dword ptr [ECX]
        080b06d8 83 c1 04        ADD        ECX,0x4
        080b06db 8d 90 ff        LEA        EDX,[EAX + 0xfefefeff]
                 fe fe fe
        080b06e1 83 f0 ff        XOR        EAX,0xffffffff
        080b06e4 21 c2           AND        EDX,EAX
        080b06e6 81 e2 80        AND        EDX,0x80808080
                 80 80 80
        080b06ec 74 e8           JZ         LAB_080b06d6
        080b06ee f7 c2 80        TEST       EDX,0x8080
                 80 00 00
        080b06f4 75 06           JNZ        LAB_080b06fc
        080b06f6 c1 ea 10        SHR        EDX,0x10
        080b06f9 83 c1 02        ADD        ECX,0x2
                             LAB_080b06fc                                    XREF[1]:     080b06f4(j)
        080b06fc 00 d2           ADD        DL,DL
        080b06fe 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
        080b0704 83 d9 03        SBB        ECX,0x3
        080b0707 29 d9           SUB        ECX,EBX
        080b0709 01 f1           ADD        ECX,ESI
        080b070b 8d 81 48        LEA        EAX,[ECX + 0x20748]
                 07 02 00
        080b0711 e9 02 01        JMP        LAB_080b0818
                 00 00
                             LAB_080b0716                                    XREF[1]:     080b06c5(j)
        080b0716 83 fe 03        CMP        ESI,0x3
        080b0719 7f 1c           JG         LAB_080b0737
        080b071b 81 c2 0c        ADD        EDX,0x2070c
                 07 02 00
        080b0721 a1 08 0c        MOV        EAX,[Ticks]                                      = ??
                 2c 08
        080b0726 8b 1c 0a        MOV        EBX,dword ptr [EDX + ECX*0x1]
        080b0729 29 d8           SUB        EAX,EBX
        080b072b 89 04 0a        MOV        dword ptr [EDX + ECX*0x1],EAX
        080b072e 8b 54 24 1c     MOV        EDX,dword ptr [ESP + local_60]
        080b0732 8b 42 08        MOV        EAX,dword ptr [EDX + 0x8]
        080b0735 eb 07           JMP        LAB_080b073e
                             LAB_080b0737                                    XREF[1]:     080b0719(j)
        080b0737 8b 5c 24 1c     MOV        EBX,dword ptr [ESP + local_60]
        080b073b 8b 43 08        MOV        EAX,dword ptr [EBX + 0x8]
                             LAB_080b073e                                    XREF[2]:     080b0675(j), 080b0735(j)
        080b073e 8b 7c 24 14     MOV        EDI,dword ptr [ESP + local_68]
        080b0742 83 c5 14        ADD        EBP,0x14
        080b0745 47              INC        EDI
        080b0746 89 7c 24 14     MOV        dword ptr [ESP + local_68],EDI
        080b074a 39 44 24 14     CMP        dword ptr [ESP + local_68],EAX
        080b074e 0f 8c 14        JL         LAB_080b0668
                 ff ff ff
        080b0754 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_080b075a                                    XREF[1]:     080b0660(j)
        080b075a 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 80 00 00 00
        080b0761 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        080b0764 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b0767 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b076a 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        080b076d c1 e0 03        SHL        EAX,0x3
        080b0770 29 d0           SUB        EAX,EDX
        080b0772 8d 04 86        LEA        EAX,[ESI + EAX*0x4]
        080b0775 8d 98 e0        LEA        EBX,[EAX + 0xcee0]
                 ce 00 00
        080b077b 89 5c 24 18     MOV        dword ptr [ESP + local_64],EBX
        080b077f 8b 90 e0        MOV        EDX,dword ptr [EAX + 0xcee0]
                 ce 00 00
        080b0785 c7 44 24        MOV        dword ptr [ESP + local_68],0x0
                 14 00 00
                 00 00
        080b078d 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        080b0790 c1 e0 03        SHL        EAX,0x3
        080b0793 29 d0           SUB        EAX,EDX
        080b0795 31 d2           XOR        EDX,EDX
        080b0797 8d 44 83 0c     LEA        EAX,[EBX + EAX*0x4 + 0xc]
        080b079b 89 44 24 1c     MOV        dword ptr [ESP + local_60],EAX
        080b079f 3b 50 08        CMP        EDX,dword ptr [EAX + 0x8]
        080b07a2 0f 8d 13        JGE        LAB_080b09bb
                 02 00 00
        080b07a8 eb 0c           JMP        LAB_080b07b6
        080b07aa 8d              ??         8Dh
        080b07ab b6              ??         B6h
        080b07ac 00              ??         00h
        080b07ad 00              ??         00h
        080b07ae 00              ??         00h
        080b07af 00              ??         00h
                             LAB_080b07b0                                    XREF[1]:     080b09b5(j)
        080b07b0 8b 35 74        MOV        ESI,dword ptr [g]
                 7a 28 08
                             LAB_080b07b6                                    XREF[1]:     080b07a8(j)
        080b07b6 8b 5c 24 14     MOV        EBX,dword ptr [ESP + local_68]
        080b07ba 8b 44 24 1c     MOV        EAX,dword ptr [ESP + local_60]
        080b07be 83 c0 0c        ADD        EAX,0xc
        080b07c1 8d 1c 9b        LEA        EBX,[EBX + EBX*0x4]
        080b07c4 89 44 24 0c     MOV        dword ptr [ESP + local_70],EAX
        080b07c8 89 dd           MOV        EBP,EBX
        080b07ca 89 5c 24 10     MOV        dword ptr [ESP + local_6c],EBX
        080b07ce c1 e5 02        SHL        EBP,0x2
        080b07d1 83 ec 0c        SUB        ESP,0xc
        080b07d4 8b 7c 05 00     MOV        EDI,dword ptr [EBP + EAX*0x1]
        080b07d8 8d 1c bd        LEA        EBX,[EDI*0x4 + 0x0]
                 00 00 00 00
        080b07df 8b b4 33        MOV        ESI,dword ptr [EBX + ESI*0x1 + 0x1ce64]
                 64 ce 01 00
        080b07e6 56              PUSH       ESI
        080b07e7 e8 04 f1        CALL       PlayerNew                                        undefined PlayerNew()
                 ff ff
        080b07ec 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080b07f2 89 c6           MOV        ESI,EAX
        080b07f4 83 c4 10        ADD        ESP,0x10
        080b07f7 85 f6           TEST       ESI,ESI
        080b07f9 89 b4 0b        MOV        dword ptr [EBX + ECX*0x1 + 0x1cf64],ESI
                 64 cf 01 00
        080b0800 75 26           JNZ        LAB_080b0828
        080b0802 80 b9 48        CMP        byte ptr [ECX + 0x20748],0x0
                 07 02 00 00
        080b0809 75 16           JNZ        LAB_080b0821
        080b080b 8d 81 48        LEA        EAX,[ECX + 0x20748]
                 07 02 00
        080b0811 53              PUSH       EBX
        080b0812 57              PUSH       EDI
        080b0813 68 6c a6        PUSH       s_Can't_create_player_%i_0827a66c                = "Can't create player %i"
                 27 08
                             LAB_080b0818                                    XREF[1]:     080b0711(j)
        080b0818 50              PUSH       EAX
        080b0819 e8 02 46        CALL       sprintf                                          int sprintf(char * __s, char * _
                 12 00
        080b081e 83 c4 10        ADD        ESP,0x10
                             LAB_080b0821                                    XREF[1]:     080b0809(j)
        080b0821 31 c0           XOR        EAX,EAX
        080b0823 e9 98 01        JMP        LAB_080b09c0
                 00 00
                             LAB_080b0828                                    XREF[1]:     080b0800(j)
        080b0828 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 80 00 00 00
        080b082f 31 c0           XOR        EAX,EAX
        080b0831 85 d2           TEST       EDX,EDX
        080b0833 0f 95 c0        SETNZ      AL
        080b0836 40              INC        EAX
        080b0837 89 46 0c        MOV        dword ptr [ESI + 0xc],EAX
        080b083a 8b 94 24        MOV        EDX,dword ptr [ESP + Stack[0x4]]
                 80 00 00 00
        080b0841 89 56 10        MOV        dword ptr [ESI + 0x10],EDX
        080b0844 8b 5c 24 18     MOV        EBX,dword ptr [ESP + local_64]
        080b0848 8b 03           MOV        EAX,dword ptr [EBX]
        080b084a 89 46 14        MOV        dword ptr [ESI + 0x14],EAX
        080b084d 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_68]
        080b0851 89 46 18        MOV        dword ptr [ESI + 0x18],EAX
        080b0854 50              PUSH       EAX
        080b0855 50              PUSH       EAX
        080b0856 8b 9c 24        MOV        EBX,dword ptr [ESP + Stack[0x4]]
                 88 00 00 00
        080b085d 8d 14 5b        LEA        EDX,[EBX + EBX*0x2]
        080b0860 8d 14 93        LEA        EDX,[EBX + EDX*0x4]
        080b0863 8d 14 93        LEA        EDX,[EBX + EDX*0x4]
        080b0866 8d 14 93        LEA        EDX,[EBX + EDX*0x4]
        080b0869 c1 e2 03        SHL        EDX,0x3
        080b086c 29 da           SUB        EDX,EBX
        080b086e 8b 5c 24 20     MOV        EBX,dword ptr [ESP + local_64]
        080b0872 8b 03           MOV        EAX,dword ptr [EBX]
        080b0874 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080b0877 8d 04 80        LEA        EAX,[EAX + EAX*0x4]
        080b087a c1 e0 06        SHL        EAX,0x6
        080b087d 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        080b0880 8b 44 24 18     MOV        EAX,dword ptr [ESP + local_6c]
        080b0884 01 e8           ADD        EAX,EBP
        080b0886 01 ca           ADD        EDX,ECX
        080b0888 c1 e0 04        SHL        EAX,0x4
        080b088b 8d 94 10        LEA        EDX,[EAX + EDX*0x1 + 0xd05c]
                 5c d0 00 00
        080b0892 52              PUSH       EDX
        080b0893 56              PUSH       ESI
        080b0894 e8 77 fb        CALL       PlayerRestorePersistVars                         undefined PlayerRestorePersistVa
                 ff ff
        080b0899 8b 54 24 2c     MOV        EDX,dword ptr [ESP + local_60]
        080b089d 83 c4 10        ADD        ESP,0x10
        080b08a0 8b 44 15 18     MOV        EAX,dword ptr [EBP + EDX*0x1 + 0x18]
        080b08a4 8d 14 40        LEA        EDX,[EAX + EAX*0x2]
        080b08a7 8d 14 90        LEA        EDX,[EAX + EDX*0x4]
        080b08aa a1 74 7a        MOV        EAX,[g]
                 28 08
        080b08af 8d 94 90        LEA        EDX,[EAX + EDX*0x4 + 0x1ccec]
                 ec cc 01 00
        080b08b6 89 96 60        MOV        dword ptr [ESI + 0x960],EDX
                 09 00 00
        080b08bc 8b 5c 24 0c     MOV        EBX,dword ptr [ESP + local_70]
        080b08c0 8b 5c 2b 10     MOV        EBX,dword ptr [EBX + EBP*0x1 + 0x10]
        080b08c4 85 db           TEST       EBX,EBX
        080b08c6 74 0a           JZ         LAB_080b08d2
        080b08c8 c7 86 2c        MOV        dword ptr [ESI + 0x262c],0x1
                 26 00 00
                 01 00 00 00
                             LAB_080b08d2                                    XREF[1]:     080b08c6(j)
        080b08d2 51              PUSH       ECX
        080b08d3 6a ff           PUSH       -0x1
        080b08d5 8b 5c 24 24     MOV        EBX,dword ptr [ESP + local_60]
        080b08d9 83 c3 14        ADD        EBX,0x14
        080b08dc 8b 54 1d 00     MOV        EDX,dword ptr [EBP + EBX*0x1]
        080b08e0 52              PUSH       EDX
        080b08e1 56              PUSH       ESI
        080b08e2 e8 e9 f4        CALL       PlayerChangePal                                  undefined PlayerChangePal()
                 ff ff
        080b08e7 8b 44 1d 00     MOV        EAX,dword ptr [EBP + EBX*0x1]
        080b08eb 89 86 c4        MOV        dword ptr [ESI + 0x13c4],EAX
                 13 00 00
        080b08f1 5d              POP        EBP
        080b08f2 58              POP        EAX
        080b08f3 6a 01           PUSH       0x1
        080b08f5 57              PUSH       EDI
        080b08f6 e8 d5 0c        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 00 00
        080b08fb 89 34 24        MOV        dword ptr [ESP]=>local_8c,ESI
        080b08fe e8 8d f7        CALL       PlayerCheck                                      undefined PlayerCheck()
                 ff ff
        080b0903 8d 4f ff        LEA        ECX,[EDI + -0x1]
        080b0906 83 c4 10        ADD        ESP,0x10
        080b0909 89 7e 08        MOV        dword ptr [ESI + 0x8],EDI
        080b090c 83 f9 1f        CMP        ECX,0x1f
        080b090f 7f 43           JG         LAB_080b0954
        080b0911 8d 54 24 40     LEA        EDX=>local_3c,[ESP + 0x40]
        080b0915 b8 01 00        MOV        EAX,0x1
                 00 00
        080b091a 53              PUSH       EBX
        080b091b 6a 01           PUSH       0x1
        080b091d d3 e0           SHL        EAX,CL
        080b091f 50              PUSH       EAX
        080b0920 52              PUSH       EDX
        080b0921 e8 ea 83        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 00 00
        080b0926 8b 44 24 4c     MOV        EAX,dword ptr [ESP + local_40]
        080b092a 89 86 c8        MOV        dword ptr [ESI + 0x25c8],EAX
                 25 00 00
        080b0930 8b 44 24 50     MOV        EAX,dword ptr [ESP + local_3c]
        080b0934 89 86 cc        MOV        dword ptr [ESI + 0x25cc],EAX
                 25 00 00
        080b093a 8b 44 24 54     MOV        EAX,dword ptr [ESP + local_38]
        080b093e 89 86 d0        MOV        dword ptr [ESI + 0x25d0],EAX
                 25 00 00
        080b0944 8b 44 24 58     MOV        EAX,dword ptr [ESP + local_34]
        080b0948 89 86 d4        MOV        dword ptr [ESI + 0x25d4],EAX
                 25 00 00
        080b094e 8b 44 24 5c     MOV        EAX,dword ptr [ESP + local_30]
        080b0952 eb 44           JMP        LAB_080b0998
                             LAB_080b0954                                    XREF[1]:     080b090f(j)
        080b0954 8d 54 24 20     LEA        EDX=>local_5c,[ESP + 0x20]
        080b0958 8d 4f df        LEA        ECX,[EDI + -0x21]
        080b095b 50              PUSH       EAX
        080b095c b8 01 00        MOV        EAX,0x1
                 00 00
        080b0961 6a 02           PUSH       0x2
        080b0963 d3 e0           SHL        EAX,CL
        080b0965 50              PUSH       EAX
        080b0966 52              PUSH       EDX
        080b0967 e8 a4 83        CALL       PalGrpMakeFlag                                   undefined PalGrpMakeFlag()
                 00 00
        080b096c 8b 44 24 2c     MOV        EAX,dword ptr [ESP + local_60]
        080b0970 89 86 c8        MOV        dword ptr [ESI + 0x25c8],EAX
                 25 00 00
        080b0976 8b 44 24 30     MOV        EAX,dword ptr [ESP + local_5c]
        080b097a 89 86 cc        MOV        dword ptr [ESI + 0x25cc],EAX
                 25 00 00
        080b0980 8b 44 24 34     MOV        EAX,dword ptr [ESP + local_58]
        080b0984 89 86 d0        MOV        dword ptr [ESI + 0x25d0],EAX
                 25 00 00
        080b098a 8b 44 24 38     MOV        EAX,dword ptr [ESP + local_54]
        080b098e 89 86 d4        MOV        dword ptr [ESI + 0x25d4],EAX
                 25 00 00
        080b0994 8b 44 24 3c     MOV        EAX,dword ptr [ESP + local_50]
                             LAB_080b0998                                    XREF[1]:     080b0952(j)
        080b0998 83 c4 0c        ADD        ESP,0xc
        080b099b 89 86 d8        MOV        dword ptr [ESI + 0x25d8],EAX
                 25 00 00
        080b09a1 8b 6c 24 14     MOV        EBP,dword ptr [ESP + local_6c]
        080b09a5 8b 54 24 1c     MOV        EDX,dword ptr [ESP + local_64]
        080b09a9 45              INC        EBP
        080b09aa 89 6c 24 14     MOV        dword ptr [ESP + local_6c],EBP
        080b09ae 8b 44 24 14     MOV        EAX,dword ptr [ESP + local_6c]
        080b09b2 3b 42 08        CMP        EAX,dword ptr [EDX + 0x8]
        080b09b5 0f 8c f5        JL         LAB_080b07b0
                 fd ff ff
                             LAB_080b09bb                                    XREF[1]:     080b07a2(j)
        080b09bb b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_080b09c0                                    XREF[1]:     080b0823(j)
        080b09c0 83 c4 6c        ADD        ESP,0x6c
        080b09c3 5b              POP        EBX
        080b09c4 5e              POP        ESI
        080b09c5 5f              POP        EDI
        080b09c6 5d              POP        EBP
        080b09c7 c3              RET
