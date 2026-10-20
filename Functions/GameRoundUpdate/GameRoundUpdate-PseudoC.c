
undefined4 GameRoundUpdate(void)

{
    int *piVar1;
    int *piVar2;
    int iVar3;
    bool bVar4;
    bool bVar5;
    byte bVar6;
    int iVar7;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    undefined4 extraout_ECX_01;
    int iVar8;
    int unaff_ESI;
    int iVar9;
    int iVar10;
    int iVar11;
    int iVar12;
    uint uVar13;
    int iVar14;
    undefined4 uVar15;
    undefined4 uVar16;
    undefined4 uVar17;
    int local_78;
    int local_74;
    int local_6c;
    int local_68;
    int local_64;
    int local_60;
    int local_5c;
    undefined4 local_4c;
    int local_48;
    int local_3c [11];

    iVar14 = g;
    iVar10 = g + 0x139d4;
    iVar8 = g + 0x10424;
    local_3c[4] = 0xffffffff;
    local_3c[5] = -1;
    local_3c[6] = -1;
    local_3c[0] = 0;
    local_3c[1] = 0;
    local_3c[2] = 0;
    local_4c = 0;
    local_78 = 4;
    iVar7 = g + 0x10418;
    local_48 = 1;
    do {
        iVar11 = 0;
        iVar12 = *(int *)(iVar7 + 8);
        if (0 < iVar12) {
            do {
                iVar12 = *(int *)(g + 0x1cf64 + *(int *)(iVar8 + iVar11 * 0x14) * 4);
                unaff_ESI = *(int *)((int)local_3c + local_78);
                iVar11 = iVar11 + 1;
                *(uint *)((int)local_3c + local_78) =
                (*(int *)(iVar12 + 0x160) * 1000) / *(int *)(iVar12 + 0x164) + unaff_ESI +
                (uint)(*(int *)(iVar12 + 0xe24) != 0);
                iVar12 = *(int *)(iVar7 + 8);
            } while (iVar11 < iVar12);
        }
        iVar8 = iVar8 + 0x5c;
        iVar7 = iVar7 + 0x5c;
        *(int *)((int)local_3c + local_78) = *(int *)((int)local_3c + local_78) / iVar12;
        local_78 = local_78 + 4;
        local_48 = local_48 + -1;
    } while (-1 < local_48);
    local_74 = 0;
    local_48 = 1;
    do {
        iVar12 = 0;
        iVar7 = local_74 + g;
        iVar8 = local_74;
        if (0 < *(int *)(iVar7 + 0x10420)) {
            local_64 = -4;
            local_68 = 0x10;
            local_6c = 0;
            do {
                iVar8 = *(int *)(g + 0x1cf64 + *(int *)(local_6c + 0xc + iVar7 + 0x10418) * 4);
                if (((iVar8 == 0) || (*(int *)(iVar8 + 0x158) == 0)) ||
                    (bVar4 = true, *(int *)(iVar8 + 0x1c) != 0)) {
                    bVar4 = false;
                    }
                    if (bVar4) {
                        if (local_3c[*(int *)(iVar8 + 0xc) + 4] == -1) {
                            local_3c[*(int *)(iVar8 + 0xc) + 4] = 1;
                        }
                        if ((((*(int *)(iVar7 + 0x10418) != 1) || (iVar12 < 1)) ||
                            ((*(int *)(g + 0x1e6d4) != 0 ||
                            ((*(int *)(local_68 + iVar7 + 0x10424) == 0 ||
                            (*(int *)(local_64 + iVar7 + 0x10424) != 0)))))) && (*(int *)(iVar8 + 0xe24) != 0))
                        {
                            local_3c[*(int *)(iVar8 + 0xc) + 4] = 0;
                        }
                    }
                    unaff_ESI = local_64 + 0x14;
                    local_68 = local_68 + 0x14;
                    local_6c = local_6c + 0x14;
                    iVar12 = iVar12 + 1;
                    iVar8 = g;
                    local_64 = unaff_ESI;
            } while (iVar12 < *(int *)(iVar7 + 0x10420));
        }
        local_74 = local_74 + 0x5c;
        local_48 = local_48 + -1;
    } while (-1 < local_48);
    iVar7 = g;
    if ((local_3c[5] != -1) && (local_3c[6] != -1)) {
        if ((local_3c[5] == 0) || (local_3c[6] == 0)) {
            if (local_3c[5] == 0) {
                if (local_3c[6] == 0) {
                    unaff_ESI = *(int *)(g + 0x1d454);
                    if (unaff_ESI == 0) {
                        *(undefined4 *)(g + 0x1d44c) = 3;
                        if (local_3c[2] < local_3c[1]) {
                            *(undefined4 *)(iVar14 + 0x1d448) = 1;
                            uVar15 = 1;
                        }
                        else {
                            if (local_3c[2] <= local_3c[1]) {
                                WinIconCheck(1,0,4,local_3c[2]);
                                WinIconCheck(2,0,4);
                                iVar7 = g;
                                *(undefined4 *)(g + 0x1d448) = 0;
                                goto LAB_080925c2;
                            }
                            *(undefined4 *)(iVar14 + 0x1d448) = 2;
                            if ((*(int *)(iVar14 + 0x1d444) != 3) && (*(int *)(iVar14 + 0x1d420) < 10)) {
                                *(undefined4 *)(iVar14 + 0x1d48c + *(int *)(iVar14 + 0x1d420) * 4) = 4;
                            }
                            uVar15 = 2;
                            iVar8 = local_3c[1];
                        }
                        WinIconCheck(uVar15,0,4,iVar8);
                        iVar7 = g;
                    }
                }
                else {
                    *(undefined4 *)(g + 0x1d44c) = 1;
                    *(undefined4 *)(iVar14 + 0x1d448) = 1;
                    iVar7 = g;
                }
            }
            else {
                *(undefined4 *)(g + 0x1d44c) = 1;
                *(undefined4 *)(iVar14 + 0x1d448) = 2;
                iVar7 = g;
            }
        }
        else {
            *(undefined4 *)(g + 0x1d44c) = 2;
            *(undefined4 *)(iVar14 + 0x1d448) = 0;
            iVar7 = g;
        }
    }
    LAB_080925c2:
    if (*(int *)(iVar7 + 0x1cc2c) != 0) {
        *(undefined4 *)(iVar7 + 0x1d44c) = 0;
        iVar7 = g;
    }
    if (1 < *(uint *)(iVar7 + 0x1d444)) {
        *(undefined4 *)(iVar7 + 0x1d45c) = 0;
        iVar7 = g;
    }
    if ((*(int *)(iVar7 + 0x1d45c) != 0) && (unaff_ESI = *(int *)(iVar7 + 0x1cc30), unaff_ESI == 0)) {
        *(undefined4 *)(iVar7 + 0x1d45c) = 0;
        *(undefined4 *)(iVar7 + 0x1d444) = 2;
        GameRoundResetPlayerPos();
        MasterPalMul(0x100,0x100,0x100,extraout_ECX);
        iVar8 = V_Height;
        iVar7 = g;
        *(undefined4 *)(g + 0x1d450) = 0xffffffff;
        *(undefined4 *)(iVar7 + 0x1cc30) = 1;
        if (*(int *)(iVar7 + 0x1d564) != 4) {
            iVar8 = iVar8 / 2;
        }
        iVar12 = *(int *)(iVar7 + 0x1d164);
        *(int *)(iVar7 + 0x1cc34) = iVar8;
        *(int *)(iVar7 + 0x1cc38) = -*(int *)(iVar7 + 0x1cc38);
        if (iVar12 <= *(int *)(iVar7 + 0x1d168)) {
            iVar8 = iVar12 * 4 + 0x1cf60;
            unaff_ESI = iVar8;
            do {
                iVar11 = *(int *)(iVar8 + 4 + iVar7);
                if (((iVar11 == 0) || (*(int *)(iVar11 + 0x158) == 0)) ||
                    (bVar4 = true, *(int *)(iVar11 + 0x1c) != 0)) {
                    bVar4 = false;
                    }
                    if (bVar4) {
                        PlayerChangeState(*(undefined4 *)(unaff_ESI + 4 + iVar7),0,iVar11,iVar11);
                        iVar7 = g;
                    }
                    iVar12 = iVar12 + 1;
                unaff_ESI = unaff_ESI + 4;
                iVar8 = iVar8 + 4;
            } while (iVar12 <= *(int *)(iVar7 + 0x1d168));
        }
        iVar8 = *(int *)(iVar7 + 0x1d164);
        if (iVar8 <= *(int *)(iVar7 + 0x1d168)) {
            unaff_ESI = iVar8 * 4 + 0x1cf60;
            do {
                iVar12 = *(int *)(unaff_ESI + 4 + iVar7);
                if (iVar12 != 0) {
                    *(undefined4 *)(iVar12 + 0x15c) = 0;
                    iVar7 = g;
                }
                iVar12 = *(int *)(unaff_ESI + 4 + iVar7);
                if (((iVar12 == 0) || (*(int *)(iVar12 + 0x158) == 0)) ||
                    (bVar4 = true, *(int *)(iVar12 + 0x1c) != 0)) {
                    bVar4 = false;
                    }
                    if (bVar4) {
                        iVar12 = **(int **)(*(int *)(unaff_ESI + 4 + iVar7) + 0x21c);
                        iVar11 = ArrayScanFirst(iVar12);
                        uVar15 = extraout_ECX_00;
                        while (iVar7 = g, iVar11 != 0) {
                            ProjArrayDelete(*(undefined4 *)(*(int *)(unaff_ESI + g + 4) + 0x21c),
                                            *(undefined4 *)(iVar12 + 0x1c),uVar15,uVar15);
                            iVar11 = ArrayScanNext(iVar12);
                            uVar15 = extraout_ECX_01;
                        }
                    }
                    else {
                        iVar12 = *(int *)(unaff_ESI + 4 + iVar7);
                        if ((iVar12 == 0) || (bVar4 = true, *(int *)(iVar12 + 0x158) == 0)) {
                            bVar4 = false;
                        }
                        if ((bVar4) && (iVar12 = *(int *)(unaff_ESI + 4 + iVar7), *(int *)(iVar12 + 0x1c) == 1)) {
                            HelperDestroy(iVar12);
                            iVar7 = g;
                        }
                    }
                    iVar8 = iVar8 + 1;
                    unaff_ESI = unaff_ESI + 4;
            } while (iVar8 <= *(int *)(iVar7 + 0x1d168));
        }
        ExplodArrayReset(*(undefined4 *)(iVar7 + 0x14af8));
        ExplodArrayReset(*(undefined4 *)(g + 0x14afc));
        iVar7 = g;
    }
    do {
        *(undefined4 *)(iVar7 + 0x1d380) = 1;
        iVar8 = g;
        switch(*(undefined4 *)(iVar7 + 0x1d444)) {
            case 0:
                uVar13 = *(int *)(g + 0x1d450) - 2;
                *(undefined4 *)(g + 0x1d380) = 0;
                uVar13 = uVar13 & 0xffffffffU - ((int)uVar13 >> 0x1f);
                if ((int)uVar13 < 0x10) {
                    iVar8 = uVar13 << 4;
                    iVar7 = unaff_ESI;
                }
                else {
                    iVar8 = 0x100;
                }
                MasterPalMul(iVar8,iVar8,iVar8,iVar7);
                iVar8 = g;
                if (*(int *)(g + 0x1d450) < *(int *)(iVar14 + 0x139dc)) goto switchD_0809282e_default;
                MasterPalMul(0x100,0x100,0x100,iVar10);
            iVar7 = g;
            *(undefined4 *)(g + 0x1d444) = 1;
            *(undefined4 *)(iVar7 + 0x1d450) = 0;
            break;
            case 1:
                iVar7 = *(int *)(g + 0x1d164);
                iVar8 = g;
                if (iVar7 <= *(int *)(g + 0x1d168)) {
                    iVar12 = iVar7 * 4 + 0x1cf60;
                    unaff_ESI = iVar12;
                    do {
                        iVar9 = g;
                        iVar11 = *(int *)(unaff_ESI + 4 + iVar8);
                        if (((iVar11 == 0) || (*(int *)(iVar11 + 0x158) == 0)) ||
                            (bVar4 = true, *(int *)(iVar11 + 0x1c) != 0)) {
                            bVar4 = false;
                            }
                            if ((bVar4) && (*(int *)(iVar8 + 0x1d418) == 1)) {
                                if (*(int *)(iVar8 + 0x1d450) < 0) {
                                    *(undefined1 *)(iVar8 + 0x1d38c) = 1;
                                    iVar8 = g;
                                }
                                else {
                                    *(undefined4 *)(*(int *)(iVar12 + 4 + iVar8) + 0x15c) = 0;
                                    iVar8 = iVar9;
                                }
                            }
                            iVar7 = iVar7 + 1;
                            iVar12 = iVar12 + 4;
                            unaff_ESI = unaff_ESI + 4;
                    } while (iVar7 <= *(int *)(iVar8 + 0x1d168));
                }
                if (*(char *)(iVar8 + 0x1d38c) != '\0') {
                    *(undefined4 *)(iVar8 + 0x1d438) = 0;
                    iVar8 = g;
                }
                if (((*(int *)(iVar8 + 0x1d438) == *(int *)(iVar14 + 0x13e94) + 1) &&
                    (*(int *)(iVar8 + 0x1d418) < 10)) && (*(int *)(iVar8 + 0x1d3a0) == 0)) {
                    unaff_ESI = *(int *)(iVar14 + 0x13ec0 + *(int *)(iVar8 + 0x1d418) * 4);
                GameSndPlay(*(undefined4 *)(iVar8 + 0x10554),
                            *(undefined4 *)(iVar14 + 0x13e98 + *(int *)(iVar8 + 0x1d418) * 4),unaff_ESI,0);
                iVar8 = g;
                    }
                    if (*(int *)(iVar8 + 0x1d438) < *(int *)(iVar14 + 0x139e0)) {
                        *(int *)(iVar8 + 0x1d438) = *(int *)(iVar8 + 0x1d438) + 1;
                        iVar8 = g;
                        goto switchD_0809282e_default;
                    }
                    *(undefined4 *)(iVar8 + 0x1d444) = 2;
                    *(undefined4 *)(iVar8 + 0x1d450) = 0;
                    GameRoundResetPlayerPos();
                    iVar7 = g;
                    break;
            case 2:
                if ((*(int *)(g + 0x1d3cc) == -1) && (*(int *)(g + 0x1d434) == 0)) {
                    piVar2 = (int *)(g + 0x1d450);
                    piVar1 = (int *)(g + 0x14228);
                    if (((*piVar1 <= *piVar2) &&
                        ((0 < *(int *)(g + 0x1d454) && (*(char *)(g + 0x1d393) == '\0')))) &&
                        ((iVar7 = *(int *)(g + 0x1d454) + -1, *(int *)(g + 0x1d454) = iVar7, iVar7 == 0 &&
                        (*piVar1 < *piVar2)))) {
                        *(undefined4 *)(iVar8 + 0x1d444) = 3;
                    *(undefined4 *)(iVar8 + 0x1d450) = 0;
                    iVar7 = iVar8;
                    break;
                        }
                }
                if ((*(int *)(iVar8 + 0x1d450) == *(int *)(iVar14 + 0x13f58)) &&
                    (*(int *)(iVar8 + 0x1d3a0) == 0)) {
                    unaff_ESI = *(int *)(iVar14 + 0x13f5c);
                GameSndPlay(*(undefined4 *)(iVar8 + 0x10554),unaff_ESI,*(undefined4 *)(iVar14 + 0x13f60),0);
                iVar8 = g;
                    }
                    if ((*(int *)(iVar8 + 0x1d450) == *(int *)(iVar14 + 0x14228)) &&
                        (iVar7 = *(int *)(iVar8 + 0x1d164), iVar7 <= *(int *)(iVar8 + 0x1d168))) {
                        unaff_ESI = iVar7 * 4 + 0x1cf60;
                    do {
                        iVar12 = *(int *)(unaff_ESI + 4 + iVar8);
                        if (((iVar12 == 0) || (*(int *)(iVar12 + 0x158) == 0)) ||
                            (bVar4 = true, *(int *)(iVar12 + 0x1c) != 0)) {
                            bVar4 = false;
                            }
                            if (bVar4) {
                                iVar12 = iVar8 + 4;
                                iVar11 = *(int *)(unaff_ESI + iVar12);
                                *(undefined4 *)(iVar11 + 0xe0c) = 1;
                                iVar8 = g;
                                if (*(int *)(iVar11 + 0xbf4) != 0) {
                                    PlayerChangeState(*(undefined4 *)(unaff_ESI + iVar12),0,iVar11,iVar11);
                                    iVar8 = g;
                                }
                            }
                            iVar7 = iVar7 + 1;
                            unaff_ESI = unaff_ESI + 4;
                    } while (iVar7 <= *(int *)(iVar8 + 0x1d168));
                        }
                        if (((*(int *)(iVar8 + 0x1d44c) == 0) || (*(char *)(iVar8 + 0x1d38e) != '\0')) ||
                            (*(int *)(iVar8 + 0x1d450) <= *(int *)(iVar8 + 0x14228))) {
                            *(int *)(iVar8 + 0x1d458) = *(int *)(iVar8 + 0x1d458) + 1;
                        iVar8 = g;
                        goto switchD_0809282e_default;
                            }
                            *(undefined4 *)(iVar8 + 0x1d444) = 3;
                            *(undefined4 *)(iVar8 + 0x1d450) = 0;
                            iVar7 = g;
                            if ((*(int *)(iVar8 + 0x1d44c) != 3) && (*(char *)(iVar8 + 0x1d390) == '\0')) {
                                *(undefined4 *)(iVar8 + 0x1d42c) = *(undefined4 *)(iVar14 + 0x1422c);
                                *(undefined4 *)(iVar8 + 0x1d430) = 500;
                                *(undefined4 *)(iVar8 + 0x1d434) = 500;
                                iVar7 = g;
                            }
                            break;
                            case 3:
                                piVar2 = (int *)(g + 0x1d450);
                                *(int *)(g + 0x1d43c) = *piVar2;
                                if (*piVar2 == *(int *)(iVar14 + 0x140ac)) {
                                    iVar7 = *(int *)(iVar8 + 0x1d44c);
                                    if (iVar7 == 3) {
                                        uVar15 = *(undefined4 *)(iVar14 + 0x140c4);
                                        uVar17 = *(undefined4 *)(iVar14 + 0x140c0);
                                        uVar16 = *(undefined4 *)(iVar8 + 0x10554);
                                    }
                                    else if (iVar7 == 2) {
                                        uVar15 = *(undefined4 *)(iVar14 + 0x140bc);
                                        uVar17 = *(undefined4 *)(iVar14 + 0x140b8);
                                        uVar16 = *(undefined4 *)(iVar8 + 0x10554);
                                    }
                                    else {
                                        if (iVar7 != 1) goto LAB_08092c58;
                                        uVar15 = *(undefined4 *)(iVar14 + 0x140b4);
                                        uVar17 = *(undefined4 *)(iVar14 + 0x140b0);
                                        uVar16 = *(undefined4 *)(iVar8 + 0x10554);
                                    }
                                    GameSndPlay(uVar16,uVar17,uVar15,0);
                                }
                                LAB_08092c58:
                                iVar8 = g;
                                if (*(int *)(g + 0x1d44c) != 3) {
                                    if ((*(int *)(g + 0x1d450) < *(int *)(g + 0x1422c) / 2) && (*(int *)(g + 0x1d450) == 5)) {
                                        *(undefined4 *)(g + 0x1d430) = 200;
                                        *(undefined4 *)(iVar8 + 0x1d434) = 200;
                                    }
                                    if (*(int *)(iVar8 + 0x1d450) == *(int *)(iVar8 + 0x1422c) / 2) {
                                        *(undefined4 *)(iVar8 + 0x1d430) = 100;
                                        *(undefined4 *)(iVar8 + 0x1d434) = 100;
                                        iVar8 = g;
                                    }
                                    if (*(int *)(iVar8 + 0x1d450) == (*(int *)(iVar8 + 0x1422c) * 7) / 10) {
                                        *(undefined4 *)(iVar8 + 0x1d430) = 0x32;
                                        *(undefined4 *)(iVar8 + 0x1d434) = 0x32;
                                        iVar8 = g;
                                    }
                                    if (*(int *)(iVar8 + 0x1d450) == (*(int *)(iVar8 + 0x1422c) * 9) / 10) {
                                        *(undefined4 *)(iVar8 + 0x1d430) = 0x19;
                                        *(undefined4 *)(iVar8 + 0x1d434) = 0x19;
                                        iVar8 = g;
                                    }
                                }
                                iVar7 = g;
                                if (((*(int *)(iVar8 + 0x1d450) == *(int *)(iVar14 + 0x14230)) ||
                                    ((*(int *)(iVar8 + 0x1d450) == 0 && (*(int *)(iVar8 + 0x1d454) == 0)))) &&
                                    (iVar12 = *(int *)(iVar8 + 0x1d164), iVar12 <= *(int *)(iVar8 + 0x1d168))) {
                                    iVar11 = iVar12 * 4 + 0x1cf60;
                                iVar9 = iVar11;
                                do {
                                    iVar3 = *(int *)(iVar9 + 4 + iVar8);
                                    if ((iVar3 == 0) || (bVar4 = true, *(int *)(iVar3 + 0x158) == 0)) {
                                        bVar4 = false;
                                    }
                                    if (bVar4) {
                                        *(undefined4 *)(*(int *)(iVar11 + 4 + iVar8) + 0x244) = 1;
                                        iVar8 = iVar7;
                                    }
                                    iVar12 = iVar12 + 1;
                                    iVar11 = iVar11 + 4;
                                    iVar9 = iVar9 + 4;
                                } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
                                    }
                                    unaff_ESI = *(int *)(iVar8 + 0x5340);
                                    if ((unaff_ESI != 0) && (*(int *)(iVar8 + 0x1d450) == *(int *)(iVar8 + 0x14234))) {
                                        local_48 = 0;
                                        local_60 = 0;
                                        iVar7 = 1;
                                        do {
                                            iVar8 = GameRoundWinner();
                                            if (iVar8 != iVar7) {
                                                iVar8 = local_60 + g;
                                                iVar12 = *(int *)(iVar8 + 0xcee0) + 1;
                                                if (iVar12 < *(int *)(iVar8 + 0xcee4)) {
                                                    ClipboardAppend(*(undefined4 *)(g + 0x20744),"start pre-caching team %i next %i\n",
                                                                    iVar7,iVar12);
                                                    iVar12 = iVar8 + 0xcf48 + *(int *)(iVar8 + 0xcee0) * 0x5c;
                                                    unaff_ESI = iVar8;
                                                    LAB_08092eb2:
                                                    PrecacheRequestTeam(iVar12);
                                                }
                                                else {
                                                    unaff_ESI = 2;
                                                    if ((2 - *(int *)(g + 0xcecc) == local_48) &&
                                                        (iVar12 = GameMatchWinner(), unaff_ESI = local_48, iVar12 == 2 - local_48)) {
                                                        PrecacheRequestNextArcadeTeam();
                                                        }
                                                        else if ((*(int *)(g + 0xcecc) == local_48) &&
                                                            (iVar12 = GameMatchWinner(), iVar12 == iVar7)) {
                                                            iVar12 = iVar8 + 0xceec;
                                                        goto LAB_08092eb2;
                                                            }
                                                }
                                            }
                                            local_48 = local_48 + 1;
                                            local_60 = local_60 + 0x1a9c;
                                            iVar7 = iVar7 + 1;
                                        } while (local_48 < 2);
                                        PrecacheStart();
                                        iVar8 = g;
                                    }
                                    if (*(int *)(iVar14 + 0x14230) + 0xb4 <= *(int *)(iVar8 + 0x1d450)) {
                                        *(undefined4 *)(iVar8 + 0x1d380) = 0;
                                        iVar8 = g;
                                    }
                                    bVar4 = true;
                                    iVar7 = *(int *)(iVar8 + 0x1d164);
                                    if (iVar7 <= *(int *)(iVar8 + 0x1d168)) {
                                        iVar12 = iVar7 * 4 + 0x1cf60;
                                        unaff_ESI = iVar12;
                                        local_5c = iVar12;
                                        do {
                                            iVar11 = *(int *)(local_5c + 4 + iVar8);
                                            if (((iVar11 == 0) || (*(int *)(iVar11 + 0x158) == 0)) ||
                                                (bVar5 = true, *(int *)(iVar11 + 0x1c) != 0)) {
                                                bVar5 = false;
                                                }
                                                if (bVar5) {
                                                    bVar6 = 0;
                                                    iVar11 = *(int *)(unaff_ESI + 4 + iVar8);
                                                    if ((((*(int *)(iVar11 + 0xe0c) != 0) && (*(int *)(iVar11 + 0xe00) == 1)) &&
                                                        (*(int *)(iVar11 + 0xe04) == 0)) ||
                                                        (iVar11 = PlayerLyingDead(*(undefined4 *)(iVar12 + 4 + iVar8)), iVar8 = g, 0 < iVar11
                                                        )) {
                                                        bVar6 = 1;
                                                        }
                                                        bVar4 = (bool)(bVar4 & bVar6);
                                                }
                                                iVar7 = iVar7 + 1;
                                                local_5c = local_5c + 4;
                                                iVar12 = iVar12 + 4;
                                                unaff_ESI = unaff_ESI + 4;
                                        } while (iVar7 <= *(int *)(iVar8 + 0x1d168));
                                    }
                                    iVar7 = g;
                                    if (899 < *(int *)(iVar8 + 0x1d450)) {
                                        bVar4 = true;
                                    }
                                    if ((!bVar4) || (*(int *)(iVar8 + 0x1d450) < *(int *)(iVar14 + 0x14230)))
                                        goto switchD_0809282e_default;
            iVar12 = *(int *)(iVar8 + 0x1d164);
            if (iVar12 <= *(int *)(iVar8 + 0x1d168)) {
                iVar11 = iVar12 * 4 + 0x1cf60;
                unaff_ESI = iVar11;
                do {
                    iVar9 = *(int *)(unaff_ESI + 4 + iVar8);
                    if (((iVar9 == 0) || (*(int *)(iVar9 + 0x158) == 0)) ||
                        (bVar4 = true, *(int *)(iVar9 + 0x1c) != 0)) {
                        bVar4 = false;
                        }
                        if (bVar4) {
                            *(undefined4 *)(*(int *)(iVar11 + 4 + iVar8) + 0xe0c) = 0;
                            iVar8 = iVar7;
                        }
                        iVar12 = iVar12 + 1;
                    iVar11 = iVar11 + 4;
                    unaff_ESI = unaff_ESI + 4;
                } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
            }
            *(undefined4 *)(iVar8 + 0x1d444) = 4;
            *(undefined4 *)(iVar8 + 0x1d450) = 0;
            *(undefined4 *)(iVar8 + 0x1d42c) = 0;
            iVar7 = g;
            break;
            case 4:
                goto switchD_0809282e_caseD_4;
            default:
                goto switchD_0809282e_default;
        }
    } while( true );
    switchD_0809282e_caseD_4:
        *(undefined4 *)(g + 0x1d380) = 0;
        iVar10 = *(int *)(iVar8 + 0x1d450);
        if (*(int *)(iVar14 + 0x14230) + iVar10 == *(int *)(iVar14 + 0x140ac)) {
            iVar7 = *(int *)(iVar8 + 0x1d44c);
            if (iVar7 == 3) {
                uVar15 = *(undefined4 *)(iVar14 + 0x140c0);
                uVar17 = *(undefined4 *)(iVar8 + 0x10554);
                iVar7 = *(int *)(iVar14 + 0x140c4);
            }
            else if (iVar7 == 2) {
                uVar15 = *(undefined4 *)(iVar14 + 0x140b8);
                uVar17 = *(undefined4 *)(iVar8 + 0x10554);
                iVar7 = *(int *)(iVar14 + 0x140bc);
            }
            else {
                if (iVar7 != 1) goto LAB_0809312e;
                iVar10 = *(int *)(iVar14 + 0x140b4);
                uVar15 = *(undefined4 *)(iVar14 + 0x140b0);
                uVar17 = *(undefined4 *)(iVar8 + 0x10554);
                iVar7 = iVar10;
            }
            GameSndPlay(uVar17,uVar15,iVar7,0);
        }
        LAB_0809312e:
        if (*(int *)(g + 0x1d450) == *(int *)(iVar14 + 0x14238)) {
            iVar14 = *(int *)(g + 0x1d164);
            iVar7 = g;
            if (iVar14 <= *(int *)(g + 0x1d168)) {
                iVar10 = iVar14 * 4 + 0x1cf60;
                do {
                    iVar8 = *(int *)(iVar10 + 4 + iVar7);
                    if (((iVar8 == 0) || (*(int *)(iVar8 + 0x158) == 0)) ||
                        (bVar4 = true, *(int *)(iVar8 + 0x1c) != 0)) {
                        bVar4 = false;
                        }
                        if (bVar4) {
                            iVar8 = iVar7 + 4;
                            iVar12 = *(int *)(iVar7 + 0x1d448);
                            iVar11 = *(int *)(iVar10 + iVar8);
                            if (iVar12 == *(int *)(iVar11 + 0xc)) {
                                *(undefined4 *)(iVar11 + 0x244) = 0;
                                iVar7 = g;
                                if (*(int *)(iVar11 + 0xe24) != 0) {
                                    uVar17 = 0xb4;
                                    LAB_080931b5:
                                    uVar15 = *(undefined4 *)(iVar10 + iVar8);
                                    iVar7 = iVar12;
                                    LAB_080931ec:
                                    PlayerChangeState(uVar15,uVar17,iVar7,iVar7);
                                    iVar7 = g;
                                }
                            }
                            else if (iVar12 == 0) {
                                if (*(int *)(iVar11 + 0xe24) != 0) {
                                    uVar17 = 0xaf;
                                    uVar15 = *(undefined4 *)(iVar10 + iVar8);
                                    goto LAB_080931ec;
                                }
                            }
                            else if (*(int *)(iVar11 + 0xe24) != 0) {
                                uVar17 = 0xaa;
                                goto LAB_080931b5;
                            }
                        }
                        iVar14 = iVar14 + 1;
                        iVar10 = iVar10 + 4;
                } while (iVar14 <= *(int *)(iVar7 + 0x1d168));
            }
            iVar14 = *(int *)(iVar7 + 0x1d448);
            if (iVar14 == 0) {
                iVar8 = 0x1d410;
                iVar14 = 0xe970;
                *(int *)(iVar7 + 0x1d428) = *(int *)(iVar7 + 0x1d428) + 1;
                iVar10 = g;
                local_48 = 1;
                do {
                    if (*(int *)(iVar14 + 4 + iVar10) < *(int *)(iVar10 + 0x1d428)) {
                        *(int *)(iVar8 + 0xc + iVar10) = *(int *)(iVar8 + 0xc + iVar10) + 1;
                    }
                    iVar8 = iVar8 + 4;
                    iVar14 = iVar14 + 0x1a9c;
                    local_48 = local_48 + -1;
                } while (-1 < local_48);
                *(undefined4 *)(iVar10 + 0x1d424) = 1;
            }
            else {
                *(undefined4 *)(iVar7 + 0x1d424) = 1;
                *(int *)(iVar7 + 0x1d418 + iVar14 * 4) = *(int *)(iVar7 + 0x1d418 + iVar14 * 4) + 1;
                iVar14 = GameMatchWinner();
                if (iVar14 == 0) {
                    iVar7 = *(int *)(g + 0x1d448) + -1;
                    iVar14 = iVar7 * 0x1a9c;
                    iVar8 = iVar14 + *(int *)(g + 0xcee0 + iVar14) * 0x5c + g;
                    iVar14 = 0;
                    if (0 < *(int *)(iVar8 + 0xcef4)) {
                        do {
                            iVar12 = iVar14 + 1;
                            iVar10 = *(int *)(g + 0x1cf64 + *(int *)(iVar8 + 0xcef8 + iVar14 * 0x14) * 4);
                            iVar14 = TeamLifeBack(iVar7);
                            PlayerLifeSet(iVar10,(iVar14 * *(int *)(iVar10 + 0x164)) / 1000 +
                            *(int *)(iVar10 + 0x160));
                            iVar14 = iVar12;
                        } while (iVar12 < *(int *)(iVar8 + 0xcef4));
                    }
                }
            }
        }
        if ((*(char *)(g + 0x1d38d) != '\0') && (*(int *)(g + 0x1d460) == 0)) {
            *(int *)(g + 0x1d440) = *(int *)(g + 0x1d450) + 0x13;
        }
        iVar14 = g;
        iVar7 = *(int *)(g + 0x1d440) - *(int *)(g + 0x1d450);
        if (iVar7 < 0x10) {
            iVar8 = GameMatchWinner();
            if (iVar8 != 0) {
                GameSetVol(*(int *)(g + 0x1bbd4) + (0x10 - iVar7) * -2,
                           *(int *)(g + 0x1bbdc) + (0x10 - iVar7) * -2,iVar10,iVar10);
            }
            iVar7 = iVar7 * 0x10;
            MasterPalMul(iVar7,iVar7,iVar7,iVar14);
        }
        iVar8 = g;
        if (*(int *)(g + 0x1d440) <= *(int *)(g + 0x1d450)) {
            iVar14 = GameMatchWinner();
            iVar10 = g;
            if (iVar14 != 0) {
                *(undefined4 *)(g + 0x1d518) = 1;
                *(int *)(iVar10 + 0x1d514) = iVar14;
            }
            if (*(int *)(g + 0x1d518) == 0) {
                LogMatch();
                iVar14 = g;
                iVar10 = *(int *)(g + 0x1d164);
                if (iVar10 <= *(int *)(g + 0x1d168)) {
                    iVar7 = iVar10 * 4 + 0x1cf60;
                    iVar8 = iVar7;
                    do {
                        iVar12 = *(int *)(iVar8 + 4 + iVar14);
                        if (((iVar12 == 0) || (*(int *)(iVar12 + 0x158) == 0)) ||
                            (bVar4 = true, *(int *)(iVar12 + 0x1c) != 0)) {
                            bVar4 = false;
                            }
                            if (bVar4) {
                                iVar12 = *(int *)(iVar7 + 4 + iVar14);
                                *(int *)(iVar12 + 0x342c) = *(int *)(iVar12 + 0x342c) + 1;
                            }
                            iVar10 = iVar10 + 1;
                        iVar7 = iVar7 + 4;
                        iVar8 = iVar8 + 4;
                    } while (iVar10 <= *(int *)(iVar14 + 0x1d168));
                }
                PrecacheFinish();
                W_Cls(0);
                *(undefined4 *)(g + 0x1cc1c) = 0;
                DrawToScreen();
                DrawToScreen();
                GameNextRound();
            }
            local_4c = 1;
            iVar8 = g;
        }
        switchD_0809282e_default:
            if (0 < *(int *)(iVar8 + 0x1d42c)) {
                *(int *)(iVar8 + 0x1d42c) = *(int *)(iVar8 + 0x1d42c) + -1;
                iVar8 = g;
            }
            if ((*(int *)(iVar8 + 0x1d42c) == 0) && (*(int *)(iVar8 + 0x1d430) != 0)) {
                *(undefined4 *)(iVar8 + 0x1d430) = 0;
                *(undefined4 *)(iVar8 + 0x1d434) = 0;
                iVar8 = g;
            }
            *(int *)(iVar8 + 0x1d450) = *(int *)(iVar8 + 0x1d450) + 1;
            return local_4c;
}

