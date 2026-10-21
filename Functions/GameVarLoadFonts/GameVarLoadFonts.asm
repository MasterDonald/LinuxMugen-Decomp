                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameVarLoadFonts()
             undefined         <UNASSIGNED>   <RETURN>
                             GameVarLoadFonts                                XREF[2]:     Entry Point(*),
                                                                                          GameInit:0809919d(c)
        0809c160 83 ec 18        SUB        ESP,0x18
        0809c163 68 a9 74        PUSH       DAT_082774a9                                     = 66h    f
                 27 08
        0809c168 e8 03 63        CALL       FontReadFile                                     undefined FontReadFile()
                 fb ff
        0809c16d 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809c173 83 c4 10        ADD        ESP,0x10
        0809c176 85 c0           TEST       EAX,EAX
        0809c178 89 82 e8        MOV        dword ptr [EDX + 0x104e8],EAX
                 04 01 00
        0809c17e 75 20           JNZ        LAB_0809c1a0
        0809c180 83 ec 0c        SUB        ESP,0xc
        0809c183 6a 01           PUSH       0x1
        0809c185 e8 76 4b        CALL       ErrorSet                                         undefined ErrorSet()
                 fb ff
        0809c18a 83 c4 0c        ADD        ESP,0xc
        0809c18d a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c192 05 48 07        ADD        EAX,0x20748
                 02 00
        0809c197 6a 0a           PUSH       0xa
        0809c199 68 ae 74        PUSH       s_f-4x6.fnt_082774ae                             = "f-4x6.fnt"
                 27 08
        0809c19e eb 3e           JMP        LAB_0809c1de
                             LAB_0809c1a0                                    XREF[1]:     0809c17e(j)
        0809c1a0 83 ec 0c        SUB        ESP,0xc
        0809c1a3 68 ed 8f        PUSH       DAT_08278fed                                     = 66h    f
                 27 08
        0809c1a8 e8 c3 62        CALL       FontReadFile                                     undefined FontReadFile()
                 fb ff
        0809c1ad 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        0809c1b3 83 c4 10        ADD        ESP,0x10
        0809c1b6 85 c0           TEST       EAX,EAX
        0809c1b8 89 82 ec        MOV        dword ptr [EDX + 0x104ec],EAX
                 04 01 00
        0809c1be 75 30           JNZ        LAB_0809c1f0
        0809c1c0 83 ec 0c        SUB        ESP,0xc
        0809c1c3 6a 01           PUSH       0x1
        0809c1c5 e8 36 4b        CALL       ErrorSet                                         undefined ErrorSet()
                 fb ff
        0809c1ca 83 c4 0c        ADD        ESP,0xc
        0809c1cd a1 74 7a        MOV        EAX,[g]
                 28 08
        0809c1d2 05 48 07        ADD        EAX,0x20748
                 02 00
        0809c1d7 6a 0a           PUSH       0xa
        0809c1d9 68 f2 8f        PUSH       s_f-6x9.fnt_08278ff2                             = "f-6x9.fnt"
                 27 08
                             LAB_0809c1de                                    XREF[1]:     0809c19e(j)
        0809c1de 50              PUSH       EAX
        0809c1df e8 4c 4e        CALL       memcpy                                           void * memcpy(void * __dest, voi
                 14 00
        0809c1e4 83 c4 10        ADD        ESP,0x10
        0809c1e7 e8 14 00        CALL       GameVarDeInit                                    undefined GameVarDeInit()
                 00 00
        0809c1ec 31 c0           XOR        EAX,EAX
        0809c1ee eb 05           JMP        LAB_0809c1f5
                             LAB_0809c1f0                                    XREF[1]:     0809c1be(j)
        0809c1f0 b8 01 00        MOV        EAX,0x1
                 00 00
                             LAB_0809c1f5                                    XREF[1]:     0809c1ee(j)
        0809c1f5 83 c4 0c        ADD        ESP,0xc
        0809c1f8 c3              RET
