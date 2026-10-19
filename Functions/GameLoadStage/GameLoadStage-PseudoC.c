
/* WARNING: Type propagation algorithm not settling */

undefined4 GameLoadStage(void)

{
    int iVar1;
    int *piVar2;
    int iVar3;
    uint uVar4;
    uint uVar5;
    uint uVar6;
    int iVar7;
    undefined4 *puVar8;
    int iVar9;
    undefined4 uVar10;
    int iVar11;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    undefined4 extraout_ECX_01;
    undefined4 extraout_ECX_02;
    undefined4 extraout_ECX_03;
    int iVar12;
    undefined1 *puVar13;
    undefined8 uVar14;
    char *__dest;
    undefined1 auStack_17c [12];
    undefined4 *local_170;
    undefined4 *local_160;
    uint local_15c;
    uint local_158;
    uint local_154;
    uint local_150;
    uint local_14c;
    uint local_148;
    uint local_144;
    uint local_140;
    uint local_13c;
    uint local_138;
    char *local_134;
    int local_12c;
    int local_128;
    int local_124;
    int local_120 [8];
    undefined4 local_100 [9];
    char local_dc [204];

    local_12c = g;
    local_170 = (undefined4 *)(g + 0x41fc);
    local_128 = 0;
    local_124 = 0;
    local_120[0] = 0;
    puVar8 = local_170;
    for (iVar11 = 0x435; iVar11 != 0; iVar11 = iVar11 + -1) {
        *puVar8 = 0;
        puVar8 = puVar8 + 1;
    }
    __dest = local_dc;
    local_134 = __dest;
    strcpy(__dest,(char *)(g + 0x2014));
    uVar14 = TPReadFile(local_134);
    uVar10 = (undefined4)((ulonglong)uVar14 >> 0x20);
    iVar11 = (int)uVar14;
    if (iVar11 == 0) {
        sprintf((char *)(g + 0x20748),"Can\'t open stage: %s",local_134);
    }
    else {
        iVar3 = TPGroupSeek(iVar11,"Camera",uVar10,uVar10);
        if (iVar3 == -1) {
            sprintf((char *)(g + 0x20748),"Missing camera info: %s",local_134,0);
        }
        else {
            *(undefined4 *)(local_12c + 0x4220) = 0;
            *(undefined4 *)(local_12c + 0x421c) = 0x32;
            *(undefined4 *)(local_12c + 0x4210) = 0xffffffe7;
            *(undefined4 *)(local_12c + 0x4214) = 0;
            *(undefined4 *)(local_12c + 0x4204) = 0;
            *(undefined4 *)(local_12c + 0x4200) = 0;
            *(undefined4 *)(local_12c + 0x4208) = 0xffffffb5;
            *(undefined4 *)(local_12c + 0x420c) = 0x4b;
            *(undefined4 *)(local_12c + 0x4218) = 0x3e4ccccd;
            TPGetValueInt(iVar11,"boundleft",local_170 + 3,__dest);
            TPGetValueInt(iVar11,"boundright",local_170 + 4);
            TPGetValueInt(iVar11,"startx",local_170 + 1);
            TPGetValueInt(iVar11,"starty",local_170 + 2);
            TPGetValueInt(iVar11,"tension",local_170 + 8);
            TPGetValueInt(iVar11,"floortension",local_170 + 9);
            TPGetValueInt(iVar11,"boundhigh",local_170 + 5);
            TPGetValueInt(iVar11,"boundlow",local_170 + 6);
            TPGetValueFloat(iVar11,"verticalfollow",local_170 + 7);
            iVar3 = TPGroupSeek(iVar11,"PlayerInfo");
            if (iVar3 + 1 == 0) {
                sprintf((char *)(g + 0x20748),"Missing player info: %s",local_134,extraout_ECX);
            }
            else {
                uVar4 = TPGetValueInt(iVar11,"p1startx",local_170 + 10,iVar3 + 1);
                local_138 = TPGetValueInt(iVar11,"p1starty",local_170 + 0xe);
                local_13c = TPGetValueInt(iVar11,"p1startz",local_170 + 0x12);
                local_140 = TPGetValueInt(iVar11,"p1facing",local_170 + 0x16);
                local_144 = TPGetValueInt(iVar11,"p2startx",local_170 + 0xb);
                local_148 = TPGetValueInt(iVar11,"p2starty",local_170 + 0xf);
                local_14c = TPGetValueInt(iVar11,"p2startz",local_170 + 0x13);
                local_150 = TPGetValueInt(iVar11,"p2facing",local_170 + 0x17);
                local_154 = TPGetValueInt(iVar11,"leftbound",local_170 + 0x1a);
                local_158 = TPGetValueInt(iVar11,"rightbound",local_170 + 0x1b);
                uVar5 = TPGetValueInt(iVar11,"topbound",local_170 + 0x1c);
                uVar6 = TPGetValueInt(iVar11,"botbound",local_170 + 0x1d);
                if ((uVar4 & local_138 & local_13c & local_140 & local_144 & local_148 & local_14c &
                    local_150 & local_154 & local_158 & uVar5 & uVar6) == 1) {
                    *(int *)(local_12c + 0x422c) = local_170[10] + -0x19;
                *(undefined4 *)(local_12c + 0x423c) = local_170[0xe];
                *(undefined4 *)(local_12c + 0x424c) = local_170[0x12];
                *(undefined4 *)(local_12c + 0x425c) = local_170[0x16];
                *(int *)(local_12c + 0x4230) = local_170[0xb] + 0x19;
                *(undefined4 *)(local_12c + 0x4240) = local_170[0xf];
                *(undefined4 *)(local_12c + 0x4250) = local_170[0x13];
                *(undefined4 *)(local_12c + 0x4260) = local_170[0x17];
                iVar3 = TPGroupSeek(iVar11,"Scaling",0,0);
                if (iVar3 + 1 == 0) {
                    sprintf((char *)(g + 0x20748),"Missing scaling info: %s",local_134,extraout_ECX_00);
                }
                else {
                    uVar4 = TPGetValueInt(iVar11,&DAT_08279422,local_170 + 0x1f,iVar3 + 1);
                    local_15c = TPGetValueInt(iVar11,&DAT_08279427,local_170 + 0x20);
                    uVar5 = TPGetValueFloat(iVar11,"topscale",local_170 + 0x21);
                    uVar6 = TPGetValueFloat(iVar11,"botscale",local_170 + 0x22);
                    puVar8 = local_170;
                    if ((uVar4 & local_15c & uVar5 & uVar6) == 1) {
                        iVar3 = local_170[0x20];
                        if (local_170[0x1f] == iVar3) {
                            local_170[0x22] = (float)local_170[0x22] + 1.0;
                        }
                        iVar3 = TPGroupSeek(iVar11,"Bound",iVar3,iVar3);
                        if (iVar3 == -1) {
                            sprintf((char *)(g + 0x20748),"Missing bound info: %s",local_134,iVar11);
                        }
                        else {
                            uVar4 = TPGetValueInt(iVar11,"screenleft",local_170 + 0x24,uVar5);
                            uVar14 = TPGetValueInt(iVar11,"screenright",local_170 + 0x23);
                            uVar10 = (undefined4)((ulonglong)uVar14 >> 0x20);
                            iVar3 = (uVar4 & (uint)uVar14) - 1;
                            if (iVar3 == 0) {
                                iVar7 = TPGroupSeek(iVar11,"StageInfo",uVar10,uVar10);
                                iVar3 = g;
                                if (iVar7 == -1) {
                                    sprintf((char *)(g + 0x20748),"Missing stage info: %s",local_134,0);
                                }
                                else {
                                    *(undefined4 *)(g + 0x10500) = 0xbe;
                                    *(undefined4 *)(iVar3 + 0x10508) = 0xffffffff;
                                    TPGetValueInt(iVar11,"zoffset",iVar3 + 0x10500,puVar8);
                                    TPGetValueInt(iVar11,"zoffsetlink",g + 0x10508);
                                    *(undefined4 *)(g + 0x10504) = *(undefined4 *)(g + 0x10500);
                                    local_170[0x1e] = 0;
                                    TPGetValueInt(iVar11,"autoturn",local_170 + 0x1e);
                                    *local_170 = 1;
                                    TPGetValueInt(iVar11,"resetbg",local_170);
                                    puVar8 = local_170;
                                    local_170[0x27] = 0x3ecccccd;
                                    local_170[0x25] = 0x80;
                                    iVar3 = TPGroupSeek(iVar11,"Shadow");
                                    if (iVar3 != -1) {
                                        TPScanf(iVar11,"color",&DAT_08276cda,&local_128,&local_124,local_120,
                                                extraout_ECX_02,extraout_ECX_02);
                                        TPGetValueInt(iVar11,"intensity",puVar8 + 0x25);
                                        TPGetValueFloat(iVar11,"yscale",puVar8 + 0x27);
                                        TPScanf(iVar11,"fade.range",&DAT_08276cdd,puVar8 + 0x28,puVar8 + 0x29);
                                    }
                                    puVar13 = auStack_17c;
                                    uVar4 = (local_120[0] >> 3) << ((byte)_rgb_b_shift_16 & 0x1f);
                                    local_170[0x26] =
                                    (local_128 >> 3) << ((byte)_rgb_r_shift_16 & 0x1f) |
                                    (local_124 >> 2) << ((byte)_rgb_g_shift_16 & 0x1f) | uVar4;
                                    iVar3 = TPGroupSeek(iVar11,"Reflection",local_170,local_170);
                                    if (iVar3 + 1 != 0) {
                                        TPGetValueInt(iVar11,"intensity",local_170 + 0x2a,iVar3 + 1);
                                    }
                                    iVar3 = TPGroupSeek(iVar11,"Music",puVar8,puVar8);
                                    if ((iVar3 != -1) && (iVar3 = *(int *)(g + 0x1bbcc), iVar3 != 0)) {
                                        iVar7 = TPGetValue(iVar11,"bgmusic",uVar4,uVar4);
                                        if (*(char *)(g + 0x3013) == '\0') {
                                            if (iVar7 != 0) {
                                                TPGetValueInt(iVar11,"bgvolume",local_170 + 0x31,extraout_ECX_03);
                                            }
                                        }
                                        else {
                                            iVar7 = g + 0x3013;
                                        }
                                        if ((iVar7 != 0) &&
                                            (((*(int *)(g + 0x1d3a0) == 0 || (*(int *)(g + 0x1d3b8) != 0)) &&
                                            (iVar3 = BGMLoad(local_170 + 0x2b,iVar7,1,iVar3), iVar3 == 0)))) {
                                            return 0;
                                            }
                                    }
                                    TPFree(iVar11);
                                    *(int *)(g + 0x20710) = Ticks;
                                    iVar3 = GameBGLoad();
                                    iVar11 = g;
                                    if (iVar3 != 0) {
                                        piVar2 = (int *)(g + 0x1ce5c);
                                        *(int *)(g + 0x20710) = Ticks - *(int *)(g + 0x20710);
                                        *(int *)(iVar11 + 0x1ce54) = *(int *)(iVar11 + 0x1ce58) + *piVar2;
                                        iVar3 = 1;
                                        *(undefined4 *)(iVar11 + 0x1d274) = 0;
                                        puVar8 = (undefined4 *)(iVar11 + 0xcee0);
                                        do {
                                            *puVar8 = 0;
                                            puVar8 = puVar8 + 0x6a7;
                                            iVar3 = iVar3 + -1;
                                        } while (-1 < iVar3);
                                        iVar3 = 0;
                                        iVar11 = 5;
                                        if (0 < *(int *)(g + 0x1ce58)) {
                                            local_160 = local_100 + 1;
                                            iVar7 = 0x1cf74;
                                            do {
                                                *(undefined4 *)(puVar13 + -0x10) = 0;
                                                *(undefined4 *)(puVar13 + -0x14) = 0x809e4ec;
                                                iVar9 = PlayerNew();
                                                iVar12 = g;
                                                *(int *)(iVar7 + 4 + g) = iVar9;
                                                if (iVar9 == 0) {
                                                    *(undefined4 *)(puVar13 + -4) = 0;
                                                    *(undefined4 *)(puVar13 + -8) = 0;
                                                    *(char **)(puVar13 + -0xc) = "\nCan\'t create helper characters";
                                                    *(int *)(puVar13 + -0x10) = iVar12 + 0x20748;
                                                    *(undefined4 *)(puVar13 + -0x14) = 0x809e603;
                                                    strcat(*(char **)(puVar13 + -0x10),*(char **)(puVar13 + -0xc));
                                                    return 0;
                                                }
                                                iVar1 = iVar11 + -1;
                                                *(int *)(iVar9 + 8) = iVar11;
                                                if (iVar1 < 0x20) {
                                                    *(int *)(puVar13 + -4) = iVar12;
                                                    *(undefined4 *)(puVar13 + -8) = 1;
                                                    *(int *)(puVar13 + -0xc) = 1 << ((byte)iVar1 & 0x1f);
                                                    *(undefined4 *)(puVar13 + -0x10) = *(undefined4 *)(puVar13 + 0x1c);
                                                    *(undefined4 *)(puVar13 + -0x14) = 0x809e521;
                                                    PalGrpMakeFlag();
                                                    iVar12 = *(int *)(iVar7 + g + 4);
                                                    *(undefined4 *)(iVar12 + 0x25c8) = *(undefined4 *)(puVar13 + 0x7c);
                                                    *(undefined4 *)(iVar12 + 0x25cc) = *(undefined4 *)(puVar13 + 0x80);
                                                    *(undefined4 *)(iVar12 + 0x25d0) = *(undefined4 *)(puVar13 + 0x84);
                                                    *(undefined4 *)(iVar12 + 0x25d4) = *(undefined4 *)(puVar13 + 0x88);
                                                    uVar10 = *(undefined4 *)(puVar13 + 0x8c);
                                                }
                                                else {
                                                    *(int *)(puVar13 + -4) = iVar1;
                                                    *(undefined4 *)(puVar13 + -8) = 2;
                                                    *(int *)(puVar13 + -0xc) = 1 << ((char)iVar11 - 0x21U & 0x1f);
                                                    *(int **)(puVar13 + -0x10) = local_120 + 1;
                                                    *(undefined4 *)(puVar13 + -0x14) = 0x809e584;
                                                    PalGrpMakeFlag();
                                                    iVar12 = *(int *)(iVar7 + g + 4);
                                                    *(undefined4 *)(iVar12 + 0x25c8) = *(undefined4 *)(puVar13 + 0x5c);
                                                    *(undefined4 *)(iVar12 + 0x25cc) = *(undefined4 *)(puVar13 + 0x60);
                                                    *(undefined4 *)(iVar12 + 0x25d0) = *(undefined4 *)(puVar13 + 100);
                                                    *(undefined4 *)(iVar12 + 0x25d4) = *(undefined4 *)(puVar13 + 0x68);
                                                    uVar10 = *(undefined4 *)(puVar13 + 0x6c);
                                                }
                                                puVar13 = puVar13 + -4;
                                                *(undefined4 *)(iVar12 + 0x25d8) = uVar10;
                                                iVar3 = iVar3 + 1;
                                                iVar7 = iVar7 + 4;
                                                iVar11 = iVar11 + 1;
                                            } while (iVar3 < *(int *)(g + 0x1ce58));
                                        }
                                        if (*(int *)(g + 0x20734) == 0) {
                                            *(undefined4 *)(g + 0x2072c) = 0;
                                        }
                                        else {
                                            *(undefined4 *)(g + 0x2072c) = 1;
                                        }
                                        return 1;
                                    }
                                }
                            }
                            else {
                                sprintf((char *)(g + 0x20748),"Can\'t read bound info: %s",local_134,iVar3);
                            }
                        }
                    }
                    else {
                        sprintf((char *)(g + 0x20748),"Can\'t read scaling info: %s",local_134,extraout_ECX_01
                        );
                    }
                }
                    }
                    else {
                        sprintf((char *)(g + 0x20748),"Can\'t read player info: %s",local_134,local_150);
                    }
            }
        }
    }
    return 0;
}

