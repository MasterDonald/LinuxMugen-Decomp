                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameUnloadStage()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x14]:4 local_14                                XREF[6]:     0809e74d(W),
                                                                                                   0809e75a(R),
                                                                                                   0809e791(R),
                                                                                                   0809e878(R),
                                                                                                   0809e884(W),
                                                                                                   0809e88c(R)
             undefined4        Stack[-0x18]:4 local_18                                XREF[4]:     0809e76f(W),
                                                                                                   0809e85d(R),
                                                                                                   0809e87c(R),
                                                                                                   0809e888(W)
                             GameUnloadStage                                 XREF[3]:     Entry Point(*),
                                                                                          GamePlay:0809d5a8(c),
                                                                                          GameReloadStage:0809ed55(c)
        0809e730 55              PUSH       EBP
        0809e731 57              PUSH       EDI
        0809e732 56              PUSH       ESI
        0809e733 53              PUSH       EBX
        0809e734 83 ec 18        SUB        ESP,0x18
        0809e737 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e73c 05 a8 42        ADD        EAX,0x42a8
                 00 00
        0809e741 50              PUSH       EAX
        0809e742 e8 f9 73        CALL       BGMFree                                          undefined BGMFree()
                 fe ff
        0809e747 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809e74d c7 44 24        MOV        dword ptr [ESP + local_14],0x1
                 18 01 00
                 00 00
        0809e755 83 c4 10        ADD        ESP,0x10
        0809e758 89 c8           MOV        EAX,ECX
        0809e75a 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
        0809e75e 3b 91 54        CMP        EDX,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809e764 0f 8f 37        JG         LAB_0809e8a1
                 01 00 00
        0809e76a bf 64 cf        MOV        EDI,0x1cf64
                 01 00
        0809e76f c7 44 24        MOV        dword ptr [ESP + local_18],0x4
                 04 04 00
                 00 00
                             LAB_0809e777                                    XREF[1]:     0809e89b(j)
        0809e777 8b 44 07 04     MOV        EAX,dword ptr [EDI + EAX*0x1 + 0x4]
        0809e77b 85 c0           TEST       EAX,EAX
        0809e77d 0f 84 f5        JZ         LAB_0809e878
                 00 00 00
        0809e783 8b 98 58        MOV        EBX,dword ptr [EAX + 0x158]
                 01 00 00
        0809e789 85 db           TEST       EBX,EBX
        0809e78b 74 17           JZ         LAB_0809e7a4
        0809e78d 51              PUSH       ECX
        0809e78e 51              PUSH       ECX
        0809e78f 6a 00           PUSH       0x0
        0809e791 8b 54 24 14     MOV        EDX,dword ptr [ESP + local_14]
        0809e795 52              PUSH       EDX
        0809e796 e8 35 2e        CALL       PlayerEnableSet                                  undefined PlayerEnableSet()
                 01 00
        0809e79b 83 c4 10        ADD        ESP,0x10
        0809e79e 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809e7a4                                    XREF[1]:     0809e78b(j)
        0809e7a4 8d 71 04        LEA        ESI,[ECX + 0x4]
        0809e7a7 8b 1c 37        MOV        EBX,dword ptr [EDI + ESI*0x1]
        0809e7aa 8b 53 10        MOV        EDX,dword ptr [EBX + 0x10]
        0809e7ad 83 fa ff        CMP        EDX,-0x1
        0809e7b0 74 4a           JZ         LAB_0809e7fc
        0809e7b2 50              PUSH       EAX
        0809e7b3 50              PUSH       EAX
        0809e7b4 8d 04 52        LEA        EAX,[EDX + EDX*0x2]
        0809e7b7 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e7ba 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e7bd 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e7c0 c1 e0 03        SHL        EAX,0x3
        0809e7c3 29 d0           SUB        EAX,EDX
        0809e7c5 8b 53 14        MOV        EDX,dword ptr [EBX + 0x14]
        0809e7c8 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        0809e7cb 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        0809e7ce c1 e2 06        SHL        EDX,0x6
        0809e7d1 8d 04 82        LEA        EAX,[EDX + EAX*0x4]
        0809e7d4 8b 53 18        MOV        EDX,dword ptr [EBX + 0x18]
        0809e7d7 01 c8           ADD        EAX,ECX
        0809e7d9 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        0809e7dc 8d 14 92        LEA        EDX,[EDX + EDX*0x4]
        0809e7df c1 e2 04        SHL        EDX,0x4
        0809e7e2 8d 84 02        LEA        EAX,[EDX + EAX*0x1 + 0xd05c]
                 5c d0 00 00
        0809e7e9 50              PUSH       EAX
        0809e7ea 8b 04 37        MOV        EAX,dword ptr [EDI + ESI*0x1]
        0809e7ed 50              PUSH       EAX
        0809e7ee e8 ad 1b        CALL       PlayerSavePersistVars                            undefined PlayerSavePersistVars()
                 01 00
        0809e7f3 83 c4 10        ADD        ESP,0x10
        0809e7f6 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_0809e7fc                                    XREF[1]:     0809e7b0(j)
        0809e7fc 8b 54 0f 04     MOV        EDX,dword ptr [EDI + ECX*0x1 + 0x4]
        0809e800 83 cb ff        OR         EBX,0xffffffff
        0809e803 8b 02           MOV        EAX,dword ptr [EDX]
        0809e805 85 c0           TEST       EAX,EAX
        0809e807 74 2d           JZ         LAB_0809e836
        0809e809 8b b2 24        MOV        ESI,dword ptr [EDX + 0x2624]
                 26 00 00
        0809e80f 85 f6           TEST       ESI,ESI
        0809e811 75 23           JNZ        LAB_0809e836
        0809e813 8b 98 a8        MOV        EBX,dword ptr [EAX + 0x10a8]
                 10 00 00
        0809e819 8b 81 cc        MOV        EAX,dword ptr [ECX + 0xcecc]
                 ce 00 00
        0809e81f 39 42 0c        CMP        dword ptr [EDX + 0xc],EAX
        0809e822 75 10           JNZ        LAB_0809e834
        0809e824 8b a9 84        MOV        EBP,dword ptr [ECX + 0xe984]
                 e9 00 00
        0809e82a 8b b1 e8        MOV        ESI,dword ptr [ECX + 0xcee8]
                 ce 00 00
        0809e830 01 f5           ADD        EBP,ESI
        0809e832 eb 02           JMP        LAB_0809e836
                             LAB_0809e834                                    XREF[1]:     0809e822(j)
        0809e834 31 ed           XOR        EBP,EBP
                             LAB_0809e836                                    XREF[3]:     0809e807(j), 0809e811(j),
                                                                                          0809e832(j)
        0809e836 83 ec 0c        SUB        ESP,0xc
        0809e839 8b 4c 0f 04     MOV        ECX,dword ptr [EDI + ECX*0x1 + 0x4]
        0809e83d 51              PUSH       ECX
        0809e83e e8 3d 17        CALL       PlayerFree                                       undefined PlayerFree()
                 01 00
        0809e843 83 c4 10        ADD        ESP,0x10
        0809e846 83 fb ff        CMP        EBX,-0x1
        0809e849 74 0c           JZ         LAB_0809e857
        0809e84b 52              PUSH       EDX
        0809e84c 52              PUSH       EDX
        0809e84d 55              PUSH       EBP
        0809e84e 53              PUSH       EBX
        0809e84f e8 fc e0        CALL       PlayerCacheFreePriority                          undefined PlayerCacheFreePriorit
                 00 00
        0809e854 83 c4 10        ADD        ESP,0x10
                             LAB_0809e857                                    XREF[1]:     0809e849(j)
        0809e857 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809e85d 8b 4c 24 04     MOV        ECX,dword ptr [ESP + local_18]
        0809e861 8d 42 04        LEA        EAX,[EDX + 0x4]
        0809e864 c7 84 08        MOV        dword ptr [EAX + ECX*0x1 + 0x1ce60],0x0
                 60 ce 01
                 00 00 00
        0809e86f c7 04 07        MOV        dword ptr [EDI + EAX*0x1],0x0
                 00 00 00 00
        0809e876 89 d1           MOV        ECX,EDX
                             LAB_0809e878                                    XREF[1]:     0809e77d(j)
        0809e878 8b 74 24 08     MOV        ESI,dword ptr [ESP + local_14]
        0809e87c 8b 44 24 04     MOV        EAX,dword ptr [ESP + local_18]
        0809e880 46              INC        ESI
        0809e881 83 c0 04        ADD        EAX,0x4
        0809e884 89 74 24 08     MOV        dword ptr [ESP + local_14],ESI
        0809e888 89 44 24 04     MOV        dword ptr [ESP + local_18],EAX
        0809e88c 8b 54 24 08     MOV        EDX,dword ptr [ESP + local_14]
        0809e890 83 c7 04        ADD        EDI,0x4
        0809e893 89 c8           MOV        EAX,ECX
        0809e895 3b 91 54        CMP        EDX,dword ptr [ECX + 0x1ce54]
                 ce 01 00
        0809e89b 0f 8e d6        JLE        LAB_0809e777
                 fe ff ff
                             LAB_0809e8a1                                    XREF[1]:     0809e764(j)
        0809e8a1 83 ec 0c        SUB        ESP,0xc
        0809e8a4 8b 99 50        MOV        EBX,dword ptr [ECX + 0x1bb50]
                 bb 01 00
        0809e8aa 53              PUSH       EBX
        0809e8ab e8 10 db        CALL       BGArrayFree                                      undefined BGArrayFree()
                 fa ff
        0809e8b0 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809e8b5 83 c4 1c        ADD        ESP,0x1c
        0809e8b8 c7 80 50        MOV        dword ptr [EAX + 0x1bb50],0x0
                 bb 01 00
                 00 00 00 00
        0809e8c2 5b              POP        EBX
        0809e8c3 5e              POP        ESI
        0809e8c4 5f              POP        EDI
        0809e8c5 5d              POP        EBP
        0809e8c6 c3              RET
