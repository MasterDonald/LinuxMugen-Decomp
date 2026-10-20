
void GameBarsDraw(undefined4 param_1)

{
    undefined4 *puVar1;
    undefined4 *puVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    undefined4 uVar6;
    int iVar7;
    int iVar8;
    undefined4 uVar9;
    undefined4 extraout_EDX;
    int iVar10;
    int iVar11;
    int iVar12;
    char *pcVar13;
    int iVar14;
    int iVar15;
    undefined8 uVar16;
    int local_c4;
    int local_c0;
    int local_bc;
    int local_b8;
    int local_b4;
    int local_b0;
    int local_ac;
    int local_a8;
    int local_a4;
    int local_a0;
    int local_9c;
    int local_98;
    int local_94;
    int local_90;
    int local_8c;
    int local_88;
    int local_84;
    int local_80;
    int local_7c;
    int local_78;
    int local_74;
    int local_70;
    int local_6c;
    int local_68;
    int local_64;
    int local_60;
    int local_5c;
    char *local_58;
    int local_54;
    int local_50;
    int local_34;
    int local_30;
    int local_2c;

    iVar3 = g;
    local_50 = g;
    iVar4 = g + 0x10524;
    iVar8 = g + 0x11b3c;
    iVar7 = g + 0x138a4;
    iVar5 = g + 0x1055c;
    iVar10 = g + 0x14240;
    local_30 = 0;
    local_c4 = 0;
    do {
        local_2c = 0;
        local_ac = 0;
        local_b8 = 0;
        local_bc = 0;
        local_c0 = 0x1cf6c;
        do {
            if (*(int *)(local_c0 + 4 + local_50) == 0) {
                local_34 = 1;
                iVar12 = iVar5;
                if (1 < *(int *)(local_50 + local_ac + 0xcee4)) {
                    iVar12 = iVar3 + 0x1127c;
                }
            }
            else {
                local_34 = 3;
                iVar12 = iVar3 + 0x109bc;
            }
            if (local_2c < local_34 + local_2c) {
                iVar14 = local_c4 + iVar12 + 0x14 + local_bc;
                iVar11 = local_b8;
                iVar15 = local_2c;
                do {
                    iVar15 = iVar15 + 2;
                    puVar2 = (undefined4 *)(iVar12 + 4 + iVar11);
                    puVar1 = (undefined4 *)(iVar12 + iVar11);
                    iVar11 = iVar11 + 0x460;
                    SysExplodCreateDraw_Fight(iVar14,*puVar1,*puVar2,param_1);
                    iVar14 = iVar14 + 0x460;
                } while (iVar15 < local_34 + local_2c);
                local_50 = g;
            }
            local_2c = local_2c + 1;
            local_ac = local_ac + 0x1a9c;
            local_b8 = local_b8 + 0x230;
            local_bc = local_bc + 0x230;
            local_c0 = local_c0 + 4;
        } while (local_2c < 2);
        local_30 = local_30 + 1;
        local_c4 = local_c4 + 0x6c;
    } while (local_30 < 3);
    local_2c = 0;
    while( true ) {
        if (*(int *)(local_50 + 0x1cf70 + local_2c * 4) == 0) {
            local_34 = 1;
            iVar12 = iVar5;
            if (1 < *(int *)(local_50 + local_2c * 0x1a9c + 0xcee4)) {
                iVar12 = iVar3 + 0x1127c;
            }
        }
        else {
            local_34 = 3;
            iVar12 = iVar3 + 0x109bc;
        }
        iVar14 = local_2c;
        if (local_2c < local_34 + local_2c) {
            while( true ) {
                GameLifeBarDraw(iVar14 + 1,*(undefined4 *)(local_50 + 0x1cf68 + iVar14 * 4),
                                iVar14 * 0x230 + iVar12,param_1);
                if (local_34 + local_2c <= iVar14 + 2) break;
                local_50 = g;
                iVar14 = iVar14 + 2;
            }
        }
        local_2c = local_2c + 1;
        if (1 < local_2c) break;
        local_50 = g;
    }
    local_30 = 0;
    iVar5 = iVar8;
    do {
        iVar12 = iVar5 + 0x14;
        iVar11 = 1;
        iVar14 = 0;
        do {
            iVar15 = iVar14 + 4;
            puVar1 = (undefined4 *)(iVar8 + iVar14);
            iVar14 = iVar14 + 0x230;
            uVar6 = SysExplodCreateDraw_Fight(iVar12,*puVar1,*(undefined4 *)(iVar15 + iVar8),param_1);
            iVar12 = iVar12 + 0x230;
            iVar11 = iVar11 + -1;
        } while (-1 < iVar11);
        iVar5 = iVar5 + 0x6c;
        local_30 = local_30 + 1;
    } while (local_30 < 3);
    iVar5 = 0;
    do {
        iVar14 = iVar5 * 0x230;
        iVar12 = iVar5 + 1;
        uVar16 = GamePowerBarDraw(iVar12,*(undefined4 *)(g + 0x1cf68 + iVar5 * 4),
                                  *(int *)(iVar14 + iVar3 + 0x11b44) + *(int *)(iVar14 + iVar8),
                                  *(undefined4 *)(iVar14 + 4 + iVar8),
                                  *(int *)(iVar14 + iVar3 + 0x11b48) + *(int *)(iVar14 + iVar8),param_1,
                                  uVar6,uVar6);
        uVar9 = (undefined4)((ulonglong)uVar16 >> 0x20);
        uVar6 = (undefined4)uVar16;
        iVar5 = iVar12;
    } while (iVar12 < 2);
    iVar12 = iVar3 + 0x11f9c;
    iVar5 = 0;
    pcVar13 = (char *)(iVar3 + 0x11fd8);
    iVar14 = 1;
    local_a8 = 0x1cf64;
    do {
        sprintf(pcVar13,"%i",*(int *)(*(int *)(local_a8 + g + 4) + 0x180) / 1000,uVar9);
        pcVar13 = pcVar13 + 0x6c;
        iVar11 = iVar5 + 4;
        puVar1 = (undefined4 *)(iVar8 + iVar5);
        iVar5 = iVar5 + 0x230;
        SysExplodCreateDraw_Fight(iVar12,*puVar1,*(undefined4 *)(iVar11 + iVar8),param_1);
        iVar12 = iVar12 + 0x6c;
        local_a8 = local_a8 + 4;
        iVar14 = iVar14 + -1;
        uVar9 = extraout_EDX;
    } while (-1 < iVar14);
    local_a0 = iVar3 + 0x12b74;
    local_50 = g;
    local_2c = 0;
    local_a4 = 0;
    do {
        if (*(int *)(local_50 + 0xced0) != 2 - local_2c) {
            iVar5 = *(int *)(local_50 + local_a4 + 0xcee4);
            if (1 < iVar5) {
                iVar14 = 0;
                iVar8 = *(int *)(local_a0 + 0x144);
                iVar12 = *(int *)(local_a0 + 0x148);
                if (0 < iVar5 + -1) {
                    do {
                        iVar14 = iVar14 + 1;
                        SysExplodCreateDraw_Fight(local_a0,iVar8,iVar12,param_1);
                        iVar12 = iVar12 + *(int *)(local_a0 + 0x154);
                        iVar8 = iVar8 + *(int *)(local_a0 + 0x150);
                    } while (iVar14 < *(int *)(local_50 + local_a4 + 0xcee4) + -1);
                    local_50 = g;
                }
            }
        }
        local_2c = local_2c + 1;
        local_a0 = local_a0 + 0x158;
        local_a4 = local_a4 + 0x1a9c;
    } while (local_2c < 2);
    local_2c = 0;
    local_98 = 0x1cf6c;
    local_9c = 0;
    local_b4 = 0;
    do {
        if (*(int *)(local_98 + 4 + local_50) == 0) {
            local_34 = 1;
            iVar5 = iVar3 + 0x120c4;
            if (1 < *(int *)(local_50 + local_9c + 0xcee4)) {
                iVar5 = iVar3 + 0x127e4;
            }
        }
        else {
            local_34 = 3;
            iVar5 = iVar3 + 0x12454;
        }
        if (local_2c < local_34 + local_2c) {
            iVar8 = local_2c * 4;
            iVar14 = local_b4 + iVar5;
            iVar12 = local_2c;
            do {
                iVar12 = iVar12 + 2;
                puVar1 = (undefined4 *)(iVar5 + 0x370 + iVar8);
                puVar2 = (undefined4 *)(iVar5 + 0x360 + iVar8);
                iVar8 = iVar8 + 8;
                SysExplodCreateDraw_Fight(iVar14,*puVar2,*puVar1,param_1);
                iVar14 = iVar14 + 0x1b0;
            } while (iVar12 < local_34 + local_2c);
            local_50 = g;
        }
        local_2c = local_2c + 1;
        local_98 = local_98 + 4;
        local_9c = local_9c + 0x1a9c;
        local_b4 = local_b4 + 0xd8;
    } while (local_2c < 2);
    local_2c = 0;
    iVar5 = 0;
    iVar8 = 0x1cf6c;
    do {
        if (*(int *)(iVar8 + 4 + local_50) == 0) {
            local_34 = 1;
            iVar12 = iVar3 + 0x120c4;
            if (1 < *(int *)(local_50 + iVar5 + 0xcee4)) {
                iVar12 = iVar3 + 0x127e4;
            }
        }
        else {
            local_34 = 3;
            iVar12 = iVar3 + 0x12454;
        }
        local_34 = local_2c + -1 + local_34;
        if (-1 < local_34) {
            while( true ) {
                iVar14 = local_34 * 4;
                SysExplodCreateDraw(*(undefined4 *)(local_50 + 0x14afc),iVar12 + 0x6c + local_34 * 0xd8,
                                    *(undefined4 *)(*(int *)(iVar14 + 0x1cf64 + local_50 + 4) + 0x13ac),
                                    *(undefined4 *)(**(int **)(iVar14 + 0x1cf64 + local_50 + 4) + 0x11cc),
                                    local_50 + 0x1052c,*(undefined4 *)(iVar12 + 0x360 + iVar14),
                                    *(undefined4 *)(iVar12 + 0x370 + iVar14),param_1);
                local_34 = local_34 + -2;
                if (local_34 < 0) break;
                local_50 = g;
            }
            local_50 = g;
        }
        iVar8 = iVar8 + 4;
        local_2c = local_2c + 1;
        iVar5 = iVar5 + 0x1a9c;
    } while (local_2c < 2);
    local_90 = iVar3 + 0x12b74;
    local_2c = 0;
    local_94 = 0;
    do {
        if (*(int *)(local_50 + 0xced0) != 2 - local_2c) {
            iVar5 = local_50 + local_94;
            if (1 < *(int *)(iVar5 + 0xcee4)) {
                iVar14 = 0;
                iVar8 = *(int *)(local_90 + 0x144);
                iVar12 = *(int *)(local_90 + 0x148);
                if (0 < *(int *)(iVar5 + 0xcee4)) {
                    do {
                        if (iVar14 != *(int *)(iVar5 + 0xcee0)) {
                            iVar11 = (iVar14 + local_2c * 4) * 4 + 0x45b0;
                            if (*(int *)(iVar11 + iVar4) != 0) {
                                SysExplodCreateDraw(*(undefined4 *)(local_50 + 0x14afc),local_90 + 0x6c,
                                                    *(undefined4 *)(iVar11 + iVar4),*(undefined4 *)(iVar3 + 0x10528)
                                                    ,local_50 + 0x1052c,iVar8,iVar12,param_1);
                                local_50 = g;
                            }
                            iVar8 = iVar8 + *(int *)(local_90 + 0x150);
                            iVar12 = iVar12 + *(int *)(local_90 + 0x154);
                        }
                        iVar14 = iVar14 + 1;
                    } while (iVar14 < *(int *)(iVar5 + 0xcee4));
                }
            }
        }
        local_2c = local_2c + 1;
        local_90 = local_90 + 0x158;
        local_94 = local_94 + 0x1a9c;
    } while (local_2c < 2);
    local_84 = iVar3 + 0x12c4c;
    local_88 = iVar3 + 0x12b74;
    local_8c = 0;
    local_2c = 1;
    do {
        iVar4 = local_50 + local_8c;
        if (1 < *(int *)(iVar4 + 0xcee4)) {
            iVar12 = 0;
            iVar5 = *(int *)(local_88 + 0x144);
            iVar8 = *(int *)(local_88 + 0x148);
            if (0 < *(int *)(iVar4 + 0xcee0)) {
                do {
                    iVar12 = iVar12 + 1;
                    SysExplodCreateDraw_Fight(local_84,iVar5,iVar8,param_1);
                    iVar5 = iVar5 + *(int *)(local_88 + 0x150);
                    iVar8 = iVar8 + *(int *)(local_88 + 0x154);
                } while (iVar12 < *(int *)(iVar4 + 0xcee0));
                local_50 = g;
            }
        }
        local_84 = local_84 + 0x158;
        local_88 = local_88 + 0x158;
        local_8c = local_8c + 0x1a9c;
        local_2c = local_2c + -1;
    } while (-1 < local_2c);
    local_2c = 0;
    local_7c = 0x1cf6c;
    local_80 = 0;
    local_b0 = 0;
    do {
        if (*(int *)(local_7c + 4 + local_50) == 0) {
            local_34 = 1;
            iVar4 = iVar3 + 0x12e24;
            if (1 < *(int *)(local_50 + local_80 + 0xcee4)) {
                iVar4 = iVar3 + 0x13524;
            }
        }
        else {
            local_34 = 3;
            iVar4 = iVar3 + 0x131a4;
        }
        if (local_2c < local_34 + local_2c) {
            iVar5 = local_2c * 4;
            iVar12 = local_b0 + iVar4;
            iVar8 = local_2c;
            do {
                iVar8 = iVar8 + 2;
                puVar1 = (undefined4 *)(iVar4 + 0x370 + iVar5);
                puVar2 = (undefined4 *)(iVar4 + 0x360 + iVar5);
                iVar5 = iVar5 + 8;
                SysExplodCreateDraw_Fight(iVar12,*puVar2,*puVar1,param_1);
                iVar12 = iVar12 + 0xd8;
            } while (iVar8 < local_34 + local_2c);
            local_50 = g;
        }
        iVar4 = local_2c + 1;
        local_7c = local_7c + 4;
        local_80 = local_80 + 0x1a9c;
        local_b0 = local_b0 + 0x6c;
        local_2c = iVar4;
    } while (iVar4 < 2);
    local_2c = 0;
    while( true ) {
        if (*(int *)(local_50 + 0x1cf70 + local_2c * 4) == 0) {
            local_34 = 1;
            iVar5 = iVar3 + 0x12e24;
            if (1 < *(int *)(local_50 + local_2c * 0x1a9c + 0xcee4)) {
                iVar5 = iVar3 + 0x13524;
            }
        }
        else {
            local_34 = 3;
            iVar5 = iVar3 + 0x131a4;
        }
        iVar8 = local_2c;
        iVar12 = local_2c;
        if (local_2c < local_34 + local_2c) {
            while( true ) {
                iVar14 = iVar12 * 4;
                iVar8 = iVar12 + 2;
                iVar12 = iVar5 + iVar12 * 0x6c;
                strncpy((char *)(iVar12 + 0x1ec),(char *)(**(int **)(iVar14 + 0x1cf68 + local_50) + 0x30),
                        0x2f);
                iVar4 = *(int *)(iVar5 + 0x360 + iVar14);
                SysExplodCreateDraw_Fight
                (iVar12 + 0x1b0,iVar4,*(undefined4 *)(iVar5 + 0x370 + iVar14),param_1);
                if (local_34 + local_2c <= iVar8) break;
                local_50 = g;
                iVar12 = iVar8;
            }
        }
        local_2c = local_2c + 1;
        if (1 < local_2c) break;
        local_50 = g;
    }
    SysExplodCreateDraw_Fight
    (iVar7,*(undefined4 *)(iVar3 + 0x1397c),*(undefined4 *)(iVar3 + 0x13980),param_1);
    if (*(int *)(g + 0x1d454) == -1) {
        iVar5 = 0x6f;
        pcVar13 = "%c";
    }
    else {
        iVar5 = *(int *)(g + 0x1d454) / *(int *)(iVar3 + 0x13984);
        pcVar13 = "%i";
        iVar4 = iVar8;
    }
    sprintf((char *)(iVar3 + 0x1394c),pcVar13,iVar5,iVar4);
    iVar4 = 0;
    SysExplodCreateDraw_Fight
    (iVar3 + 0x13910,*(undefined4 *)(iVar3 + 0x1397c),*(undefined4 *)(iVar3 + 0x13980),
     param_1);
    local_58 = (char *)(iVar3 + 0x1427c);
    local_54 = 0x870;
    local_60 = 0;
    local_68 = 0;
    local_6c = 0x1d410;
    local_70 = 0x880;
    local_78 = 0;
    local_74 = iVar10;
    local_64 = iVar10;
    local_5c = iVar10;
    do {
        local_50 = g;
        iVar5 = *(int *)(local_60 + 0x1d41c + g);
        if (*(int *)(iVar3 + 0x14ad0) < iVar5) {
            sprintf(local_58,"%i",*(undefined4 *)(local_60 + 0x1d41c + g),iVar5);
            SysExplodCreateDraw_Fight
            (local_5c,*(undefined4 *)(iVar3 + 0x14ab0 + local_60),
             *(undefined4 *)(local_54 + 8 + iVar10),param_1);
        }
        else {
            local_30 = 0;
            if (0 < iVar5) {
                iVar5 = local_78 * 4 + 0x1d450;
                iVar7 = local_60;
                do {
                    iVar8 = *(int *)(iVar5 + 0x14 + local_50);
                    if (iVar8 != -1) {
                        SysExplodCreateDraw_Fight
                        (local_74 + 0xd8 + iVar8 * 0x6c,
                         local_30 * *(int *)(iVar7 + 0x880 + iVar10) +
                         *(int *)(iVar7 + 0x870 + iVar10),
                         local_30 * *(int *)(iVar7 + 0x880 + iVar3 + 0x14248) +
                         *(int *)(iVar7 + 0x870 + iVar3 + 0x14248),param_1);
                        local_50 = g;
                    }
                    local_30 = local_30 + 1;
                    iVar5 = iVar5 + 4;
                    iVar8 = iVar7 + 0x1d41c;
                    iVar7 = iVar4 * 4;
                } while (local_30 < *(int *)(iVar8 + local_50));
            }
            local_30 = 0;
            if (0 < *(int *)(local_60 + 0x1d41c + local_50)) {
                iVar5 = local_68 * 4 + 0x1d4a0;
                do {
                    iVar7 = *(int *)(iVar5 + 0x14 + local_50);
                    if (iVar7 != -1) {
                        SysExplodCreateDraw_Fight
                        (local_64 + 0xd8 + iVar7 * 0x6c,
                         local_30 * *(int *)(local_70 + iVar10) + *(int *)(local_54 + iVar10),
                         local_30 * *(int *)(local_70 + iVar3 + 0x14248) +
                         *(int *)(local_54 + iVar3 + 0x14248),param_1);
                        local_50 = g;
                    }
                    local_30 = local_30 + 1;
                    iVar5 = iVar5 + 4;
                } while (local_30 < *(int *)(local_6c + 0xc + local_50));
            }
        }
        local_54 = local_54 + 4;
        local_58 = local_58 + 0x6c;
        local_5c = local_5c + 0x6c;
        local_60 = local_60 + 4;
        local_64 = local_64 + 0x3cc;
        local_68 = local_68 + 10;
        local_6c = local_6c + 4;
        local_70 = local_70 + 4;
        local_74 = local_74 + 0x3cc;
        local_78 = local_78 + 10;
        iVar4 = iVar4 + 1;
    } while (iVar4 < 2);
    return;
}

