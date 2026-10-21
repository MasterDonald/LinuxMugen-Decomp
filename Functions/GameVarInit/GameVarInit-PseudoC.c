
undefined4 GameVarInit(void)

{
    void *pvVar1;
    size_t sVar2;
    FILE *pFVar3;
    undefined1 uVar4;
    undefined1 uVar5;
    char *pcVar6;
    FILE *pFVar7;
    tm *ptVar8;
    char *pcVar9;
    int iVar10;
    _IO_FILE *p_Var11;
    uint __seed;
    char **__s;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    char *pcVar12;
    __off_t _Var13;
    undefined4 uVar14;
    __off_t _Var15;
    undefined4 uVar16;
    time_t local_30;
    undefined4 local_2c;
    undefined4 local_28;
    undefined4 local_24;
    char *local_1c;
    int local_18;
    char *local_14;

    pcVar6 = getcwd((char *)g,0xfff);
    pFVar3 = g;
    if (pcVar6 == (char *)0x0) {
        LAB_0809bfc7:
        GameVarDeInit();
    }
    else {
        uVar4 = MUGENDATE_Y._2_1_;
        uVar5 = MUGENDATE_Y._3_1_;
        pFVar3[0x37]._cur_column = (undefined2)MUGENDATE_Y;
        pFVar3[0x37]._vtable_offset = uVar4;
        pFVar3[0x37]._shortbuf[0] = uVar5;
        pFVar3[0x37]._flags2 = MUGENDATE_M;
        _Var13 = MUGENDATE_D;
        pFVar3[0x37]._old_offset = MUGENDATE_D;
        pFVar3[0x165].__pad1 = (void *)0x0;
        _Var15 = _Var13;
        pFVar7 = fopen("_mugen__.tmp","wb");
        pFVar3 = g;
        if (pFVar7 != (FILE *)0x0) {
            g[0x37]._fileno = 1;
            fclose(pFVar3);
            remove("_mugen__.tmp");
        }
        time(&local_30);
        ptVar8 = gmtime(&local_30);
        pcVar6 = (char *)(ptVar8->tm_year + 0x76c);
        pcVar12 = (char *)(ptVar8->tm_mon + 1);
        local_18 = ptVar8->tm_mday;
        local_24 = MUGENEXPDATE_Y;
        local_2c = MUGENEXPDATE_M;
        local_28 = MUGENEXPDATE_D;
        local_1c = pcVar12;
        local_14 = pcVar6;
        pFVar7 = (FILE *)MDYDateCmp(pcVar12,local_18,pcVar6,MUGENEXPDATE_M,MUGENEXPDATE_D,MUGENEXPDATE_Y
        ,_Var13,_Var15);
        pFVar3 = g;
        if (0 < (int)pFVar7) {
            pFVar3[0x328]._unused2[0xc] = '\x01';
            pFVar3[0x328]._unused2[0xd] = '\0';
            pFVar3[0x328]._unused2[0xe] = '\0';
            pFVar3[0x328]._unused2[0xf] = '\0';
            pFVar7 = pFVar3;
        }
        pcVar9 = (char *)V_AllocDepth(0x140,0xf0,0x10,pFVar7);
        pFVar3 = g;
        g[0x1c3]._IO_buf_base = pcVar9;
        if (pcVar9 == (char *)0x0) {
            GameVarDeInit();
            __s = &g[0x382]._IO_buf_end;
            pcVar9 = "Can\'t create screen buffer.";
            pcVar6 = pcVar12;
        }
        else {
            pcVar12 = pFVar3[0x1c3]._IO_buf_base;
            V_SetBuf(pcVar12,0,pcVar6,pcVar6);
            W_Cls(0);
            pFVar3 = g + 0x1c3;
            iVar10 = *(int *)(g[0x32b]._unused2 + 0x1c);
            g[0x1c3]._IO_backup_base = pFVar3->_IO_buf_base;
            if (iVar10 != 0) {
                pcVar9 = (char *)V_AllocDepth(0x280,0x1e0,0x10,pFVar3->_IO_buf_base);
                pFVar3 = g;
                g[0x1c3]._IO_save_base = pcVar9;
                if (pcVar9 == (char *)0x0) {
                    pcVar6 = (char *)GameVarDeInit();
                    pcVar9 = "Can\'t create screen buffer.";
                    __s = &g[0x382]._IO_buf_end;
                    goto LAB_0809c142;
                }
                pFVar3[0x1c3]._IO_backup_base = pcVar9;
            }
            pvVar1 = g[0x32c].__pad2;
            iVar10 = PRSprArrayNew(pvVar1);
            g[0x1c3]._fileno = iVar10;
            if (iVar10 == 0) {
                GameVarDeInit();
                __s = &g[0x382]._IO_buf_end;
                pcVar9 = "Can\'t create priority sprites layer 1.";
            }
            else {
                p_Var11 = (_IO_FILE *)AnimPerArrayNew(0x20);
                pFVar3 = g;
                g[0x1c3]._chain = p_Var11;
                if (p_Var11 == (_IO_FILE *)0x0) {
                    GameVarDeInit();
                    __s = &g[0x382]._IO_buf_end;
                    pcVar9 = "Can\'t create persistent animation array.";
                    pcVar6 = pcVar12;
                }
                else {
                    iVar10 = GameAftImgArrayNew(pFVar3[0x32c].__pad1,0x3c,extraout_ECX,extraout_ECX);
                    g[0x1c3]._old_offset = iVar10;
                    if (iVar10 == 0) {
                        pcVar6 = (char *)GameVarDeInit();
                        pcVar9 = "Can\'t init afterimages.";
                        __s = &g[0x382]._IO_buf_end;
                    }
                    else {
                        iVar10 = ecalloc(1,0xc,pvVar1,pvVar1);
                        pFVar3 = g;
                        g[0x1c3]._flags2 = iVar10;
                        if (iVar10 == 0) {
                            GameVarDeInit();
                            __s = &g[0x382]._IO_buf_end;
                            pcVar9 = "Can\'t create palgroup array.";
                        }
                        else {
                            iVar10 = IntCircBufInit(&pFVar3[799].__pad2,0x20,pcVar12,pcVar12);
                            pFVar3 = g;
                            if (iVar10 == 0) goto LAB_0809bfc7;
                            *(undefined4 *)((int)&g[0x1c3]._offset + 4) =
                            *(undefined4 *)(g[0x32b]._unused2 + 0x20);
                            pFVar3[0x23c]._cur_column = 1;
                            pFVar3[0x23c]._vtable_offset = '\0';
                            pFVar3[0x23c]._shortbuf[0] = '\0';
                            uVar14 = 0xb;
                            uVar16 = extraout_ECX_00;
                            memcpy((void *)((int)&pFVar3[0x23c]._offset + 4),"system.def",0xb);
                            pFVar3 = g;
                            sVar2 = g[0x32c].__pad5;
                            *(size_t *)g[799]._unused2 = sVar2;
                            pFVar3[799]._mode = sVar2 + 4;
                            *(undefined4 *)((int)&pFVar3[600]._IO_buf_base + 3) = 0x61746164;
                            *(undefined2 *)((int)&pFVar3[600]._IO_buf_end + 3) = 0x2f;
                            pFVar3[0x31b]._unused2[8] = '\0';
                            pFVar3[0x31b]._unused2[9] = '\0';
                            pFVar3[0x31b]._unused2[10] = '\0';
                            pFVar3[0x31b]._unused2[0xb] = '\0';
                            pFVar3[0x31b]._unused2[0xc] = -1;
                            pFVar3[0x31b]._unused2[0xd] = -1;
                            pFVar3[0x31b]._unused2[0xe] = -1;
                            pFVar3[0x31b]._unused2[0xf] = -1;
                            pFVar3[0x31b]._unused2[0x14] = '\0';
                            pFVar3[0x31b]._unused2[0x15] = '\0';
                            pFVar3[0x31b]._unused2[0x16] = '\0';
                            pFVar3[0x31b]._unused2[0x17] = '\0';
                            pFVar3[0x31b]._unused2[0x10] = '\0';
                            pFVar3[0x31b]._unused2[0x11] = '\0';
                            pFVar3[0x31b]._unused2[0x12] = '\0';
                            pFVar3[0x31b]._unused2[0x13] = '\0';
                            pFVar3[0x31c]._IO_write_base = (char *)0x0;
                            pFVar3[0x31c]._IO_read_base = (char *)0x0;
                            pFVar3[0x31c]._IO_write_end = (char *)0x0;
                            pFVar3[0x31c]._IO_write_ptr = (char *)0x0;
                            pFVar3[0x31c]._IO_backup_base = (char *)0x0;
                            pFVar3[0x31c]._IO_save_base = (char *)0x0;
                            pFVar3[0x1c3]._IO_write_end = (char *)0x0;
                            pFVar3[0x323]._IO_save_end = (char *)0x1;
                            pFVar3[0x323]._markers = (_IO_marker *)0x1;
                            pFVar3[0x323]._chain = (_IO_FILE *)0x0;
                            pFVar3[0x323]._fileno = 0;
                            pFVar3[0x325]._IO_read_ptr = (char *)0xffffffff;
                            pFVar3[799]._unused2[4] = '\x04';
                            pFVar3[799]._unused2[5] = '\0';
                            pFVar3[799]._unused2[6] = '\0';
                            pFVar3[799]._unused2[7] = '\0';
                            pFVar3[0x165].__pad2 = (void *)0x1;
                            pFVar3[0x165].__pad3 = (void *)0x2;
                            __seed = time((time_t *)0x0);
                            *(uint *)(g[0x31b]._unused2 + 0x20) = __seed;
                            srandom(__seed);
                            pcVar12 = (char *)ClipboardNew(0x4d,8,uVar14,uVar16);
                            g[0x382]._IO_buf_base = pcVar12;
                            if (pcVar12 != (char *)0x0) {
                                return 1;
                            }
                            GameVarDeInit();
                            __s = &g[0x382]._IO_buf_end;
                            pcVar9 = "Can\'t create clipboard.";
                        }
                    }
                }
            }
        }
        LAB_0809c142:
        sprintf((char *)__s,pcVar9,pcVar6,pcVar6);
    }
    return 0;
}

