                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameSndPlayID()
             undefined         <UNASSIGNED>   <RETURN>
                             GameSndPlayID                                   XREF[3]:     Entry Point(*),
                                                                                          CharacterSelectScreen:08087ba3(c
                                                                                          GameSndPlay:080b9fe9(c)
        080ba000 55              PUSH       EBP
        080ba001 57              PUSH       EDI
        080ba002 56              PUSH       ESI
        080ba003 53              PUSH       EBX
        080ba004 83 ec 18        SUB        ESP,0x18
        080ba007 8b 54 24 3c     MOV        EDX,dword ptr [ESP + Stack[0x14]]
        080ba00b 8b 6c 24 2c     MOV        EBP,dword ptr [ESP + Stack[0x4]]
        080ba00f 8b 74 24 30     MOV        ESI,dword ptr [ESP + Stack[0x8]]
        080ba013 8b 5c 24 34     MOV        EBX,dword ptr [ESP + Stack[0xc]]
        080ba017 8b 7c 24 38     MOV        EDI,dword ptr [ESP + Stack[0x10]]
        080ba01b 52              PUSH       EDX
        080ba01c e8 5f dd        CALL       SndCorrectVolOff                                 undefined SndCorrectVolOff()
                 f9 ff
        080ba021 8b 0d 74        MOV        ECX,dword ptr [g]
                 7a 28 08
        080ba027 89 c2           MOV        EDX,EAX
        080ba029 83 c4 10        ADD        ESP,0x10
        080ba02c 8b 81 d0        MOV        EAX,dword ptr [ECX + 0x1bbd0]
                 bb 01 00
        080ba032 01 c2           ADD        EDX,EAX
        080ba034 89 d0           MOV        EAX,EDX
        080ba036 c1 e8 1f        SHR        EAX,0x1f
        080ba039 48              DEC        EAX
        080ba03a 21 c2           AND        EDX,EAX
        080ba03c 81 fa ff        CMP        EDX,0xff
                 00 00 00
        080ba042 7e 05           JLE        LAB_080ba049
        080ba044 ba ff 00        MOV        EDX,0xff
                 00 00
                             LAB_080ba049                                    XREF[1]:     080ba042(j)
        080ba049 8b 81 cc        MOV        EAX,dword ptr [ECX + 0x1bbcc]
                 bb 01 00
        080ba04f 85 c0           TEST       EAX,EAX
        080ba051 74 33           JZ         LAB_080ba086
        080ba053 85 f6           TEST       ESI,ESI
        080ba055 74 2f           JZ         LAB_080ba086
        080ba057 8b 89 20        MOV        ECX,dword ptr [ECX + 0x1cc20]
                 cc 01 00
        080ba05d 85 c9           TEST       ECX,ECX
        080ba05f 75 25           JNZ        LAB_080ba086
        080ba061 83 fb ff        CMP        EBX,-0x1
        080ba064 74 20           JZ         LAB_080ba086
        080ba066 89 7c 24 2c     MOV        dword ptr [ESP + Stack[0x10]],EDI
        080ba06a 89 5c 24 28     MOV        dword ptr [ESP + Stack[0xc]],EBX
        080ba06e 89 74 24 24     MOV        dword ptr [ESP + Stack[0x8]],ESI
        080ba072 89 6c 24 20     MOV        dword ptr [ESP + Stack[0x4]],EBP
        080ba076 89 54 24 30     MOV        dword ptr [ESP + Stack[0x14]],EDX
        080ba07a 83 c4 0c        ADD        ESP,0xc
        080ba07d 5b              POP        EBX
        080ba07e 5e              POP        ESI
        080ba07f 5f              POP        EDI
        080ba080 5d              POP        EBP
        080ba081 e9 ba d4        JMP        SndIDPlay                                        undefined SndIDPlay()
                 f9 ff
                             -- Flow Override: CALL_RETURN (CALL_TERMINATOR)
                             LAB_080ba086                                    XREF[4]:     080ba051(j), 080ba055(j),
                                                                                          080ba05f(j), 080ba064(j)
        080ba086 83 c4 0c        ADD        ESP,0xc
        080ba089 5b              POP        EBX
        080ba08a 5e              POP        ESI
        080ba08b 5f              POP        EDI
        080ba08c 5d              POP        EBP
        080ba08d c3              RET
