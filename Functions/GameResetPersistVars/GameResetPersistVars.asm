                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameResetPersistVars()
             undefined         <UNASSIGNED>   <RETURN>
             undefined4        Stack[-0x1c]:4 local_1c                                XREF[1]:     080b02fa(*)
                             GameResetPersistVars                            XREF[7]:     Entry Point(*),
                                                                                          ContinueScreenLoop:080980a6(c),
                                                                                          MainLoop:0809cb85(c),
                                                                                          MainLoop:0809cd41(c),
                                                                                          MainLoop:0809d0dd(c),
                                                                                          GameReloadStage:0809ed5a(c),
                                                                                          GameMatchReset:0809ee20(c)
        080b02f0 83 ec 18        SUB        ESP,0x18
        080b02f3 6a 00           PUSH       0x0
        080b02f5 e8 16 00        CALL       TeamResetPersistVars                             undefined TeamResetPersistVars()
                 00 00
        080b02fa c7 04 24        MOV        dword ptr [ESP]=>local_1c,0x1
                 01 00 00 00
        080b0301 e8 0a 00        CALL       TeamResetPersistVars                             undefined TeamResetPersistVars()
                 00 00
        080b0306 83 c4 1c        ADD        ESP,0x1c
        080b0309 c3              RET
