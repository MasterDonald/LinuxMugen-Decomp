                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameRoundWinner()
             undefined         <UNASSIGNED>   <RETURN>
                             GameRoundWinner                                 XREF[6]:     Entry Point(*),
                                                                                          GameRoundUpdate:08092e00(c),
                                                                                          GameRoundDraw:08093696(c),
                                                                                          GameRoundDraw:08093740(c),
                                                                                          GameNextRound:0809eb82(c),
                                                                                          LogMatch:0809fc97(c)
        0809f960 a1 74 7a        MOV        EAX,[g]
                 28 08
        0809f965 8b 80 48        MOV        EAX,dword ptr [EAX + 0x1d448]
                 d4 01 00
        0809f96b c3              RET
