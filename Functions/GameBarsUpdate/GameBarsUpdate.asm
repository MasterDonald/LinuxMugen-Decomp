                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameBarsUpdate()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[2]:     080968ea(*),
                                                                                                   0809691e(*)
                             GameBarsUpdate                                  XREF[1]:     GameLoop:0809050b(c)
        080968c0 55              PUSH       EBP
        080968c1 57              PUSH       EDI
        080968c2 56              PUSH       ESI
        080968c3 53              PUSH       EBX
        080968c4 83 ec 18        SUB        ESP,0x18
        080968c7 a1 74 7a        MOV        EAX,[g]
                 28 08
        080968cc 8b b8 68        MOV        EDI,dword ptr [EAX + 0x1cf68]
                 cf 01 00
        080968d2 8b a8 6c        MOV        EBP,dword ptr [EAX + 0x1cf6c]
                 cf 01 00
        080968d8 8b 98 70        MOV        EBX,dword ptr [EAX + 0x1cf70]
                 cf 01 00
        080968de 8b b0 74        MOV        ESI,dword ptr [EAX + 0x1cf74]
                 cf 01 00
        080968e4 57              PUSH       EDI
        080968e5 e8 46 00        CALL       GameLifeBarUpdate                                undefined GameLifeBarUpdate()
                 00 00
        080968ea 89 2c 24        MOV        dword ptr [ESP]=>local_2c,EBP
        080968ed e8 3e 00        CALL       GameLifeBarUpdate                                undefined GameLifeBarUpdate()
                 00 00
        080968f2 83 c4 10        ADD        ESP,0x10
        080968f5 85 db           TEST       EBX,EBX
        080968f7 74 0c           JZ         LAB_08096905
        080968f9 83 ec 0c        SUB        ESP,0xc
        080968fc 53              PUSH       EBX
        080968fd e8 2e 00        CALL       GameLifeBarUpdate                                undefined GameLifeBarUpdate()
                 00 00
        08096902 83 c4 10        ADD        ESP,0x10
                             LAB_08096905                                    XREF[1]:     080968f7(j)
        08096905 85 f6           TEST       ESI,ESI
        08096907 74 0c           JZ         LAB_08096915
        08096909 83 ec 0c        SUB        ESP,0xc
        0809690c 56              PUSH       ESI
        0809690d e8 1e 00        CALL       GameLifeBarUpdate                                undefined GameLifeBarUpdate()
                 00 00
        08096912 83 c4 10        ADD        ESP,0x10
                             LAB_08096915                                    XREF[1]:     08096907(j)
        08096915 83 ec 0c        SUB        ESP,0xc
        08096918 57              PUSH       EDI
        08096919 e8 f2 02        CALL       GamePowerBarUpdate                               undefined GamePowerBarUpdate()
                 00 00
        0809691e 89 2c 24        MOV        dword ptr [ESP]=>local_2c,EBP
        08096921 e8 ea 02        CALL       GamePowerBarUpdate                               undefined GamePowerBarUpdate()
                 00 00
        08096926 83 c4 1c        ADD        ESP,0x1c
        08096929 5b              POP        EBX
        0809692a 5e              POP        ESI
        0809692b 5f              POP        EDI
        0809692c 5d              POP        EBP
        0809692d c3              RET
