                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameUnloadSystemSprSnd()
             undefined         <UNASSIGNED>   <RETURN>
                             GameUnloadSystemSprSnd                          XREF[2]:     Entry Point(*),
                                                                                          GamePlay:0809d17f(c)
        080d3dd0 83 ec 18        SUB        ESP,0x18
        080d3dd3 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3dd8 8b 88 40        MOV        ECX,dword ptr [EAX + 0x18b40]
                 8b 01 00
        080d3dde 51              PUSH       ECX
        080d3ddf e8 dc 85        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d3de4 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3de9 c7 80 40        MOV        dword ptr [EAX + 0x18b40],0x0
                 8b 01 00
                 00 00 00 00
        080d3df3 5a              POP        EDX
        080d3df4 8b 88 3c        MOV        ECX,dword ptr [EAX + 0x18b3c]
                 8b 01 00
        080d3dfa 51              PUSH       ECX
        080d3dfb e8 c0 85        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d3e00 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3e05 c7 80 3c        MOV        dword ptr [EAX + 0x18b3c],0x0
                 8b 01 00
                 00 00 00 00
        080d3e0f 5a              POP        EDX
        080d3e10 8b 88 34        MOV        ECX,dword ptr [EAX + 0x18b34]
                 8b 01 00
        080d3e16 51              PUSH       ECX
        080d3e17 e8 a4 85        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d3e1c a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3e21 c7 80 34        MOV        dword ptr [EAX + 0x18b34],0x0
                 8b 01 00
                 00 00 00 00
        080d3e2b 5a              POP        EDX
        080d3e2c 8b 80 38        MOV        EAX,dword ptr [EAX + 0x18b38]
                 8b 01 00
        080d3e32 50              PUSH       EAX
        080d3e33 e8 88 85        CALL       BGArrayFree                                      undefined BGArrayFree()
                 f7 ff
        080d3e38 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3e3d c7 80 38        MOV        dword ptr [EAX + 0x18b38],0x0
                 8b 01 00
                 00 00 00 00
        080d3e47 59              POP        ECX
        080d3e48 8b 90 00        MOV        EDX,dword ptr [EAX + 0x16b00]
                 6b 01 00
        080d3e4e 52              PUSH       EDX
        080d3e4f e8 6c 4d        CALL       SpriteArrayFree                                  undefined SpriteArrayFree()
                 f8 ff
        080d3e54 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3e59 83 c4 1c        ADD        ESP,0x1c
        080d3e5c c7 80 00        MOV        dword ptr [EAX + 0x16b00],0x0
                 6b 01 00
                 00 00 00 00
        080d3e66 c3              RET
