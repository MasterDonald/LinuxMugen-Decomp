
undefined4 GameUpdate(void)

{
    int *piVar1;
    int iVar2;
    bool bVar3;
    uint uVar4;
    int iVar5;
    int iVar6;
    undefined4 uVar7;
    int iVar8;
    int iVar9;
    uint uVar10;
    uint uVar11;
    int iVar12;
    int iVar13;
    int iVar14;
    longdouble lVar15;
    undefined8 uVar16;
    int aiStack_11c [67];

    iVar6 = g;
    iVar13 = g + 0x1d278;
    piVar1 = (int *)(g + 0xceb8);
    *(undefined4 *)(g + 0x1cc2c) = 0;
    if ((*piVar1 == 3) || (*(int *)(iVar6 + 0x1d3a0) != 0)) {
        *(undefined4 *)(iVar6 + 0x1cc2c) = 1;
    }
    iVar5 = g;
    iVar12 = *(int *)(g + 0x1d164);
    if (iVar12 <= *(int *)(g + 0x1d168)) {
        iVar8 = iVar12 * 4 + 0x1cf60;
        do {
            iVar9 = *(int *)(iVar8 + 4 + iVar5);
            if ((iVar9 == 0) || (uVar7 = 1, *(int *)(iVar9 + 0x158) == 0)) {
                uVar7 = 0;
            }
            iVar8 = iVar8 + 4;
            *(undefined4 *)(iVar13 + iVar12 * 4) = uVar7;
            iVar12 = iVar12 + 1;
        } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
    }
    iVar12 = 1;
    if (0 < *(int *)(iVar5 + 0x1ce54)) {
        iVar8 = 0x1cf64;
        do {
            iVar5 = *(int *)(iVar8 + 4 + iVar5);
            if (iVar5 == 0) {
                LAB_080911f5:
                bVar3 = false;
            }
            else {
                aiStack_11c[iVar12] = (int)ROUND(*(float *)(iVar5 + 0x19c));
                bVar3 = true;
                if (*(int *)(iVar5 + 0x158) == 0) goto LAB_080911f5;
            }
            if (bVar3) {
                iVar9 = *(int *)(iVar5 + 0x3424);
                if (((iVar9 == 0) || (*(int *)(iVar9 + 0x158) == 0)) ||
                    (bVar3 = true, *(int *)(iVar9 + 0x1c) != 0)) {
                    bVar3 = false;
                    }
                    if (bVar3) {
                        *(int *)(iVar5 + 0x3428) = iVar9;
                    }
                    uVar7 = PlayerNearestEnemy(iVar5);
                *(undefined4 *)(iVar5 + 0x3424) = uVar7;
            }
            iVar12 = iVar12 + 1;
            iVar8 = iVar8 + 4;
            iVar5 = g;
        } while (iVar12 <= *(int *)(g + 0x1ce54));
    }
    iVar12 = g;
    if ((*(int *)(iVar5 + 0x1d3cc) != -1) &&
        (iVar8 = *(int *)(iVar5 + 0x1d164), iVar8 <= *(int *)(iVar5 + 0x1d168))) {
        iVar9 = iVar8 * 4 + 0x1cf60;
    iVar14 = iVar9;
    do {
        iVar2 = *(int *)(iVar14 + 4 + iVar5);
        if ((iVar2 == 0) || (bVar3 = true, *(int *)(iVar2 + 0x158) == 0)) {
            bVar3 = false;
        }
        if ((bVar3) &&
            (*(int *)(*(int *)(iVar9 + 4 + iVar5) + 0x1dc + *(int *)(iVar5 + 0x1d3cc) * 4) == 0)) {
            *(undefined4 *)(iVar13 + iVar8 * 4) = 0;
        iVar5 = iVar12;
            }
            iVar8 = iVar8 + 1;
            iVar9 = iVar9 + 4;
            iVar14 = iVar14 + 4;
    } while (iVar8 <= *(int *)(iVar5 + 0x1d168));
        }
        while (uVar4 = IntCircBufGet(iVar5 + 0x1ce44), uVar4 != 0) {
            iVar5 = g;
            if (((*(int *)(g + 0x1cc24) == 0) || ((uVar4 & 0x1000) != 0)) &&
                (iVar12 = *(int *)(g + 0x1d164), iVar12 <= *(int *)(g + 0x1d168))) {
                iVar8 = iVar12 * 4 + 0x1cf60;
            do {
                iVar9 = *(int *)(iVar8 + 4 + iVar5);
                if ((iVar9 == 0) || (bVar3 = true, *(int *)(iVar9 + 0x158) == 0)) {
                    bVar3 = false;
                }
                if (bVar3) {
                    iVar9 = *(int *)(iVar8 + iVar5 + 4);
                    if (*(int *)(iVar9 + 0x262c) == 0) {
                        KBIUpdate(*(undefined4 *)(*(int *)(iVar8 + iVar5 + 4) + 0x960),iVar9 + 0x248,uVar4,0);
                        iVar5 = g;
                    }
                }
                iVar12 = iVar12 + 1;
                iVar8 = iVar8 + 4;
            } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
                }
        }
        if ((*(int *)(g + 0x1cc24) == 0) && (*(int *)(g + 0x1d434) < 1)) {
            iVar12 = *(int *)(g + 0x1d164);
            uVar4 = 0;
            iVar5 = g;
            if (iVar12 <= *(int *)(g + 0x1d168)) {
                uVar10 = iVar12 * 4 + 0x1cf60;
                uVar4 = uVar10;
                do {
                    iVar8 = *(int *)(uVar4 + 4 + iVar5);
                    if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                        bVar3 = false;
                    }
                    if (bVar3) {
                        PlayerAIMsgStateUpdate(*(undefined4 *)(uVar10 + 4 + iVar5));
                        iVar5 = g;
                    }
                    iVar12 = iVar12 + 1;
                    uVar10 = uVar10 + 4;
                    uVar4 = uVar4 + 4;
                } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
            }
            iVar12 = *(int *)(iVar5 + 0x1d164);
            if (iVar12 <= *(int *)(iVar5 + 0x1d168)) {
                uVar10 = iVar12 * 4 + 0x1cf60;
                uVar4 = uVar10;
                do {
                    iVar8 = *(int *)(uVar4 + 4 + iVar5);
                    if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                        bVar3 = false;
                    }
                    if (bVar3) {
                        PlayerAI(*(undefined4 *)(uVar10 + 4 + iVar5));
                        iVar5 = g;
                    }
                    iVar12 = iVar12 + 1;
                    uVar10 = uVar10 + 4;
                    uVar4 = uVar4 + 4;
                } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
            }
            iVar12 = *(int *)(iVar5 + 0x1d164);
            if (iVar12 <= *(int *)(iVar5 + 0x1d168)) {
                uVar10 = iVar12 * 4 + 0x1cf60;
                uVar4 = uVar10;
                do {
                    iVar8 = *(int *)(uVar4 + 4 + iVar5);
                    if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                        bVar3 = false;
                    }
                    if (bVar3) {
                        PlayerAIClearMsg(*(undefined4 *)(uVar10 + 4 + iVar5));
                        iVar5 = g;
                    }
                    iVar12 = iVar12 + 1;
                    uVar10 = uVar10 + 4;
                    uVar4 = uVar4 + 4;
                } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
            }
            iVar12 = *(int *)(iVar5 + 0xcedc);
            if (iVar12 == 5) {
                GameWinScreenUpdate();
                iVar5 = g;
            }
            else if (iVar12 < 6) {
                if ((iVar12 == 4) &&
                    (((*(int *)(iVar5 + 0x1cc24) == 0 && (iVar12 = GameRoundUpdate(), iVar5 = g, iVar12 != 0))
                    || ((*(int *)(iVar5 + 0x1cc24) == 0 &&
                    ((*(int *)(iVar5 + 0x1d3a0) != 0 &&
                    (iVar12 = GameDemoUpdate(), iVar5 = g, iVar12 != 0)))))))) {
                    return 1;
                    }
            }
            else if (iVar12 == 6) {
                GameSurvivalResultsUpdate();
                iVar5 = g;
            }
            iVar8 = g;
            iVar12 = *(int *)(iVar5 + 0x1d164);
            if (iVar12 <= *(int *)(iVar5 + 0x1d168)) {
                uVar10 = iVar12 * 4 + 0x1cf60;
                uVar4 = uVar10;
                do {
                    iVar9 = *(int *)(uVar4 + 4 + iVar5);
                    if ((iVar9 == 0) || (bVar3 = true, *(int *)(iVar9 + 0x158) == 0)) {
                        bVar3 = false;
                    }
                    if ((bVar3) && (*(int *)(*(int *)(uVar10 + 4 + iVar5) + 0x15c) != 0)) {
                        *(undefined4 *)(iVar13 + iVar12 * 4) = 0;
                        iVar5 = iVar8;
                    }
                    iVar12 = iVar12 + 1;
                    uVar10 = uVar10 + 4;
                    uVar4 = uVar4 + 4;
                } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
            }
            if (((*(int *)(iVar5 + 0x4274) != 0) &&
                (iVar12 = GameModeInPassiveFightScreen(), iVar5 = g, iVar12 == 0)) &&
                (iVar12 = *(int *)(g + 0x1d164), iVar12 <= *(int *)(g + 0x1d168))) {
                do {
                    iVar8 = *(int *)(iVar5 + 0x1cf64 + iVar12 * 4);
                    if (((iVar8 == 0) || (uVar4 = *(uint *)(iVar8 + 0x158), uVar4 == 0)) ||
                        (bVar3 = true, *(int *)(iVar8 + 0x1c) != 0)) {
                        bVar3 = false;
                        }
                        if ((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) {
                            uVar4 = *(uint *)(*(int *)(iVar5 + 0x1cf64 + iVar12 * 4) + 0x3424);
                            if ((uVar4 == 0) || (uVar10 = 1, *(int *)(uVar4 + 0x158) == 0)) {
                                uVar10 = 0;
                            }
                            uVar4 = uVar4 & (uVar10 ^ 1) - 1;
                            if ((uVar4 == 0) && (2 < *(int *)(iVar5 + 0x1d444))) {
                                iVar8 = *(int *)(*(int *)(iVar5 + 0x1cf64 + iVar12 * 4) + 0x3428);
                                if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                    bVar3 = false;
                                }
                                if (bVar3) {
                                    uVar4 = *(uint *)(*(int *)(iVar5 + 0x1cf64 + iVar12 * 4) + 0x3428);
                                }
                            }
                            if (uVar4 != 0) {
                                iVar8 = *(int *)(iVar5 + 0x1cf64 + iVar12 * 4);
                                iVar9 = *(int *)(iVar8 + 0xbf4);
                                if ((((iVar9 == 0) || (iVar9 == 0xb)) || (iVar9 == 0x14)) || (iVar9 == 0x28)) {
                                    LAB_080916c7:
                                    PlayerAutoTurn(*(undefined4 *)(iVar5 + 0x1cf64 + iVar12 * 4),uVar4,1,iVar8);
                                    iVar5 = g;
                                }
                                else if (iVar9 == 0x34) {
                                    iVar9 = *(int *)(iVar8 + 0x13bc);
                                    uVar16 = AnimGetLooptime(iVar9);
                                    iVar8 = (int)((ulonglong)uVar16 >> 0x20);
                                    iVar5 = g;
                                    if ((int)uVar16 + -1 <= *(int *)(iVar9 + 0x1c)) goto LAB_080916c7;
                                }
                            }
                        }
                        iVar12 = iVar12 + 1;
                } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
                }
                iVar12 = *(int *)(iVar5 + 0x1d164);
                if (iVar12 <= *(int *)(iVar5 + 0x1d168)) {
                    uVar10 = iVar12 * 4 + 0x1cf60;
                    uVar4 = uVar10;
                    do {
                        iVar8 = *(int *)(uVar4 + 4 + iVar5);
                        if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if (bVar3) {
                            PlayerKBUpdate(*(undefined4 *)(uVar10 + 4 + iVar5));
                            iVar5 = g;
                        }
                        iVar12 = iVar12 + 1;
                        uVar10 = uVar10 + 4;
                        uVar4 = uVar4 + 4;
                    } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
                }
                *(undefined1 *)(iVar5 + 0x1d396) = 0;
                *(undefined4 *)(iVar5 + 0x1d38c) = 0;
                *(undefined4 *)(iVar5 + 0x1d390) = 0;
                *(undefined2 *)(iVar5 + 0x1d394) = 0;
                iVar12 = *(int *)(g + 0x1d164);
                iVar5 = g;
                if (iVar12 <= *(int *)(g + 0x1d168)) {
                    uVar10 = iVar12 * 4 + 0x1cf60;
                    uVar4 = uVar10;
                    do {
                        iVar8 = *(int *)(uVar4 + 4 + iVar5);
                        if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if ((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) {
                            iVar5 = *(int *)(uVar10 + 4 + iVar5);
                            *(undefined1 *)(iVar5 + 0x20c) = 0;
                            *(undefined4 *)(iVar5 + 0x204) = 0;
                            *(undefined4 *)(iVar5 + 0x208) = 0;
                            iVar5 = g;
                        }
                        iVar12 = iVar12 + 1;
                        uVar10 = uVar10 + 4;
                        uVar4 = uVar4 + 4;
                    } while (iVar12 <= *(int *)(iVar5 + 0x1d168));
                }
                iVar12 = *(int *)(iVar5 + 0x1d164);
                *(undefined4 *)(iVar5 + 0x1d378) = 0;
                iVar8 = g;
                if (iVar12 <= *(int *)(iVar5 + 0x1d168)) {
                    uVar10 = iVar12 * 4 + 0x1cf60;
                    uVar4 = uVar10;
                    do {
                        iVar5 = *(int *)(uVar4 + 4 + iVar8);
                        if ((iVar5 == 0) || (bVar3 = true, *(int *)(iVar5 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if (((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) &&
                            (iVar5 = *(int *)(uVar10 + 4 + iVar8), *(int *)(iVar5 + 0xe04) == 1)) {
                            PlayerUpdate(iVar5);
                        iVar8 = g;
                            }
                            iVar12 = iVar12 + 1;
                            uVar10 = uVar10 + 4;
                            uVar4 = uVar4 + 4;
                    } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
                }
                iVar12 = *(int *)(iVar8 + 0x1d164);
                if (iVar12 <= *(int *)(iVar8 + 0x1d168)) {
                    uVar10 = iVar12 * 4 + 0x1cf60;
                    uVar4 = uVar10;
                    do {
                        iVar5 = *(int *)(uVar4 + 4 + iVar8);
                        if ((iVar5 == 0) || (bVar3 = true, *(int *)(iVar5 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if (((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) &&
                            (iVar5 = *(int *)(uVar10 + 4 + iVar8),
                             *(int *)(iVar5 + 0xe2c) != *(int *)(iVar8 + 0x1cc10))) {
                            PlayerUpdate(iVar5);
                        iVar8 = g;
                             }
                             iVar12 = iVar12 + 1;
                             uVar10 = uVar10 + 4;
                             uVar4 = uVar4 + 4;
                    } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
                }
                while (*(int *)(iVar8 + 0x1d378) != 0) {
                    iVar12 = *(int *)(iVar8 + 0x1d164);
                    *(undefined4 *)(iVar8 + 0x1d378) = 0;
                    piVar1 = (int *)(iVar8 + 0x1d168);
                    iVar8 = g;
                    if (iVar12 <= *piVar1) {
                        uVar10 = iVar12 * 4 + 0x1cf60;
                        uVar4 = uVar10;
                        do {
                            iVar5 = *(int *)(uVar4 + 4 + iVar8);
                            if ((iVar5 == 0) || (bVar3 = true, *(int *)(iVar5 + 0x158) == 0)) {
                                bVar3 = false;
                            }
                            if (((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) &&
                                (iVar5 = *(int *)(uVar10 + 4 + iVar8),
                                 *(int *)(iVar5 + 0xe2c) != *(int *)(iVar8 + 0x1cc10))) {
                                PlayerUpdate(iVar5);
                            iVar8 = g;
                                 }
                                 iVar12 = iVar12 + 1;
                                 uVar10 = uVar10 + 4;
                                 uVar4 = uVar4 + 4;
                        } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
                    }
                }
                iVar12 = *(int *)(iVar8 + 0x1d164);
                if (iVar12 <= *(int *)(iVar8 + 0x1d168)) {
                    uVar10 = iVar12 * 4 + 0x1cf60;
                    uVar4 = uVar10;
                    do {
                        iVar5 = *(int *)(uVar4 + 4 + iVar8);
                        if ((iVar5 == 0) || (bVar3 = true, *(int *)(iVar5 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if ((bVar3) && (*(int *)(iVar13 + iVar12 * 4) != 0)) {
                            PlayerUpdateBindTo(*(undefined4 *)(uVar10 + 4 + iVar8));
                            iVar8 = g;
                        }
                        iVar12 = iVar12 + 1;
                        uVar10 = uVar10 + 4;
                        uVar4 = uVar4 + 4;
                    } while (iVar12 <= *(int *)(iVar8 + 0x1d168));
                }
                iVar12 = iVar8;
                if (((0 < *(int *)(iVar8 + 0x1cc60)) && (*(int *)(iVar8 + 0x1cc24) == 0)) &&
                    (*(int *)(iVar8 + 0x1d434) == 0)) {
                    lVar15 = (longdouble)
                    fsin(((longdouble)*(int *)(iVar8 + 0x1cc5c) * (longdouble)*(float *)(iVar8 + 0x1cc68)
                    + (longdouble)*(float *)(iVar8 + 0x1cc70)) * (longdouble)3.14159 *
                    (longdouble)0.005555555555555556);
                *(int *)(iVar8 + 0x1cc58) = (int)ROUND(lVar15 * (longdouble)*(float *)(iVar8 + 0x1cc6c));
                iVar5 = *(int *)(iVar8 + 0x1cc5c) + 1;
                *(int *)(iVar8 + 0x1cc5c) = iVar5;
                iVar12 = g;
                if (iVar5 == *(int *)(iVar8 + 0x1cc60)) {
                    *(undefined4 *)(iVar8 + 0x1cc60) = 0;
                    *(undefined4 *)(iVar8 + 0x1cc58) = 0;
                    *(undefined4 *)(iVar8 + 0x1cc54) = 0;
                    iVar12 = g;
                }
                    }
                    iVar5 = *(int *)(iVar12 + 0x1d164);
                    if (iVar5 <= *(int *)(iVar12 + 0x1d168)) {
                        uVar10 = iVar5 * 4 + 0x1cf60;
                        uVar4 = uVar10;
                        do {
                            iVar8 = *(int *)(uVar4 + 4 + iVar12);
                            if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                bVar3 = false;
                            }
                            if (((bVar3) && (*(int *)(iVar13 + iVar5 * 4) != 0)) &&
                                (iVar8 = *(int *)(uVar10 + 4 + iVar12), *(int *)(iVar8 + 0xe18) == 0)) {
                                AnimUpdate(*(undefined4 *)(iVar8 + 0x13bc));
                            iVar12 = g;
                                }
                                iVar5 = iVar5 + 1;
                                uVar10 = uVar10 + 4;
                                uVar4 = uVar4 + 4;
                        } while (iVar5 <= *(int *)(iVar12 + 0x1d168));
                    }
                    iVar5 = *(int *)(iVar12 + 0x1d168);
                    if (*(int *)(iVar12 + 0x1d164) <= iVar5) {
                        uVar10 = iVar5 * 4 + 0x1cf60;
                        uVar11 = uVar10;
                        uVar4 = uVar10;
                        do {
                            iVar8 = *(int *)(uVar11 + 4 + iVar12);
                            if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                bVar3 = false;
                            }
                            if (bVar3) {
                                if (*(int *)(iVar13 + iVar5 * 4) != 0) {
                                    ProjArrayUpdate(*(undefined4 *)(*(int *)(uVar10 + 4 + iVar12) + 0x21c));
                                    iVar12 = g;
                                }
                                ProjArrayCalcDraw(*(undefined4 *)(*(int *)(uVar4 + 4 + iVar12) + 0x21c));
                                iVar12 = g;
                            }
                            iVar5 = iVar5 + -1;
                            uVar4 = uVar4 - 4;
                            uVar10 = uVar10 - 4;
                            uVar11 = uVar11 - 4;
                        } while (*(int *)(iVar12 + 0x1d164) <= iVar5);
                    }
                    iVar13 = *(int *)(iVar12 + 0x1d168);
                    if (*(int *)(iVar12 + 0x1d164) <= iVar13) {
                        iVar5 = iVar13 * 4 + 0x1cf60;
                        do {
                            iVar8 = *(int *)(iVar5 + 4 + iVar12);
                            if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                bVar3 = false;
                            }
                            if ((bVar3) && (*(int *)(iVar6 + 0x318 + iVar5) != 0)) {
                                uVar4 = *(uint *)(iVar5 + 4 + iVar12);
                                PlayerAftImgUpdate(uVar4);
                                ProjArrayAftImgUpdate(*(undefined4 *)(*(int *)(iVar5 + g + 4) + 0x21c));
                                iVar12 = g;
                            }
                            iVar13 = iVar13 + -1;
                            iVar5 = iVar5 + -4;
                        } while (*(int *)(iVar12 + 0x1d164) <= iVar13);
                    }
                    if (*(int *)(iVar12 + 0x1d380) != 0) {
                        GameClsnUpdate();
                        iVar12 = g;
                    }
                    if ((*(int *)(iVar12 + 0x1d3cc) == -1) &&
                        (iVar13 = *(int *)(iVar12 + 0x1d168), *(int *)(iVar12 + 0x1d164) <= iVar13)) {
                        uVar4 = iVar13 * 4;
                    iVar5 = uVar4 + 0x1cf60;
                    do {
                        iVar8 = *(int *)(iVar5 + 4 + iVar12);
                        if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                            bVar3 = false;
                        }
                        if ((bVar3) &&
                            (iVar8 = iVar12 + 4, iVar12 = g,
                             (int)ROUND(*(float *)(*(int *)(iVar5 + iVar8) + 0x19c)) !=
                             *(int *)((int)aiStack_11c + uVar4))) {
                            PlayerMakeDust(*(undefined4 *)(iVar5 + iVar8));
                        iVar12 = g;
                             }
                             iVar13 = iVar13 + -1;
                             iVar5 = iVar5 + -4;
                             uVar4 = uVar4 - 4;
                    } while (*(int *)(iVar12 + 0x1d164) <= iVar13);
                        }
                        iVar13 = *(int *)(iVar12 + 0x1d168);
                        if (*(int *)(iVar12 + 0x1d164) <= iVar13) {
                            iVar5 = iVar13 * 4 + 0x1cf60;
                            do {
                                iVar8 = *(int *)(iVar5 + 4 + iVar12);
                                if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                    bVar3 = false;
                                }
                                if ((bVar3) && (*(int *)(*(int *)(iVar5 + iVar12 + 4) + 0x15c) == 0)) {
                                    PlayerAILearnMoveUpdate
                                    (*(undefined4 *)(iVar5 + iVar12 + 4),*(undefined4 *)(iVar6 + 0x318 + iVar5),
                                     uVar4,uVar4);
                                    iVar12 = g;
                                }
                                iVar13 = iVar13 + -1;
                                iVar5 = iVar5 + -4;
                            } while (*(int *)(iVar12 + 0x1d164) <= iVar13);
                        }
                        CameraMoveP();
                        AnimPerArrayUpdate(*(undefined4 *)(g + 0x104f0));
                        iVar13 = *(int *)(g + 0x1d164);
                        iVar6 = g;
                        if (iVar13 <= *(int *)(g + 0x1d168)) {
                            iVar12 = iVar13 * 4 + 0x1cf60;
                            iVar5 = iVar12;
                            do {
                                iVar8 = *(int *)(iVar5 + 4 + iVar6);
                                if ((iVar8 == 0) || (bVar3 = true, *(int *)(iVar8 + 0x158) == 0)) {
                                    bVar3 = false;
                                }
                                if (bVar3) {
                                    PlayerComboCountCheck(*(undefined4 *)(iVar12 + 4 + iVar6));
                                    iVar6 = g;
                                }
                                iVar13 = iVar13 + 1;
                                iVar12 = iVar12 + 4;
                                iVar5 = iVar5 + 4;
                            } while (iVar13 <= *(int *)(iVar6 + 0x1d168));
                        }
                        ExplodArrayUpdate(*(undefined4 *)(iVar6 + 0x14af8));
        }
        return 0;
}

