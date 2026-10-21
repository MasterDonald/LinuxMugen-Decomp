                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameDemoUpdate()
             undefined         <UNASSIGNED>   <RETURN>
                             GameDemoUpdate                                  XREF[1]:     GameUpdate:08091514(c)
        08092180 56              PUSH       ESI
        08092181 53              PUSH       EBX
        08092182 56              PUSH       ESI
        08092183 31 f6           XOR        ESI,ESI
        08092185 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        0809218b 83 b9 44        CMP        dword ptr [ECX + 0x1d444],0x2
                 d4 01 00 02
        08092192 0f 85 aa        JNZ        LAB_08092242
                 00 00 00
        08092198 8b 99 a0        MOV        EBX,dword ptr [ECX + 0x1d3a0]
                 d3 01 00
        0809219e 85 db           TEST       EBX,EBX
        080921a0 0f 84 8f        JZ         LAB_08092235
                 00 00 00
        080921a6 8b 99 b4        MOV        EBX,dword ptr [ECX + 0x1d3b4]
                 d3 01 00
        080921ac 8b 91 c4        MOV        EDX,dword ptr [ECX + 0x1d3c4]
                 d3 01 00
        080921b2 8d 43 88        LEA        EAX,[EBX + -0x78]
        080921b5 39 c2           CMP        EDX,EAX
        080921b7 7c 2e           JL         LAB_080921e7
        080921b9 89 d9           MOV        ECX,EBX
        080921bb 29 d1           SUB        ECX,EDX
        080921bd ba 89 88        MOV        EDX,0x88888889
                 88 88
        080921c2 c1 e1 08        SHL        ECX,0x8
        080921c5 89 c8           MOV        EAX,ECX
        080921c7 f7 ea           IMUL       EDX
        080921c9 89 c8           MOV        EAX,ECX
        080921cb 01 ca           ADD        EDX,ECX
        080921cd c1 f8 1f        SAR        EAX,0x1f
        080921d0 c1 fa 06        SAR        EDX,0x6
        080921d3 51              PUSH       ECX
        080921d4 29 c2           SUB        EDX,EAX
        080921d6 52              PUSH       EDX
        080921d7 52              PUSH       EDX
        080921d8 52              PUSH       EDX
        080921d9 e8 92 38        CALL       MasterPalMul                                     undefined MasterPalMul()
                 fc ff
        080921de 83 c4 10        ADD        ESP,0x10
        080921e1 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_080921e7                                    XREF[1]:     080921b7(j)
        080921e7 8b 81 b4        MOV        EAX,dword ptr [ECX + 0x1d3b4]
                 d3 01 00
        080921ed 39 81 c4        CMP        dword ptr [ECX + 0x1d3c4],EAX
                 d3 01 00
        080921f3 7c 40           JL         LAB_08092235
        080921f5 8b 91 c8        MOV        EDX,dword ptr [ECX + 0x1d3c8]
                 d3 01 00
        080921fb be 01 00        MOV        ESI,0x1
                 00 00
        08092200 c7 81 d4        MOV        dword ptr [ECX + 0x104d4],0x1
                 04 01 00
                 01 00 00 00
        0809220a 8d 42 01        LEA        EAX,[EDX + 0x1]
        0809220d 3b 91 a4        CMP        EDX,dword ptr [ECX + 0x1d3a4]
                 d3 01 00
        08092213 89 81 c8        MOV        dword ptr [ECX + 0x1d3c8],EAX
                 d3 01 00
        08092219 7c 14           JL         LAB_0809222f
        0809221b c7 81 c8        MOV        dword ptr [ECX + 0x1d3c8],0x0
                 d3 01 00
                 00 00 00 00
        08092225 c7 81 44        MOV        dword ptr [ECX + 0x8d44],0x0
                 8d 00 00
                 00 00 00 00
                             LAB_0809222f                                    XREF[1]:     08092219(j)
        0809222f 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
                             LAB_08092235                                    XREF[2]:     080921a0(j), 080921f3(j)
        08092235 8b 81 c4        MOV        EAX,dword ptr [ECX + 0x1d3c4]
                 d3 01 00
        0809223b 40              INC        EAX
        0809223c 89 81 c4        MOV        dword ptr [ECX + 0x1d3c4],EAX
                 d3 01 00
                             LAB_08092242                                    XREF[1]:     08092192(j)
        08092242 5b              POP        EBX
        08092243 89 f0           MOV        EAX,ESI
        08092245 5b              POP        EBX
        08092246 5e              POP        ESI
        08092247 c3              RET
