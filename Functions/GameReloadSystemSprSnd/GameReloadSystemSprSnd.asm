                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined GameReloadSystemSprSnd()
             undefined         <UNASSIGNED>   <RETURN>
             undefined         Stack[-0x100   local_100c                              XREF[1]:     080d3c2a(*)
             undefined4        Stack[-0x101   local_101c                              XREF[1]:     080d3c34(*)
                             GameReloadSystemSprSnd                          XREF[4]:     Entry Point(*),
                                                                                          SysExplodCreate_Sys:0808fcdf(c),
                                                                                          SysExplodCreateDraw_Sys:0808fd87
                                                                                          GamePlay:0809d5f0(c)
        080d3b40 53              PUSH       EBX
        080d3b41 81 ec 08        SUB        ESP,0x1008
                 10 00 00
        080d3b47 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3b4d 8b 82 00        MOV        EAX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3b53 85 c0           TEST       EAX,EAX
        080d3b55 75 47           JNZ        LAB_080d3b9e
        080d3b57 80 ba 04        CMP        byte ptr [EDX + 0x16b04],0x0
                 6b 01 00 00
        080d3b5e 74 3e           JZ         LAB_080d3b9e
        080d3b60 83 ec 0c        SUB        ESP,0xc
        080d3b63 8d 82 04        LEA        EAX,[EDX + 0x16b04]
                 6b 01 00
        080d3b69 50              PUSH       EAX
        080d3b6a e8 d1 83        CALL       SpriteReadFile                                   undefined SpriteReadFile()
                 f8 ff
        080d3b6f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3b75 83 c4 10        ADD        ESP,0x10
        080d3b78 85 c0           TEST       EAX,EAX
        080d3b7a 89 82 00        MOV        dword ptr [EDX + 0x16b00],EAX
                 6b 01 00
        080d3b80 75 1c           JNZ        LAB_080d3b9e
        080d3b82 8d 82 04        LEA        EAX,[EDX + 0x16b04]
                 6b 01 00
        080d3b88 53              PUSH       EBX
        080d3b89 53              PUSH       EBX
        080d3b8a 50              PUSH       EAX
        080d3b8b 68 e0 d9        PUSH       s_Out_of_memory_loading_system_fil_0827d9e0      = "Out of memory loading system
                 27 08
        080d3b90 e8 3b 98        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3b95 83 c4 10        ADD        ESP,0x10
        080d3b98 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3b9e                                    XREF[3]:     080d3b55(j), 080d3b5e(j),
                                                                                          080d3b80(j)
        080d3b9e 8b 8a 04        MOV        ECX,dword ptr [EDX + 0x17b04]
                 7b 01 00
        080d3ba4 85 c9           TEST       ECX,ECX
        080d3ba6 75 47           JNZ        LAB_080d3bef
        080d3ba8 80 ba 08        CMP        byte ptr [EDX + 0x17b08],0x0
                 7b 01 00 00
        080d3baf 74 3e           JZ         LAB_080d3bef
        080d3bb1 83 ec 0c        SUB        ESP,0xc
        080d3bb4 8d 82 08        LEA        EAX,[EDX + 0x17b08]
                 7b 01 00
        080d3bba 50              PUSH       EAX
        080d3bbb e8 90 3b        CALL       SndReadFile                                      undefined SndReadFile()
                 f8 ff
        080d3bc0 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3bc6 83 c4 10        ADD        ESP,0x10
        080d3bc9 85 c0           TEST       EAX,EAX
        080d3bcb 89 82 04        MOV        dword ptr [EDX + 0x17b04],EAX
                 7b 01 00
        080d3bd1 75 1c           JNZ        LAB_080d3bef
        080d3bd3 50              PUSH       EAX
        080d3bd4 50              PUSH       EAX
        080d3bd5 8d 82 08        LEA        EAX,[EDX + 0x17b08]
                 7b 01 00
        080d3bdb 50              PUSH       EAX
        080d3bdc 68 e0 d9        PUSH       s_Out_of_memory_loading_system_fil_0827d9e0      = "Out of memory loading system
                 27 08
        080d3be1 e8 ea 97        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3be6 83 c4 10        ADD        ESP,0x10
        080d3be9 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3bef                                    XREF[3]:     080d3ba6(j), 080d3baf(j),
                                                                                          080d3bd1(j)
        080d3bef 8b 9a 38        MOV        EBX,dword ptr [EDX + 0x18b38]
                 8b 01 00
        080d3bf5 85 db           TEST       EBX,EBX
        080d3bf7 74 22           JZ         LAB_080d3c1b
        080d3bf9 8b 8a 34        MOV        ECX,dword ptr [EDX + 0x18b34]
                 8b 01 00
        080d3bff 85 c9           TEST       ECX,ECX
        080d3c01 74 18           JZ         LAB_080d3c1b
        080d3c03 8b 82 3c        MOV        EAX,dword ptr [EDX + 0x18b3c]
                 8b 01 00
        080d3c09 85 c0           TEST       EAX,EAX
        080d3c0b 74 0e           JZ         LAB_080d3c1b
        080d3c0d 8b 9a 40        MOV        EBX,dword ptr [EDX + 0x18b40]
                 8b 01 00
        080d3c13 85 db           TEST       EBX,EBX
        080d3c15 0f 85 a8        JNZ        LAB_080d3dc3
                 01 00 00
                             LAB_080d3c1b                                    XREF[3]:     080d3bf7(j), 080d3c01(j),
                                                                                          080d3c0b(j)
        080d3c1b 8d 82 00        LEA        EAX,[EDX + 0x14b00]
                 4b 01 00
        080d3c21 51              PUSH       ECX
        080d3c22 50              PUSH       EAX
        080d3c23 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3c29 50              PUSH       EAX
        080d3c2a 8d 5c 24 0c     LEA        EBX=>local_100c,[ESP + 0xc]
        080d3c2e 53              PUSH       EBX
        080d3c2f e8 0c d5        CALL       joindirfile                                      undefined joindirfile()
                 f7 ff
        080d3c34 89 1c 24        MOV        dword ptr [ESP]=>local_101c,EBX
        080d3c37 e8 84 7b        CALL       TPReadFile                                       undefined TPReadFile()
                 fa ff
        080d3c3c 89 c3           MOV        EBX,EAX
        080d3c3e 83 c4 10        ADD        ESP,0x10
        080d3c41 85 db           TEST       EBX,EBX
        080d3c43 75 1a           JNZ        LAB_080d3c5f
        080d3c45 50              PUSH       EAX
        080d3c46 50              PUSH       EAX
        080d3c47 a1 74 7a        MOV        EAX,[g]
                 28 08
        080d3c4c 05 00 4b        ADD        EAX,0x14b00
                 01 00
        080d3c51 50              PUSH       EAX
        080d3c52 68 e0 d9        PUSH       s_Out_of_memory_loading_system_fil_0827d9e0      = "Out of memory loading system
                 27 08
        080d3c57 e8 74 97        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3c5c 83 c4 10        ADD        ESP,0x10
                             LAB_080d3c5f                                    XREF[1]:     080d3c43(j)
        080d3c5f 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3c65 8b 8a 38        MOV        ECX,dword ptr [EDX + 0x18b38]
                 8b 01 00
        080d3c6b 85 c9           TEST       ECX,ECX
        080d3c6d 75 4c           JNZ        LAB_080d3cbb
        080d3c6f 83 ec 0c        SUB        ESP,0xc
        080d3c72 8b 82 08        MOV        EAX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3c78 50              PUSH       EAX
        080d3c79 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3c7f 8b 8a 00        MOV        ECX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3c85 51              PUSH       ECX
        080d3c86 68 51 d3        PUSH       s_TitleBG_0827d341+16                            = "TitleBG"
                 27 08
        080d3c8b 50              PUSH       EAX
        080d3c8c 53              PUSH       EBX
        080d3c8d e8 3e 75        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3c92 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3c98 83 c4 20        ADD        ESP,0x20
        080d3c9b 85 c0           TEST       EAX,EAX
        080d3c9d 89 82 38        MOV        dword ptr [EDX + 0x18b38],EAX
                 8b 01 00
        080d3ca3 75 16           JNZ        LAB_080d3cbb
        080d3ca5 83 ec 0c        SUB        ESP,0xc
        080d3ca8 68 41 d3        PUSH       s_Error_reloading_TitleBG_0827d341               = "Error reloading TitleBG"
                 27 08
        080d3cad e8 1e 97        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3cb2 83 c4 10        ADD        ESP,0x10
        080d3cb5 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3cbb                                    XREF[2]:     080d3c6d(j), 080d3ca3(j)
        080d3cbb 8b 82 34        MOV        EAX,dword ptr [EDX + 0x18b34]
                 8b 01 00
        080d3cc1 85 c0           TEST       EAX,EAX
        080d3cc3 75 4c           JNZ        LAB_080d3d11
        080d3cc5 83 ec 0c        SUB        ESP,0xc
        080d3cc8 8b 8a 08        MOV        ECX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3cce 51              PUSH       ECX
        080d3ccf 8b 82 00        MOV        EAX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3cd5 50              PUSH       EAX
        080d3cd6 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3cdc 68 69 d3        PUSH       s_VersusBG_0827d359+16                           = "VersusBG"
                 27 08
        080d3ce1 50              PUSH       EAX
        080d3ce2 53              PUSH       EBX
        080d3ce3 e8 e8 74        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3ce8 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3cee 83 c4 20        ADD        ESP,0x20
        080d3cf1 85 c0           TEST       EAX,EAX
        080d3cf3 89 82 34        MOV        dword ptr [EDX + 0x18b34],EAX
                 8b 01 00
        080d3cf9 75 16           JNZ        LAB_080d3d11
        080d3cfb 83 ec 0c        SUB        ESP,0xc
        080d3cfe 68 59 d3        PUSH       s_Error_reloading_VersusBG_0827d359              = "Error reloading VersusBG"
                 27 08
        080d3d03 e8 c8 96        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3d08 83 c4 10        ADD        ESP,0x10
        080d3d0b 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3d11                                    XREF[2]:     080d3cc3(j), 080d3cf9(j)
        080d3d11 8b 8a 3c        MOV        ECX,dword ptr [EDX + 0x18b3c]
                 8b 01 00
        080d3d17 85 c9           TEST       ECX,ECX
        080d3d19 75 4c           JNZ        LAB_080d3d67
        080d3d1b 83 ec 0c        SUB        ESP,0xc
        080d3d1e 8b 82 08        MOV        EAX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3d24 50              PUSH       EAX
        080d3d25 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3d2b 8b 8a 00        MOV        ECX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3d31 51              PUSH       ECX
        080d3d32 68 82 d3        PUSH       s_SelectBG_0827d372+16                           = "SelectBG"
                 27 08
        080d3d37 50              PUSH       EAX
        080d3d38 53              PUSH       EBX
        080d3d39 e8 92 74        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3d3e 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3d44 83 c4 20        ADD        ESP,0x20
        080d3d47 85 c0           TEST       EAX,EAX
        080d3d49 89 82 3c        MOV        dword ptr [EDX + 0x18b3c],EAX
                 8b 01 00
        080d3d4f 75 16           JNZ        LAB_080d3d67
        080d3d51 83 ec 0c        SUB        ESP,0xc
        080d3d54 68 72 d3        PUSH       s_Error_reloading_SelectBG_0827d372              = "Error reloading SelectBG"
                 27 08
        080d3d59 e8 72 96        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3d5e 83 c4 10        ADD        ESP,0x10
        080d3d61 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
                             LAB_080d3d67                                    XREF[2]:     080d3d19(j), 080d3d4f(j)
        080d3d67 8b 82 40        MOV        EAX,dword ptr [EDX + 0x18b40]
                 8b 01 00
        080d3d6d 85 c0           TEST       EAX,EAX
        080d3d6f 75 46           JNZ        LAB_080d3db7
        080d3d71 83 ec 0c        SUB        ESP,0xc
        080d3d74 8b 8a 08        MOV        ECX,dword ptr [EDX + 0x18b08]
                 8b 01 00
        080d3d7a 51              PUSH       ECX
        080d3d7b 8b 82 00        MOV        EAX,dword ptr [EDX + 0x16b00]
                 6b 01 00
        080d3d81 50              PUSH       EAX
        080d3d82 8d 82 ff        LEA        EAX,[EDX + 0x15aff]
                 5a 01 00
        080d3d88 68 9b d3        PUSH       s_OptionBG_0827d38b+16                           = "OptionBG"
                 27 08
        080d3d8d 50              PUSH       EAX
        080d3d8e 53              PUSH       EBX
        080d3d8f e8 3c 74        CALL       BGArrayReadTP                                    undefined BGArrayReadTP()
                 f7 ff
        080d3d94 8b 15 74        MOV        EDX,dword ptr [g]
                 7a 28 08
        080d3d9a 83 c4 20        ADD        ESP,0x20
        080d3d9d 85 c0           TEST       EAX,EAX
        080d3d9f 89 82 40        MOV        dword ptr [EDX + 0x18b40],EAX
                 8b 01 00
        080d3da5 75 10           JNZ        LAB_080d3db7
        080d3da7 83 ec 0c        SUB        ESP,0xc
        080d3daa 68 8b d3        PUSH       s_Error_reloading_OptionBG_0827d38b              = "Error reloading OptionBG"
                 27 08
        080d3daf e8 1c 96        CALL       ErrorExitM                                       undefined ErrorExitM()
                 fb ff
        080d3db4 83 c4 10        ADD        ESP,0x10
                             LAB_080d3db7                                    XREF[2]:     080d3d6f(j), 080d3da5(j)
        080d3db7 83 ec 0c        SUB        ESP,0xc
        080d3dba 53              PUSH       EBX
        080d3dbb e8 40 74        CALL       TPFree                                           undefined TPFree()
                 fa ff
        080d3dc0 83 c4 10        ADD        ESP,0x10
                             LAB_080d3dc3                                    XREF[1]:     080d3c15(j)
        080d3dc3 81 c4 08        ADD        ESP,0x1008
                 10 00 00
        080d3dc9 5b              POP        EBX
        080d3dca c3              RET
