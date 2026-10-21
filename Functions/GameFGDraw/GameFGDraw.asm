                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameFGDraw()
             undefined         <UNASSIGNED>   <RETURN>
                             GameFGDraw                                      XREF[2]:     GameLoop:0809088e(c),
                                                                                          ContinueScreenLoop:08097e4b(c)
        080952f0 83 ec 14        SUB        ESP,0x14
        080952f3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080952f8 6a 01           PUSH       0x1
        080952fa 8b 88 50        MOV        ECX,dword ptr [EAX + 0x1bb50]
                 bb 01 00
        08095300 51              PUSH       ECX
        08095301 e8 5a 77        CALL       BGArrayDrawLayer                                 undefined BGArrayDrawLayer()
                 fb ff
        08095306 83 c4 1c        ADD        ESP,0x1c
        08095309 c3              RET
