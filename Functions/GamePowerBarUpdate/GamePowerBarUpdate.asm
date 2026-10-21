                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GamePowerBarUpdate()
             undefined         <UNASSIGNED>   <RETURN>
                             GamePowerBarUpdate                              XREF[2]:     GameBarsUpdate:08096919(c),
                                                                                          GameBarsUpdate:08096921(c)
        08096c10 57              PUSH       EDI
        08096c11 a1 74 7a        MOV        EAX,[g]
                 28 08
        08096c16 56              PUSH       ESI
        08096c17 53              PUSH       EBX
        08096c18 8b 90 24        MOV        EDX,dword ptr [EAX + 0x1cc24]
                 cc 01 00
        08096c1e 8b 74 24 10     MOV        ESI,dword ptr [ESP + Stack[0x4]]
        08096c22 85 d2           TEST       EDX,EDX
        08096c24 75 45           JNZ        LAB_08096c6b
        08096c26 8b 80 34        MOV        EAX,dword ptr [EAX + 0x1d434]
                 d4 01 00
        08096c2c 85 c0           TEST       EAX,EAX
        08096c2e 75 3b           JNZ        LAB_08096c6b
        08096c30 8b 9e 80        MOV        EBX,dword ptr [ESI + 0x180]
                 01 00 00
        08096c36 8b 8e 78        MOV        ECX,dword ptr [ESI + 0x178]
                 01 00 00
        08096c3c 39 cb           CMP        EBX,ECX
        08096c3e 7d 21           JGE        LAB_08096c61
        08096c40 89 cf           MOV        EDI,ECX
        08096c42 ba 67 66        MOV        EDX,0x66666667
                 66 66
        08096c47 29 df           SUB        EDI,EBX
        08096c49 89 f8           MOV        EAX,EDI
        08096c4b c1 ff 1f        SAR        EDI,0x1f
        08096c4e f7 ea           IMUL       EDX
        08096c50 c1 fa 03        SAR        EDX,0x3
        08096c53 29 fa           SUB        EDX,EDI
        08096c55 8d 44 1a 0f     LEA        EAX,[EDX + EBX*0x1 + 0xf]
        08096c59 89 86 80        MOV        dword ptr [ESI + 0x180],EAX
                 01 00 00
        08096c5f 89 c3           MOV        EBX,EAX
                             LAB_08096c61                                    XREF[1]:     08096c3e(j)
        08096c61 39 cb           CMP        EBX,ECX
        08096c63 7e 0c           JLE        LAB_08096c71
        08096c65 89 8e 80        MOV        dword ptr [ESI + 0x180],ECX
                 01 00 00
                             LAB_08096c6b                                    XREF[2]:     08096c24(j), 08096c2e(j)
        08096c6b 8b 8e 78        MOV        ECX,dword ptr [ESI + 0x178]
                 01 00 00
                             LAB_08096c71                                    XREF[1]:     08096c63(j)
        08096c71 89 c8           MOV        EAX,ECX
        08096c73 bb d3 4d        MOV        EBX,0x10624dd3
                 62 10
        08096c78 f7 eb           IMUL       EBX
        08096c7a c1 fa 06        SAR        EDX,0x6
        08096c7d 89 c8           MOV        EAX,ECX
        08096c7f c1 f8 1f        SAR        EAX,0x1f
        08096c82 29 c2           SUB        EDX,EAX
        08096c84 8b 86 84        MOV        EAX,dword ptr [ESI + 0x184]
                 01 00 00
        08096c8a 39 d0           CMP        EAX,EDX
        08096c8c 74 5f           JZ         LAB_08096ced
        08096c8e 39 d0           CMP        EAX,EDX
        08096c90 7d 44           JGE        LAB_08096cd6
        08096c92 83 fa 09        CMP        EDX,0x9
        08096c95 7f 3f           JG         LAB_08096cd6
        08096c97 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        08096c9d 6a 00           PUSH       0x0
        08096c9f 8b bc 91        MOV        EDI,dword ptr [ECX + EDX*0x4 + 0x1209c]
                 9c 20 01 00
        08096ca6 57              PUSH       EDI
        08096ca7 8b be 78        MOV        EDI,dword ptr [ESI + 0x178]
                 01 00 00
        08096cad 89 f8           MOV        EAX,EDI
        08096caf c1 ff 1f        SAR        EDI,0x1f
        08096cb2 f7 eb           IMUL       EBX
        08096cb4 c1 fa 06        SAR        EDX,0x6
        08096cb7 29 fa           SUB        EDX,EDI
        08096cb9 8b 9c 91        MOV        EBX,dword ptr [ECX + EDX*0x4 + 0x12074]
                 74 20 01 00
        08096cc0 53              PUSH       EBX
        08096cc1 8b 91 54        MOV        EDX,dword ptr [ECX + 0x10554]
                 05 01 00
        08096cc7 52              PUSH       EDX
        08096cc8 e8 03 33        CALL       GameSndPlay                                      undefined GameSndPlay()
                 02 00
        08096ccd 83 c4 10        ADD        ESP,0x10
        08096cd0 8b 8e 78        MOV        ECX,dword ptr [ESI + 0x178]
                 01 00 00
                             LAB_08096cd6                                    XREF[2]:     08096c90(j), 08096c95(j)
        08096cd6 89 c8           MOV        EAX,ECX
        08096cd8 c1 f9 1f        SAR        ECX,0x1f
        08096cdb ba d3 4d        MOV        EDX,0x10624dd3
                 62 10
        08096ce0 f7 ea           IMUL       EDX
        08096ce2 c1 fa 06        SAR        EDX,0x6
        08096ce5 29 ca           SUB        EDX,ECX
        08096ce7 89 96 84        MOV        dword ptr [ESI + 0x184],EDX
                 01 00 00
                             LAB_08096ced                                    XREF[1]:     08096c8c(j)
        08096ced 5b              POP        EBX
        08096cee 5e              POP        ESI
        08096cef 5f              POP        EDI
        08096cf0 c3              RET
