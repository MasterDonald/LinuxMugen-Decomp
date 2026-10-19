
void GameRoundReset(void)

{
    int iVar1;
    undefined4 uVar2;
    undefined4 uVar3;
    undefined4 uVar4;
    int iVar5;
    int iVar6;
    int *piVar7;
    int iVar8;
    int iVar9;
    int iVar10;
    int iVar11;
    undefined4 *puVar12;
    int local_48;
    int local_44;
    int local_40;
    int local_3c;
    int local_30;
    int local_2c;
    int local_28;

    iVar11 = g;
    SndIDStop(0xffffffff);
    iVar8 = g;
    iVar6 = *(int *)(g + 0x13984);
    *(undefined4 *)(g + 0x1d440) = *(undefined4 *)(g + 0x1423c);
    *(undefined4 *)(iVar8 + 0x1d424) = 0;
    *(undefined4 *)(iVar8 + 0x1d460) = 0;
    *(undefined4 *)(iVar8 + 0x1d42c) = 0;
    *(undefined4 *)(iVar8 + 0x1d434) = 0;
    *(undefined4 *)(iVar8 + 0x1d430) = 0;
    *(undefined4 *)(iVar8 + 0x1d438) = 0;
    *(undefined4 *)(iVar8 + 0x1d43c) = 0;
    *(undefined4 *)(iVar8 + 0x1d444) = 0;
    *(undefined4 *)(iVar8 + 0x1d448) = 0;
    *(undefined4 *)(iVar8 + 0x1d44c) = 0;
    *(undefined4 *)(iVar8 + 0x1d450) = 0;
    *(int *)(iVar8 + 0x1d454) = (*(int *)(iVar8 + 0x1e680) + 1) * iVar6 + -1;
    *(undefined4 *)(iVar8 + 0x1d458) = 0;
    if (((*(int *)(iVar8 + 0xceb8) == 3) || (*(int *)(iVar8 + 0x1d3a0) != 0)) ||
        (*(int *)(iVar8 + 0xced0) != 0)) {
        *(undefined4 *)(g + 0x1d454) = 0xffffffff;
        }
        iVar8 = 1;
    iVar6 = g;
    if (0 < *(int *)(g + 0x1ce54)) {
        local_48 = 0x1cf64;
        do {
            iVar10 = *(int *)(local_48 + 4 + iVar6);
            if (iVar10 != 0) {
                if (*(int *)(iVar10 + 0x1c) == 0) {
                    uVar2 = *(undefined4 *)(iVar10 + 0x160);
                    uVar3 = *(undefined4 *)(iVar10 + 0x262c);
                    uVar4 = *(undefined4 *)(iVar10 + 0x178);
                    PlayerReset(iVar10);
                    PlayerChangeState(iVar10,0x170c);
                    KBIRefreshKeyflags(iVar10 + 0x248,*(undefined4 *)(iVar10 + 0x960));
                    iVar6 = g;
                    *(undefined4 *)(iVar10 + 0x262c) = uVar3;
                    *(undefined4 *)(iVar10 + 0x180) = uVar4;
                    *(undefined4 *)(iVar10 + 0x178) = uVar4;
                    if (*(int *)(iVar6 + 0x1d3a0) != 0) {
                        uVar3 = **(undefined4 **)(iVar10 + 0x174);
                        *(undefined4 *)(iVar10 + 0x180) = uVar3;
                        *(undefined4 *)(iVar10 + 0x184) = uVar3;
                        *(undefined4 *)(iVar10 + 0x178) = uVar3;
                    }
                    if (*(int *)(iVar6 + 0xe968 + *(int *)(iVar10 + 0x10) * 0x1a9c) == 0) {
                        *(undefined4 *)(iVar10 + 0x160) = uVar2;
                    }
                    iVar6 = g;
                    *(undefined4 *)(iVar10 + 0x16c) = *(undefined4 *)(iVar10 + 0x160);
                    *(undefined4 *)(iVar10 + 0x168) = *(undefined4 *)(iVar10 + 0x160);
                }
                else if (*(int *)(iVar10 + 0x158) != 0) {
                    PlayerEnableSet(*(undefined4 *)(iVar10 + 8),0,iVar6,iVar6);
                    iVar6 = g;
                }
            }
            iVar8 = iVar8 + 1;
            local_48 = local_48 + 4;
        } while (iVar8 <= *(int *)(iVar6 + 0x1ce54));
    }
    iVar8 = 0;
    do {
        iVar9 = 0;
        iVar10 = iVar6 + iVar8 * 0x1a9c;
        iVar1 = iVar10 + 0xceec + *(int *)(iVar10 + 0xcee0) * 0x5c;
        if (0 < *(int *)(iVar1 + 8)) {
            do {
                iVar5 = *(int *)(iVar6 + 0x1cf64 + *(int *)(iVar1 + 0xc + iVar9 * 0x14) * 4);
                iVar6 = (int)ROUND((float)*(int *)(iVar5 + 0x50) * *(float *)(iVar10 + 0xe96c) *
                (float)*(int *)(iVar6 + 0x1e67c) * 0.01 + 0.5);
                *(int *)(iVar5 + 0x164) = iVar6;
                if (iVar6 < *(int *)(iVar5 + 0x160)) {
                    *(int *)(iVar5 + 0x16c) = iVar6;
                    *(int *)(iVar5 + 0x168) = iVar6;
                    *(int *)(iVar5 + 0x160) = iVar6;
                }
                iVar9 = iVar9 + 1;
                iVar6 = g;
            } while (iVar9 < *(int *)(iVar1 + 8));
        }
        iVar8 = iVar8 + 1;
        iVar6 = g;
    } while (iVar8 < 2);
    iVar8 = 0;
    GameRoundResetPlayerPos();
    iVar6 = g;
    local_3c = 0xe970;
    local_40 = 0;
    local_44 = 0;
    do {
        *(undefined4 *)(local_3c + 8 + iVar6) = 0;
        iVar10 = *(int *)(iVar11 + 0x10420 + local_40);
        if (0 < iVar10) {
            piVar7 = (int *)(iVar11 + 0x10424 + local_44 * 4);
            do {
                iVar1 = *(int *)(iVar6 + 0x1cf64 + *piVar7 * 4);
                if (iVar1 != 0) {
                    *(float *)(local_3c + iVar6 + 8) =
                    (float)*(int *)(iVar1 + 0x160) / (float)*(int *)(iVar1 + 0x164) +
                    *(float *)(local_3c + iVar6 + 8);
                }
                piVar7 = piVar7 + 5;
                iVar10 = iVar10 + -1;
            } while (iVar10 != 0);
        }
        iVar10 = *(int *)(iVar11 + 0x10420 + local_40);
        if (0 < iVar10) {
            *(float *)(local_3c + iVar6 + 8) = *(float *)(local_3c + iVar6 + 8) / (float)iVar10;
        }
        iVar10 = g;
        local_3c = local_3c + 0x1a9c;
        local_40 = local_40 + 0x5c;
        local_44 = local_44 + 0x17;
        iVar8 = iVar8 + 1;
    } while (iVar8 < 2);
    iVar11 = 1;
    if (0 < *(int *)(iVar6 + 0x1ce54)) {
        iVar8 = 0x1cf64;
        do {
            iVar1 = *(int *)(iVar8 + 4 + iVar6);
            if (iVar1 != 0) {
                *(undefined4 *)(iVar1 + 0xe0c) = 0;
                iVar6 = iVar10;
            }
            iVar11 = iVar11 + 1;
            iVar8 = iVar8 + 4;
        } while (iVar11 <= *(int *)(iVar6 + 0x1ce54));
    }
    iVar11 = g;
    iVar8 = 0x1cf64;
    local_28 = 0x1e650;
    local_2c = 0x1e640;
    local_30 = 0x1e620;
    iVar10 = 3;
    do {
        iVar1 = *(int *)(iVar8 + 4 + iVar6);
        if (iVar1 != 0) {
            iVar9 = *(int *)(local_30 + 0x14 + iVar6);
            if (iVar9 != -1) {
                *(int *)(iVar1 + 0x262c) = iVar9;
                iVar6 = iVar11;
            }
            iVar9 = *(int *)(local_2c + 0x14 + iVar6);
            if (iVar9 != -1) {
                *(int *)(iVar1 + 0x16c) = iVar9;
                *(int *)(iVar1 + 0x168) = iVar9;
                *(int *)(iVar1 + 0x160) = iVar9;
                *(int *)(iVar1 + 0x164) = iVar9;
                iVar6 = iVar11;
            }
            iVar9 = *(int *)(local_28 + 0x14 + iVar6);
            if (iVar9 != -1) {
                **(int **)(iVar1 + 0x170) = iVar9;
                *(int *)(iVar1 + 0x180) = iVar9;
                *(int *)(iVar1 + 0x184) = iVar9;
                iVar6 = iVar11;
            }
        }
        local_28 = local_28 + 4;
        local_2c = local_2c + 4;
        local_30 = local_30 + 4;
        iVar8 = iVar8 + 4;
        iVar10 = iVar10 + -1;
    } while (-1 < iVar10);
    CameraMoveAbs((float)*(int *)(iVar6 + 0x4200),(float)*(int *)(iVar6 + 0x4204));
    iVar6 = g;
    *(undefined4 *)(g + 0x1cc58) = 0;
    *(undefined4 *)(iVar6 + 0x1cc54) = 0;
    AnimPerArrayClear(*(undefined4 *)(iVar6 + 0x104f0));
    MasterPalAdd(0,0,0);
    MasterPalMul(0,0,0);
    iVar6 = g;
    *(undefined1 *)(g + 0x1d396) = 0;
    iVar11 = g;
    *(undefined4 *)(iVar6 + 0x1d38c) = 0;
    *(undefined4 *)(iVar6 + 0x1d390) = 0;
    *(undefined2 *)(iVar6 + 0x1d394) = 0;
    if (*(int *)(iVar11 + 0x41fc) != 0) {
        BGArrayReset(*(undefined4 *)(iVar11 + 0x1bb50));
        iVar11 = g;
    }
    PalFXReset(iVar11 + 0x1bb54);
    PalFXReset(g + 0x1bb90);
    PalGrpResetPalette();
    GameAftImgReset(*(undefined4 *)(g + 0x104fc));
    ExplodArrayReset(*(undefined4 *)(g + 0x14af8));
    ExplodArrayReset(*(undefined4 *)(g + 0x14afc));
    iVar6 = g;
    *(undefined4 *)(g + 0x1d3cc) = 0xffffffff;
    *(undefined4 *)(iVar6 + 0x1d40c) = 0;
    *(undefined4 *)(iVar6 + 0x1d3e8) = 0;
    puVar12 = (undefined4 *)(iVar6 + 0x1cc5c);
    for (iVar11 = 6; iVar11 != 0; iVar11 = iVar11 + -1) {
        *puVar12 = 0;
        puVar12 = puVar12 + 1;
    }
    puVar12 = (undefined4 *)(g + 0x1d51c);
    for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
        *puVar12 = 0;
        puVar12 = puVar12 + 1;
    }
    puVar12 = (undefined4 *)(g + 0x1d534);
    for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
        *puVar12 = 0;
        puVar12 = puVar12 + 1;
    }
    keypauseflag = 0;
    *(undefined4 *)(g + 0x1cc24) = 0;
    return;
}

