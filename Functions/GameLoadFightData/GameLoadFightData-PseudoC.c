
undefined4 GameLoadFightData(char *param_1)

{
    int iVar1;
    int iVar2;
    bool bVar3;
    char *pcVar4;
    int iVar5;
    int iVar6;
    int iVar7;
    undefined4 *puVar8;
    int iVar9;
    char *extraout_ECX;
    undefined4 extraout_ECX_00;
    char *extraout_ECX_01;
    char *extraout_ECX_02;
    char *extraout_ECX_03;
    char *extraout_ECX_04;
    undefined4 extraout_ECX_05;
    char *extraout_ECX_06;
    undefined4 extraout_ECX_07;
    char *extraout_ECX_08;
    undefined4 extraout_ECX_09;
    char *extraout_ECX_10;
    char *extraout_ECX_11;
    char *extraout_ECX_12;
    char *extraout_ECX_13;
    char *pcVar10;
    undefined8 uVar11;
    undefined8 uVar12;
    char *pcVar13;
    char *__format;
    int iVar14;
    int local_2248;
    int local_2244;
    int local_2240;
    int local_223c;
    int local_2238;
    int local_2234;
    int local_2230;
    int local_222c;
    int local_2228;
    int local_2224;
    int local_2220;
    int local_221c;
    int local_2218;
    int local_2214;
    int local_2210;
    int local_220c;
    int local_2208;
    int local_2204;
    int local_2200;
    int local_21fc;
    int local_21f8;
    int local_21f4;
    int local_21f0;
    int local_21ec;
    int local_21e8;
    int local_21e4;
    int local_21e0;
    int local_21dc;
    int local_21d8;
    int local_21d4;
    int local_21d0;
    int local_21cc;
    int local_21c8;
    int local_21c0;
    int local_21bc;
    int local_21b8;
    int local_21b0;
    int local_21ac;
    int local_21a8;
    int local_21a0;
    int local_219c;
    int local_2198;
    int local_2194;
    int local_2190;
    int local_218c;
    int local_2188;
    int local_2180;
    int local_217c;
    int local_2174;
    int local_2170;
    int local_216c;
    int local_2168;
    int local_2164;
    int local_2160;
    int local_215c;
    int local_2158;
    int local_2154;
    int local_2150;
    int local_214c;
    int local_2148;
    int local_2144;
    int local_2140;
    int local_213c;
    int local_2138;
    int local_2134;
    int local_2130;
    int local_212c;
    undefined1 local_20fc [4096];
    char local_10fc [4096];
    char local_fc [32];
    char local_dc [204];

    iVar9 = g;
    iVar14 = g + 0x10524;
    local_2244 = g + 0x1055c;
    uVar11 = TPReadFile(param_1);
    pcVar13 = (char *)uVar11;
    if (pcVar13 == (char *)0x0) {
        pcVar4 = (char *)(g + 0x20748);
        __format = "Can\'t open %s";
        pcVar10 = extraout_ECX;
    }
    else {
        splitdirfile(param_1,local_20fc,0,(int)((ulonglong)uVar11 >> 0x20));
        iVar5 = TPGroupSeek(pcVar13,"Files");
        if (iVar5 == -1) {
            pcVar4 = (char *)(g + 0x20748);
            __format = "Missing files info";
            pcVar10 = param_1;
        }
        else {
            uVar11 = TPGetValue(pcVar13,"sff",extraout_ECX_00,extraout_ECX_00);
            param_1 = (char *)((ulonglong)uVar11 >> 0x20);
            pcVar10 = (char *)uVar11;
            if (pcVar10 == (char *)0x0) {
                pcVar4 = (char *)(g + 0x20748);
                __format = "Can\'t read Files|sff";
                pcVar10 = param_1;
            }
            else {
                iVar5 = FindFileDirEx(pcVar10,local_10fc,0,local_20fc);
                if (iVar5 == 0) {
                    return 0;
                }
                iVar5 = SpriteReadFile(local_10fc);
                *(int *)(iVar9 + 0x10524) = iVar5;
                if (iVar5 == 0) {
                    pcVar4 = (char *)(g + 0x20748);
                    __format = "Can\'t read %s";
                    param_1 = pcVar10;
                    pcVar10 = pcVar13;
                }
                else {
                    param_1 = (char *)TPGetValue(pcVar13,"snd",pcVar10,pcVar10);
                    if (param_1 == (char *)0x0) {
                        pcVar4 = (char *)(g + 0x20748);
                        __format = "Can\'t read Files|snd";
                        param_1 = local_10fc;
                        pcVar10 = local_10fc;
                    }
                    else {
                        iVar5 = FindFileDirEx(param_1,local_10fc,0,local_20fc);
                        if (iVar5 == 0) {
                            return 0;
                        }
                        uVar11 = SndReadFile(local_10fc);
                        iVar5 = (int)uVar11;
                        *(int *)(iVar9 + 0x10554) = iVar5;
                        if (iVar5 == 0) {
                            pcVar4 = (char *)(g + 0x20748);
                            __format = "Can\'t read %s";
                            pcVar10 = (char *)((ulonglong)uVar11 >> 0x20);
                        }
                        else {
                            param_1 = (char *)TPGetValue(pcVar13,"fightfx.sff",iVar5,iVar5);
                            if (param_1 == (char *)0x0) {
                                pcVar4 = (char *)(g + 0x20748);
                                __format = "Can\'t read Files|fightfx.sff";
                                pcVar10 = (char *)0x0;
                            }
                            else {
                                iVar5 = FindFileDirEx(param_1,local_10fc,0,local_20fc);
                                if (iVar5 == 0) {
                                    return 0;
                                }
                                iVar6 = SpriteReadFile(local_10fc);
                                iVar5 = g;
                                *(int *)(g + 0x1051c) = iVar6;
                                if (iVar6 == 0) {
                                    pcVar4 = (char *)(iVar5 + 0x20748);
                                    __format = "Can\'t load %s";
                                    pcVar10 = extraout_ECX_01;
                                }
                                else {
                                    param_1 = (char *)TPGetValue(pcVar13,"fightfx.air",iVar6,iVar6);
                                    if (param_1 == (char *)0x0) {
                                        pcVar4 = (char *)(g + 0x20748);
                                        __format = "Can\'t read Files|fightfx.air";
                                        pcVar10 = (char *)0x0;
                                    }
                                    else {
                                        iVar5 = FindFileDirEx(param_1,local_10fc,0,local_20fc);
                                        if (iVar5 == 0) {
                                            return 0;
                                        }
                                        iVar6 = AnimRCReadFile(local_10fc);
                                        iVar5 = g;
                                        *(int *)(g + 0x10520) = iVar6;
                                        if (iVar6 == 0) {
                                            pcVar4 = (char *)(iVar5 + 0x20748);
                                            __format = "Can\'t load %s";
                                            pcVar10 = extraout_ECX_02;
                                        }
                                        else {
                                            param_1 = (char *)TPGetValue(pcVar13,"common.snd",iVar6,iVar6);
                                            if (param_1 == (char *)0x0) {
                                                pcVar4 = (char *)(g + 0x20748);
                                                __format = "Can\'t read Files|common.snd";
                                                pcVar10 = (char *)0x0;
                                            }
                                            else {
                                                iVar5 = FindFileDirEx(param_1,local_10fc,0,local_20fc);
                                                if (iVar5 == 0) {
                                                    return 0;
                                                }
                                                iVar6 = SndReadFile(local_10fc);
                                                iVar5 = g;
                                                *(int *)(g + 0x10558) = iVar6;
                                                if (iVar6 == 0) {
                                                    pcVar4 = (char *)(iVar5 + 0x20748);
                                                    __format = "Can\'t load %s";
                                                    pcVar10 = extraout_ECX_03;
                                                }
                                                else {
                                                    iVar5 = 0;
                                                    local_2248 = 0;
                                                    do {
                                                        *(undefined4 *)(iVar9 + 0x1052c + local_2248) =
                                                        *(undefined4 *)(g + 0x104e8);
                                                        sprintf(local_fc,"font%i",iVar5,local_2248);
                                                        param_1 = (char *)TPGetValue(pcVar13,local_fc);
                                                        if (param_1 != (char *)0x0) {
                                                            pcVar10 = local_10fc;
                                                            iVar6 = FindFileDirEx(param_1,pcVar10,0,local_20fc);
                                                            if (iVar6 == 0) {
                                                                return 0;
                                                            }
                                                            iVar6 = FontReadFile(pcVar10);
                                                            *(int *)(iVar9 + 0x1052c + local_2248) = iVar6;
                                                            if (iVar6 == 0) {
                                                                pcVar4 = (char *)(g + 0x20748);
                                                                __format = "Can\'t read font %s";
                                                                goto LAB_0809bc03;
                                                            }
                                                        }
                                                        iVar5 = iVar5 + 1;
                                                        local_2248 = local_2248 + 4;
                                                    } while (iVar5 < 10);
                                                    iVar6 = TPGroupScanFirst(pcVar13);
                                                    do {
                                                        iVar7 = strimatch(iVar6 + 1,"begin action ",iVar6,iVar6);
                                                        if (iVar7 != 0) break;
                                                        iVar6 = TPGroupScanNext(pcVar13);
                                                    } while (iVar6 != 0);
                                                    if (iVar6 != 0) {
                                                        iVar6 = AnimRCReadFileTP(pcVar13);
                                                        *(int *)(iVar9 + 0x10528) = iVar6;
                                                        if (iVar6 == 0) {
                                                            strcat((char *)(g + 0x20748),"\nError loading anim in Files");
                                                            return 0;
                                                        }
                                                    }
                                                    iVar5 = TPGroupSeek(pcVar13,"Lifebar",iVar5,iVar5);
                                                    if (iVar5 == -1) {
                                                        pcVar4 = (char *)(g + 0x20748);
                                                        __format = "Missing lifebar info";
                                                        param_1 = extraout_ECX_04;
                                                        pcVar10 = extraout_ECX_04;
                                                    }
                                                    else {
                                                        local_222c = iVar9 + 0x10720;
                                                        local_2230 = iVar9 + 0x106b4;
                                                        local_223c = iVar9 + 0x10560;
                                                        iVar5 = iVar9 + 0x10564;
                                                        local_2234 = 1;
                                                        local_2240 = iVar5;
                                                        local_2238 = iVar9 + 0x10568;
                                                        do {
                                                            iVar6 = 4;
                                                            puVar8 = (undefined4 *)(local_2244 + 0x1d8);
                                                            do {
                                                                *puVar8 = 1;
                                                                puVar8 = puVar8 + -0x1b;
                                                                iVar6 = iVar6 + -1;
                                                            } while (-1 < iVar6);
                                                            sprintf(local_dc,"p%i.pos",local_2234,iVar5);
                                                            TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2244,local_223c);
                                                            sprintf(local_dc,"p%i.range.x",local_2234);
                                                            TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2240,local_2238);
                                                            iVar5 = 0;
                                                            iVar6 = local_2244 + 0x14;
                                                            do {
                                                                iVar7 = iVar5 + 1;
                                                                sprintf(local_dc,"p%i.bg%i",local_2234,iVar5);
                                                                SysExplodParse(pcVar13,iVar6,local_dc);
                                                                iVar5 = iVar7;
                                                                iVar6 = iVar6 + 0x6c;
                                                            } while (iVar7 < 3);
                                                            sprintf(local_dc,"p%i.mid",local_2234,extraout_ECX_05);
                                                            SysExplodParse(pcVar13,local_2230,local_dc);
                                                            sprintf(local_dc,"p%i.front",local_2234);
                                                            SysExplodParse(pcVar13,local_222c,local_dc);
                                                            local_222c = local_222c + 0x230;
                                                            local_2230 = local_2230 + 0x230;
                                                            iVar5 = local_2238 + 0x230;
                                                            local_223c = local_223c + 0x230;
                                                            local_2240 = local_2240 + 0x230;
                                                            local_2244 = local_2244 + 0x230;
                                                            iVar6 = local_2234 + -1;
                                                            bVar3 = local_2234 < 1;
                                                            local_2238 = iVar5;
                                                            local_2234 = local_2234 + 1;
                                                        } while (iVar6 == 0 || bVar3);
                                                        iVar5 = TPGroupSeek(pcVar13,"Turns Lifebar",iVar6,iVar6);
                                                        if (iVar5 == -1) {
                                                            pcVar4 = (char *)(g + 0x20748);
                                                            __format = "Missing turns lifebar info";
                                                            param_1 = extraout_ECX_06;
                                                            pcVar10 = extraout_ECX_06;
                                                        }
                                                        else {
                                                            local_2210 = iVar9 + 0x11440;
                                                            local_2214 = iVar9 + 0x113d4;
                                                            iVar5 = iVar9 + 0x11280;
                                                            local_2224 = iVar9 + 0x11284;
                                                            local_2228 = iVar9 + 0x1127c;
                                                            local_2218 = 1;
                                                            local_2220 = iVar5;
                                                            local_221c = iVar9 + 0x11288;
                                                            do {
                                                                iVar6 = 4;
                                                                puVar8 = (undefined4 *)(local_2228 + 0x1d8);
                                                                do {
                                                                    *puVar8 = 1;
                                                                    puVar8 = puVar8 + -0x1b;
                                                                    iVar6 = iVar6 + -1;
                                                                } while (-1 < iVar6);
                                                                sprintf(local_dc,"p%i.pos",local_2218,iVar5);
                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2228,local_2220);
                                                                sprintf(local_dc,"p%i.range.x",local_2218);
                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2224,local_221c);
                                                                iVar5 = 0;
                                                                iVar6 = local_2228 + 0x14;
                                                                do {
                                                                    iVar7 = iVar5 + 1;
                                                                    sprintf(local_dc,"p%i.bg%i",local_2218,iVar5);
                                                                    SysExplodParse(pcVar13,iVar6,local_dc);
                                                                    iVar5 = iVar7;
                                                                    iVar6 = iVar6 + 0x6c;
                                                                } while (iVar7 < 3);
                                                                sprintf(local_dc,"p%i.mid",local_2218,extraout_ECX_07);
                                                                SysExplodParse(pcVar13,local_2214,local_dc);
                                                                sprintf(local_dc,"p%i.front",local_2218);
                                                                SysExplodParse(pcVar13,local_2210,local_dc);
                                                                local_2210 = local_2210 + 0x230;
                                                                local_2214 = local_2214 + 0x230;
                                                                iVar5 = local_221c + 0x230;
                                                                local_2220 = local_2220 + 0x230;
                                                                local_2224 = local_2224 + 0x230;
                                                                local_2228 = local_2228 + 0x230;
                                                                iVar6 = local_2218 + -1;
                                                                bVar3 = local_2218 < 1;
                                                                local_221c = iVar5;
                                                                local_2218 = local_2218 + 1;
                                                            } while (iVar6 == 0 || bVar3);
                                                            iVar5 = TPGroupSeek(pcVar13,"Simul Lifebar",iVar6,iVar6);
                                                            if (iVar5 == -1) {
                                                                pcVar4 = (char *)(g + 0x20748);
                                                                __format = "Missing simul lifebar info";
                                                                param_1 = extraout_ECX_08;
                                                                pcVar10 = extraout_ECX_08;
                                                            }
                                                            else {
                                                                local_21f4 = iVar9 + 0x10b80;
                                                                local_21f8 = iVar9 + 0x10b14;
                                                                local_2204 = iVar9 + 0x109c0;
                                                                local_2208 = iVar9 + 0x109c4;
                                                                iVar6 = iVar9 + 0x109bc;
                                                                local_21fc = 1;
                                                                local_220c = iVar6;
                                                                local_2200 = iVar9 + 0x109c8;
                                                                iVar5 = local_21fc;
                                                                do {
                                                                    local_21fc = iVar5;
                                                                    iVar5 = 4;
                                                                    puVar8 = (undefined4 *)(local_220c + 0x1d8);
                                                                    do {
                                                                        *puVar8 = 1;
                                                                        puVar8 = puVar8 + -0x1b;
                                                                        iVar5 = iVar5 + -1;
                                                                    } while (-1 < iVar5);
                                                                    sprintf(local_dc,"p%i.pos",local_21fc,iVar6);
                                                                    TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_220c,local_2204);
                                                                    sprintf(local_dc,"p%i.range.x",local_21fc);
                                                                    TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2208,local_2200);
                                                                    iVar5 = 0;
                                                                    iVar6 = local_220c + 0x14;
                                                                    do {
                                                                        iVar7 = iVar5 + 1;
                                                                        sprintf(local_dc,"p%i.bg%i",local_21fc,iVar5);
                                                                        SysExplodParse(pcVar13,iVar6,local_dc);
                                                                        iVar5 = iVar7;
                                                                        iVar6 = iVar6 + 0x6c;
                                                                    } while (iVar7 < 3);
                                                                    sprintf(local_dc,"p%i.mid",local_21fc,extraout_ECX_09);
                                                                    SysExplodParse(pcVar13,local_21f8,local_dc);
                                                                    sprintf(local_dc,"p%i.front",local_21fc);
                                                                    SysExplodParse(pcVar13,local_21f4,local_dc);
                                                                    local_21f4 = local_21f4 + 0x230;
                                                                    local_21f8 = local_21f8 + 0x230;
                                                                    iVar6 = local_2200 + 0x230;
                                                                    local_2204 = local_2204 + 0x230;
                                                                    local_2208 = local_2208 + 0x230;
                                                                    local_220c = local_220c + 0x230;
                                                                    local_2200 = iVar6;
                                                                    iVar5 = local_21fc + 1;
                                                                } while (local_21fc < 4);
                                                                iVar5 = TPGroupSeek(pcVar13,"Powerbar",local_21fc,local_21fc);
                                                                if (iVar5 == -1) {
                                                                    pcVar4 = (char *)(g + 0x20748);
                                                                    __format = "Missing Powerbar info";
                                                                    param_1 = extraout_ECX_10;
                                                                    pcVar10 = extraout_ECX_10;
                                                                }
                                                                else {
                                                                    local_21dc = iVar9 + 0x11b3c;
                                                                    iVar5 = 9;
                                                                    puVar8 = (undefined4 *)(iVar9 + 0x12098);
                                                                    do {
                                                                        *puVar8 = 0xffffffff;
                                                                        puVar8 = puVar8 + -1;
                                                                        iVar5 = iVar5 + -1;
                                                                    } while (-1 < iVar5);
                                                                    local_21d0 = iVar9 + 0x11f9c;
                                                                    local_21d4 = iVar9 + 0x11d00;
                                                                    local_21d8 = iVar9 + 0x11c94;
                                                                    iVar5 = iVar9 + 0x11b40;
                                                                    local_21e8 = iVar9 + 0x11b44;
                                                                    local_21ec = iVar9 + 0x11b48;
                                                                    local_21e0 = 1;
                                                                    local_21e4 = 0;
                                                                    local_21f0 = iVar5;
                                                                    do {
                                                                        iVar6 = 4;
                                                                        puVar8 = (undefined4 *)(iVar9 + 0x11d14 + local_21e4 * 0x10);
                                                                        do {
                                                                            *puVar8 = 1;
                                                                            puVar8 = puVar8 + -0x1b;
                                                                            iVar6 = iVar6 + -1;
                                                                        } while (-1 < iVar6);
                                                                        sprintf(local_dc,"p%i.pos",local_21e0,iVar5);
                                                                        TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_21dc,local_21f0);
                                                                        sprintf(local_dc,"p%i.range.x",local_21e0);
                                                                        TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_21e8,local_21ec);
                                                                        iVar5 = 0;
                                                                        iVar6 = iVar9 + 0x11b50 + local_21e4 * 0x10;
                                                                        do {
                                                                            iVar7 = iVar5 + 1;
                                                                            sprintf(local_dc,"p%i.bg%i",local_21e0,iVar5);
                                                                            SysExplodParse(pcVar13,iVar6,local_dc);
                                                                            iVar5 = iVar7;
                                                                            iVar6 = iVar6 + 0x6c;
                                                                        } while (iVar7 < 3);
                                                                        sprintf(local_dc,"p%i.mid",local_21e0,iVar7);
                                                                        SysExplodParse(pcVar13,local_21d8,local_dc);
                                                                        sprintf(local_dc,"p%i.front",local_21e0);
                                                                        SysExplodParse(pcVar13,local_21d4,local_dc);
                                                                        sprintf(local_dc,"p%i.counter",local_21e0);
                                                                        SysExplodParse(pcVar13,local_21d0,local_dc);
                                                                        local_21d0 = local_21d0 + 0x6c;
                                                                        local_21d4 = local_21d4 + 0x230;
                                                                        local_21d8 = local_21d8 + 0x230;
                                                                        local_21dc = local_21dc + 0x230;
                                                                        iVar5 = local_21e4 + 0x23;
                                                                        local_21e8 = local_21e8 + 0x230;
                                                                        local_21ec = local_21ec + 0x230;
                                                                        local_21f0 = local_21f0 + 0x230;
                                                                        bVar3 = local_21e0 < 2;
                                                                        local_21e4 = iVar5;
                                                                        local_21e0 = local_21e0 + 1;
                                                                    } while (bVar3);
                                                                    pcVar4 = local_fc;
                                                                    pcVar10 = (char *)0x0;
                                                                    iVar5 = iVar9 + 0x1209c;
                                                                    iVar6 = iVar9 + 0x12074;
                                                                    do {
                                                                        param_1 = pcVar10 + 1;
                                                                        sprintf(local_fc,"level%i.snd",pcVar10,pcVar4);
                                                                        iVar7 = iVar5 + 4;
                                                                        TPScanf(pcVar13,local_fc,&DAT_08276cdd,iVar6,iVar5);
                                                                        pcVar4 = extraout_ECX_11;
                                                                        pcVar10 = param_1;
                                                                        iVar5 = iVar7;
                                                                        iVar6 = iVar6 + 4;
                                                                    } while ((int)param_1 < 10);
                                                                    iVar5 = TPGroupSeek(pcVar13,"face",iVar7,iVar7);
                                                                    if (iVar5 == -1) {
                                                                        pcVar4 = (char *)(g + 0x20748);
                                                                        __format = "Missing face info";
                                                                    }
                                                                    else {
                                                                        param_1 = (char *)0x0;
                                                                        local_21c8 = iVar9 + 0x120c4;
                                                                        *(undefined4 *)(iVar9 + 0x12444) = 1;
                                                                        *(undefined4 *)(iVar9 + 0x12448) = 0xffffffff;
                                                                        iVar5 = iVar9 + 0x12130;
                                                                        local_21c0 = iVar9 + 0x12444;
                                                                        local_21cc = iVar9 + 0x12424;
                                                                        iVar6 = iVar9 + 0x12434;
                                                                        do {
                                                                            param_1 = param_1 + 1;
                                                                            sprintf(local_dc,"p%i.pos",param_1,iVar5);
                                                                            TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_21cc,iVar6);
                                                                            sprintf(local_dc,"p%i.bg",param_1);
                                                                            SysExplodParse(pcVar13,local_21c8,local_dc);
                                                                            sprintf(local_dc,"p%i.face",param_1);
                                                                            SysExplodParse(pcVar13,iVar5,local_dc);
                                                                            sprintf(local_dc,"p%i.facing",param_1);
                                                                            TPGetValueInt(pcVar13,local_dc,local_21c0);
                                                                            local_21c0 = local_21c0 + 4;
                                                                            iVar5 = iVar5 + 0xd8;
                                                                            local_21c8 = local_21c8 + 0xd8;
                                                                            local_21cc = local_21cc + 4;
                                                                            iVar6 = iVar6 + 4;
                                                                        } while ((int)param_1 < 2);
                                                                        iVar5 = TPGroupSeek(pcVar13,"simul face",local_dc,local_dc);
                                                                        if (iVar5 == -1) {
                                                                            pcVar4 = (char *)(g + 0x20748);
                                                                            __format = "Missing simul face info";
                                                                            pcVar10 = param_1;
                                                                        }
                                                                        else {
                                                                            param_1 = (char *)0x0;
                                                                            local_21b8 = iVar9 + 0x12454;
                                                                            *(undefined4 *)(iVar9 + 0x127dc) = 1;
                                                                            *(undefined4 *)(iVar9 + 0x127d4) = 1;
                                                                            *(undefined4 *)(iVar9 + 0x127e0) = 0xffffffff;
                                                                            *(undefined4 *)(iVar9 + 0x127d8) = 0xffffffff;
                                                                            iVar5 = iVar9 + 0x124c0;
                                                                            local_21b0 = iVar9 + 0x127d4;
                                                                            local_21bc = iVar9 + 0x127b4;
                                                                            iVar6 = iVar9 + 0x127c4;
                                                                            do {
                                                                                param_1 = param_1 + 1;
                                                                                sprintf(local_dc,"p%i.pos",param_1,iVar5);
                                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_21bc,iVar6);
                                                                                sprintf(local_dc,"p%i.bg",param_1);
                                                                                SysExplodParse(pcVar13,local_21b8,local_dc);
                                                                                sprintf(local_dc,"p%i.face",param_1);
                                                                                SysExplodParse(pcVar13,iVar5,local_dc);
                                                                                sprintf(local_dc,"p%i.facing",param_1);
                                                                                TPGetValueInt(pcVar13,local_dc,local_21b0);
                                                                                local_21b0 = local_21b0 + 4;
                                                                                iVar5 = iVar5 + 0xd8;
                                                                                local_21b8 = local_21b8 + 0xd8;
                                                                                local_21bc = local_21bc + 4;
                                                                                iVar6 = iVar6 + 4;
                                                                            } while ((int)param_1 < 4);
                                                                            iVar5 = TPGroupSeek(pcVar13,"turns face",local_dc,local_dc);
                                                                            if (iVar5 == -1) {
                                                                                pcVar4 = (char *)(g + 0x20748);
                                                                                __format = "Missing turns face info";
                                                                                pcVar10 = param_1;
                                                                            }
                                                                            else {
                                                                                iVar7 = 0;
                                                                                iVar6 = iVar9 + 0x127e4;
                                                                                *(undefined4 *)(iVar9 + 0x12b64) = 1;
                                                                                *(undefined4 *)(iVar9 + 0x12b68) = 0xffffffff;
                                                                                local_2188 = iVar9 + 0x12c4c;
                                                                                local_218c = iVar9 + 0x12be0;
                                                                                local_2190 = iVar9 + 0x12cc4;
                                                                                local_2194 = iVar9 + 77000;
                                                                                local_2198 = iVar9 + 0x12cb8;
                                                                                local_219c = iVar9 + 0x12cbc;
                                                                                iVar5 = iVar9 + 0x12850;
                                                                                local_21a0 = iVar9 + 0x12b64;
                                                                                local_21ac = iVar9 + 0x12b74;
                                                                                local_21a8 = iVar6;
                                                                                do {
                                                                                    iVar7 = iVar7 + 1;
                                                                                    sprintf(local_dc,"p%i.pos",iVar7,iVar5);
                                                                                    iVar1 = iVar6 + 0x370;
                                                                                    iVar2 = iVar6 + 0x360;
                                                                                    iVar6 = iVar6 + 4;
                                                                                    TPScanf(pcVar13,local_dc,&DAT_08276cdd,iVar2,iVar1);
                                                                                    sprintf(local_dc,"p%i.bg",iVar7);
                                                                                    SysExplodParse(pcVar13,local_21a8,local_dc);
                                                                                    sprintf(local_dc,"p%i.face",iVar7);
                                                                                    SysExplodParse(pcVar13,iVar5,local_dc);
                                                                                    sprintf(local_dc,"p%i.facing",iVar7);
                                                                                    TPGetValueInt(pcVar13,local_dc,local_21a0);
                                                                                    sprintf(local_dc,"p%i.teammate.pos",iVar7);
                                                                                    TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2198,
                                                                                            local_219c);
                                                                                    sprintf(local_dc,"p%i.teammate.spacing",iVar7);
                                                                                    TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_2190,
                                                                                            local_2194);
                                                                                    sprintf(local_dc,"p%i.teammate.bg",iVar7);
                                                                                    SysExplodParse(pcVar13,local_21ac,local_dc);
                                                                                    sprintf(local_dc,"p%i.teammate.face",iVar7);
                                                                                    SysExplodParse(pcVar13,local_218c,local_dc);
                                                                                    sprintf(local_dc,"p%i.teammate.ko",iVar7);
                                                                                    SysExplodParse(pcVar13,local_2188,local_dc);
                                                                                    sprintf(local_dc,"p%i.teammate.facing",iVar7);
                                                                                    TPGetValueInt(pcVar13,local_dc,local_21a0);
                                                                                    local_2188 = local_2188 + 0x158;
                                                                                    local_218c = local_218c + 0x158;
                                                                                    local_2190 = local_2190 + 0x158;
                                                                                    local_2194 = local_2194 + 0x158;
                                                                                    local_2198 = local_2198 + 0x158;
                                                                                    local_219c = local_219c + 0x158;
                                                                                    local_21a0 = local_21a0 + 4;
                                                                                    iVar5 = iVar5 + 0xd8;
                                                                                    local_21a8 = local_21a8 + 0xd8;
                                                                                    local_21ac = local_21ac + 0x158;
                                                                                } while (iVar7 < 2);
                                                                                uVar11 = TPGroupSeek(pcVar13,"name",iVar5,iVar5);
                                                                                param_1 = (char *)((ulonglong)uVar11 >> 0x20);
                                                                                if ((int)uVar11 == -1) {
                                                                                    pcVar4 = (char *)(g + 0x20748);
                                                                                    __format = "Missing name info";
                                                                                    pcVar10 = param_1;
                                                                                }
                                                                                else {
                                                                                    local_217c = iVar9 + 0x12fd4;
                                                                                    local_2180 = iVar9 + 0x12e24;
                                                                                    iVar6 = iVar9 + 0x13184;
                                                                                    iVar7 = 0;
                                                                                    iVar5 = iVar9 + 0x13194;
                                                                                    do {
                                                                                        iVar7 = iVar7 + 1;
                                                                                        sprintf(local_dc,"p%i.pos",iVar7,iVar6);
                                                                                        TPScanf(pcVar13,local_dc,&DAT_08276cdd,iVar6,iVar5);
                                                                                        sprintf(local_dc,"p%i.bg",iVar7);
                                                                                        SysExplodParse(pcVar13,local_2180,local_dc);
                                                                                        sprintf(local_dc,"p%i.name",iVar7);
                                                                                        SysExplodParse(pcVar13,local_217c,local_dc);
                                                                                        local_217c = local_217c + 0x6c;
                                                                                        local_2180 = local_2180 + 0x6c;
                                                                                        iVar6 = iVar6 + 4;
                                                                                        iVar5 = iVar5 + 4;
                                                                                    } while (iVar7 < 2);
                                                                                    uVar11 = TPGroupSeek(pcVar13,"simul name",local_217c,
                                                                                                         local_217c);
                                                                                    param_1 = (char *)((ulonglong)uVar11 >> 0x20);
                                                                                    if ((int)uVar11 == -1) {
                                                                                        pcVar4 = (char *)(g + 0x20748);
                                                                                        __format = "Missing simul name info";
                                                                                        pcVar10 = param_1;
                                                                                    }
                                                                                    else {
                                                                                        local_2170 = iVar9 + 0x13354;
                                                                                        local_2174 = iVar9 + 0x131a4;
                                                                                        iVar6 = iVar9 + 0x13504;
                                                                                        iVar7 = 0;
                                                                                        iVar5 = iVar9 + 0x13514;
                                                                                        do {
                                                                                            iVar7 = iVar7 + 1;
                                                                                            sprintf(local_dc,"p%i.pos",iVar7,iVar6);
                                                                                            TPScanf(pcVar13,local_dc,&DAT_08276cdd,iVar6,iVar5);
                                                                                            sprintf(local_dc,"p%i.bg",iVar7);
                                                                                            SysExplodParse(pcVar13,local_2174,local_dc);
                                                                                            sprintf(local_dc,"p%i.name",iVar7);
                                                                                            SysExplodParse(pcVar13,local_2170,local_dc);
                                                                                            local_2170 = local_2170 + 0x6c;
                                                                                            local_2174 = local_2174 + 0x6c;
                                                                                            iVar6 = iVar6 + 4;
                                                                                            iVar5 = iVar5 + 4;
                                                                                        } while (iVar7 < 4);
                                                                                        iVar5 = TPGroupSeek(pcVar13,"turns name",iVar7,iVar7);
                                                                                        if (iVar5 == -1) {
                                                                                            pcVar4 = (char *)(g + 0x20748);
                                                                                            __format = "Missing turns name info";
                                                                                            param_1 = extraout_ECX_12;
                                                                                            pcVar10 = extraout_ECX_12;
                                                                                        }
                                                                                        else {
                                                                                            iVar6 = iVar9 + 0x136d4;
                                                                                            local_2168 = iVar9 + 0x13524;
                                                                                            iVar7 = 0;
                                                                                            iVar5 = iVar9 + 0x13894;
                                                                                            local_216c = iVar9 + 0x13884;
                                                                                            local_2164 = iVar6;
                                                                                            do {
                                                                                                iVar7 = iVar7 + 1;
                                                                                                sprintf(local_dc,"p%i.pos",iVar7,iVar6);
                                                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,local_216c,
                                                                                                        iVar5);
                                                                                                sprintf(local_dc,"p%i.bg",iVar7);
                                                                                                SysExplodParse(pcVar13,local_2168,local_dc);
                                                                                                sprintf(local_dc,"p%i.name",iVar7);
                                                                                                SysExplodParse(pcVar13,local_2164,local_dc);
                                                                                                local_2164 = local_2164 + 0x6c;
                                                                                                local_2168 = local_2168 + 0x6c;
                                                                                                iVar6 = local_216c + 4;
                                                                                                iVar5 = iVar5 + 4;
                                                                                                local_216c = iVar6;
                                                                                            } while (iVar7 < 4);
                                                                                            iVar5 = TPGroupSeek(pcVar13,"time",local_2164,
                                                                                                                local_2164);
                                                                                            if (iVar5 == -1) {
                                                                                                pcVar4 = (char *)(g + 0x20748);
                                                                                                __format = "Missing time info";
                                                                                                param_1 = pcVar13;
                                                                                                pcVar10 = pcVar13;
                                                                                            }
                                                                                            else {
                                                                                                *(undefined4 *)(iVar9 + 0x13984) = 0x3c;
                                                                                                TPScanf(pcVar13,"pos",&DAT_08276cdd,iVar9 + 0x1397c,
                                                                                                        iVar9 + 0x13980);
                                                                                                SysExplodParse(pcVar13,iVar9 + 0x138a4,"bg");
                                                                                                param_1 = (char *)(iVar9 + 0x13984);
                                                                                                SysExplodParse(pcVar13,iVar9 + 0x13910,"counter");
                                                                                                TPGetValueInt(pcVar13,"framespercount",param_1);
                                                                                                iVar5 = TPGroupSeek(pcVar13,"combo");
                                                                                                if (iVar5 == -1) {
                                                                                                    pcVar4 = (char *)(g + 0x20748);
                                                                                                    __format = "Missing combo info";
                                                                                                    pcVar10 = param_1;
                                                                                                }
                                                                                                else {
                                                                                                    *(undefined4 *)(iVar9 + 0x13988) = 10;
                                                                                                    *(undefined4 *)(iVar9 + 0x1398c) = 0x50;
                                                                                                    *(undefined4 *)(iVar9 + 0x13990) = 0xffffffd8;
                                                                                                    *(undefined4 *)(iVar9 + 0x13994) = 0x5a;
                                                                                                    *(undefined4 *)(iVar9 + 0x13998) = 0xffffffff;
                                                                                                    *(undefined4 *)(iVar9 + 0x139b4) = 0x48206925;
                                                                                                    *(undefined4 *)(iVar9 + 0x139b8) = 0x217469;
                                                                                                    param_1 = (char *)(iVar9 + 0x139b4);
                                                                                                    pcVar4 = "text.text";
                                                                                                    iVar5 = iVar14;
                                                                                                    uVar12 = TPGetValue(pcVar13,"text.text",iVar14,
                                                                                                                        iVar14);
                                                                                                    uVar11 = CONCAT44(iVar5,pcVar4);
                                                                                                    if ((char *)uVar12 != (char *)0x0) {
                                                                                                        iVar14 = 0x1f;
                                                                                                        strncpy(param_1,(char *)uVar12,0x1f);
                                                                                                        uVar11 = uVar12;
                                                                                                    }
                                                                                                    TPScanf(pcVar13,"pos",&DAT_08276cdd,
                                                                                                            iVar9 + 0x13988,iVar9 + 0x1398c,
                                                                                                            (int)uVar11,iVar14,
                                                                                                            (int)((ulonglong)uVar11 >> 0x20));
                                                                                                    TPGetValueInt(pcVar13,"start.x",iVar9 + 0x13990);
                                                                                                    TPScanf(pcVar13,"counter.font",&DAT_08276cdd,
                                                                                                            iVar9 + 0x13998,iVar9 + 0x1399c);
                                                                                                    TPGetValueInt(pcVar13,"counter.shake",
                                                                                                                  iVar9 + 0x139a0);
                                                                                                    TPScanf(pcVar13,"text.font",&DAT_08276cdd,
                                                                                                            iVar9 + 0x139a4,iVar9 + 0x139a8);
                                                                                                    TPScanf(pcVar13,"text.offset",&DAT_08276cdd,
                                                                                                            iVar9 + 0x139ac,iVar9 + 0x139b0);
                                                                                                    TPGetValueInt(pcVar13,"displaytime",
                                                                                                                  iVar9 + 0x13994);
                                                                                                    iVar14 = TPGroupSeek(pcVar13,"round");
                                                                                                    if (iVar14 == -1) {
                                                                                                        pcVar4 = (char *)(g + 0x20748);
                                                                                                        __format = "Missing round info";
                                                                                                        pcVar10 = param_1;
                                                                                                    }
                                                                                                    else {
                                                                                                        *(undefined4 *)(iVar9 + 0x139dc) = 0x1e;
                                                                                                        *(undefined4 *)(iVar9 + 0x139e0) = 0x46;
                                                                                                        *(undefined4 *)(iVar9 + 0x140e0) = 0xa0;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f7c) = 0xa0;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f00) = 0xa0;
                                                                                                        *(undefined4 *)(iVar9 + 0x140e4) = 0x78;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f80) = 0x78;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f04) = 0x78;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f24) = 0x68676946;
                                                                                                        *(undefined2 *)(iVar9 + 0x13f28) = 0x2174;
                                                                                                        *(undefined1 *)(iVar9 + 0x13f2a) = 0;
                                                                                                        *(undefined4 *)(iVar9 + 0x13fa0) = 0x4f2e4b;
                                                                                                        *(undefined4 *)(iVar9 + 0x13e90) = 0;
                                                                                                        *(undefined4 *)(iVar9 + 0x13f54) = 0;
                                                                                                        *(undefined4 *)(iVar9 + 0x140a8) = 0;
                                                                                                        *(undefined4 *)(iVar9 + 0x14224) = 0x3c;
                                                                                                        *(undefined4 *)(iVar9 + 0x1422c) = 0x3c;
                                                                                                        *(undefined4 *)(iVar9 + 0x14230) = 0;
                                                                                                        *(undefined4 *)(iVar9 + 0x14234) = 10;
                                                                                                        *(undefined4 *)(iVar9 + 0x14238) = 0x2d;
                                                                                                        *(undefined4 *)(iVar9 + 0x1423c) = 0x96;
                                                                                                        *(undefined4 *)(iVar9 + 0x139d4) = 2;
                                                                                                        *(undefined4 *)(iVar9 + 0x139d8) = 1;
                                                                                                        TPGetValueInt(pcVar13,"match.wins",
                                                                                                                      iVar9 + 0x139d4,iVar9 + 0x13988);
                                                                                                        TPGetValueInt(pcVar13,"match.maxdrawgames",
                                                                                                                      iVar9 + 0x139d8);
                                                                                                        TPGetValueInt(pcVar13,"start.waittime",
                                                                                                                      iVar9 + 0x139dc);
                                                                                                        TPGetValueInt(pcVar13,"intro.time",
                                                                                                                      iVar9 + 0x139e0);
                                                                                                        TPScanf(pcVar13,"pos",&DAT_08276cdd,
                                                                                                                iVar9 + 0x139e4,iVar9 + 0x139e8);
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x139ec,
                                                                                                                       "round.default");
                                                                                                        StripDoublePercent(iVar9 + 0x13a28);
                                                                                                        TPGetValueInt(pcVar13,"round.time",
                                                                                                                      iVar9 + 0x13e90);
                                                                                                        *(undefined4 *)(iVar9 + 0x13e94) =
                                                                                                        *(undefined4 *)(iVar9 + 0x13e90);
                                                                                                        TPGetValueInt(pcVar13,"round.sndtime",
                                                                                                                      iVar9 + 0x13e94);
                                                                                                        local_2154 = iVar9 + 0x13ac4;
                                                                                                        local_2158 = iVar9 + 0x13e9c;
                                                                                                        local_215c = iVar9 + 0x13ec4;
                                                                                                        local_2160 = 0x4c4;
                                                                                                        iVar14 = 1;
                                                                                                        do {
                                                                                                            *(undefined4 *)
                                                                                                            (local_2160 + 4 + iVar9 + 0x139d4) =
                                                                                                            0xffffffff;
                                                                                                            sprintf(local_dc,"round%i.snd",iVar14,
                                                                                                                    local_2160);
                                                                                                            TPScanf(pcVar13,local_dc,&DAT_08276cdd,
                                                                                                                    local_2158,local_215c);
                                                                                                            iVar5 = iVar14 + 1;
                                                                                                            sprintf(local_dc,"round%i",iVar14);
                                                                                                            SysExplodParse(pcVar13,local_2154,local_dc);
                                                                                                            local_2154 = local_2154 + 0x6c;
                                                                                                            local_2158 = local_2158 + 4;
                                                                                                            local_215c = local_215c + 4;
                                                                                                            local_2160 = local_2160 + 4;
                                                                                                            iVar14 = iVar5;
                                                                                                        } while (iVar5 < 10);
                                                                                                        *(undefined4 *)(iVar9 + 0x13f5c) = 0xffffffff;
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x13ee8,"fight",
                                                                                                                       local_2158);
                                                                                                        TPGetValueInt(pcVar13,"fight.time",
                                                                                                                      iVar9 + 0x13f54);
                                                                                                        *(undefined4 *)(iVar9 + 0x13f58) =
                                                                                                        *(undefined4 *)(iVar9 + 0x13f54);
                                                                                                        TPGetValueInt(pcVar13,"fight.sndtime",
                                                                                                                      iVar9 + 0x13f58);
                                                                                                        TPScanf(pcVar13,"fight.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x13f5c,iVar9 + 0x13f60);
                                                                                                        TPGetValueInt(pcVar13,"ctrl.time",
                                                                                                                      iVar9 + 0x14228);
                                                                                                        *(undefined4 *)(iVar9 + 0x140c0) = 0xffffffff;
                                                                                                        *(undefined4 *)(iVar9 + 0x140b8) = 0xffffffff;
                                                                                                        *(undefined4 *)(iVar9 + 0x140b0) = 0xffffffff;
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x13f64,"KO");
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x13fd0,
                                                                                                                       &DAT_08278e31);
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x1403c,
                                                                                                                       &DAT_08278e35);
                                                                                                        TPGetValueInt(pcVar13,"KO.time",iVar9 + 0x140a8)
                                                                                                        ;
                                                                                                        *(undefined4 *)(iVar9 + 0x140ac) =
                                                                                                        *(undefined4 *)(iVar9 + 0x140a8);
                                                                                                        TPGetValueInt(pcVar13,"KO.sndtime",
                                                                                                                      iVar9 + 0x140ac);
                                                                                                        TPScanf(pcVar13,"KO.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x140b0,iVar9 + 0x140b4);
                                                                                                        TPScanf(pcVar13,&DAT_08278e4b,&DAT_08276cdd,
                                                                                                                iVar9 + 0x140b8,iVar9 + 0x140bc);
                                                                                                        TPScanf(pcVar13,"TO.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x140c0,iVar9 + 0x140c4);
                                                                                                        *(int *)(iVar9 + 0x140a8) =
                                                                                                        *(int *)(iVar9 + 0x140a8) +
                                                                                                        *(int *)(iVar9 + 0x14234);
                                                                                                        *(int *)(iVar9 + 0x140ac) =
                                                                                                        *(int *)(iVar9 + 0x140ac) +
                                                                                                        *(int *)(iVar9 + 0x14234);
                                                                                                        TPGetValueInt(pcVar13,"win.time",iVar9 + 0x14224
                                                                                                        );
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x140c8,"win");
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x14134,
                                                                                                                       &DAT_08278e63);
                                                                                                        SysExplodParse(pcVar13,iVar9 + 0x141a0,"draw");
                                                                                                        *(undefined4 *)(iVar9 + 0x1421c) = 0xffffffff;
                                                                                                        *(undefined4 *)(iVar9 + 0x14214) = 0xffffffff;
                                                                                                        *(undefined4 *)(iVar9 + 0x1420c) = 0xffffffff;
                                                                                                        TPScanf(pcVar13,"win.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x1420c,iVar9 + 0x14210);
                                                                                                        TPScanf(pcVar13,"lose.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x14214,iVar9 + 0x14218);
                                                                                                        TPScanf(pcVar13,"draw.snd",&DAT_08276cdd,
                                                                                                                iVar9 + 0x1421c,iVar9 + 0x14220);
                                                                                                        TPGetValueInt(pcVar13,"slow.time",
                                                                                                                      iVar9 + 0x1422c);
                                                                                                        TPGetValueInt(pcVar13,"over.waittime",
                                                                                                                      iVar9 + 0x14230);
                                                                                                        TPGetValueInt(pcVar13,"over.hittime",
                                                                                                                      iVar9 + 0x14234);
                                                                                                        TPGetValueInt(pcVar13,"over.wintime",
                                                                                                                      iVar9 + 0x14238);
                                                                                                        TPGetValueInt(pcVar13,"over.time",
                                                                                                                      iVar9 + 0x1423c);
                                                                                                        uVar11 = TPGroupSeek(pcVar13,"winicon");
                                                                                                        param_1 = (char *)((ulonglong)uVar11 >> 0x20);
                                                                                                        if ((int)uVar11 == -1) {
                                                                                                            pcVar4 = (char *)(g + 0x20748);
                                                                                                            __format = "Missing winicon info";
                                                                                                            pcVar10 = param_1;
                                                                                                        }
                                                                                                        else {
                                                                                                            iVar14 = iVar9 + 0x14240;
                                                                                                            local_212c = iVar9 + 0x14678;
                                                                                                            local_2134 = iVar9 + 0x145a0;
                                                                                                            local_2130 = iVar9 + 0x1460c;
                                                                                                            local_2138 = iVar9 + 0x1445c;
                                                                                                            local_213c = iVar9 + 0x144c8;
                                                                                                            local_2140 = iVar9 + 0x14534;
                                                                                                            local_2144 = iVar9 + 0x143f0;
                                                                                                            iVar5 = iVar9 + 0x14318;
                                                                                                            iVar6 = 0;
                                                                                                            local_2150 = iVar14;
                                                                                                            local_214c = iVar5;
                                                                                                            local_2148 = iVar9 + 0x14384;
                                                                                                            do {
                                                                                                                iVar6 = iVar6 + 1;
                                                                                                                sprintf(local_dc,"p%i.pos",iVar6,iVar5);
                                                                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,
                                                                                                                        iVar14 + 0x870,iVar14 + 0x878);
                                                                                                                sprintf(local_dc,"p%i.iconoffset",iVar6);
                                                                                                                iVar5 = iVar14 + 0x888;
                                                                                                                iVar7 = iVar14 + 0x880;
                                                                                                                iVar14 = iVar14 + 4;
                                                                                                                TPScanf(pcVar13,local_dc,&DAT_08276cdd,iVar7
                                                                                                                ,iVar5);
                                                                                                                sprintf(local_dc,"p%i.counter",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2150,local_dc);
                                                                                                                sprintf(local_dc,"p%i.n",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_214c,local_dc);
                                                                                                                sprintf(local_dc,"p%i.s",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2148,local_dc);
                                                                                                                sprintf(local_dc,"p%i.h",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2144,local_dc);
                                                                                                                sprintf(local_dc,"p%i.throw",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2140,local_dc);
                                                                                                                sprintf(local_dc,"p%i.t",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_213c,local_dc);
                                                                                                                sprintf(local_dc,"p%i.c",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2138,local_dc);
                                                                                                                sprintf(local_dc,"p%i.suicide",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2134,local_dc);
                                                                                                                sprintf(local_dc,"p%i.teammate",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_2130,local_dc);
                                                                                                                sprintf(local_dc,"p%i.perfect",iVar6);
                                                                                                                SysExplodParse(pcVar13,local_212c,local_dc);
                                                                                                                local_212c = local_212c + 0x3cc;
                                                                                                                local_2130 = local_2130 + 0x3cc;
                                                                                                                local_2134 = local_2134 + 0x3cc;
                                                                                                                local_2138 = local_2138 + 0x3cc;
                                                                                                                local_213c = local_213c + 0x3cc;
                                                                                                                local_2140 = local_2140 + 0x3cc;
                                                                                                                local_2144 = local_2144 + 0x3cc;
                                                                                                                iVar5 = local_2148 + 0x3cc;
                                                                                                                local_214c = local_214c + 0x3cc;
                                                                                                                local_2150 = local_2150 + 0x6c;
                                                                                                                local_2148 = iVar5;
                                                                                                            } while (iVar6 < 2);
                                                                                                            TPGetValueInt(pcVar13,"useiconupto",
                                                                                                                          iVar9 + 0x14ad0,iVar5);
                                                                                                            if (9 < *(int *)(iVar9 + 0x14ad0)) {
                                                                                                                *(undefined4 *)(iVar9 + 0x14ad0) = 9;
                                                                                                            }
                                                                                                            TPFree(pcVar13);
                                                                                                            iVar9 = ExplodArrayNew(*(undefined4 *)
                                                                                                            (g + 0x1d5cc),
                                                                                                                                   *(undefined4 *)
                                                                                                                                   (g + 0x104f4));
                                                                                                            iVar14 = g;
                                                                                                            *(int *)(g + 0x14af8) = iVar9;
                                                                                                            if (iVar9 == 0) {
                                                                                                                pcVar4 = (char *)(iVar14 + 0x20748);
                                                                                                                __format = "Can\'t allocate explods";
                                                                                                                param_1 = extraout_ECX_13;
                                                                                                                pcVar10 = extraout_ECX_13;
                                                                                                            }
                                                                                                            else {
                                                                                                                iVar9 = ExplodArrayNew(*(undefined4 *)
                                                                                                                (iVar14 + 0x1d5d0),0
                                                                                                                ,iVar9,iVar9);
                                                                                                                iVar14 = g;
                                                                                                                *(int *)(g + 0x14afc) = iVar9;
                                                                                                                if (iVar9 != 0) {
                                                                                                                    return 1;
                                                                                                                }
                                                                                                                pcVar4 = (char *)(iVar14 + 0x20748);
                                                                                                                __format = "Can\'t allocate sysexplods";
                                                                                                                param_1 = pcVar13;
                                                                                                                pcVar10 = pcVar13;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    LAB_0809bc03:
    sprintf(pcVar4,__format,param_1,pcVar10);
    return 0;
}

