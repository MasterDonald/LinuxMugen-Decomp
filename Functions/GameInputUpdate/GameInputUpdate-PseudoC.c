
/* WARNING: Restarted to delay deadcode elimination for space: stack */

undefined4 GameInputUpdate(void)

{
    int *piVar1;
    int iVar2;
    int iVar3;
    bool bVar4;
    int iVar5;
    int iVar6;
    int iVar7;
    bool bVar8;
    int iVar9;
    int iVar10;
    int iVar11;
    int iVar12;
    uint local_18;
    uint local_14;

    local_18 = 0;
    iVar10 = *(int *)(g + 0x1cf68);
    iVar6 = *(int *)(g + 0x1cf6c);
    iVar7 = *(int *)(g + 0x1cf70);
    iVar2 = *(int *)(g + 0x1cf74);
    bVar8 = false;
    local_14 = 0;
    if ((*(int *)(g + 0x2072c) != 0) || (*(int *)(g + 0x2073c) != 0)) {
        bVar8 = true;
    }
    *(int *)(g + 0x1cc24) = (int)keypauseflag;
    PadPoll();
    KBPoll();
    iVar5 = KBkbhit();
    if (iVar5 != 0) {
        local_18 = KBgetchraw();
    }
    iVar5 = PadHit();
    if (iVar5 != 0) {
        local_14 = PadGet();
    }
    GlobalInputUpdate();
    IntCircBufClear();
    while( true ) {
        iVar5 = TrainingMenuUpdate();
        if (iVar5 != 0) {
            keypauseflag = '\0';
        }
        iVar5 = UInpHit();
        if (iVar5 == 0) break;
        UInpGet();
        IntCircBufStuff();
    }
    if (local_18 == 1) {
        *(undefined4 *)(g + 0x104d4) = 1;
    }
    iVar5 = g;
    if ((*(int *)(g + 0x1d3a0) != 0) &&
        ((((local_18 != 0 && ((local_18 & 0x100) == 0)) && (local_18 != 0x46)) ||
        ((local_14 != 0 && ((local_14 & 0x100) == 0)))))) {
        *(undefined4 *)(g + 0x104d4) = 1;
    *(undefined4 *)(iVar5 + 0x20b48) = 0;
        }
        if (bVar8) {
            if ((local_18 == 0x39) || (DAT_082c0a99 != '\0')) {
                iVar5 = *(int *)(g + 0x1d164);
                iVar9 = g;
                if (iVar5 <= *(int *)(g + 0x1d168)) {
                    iVar11 = iVar5 * 4 + 0x1cf60;
                    do {
                        iVar12 = *(int *)(iVar11 + 4 + iVar9);
                        if (((iVar12 == 0) || (*(int *)(iVar12 + 0x158) == 0)) ||
                            (bVar4 = true, *(int *)(iVar12 + 0x1c) != 0)) {
                            bVar4 = false;
                            }
                            if (bVar4) {
                                if (*(int *)(*(int *)(iVar11 + iVar9 + 4) + 0xbf4) == 0x141e) {
                                    PlayerChangeState();
                                    iVar9 = g;
                                }
                                iVar9 = *(int *)(iVar11 + 4 + iVar9);
                                *(undefined4 *)(iVar9 + 0x160) = *(undefined4 *)(iVar9 + 0x164);
                                *(undefined4 *)(iVar9 + 0xe24) = 1;
                                *(undefined4 *)(iVar9 + 0x198) = 1;
                                *(undefined4 *)(iVar9 + 0x1010) = 0;
                                *(undefined4 *)(iVar9 + 0x100c) = 0;
                                **(undefined4 **)(iVar9 + 0x170) = **(undefined4 **)(iVar9 + 0x174);
                                iVar9 = g;
                            }
                            iVar5 = iVar5 + 1;
                            iVar11 = iVar11 + 4;
                    } while (iVar5 <= *(int *)(iVar9 + 0x1d168));
                }
                if ((*(int *)(iVar9 + 0xceb8) != 3) && (*(int *)(iVar9 + 0x1d3a0) == 0)) {
                    *(int *)(iVar9 + 0x1d454) = (*(int *)(iVar9 + 0x1e680) + 1) * *(int *)(iVar9 + 0x13984) + -1
                    ;
                }
            }
            if (local_18 == 0x3b) {
                if ((DAT_082c0afd == '\0') && (DAT_082c0a7d == '\0')) {
                    PlayerLifeSet();
                    iVar5 = iVar2;
                }
                else {
                    PlayerLifeSet();
                    iVar5 = iVar7;
                }
                if (iVar5 != 0) {
                    PlayerLifeSet();
                }
            }
            if (local_18 == 0x3c) {
                if (((DAT_082c0a96 == '\0') && (DAT_082c0a8a == '\0')) && (PlayerLifeSet(), iVar7 != 0)) {
                    PlayerLifeSet();
                }
                if (((DAT_082c0afd == '\0') && (DAT_082c0a7d == '\0')) && (PlayerLifeSet(), iVar2 != 0)) {
                    PlayerLifeSet();
                }
            }
            if ((DAT_082c0a9d != '\0') || (local_18 == 0x3d)) {
                **(undefined4 **)(iVar10 + 0x170) = **(undefined4 **)(iVar10 + 0x174);
                **(undefined4 **)(iVar6 + 0x170) = **(undefined4 **)(iVar6 + 0x174);
            }
            iVar5 = g;
            if (local_18 == 0x3e) {
                iVar9 = *(int *)(g + 0x1d164);
                if (iVar9 <= *(int *)(g + 0x1d168)) {
                    iVar11 = iVar9 * 4 + 0x1cf60;
                    iVar12 = iVar11;
                    do {
                        iVar3 = *(int *)(iVar12 + 4 + iVar5);
                        if (((iVar3 == 0) || (*(int *)(iVar3 + 0x158) == 0)) ||
                            (bVar4 = true, *(int *)(iVar3 + 0x1c) != 0)) {
                            bVar4 = false;
                            }
                            if (bVar4) {
                                iVar3 = *(int *)(iVar11 + 4 + iVar5);
                                *(undefined4 *)(iVar3 + 0x160) = *(undefined4 *)(iVar3 + 0x164);
                            }
                            iVar9 = iVar9 + 1;
                        iVar11 = iVar11 + 4;
                        iVar12 = iVar12 + 4;
                    } while (iVar9 <= *(int *)(iVar5 + 0x1d168));
                }
                if ((DAT_082c0a96 == '\0') && (DAT_082c0a8a == '\0')) {
                    *(undefined4 *)(iVar5 + 0x20b50) = 1;
                }
                else {
                    *(undefined4 *)(iVar5 + 0x20b54) = 1;
                }
            }
            if (local_18 == 0x3f) {
                *(undefined4 *)(g + 0x1d454) = 1;
            }
            if (local_18 == 0x42) {
                ClipboardClear();
                iVar5 = *(int *)(g + 0x1d164);
                if (iVar5 <= *(int *)(g + 0x1d168)) {
                    iVar9 = iVar5 * 4 + 0x1cf60;
                    iVar11 = g;
                    iVar12 = iVar9;
                    do {
                        iVar3 = *(int *)(iVar12 + 4 + iVar11);
                        if ((iVar3 == 0) || (bVar4 = true, *(int *)(iVar3 + 0x158) == 0)) {
                            bVar4 = false;
                        }
                        if ((bVar4) && (*(int *)(*(int *)(iVar9 + 4 + iVar11) + 0x345c) != 0)) {
                            ClipboardClear();
                            iVar11 = g;
                        }
                        iVar5 = iVar5 + 1;
                        iVar9 = iVar9 + 4;
                        iVar12 = iVar12 + 4;
                    } while (iVar5 <= *(int *)(iVar11 + 0x1d168));
                }
            }
        }
        if ((DAT_082c0a7d != '\0') || (DAT_082c0afd != '\0')) {
            if (bVar8) {
                if ((DAT_082c0a98 == '\0') && (DAT_082c0b18 == '\0')) {
                    if (local_18 == 2) {
                        *(uint *)(iVar10 + 0x262c) = *(uint *)(iVar10 + 0x262c) ^ 1;
                    }
                    if (local_18 == 3) {
                        *(uint *)(iVar6 + 0x262c) = *(uint *)(iVar6 + 0x262c) ^ 1;
                    }
                    if ((local_18 == 4) && (iVar7 != 0)) {
                        *(uint *)(iVar7 + 0x262c) = *(uint *)(iVar7 + 0x262c) ^ 1;
                    }
                    if ((local_18 == 5) && (iVar2 != 0)) {
                        *(uint *)(iVar2 + 0x262c) = *(uint *)(iVar2 + 0x262c) ^ 1;
                    }
                }
                else {
                    if (local_18 == 2) {
                        PlayerEnableSet();
                    }
                    if (local_18 == 3) {
                        PlayerEnableSet();
                    }
                    if ((local_18 == 4) && (iVar7 != 0)) {
                        PlayerEnableSet();
                    }
                    if ((local_18 == 5) && (iVar2 != 0)) {
                        PlayerEnableSet();
                    }
                }
                if (local_18 == 0x2f) {
                    if (*(int *)(g + 0x1050c) == 0) {
                        *(undefined4 *)(g + 0x1050c) = 1;
                    }
                    else {
                        *(undefined4 *)(g + 0x1050c) = 0;
                    }
                }
                if (local_18 == 0x1f) {
                    if (*(int *)(g + 0x20b48) == 0) {
                        *(undefined4 *)(g + 0x20b48) = 1;
                    }
                    else {
                        *(undefined4 *)(g + 0x20b48) = 0;
                        TimerSyncReset();
                    }
                }
                iVar10 = g;
                if (local_18 == 0x21) {
                    iVar6 = *(int *)(g + 0x1cc14) + 1;
                    *(int *)(g + 0x1cc14) = iVar6;
                    if (iVar6 == 3) {
                        *(undefined4 *)(iVar10 + 0x1cc14) = 2000;
                        *(undefined4 *)(iVar10 + 0x1bbcc) = 0;
                    }
                    iVar10 = g;
                    if (2000 < *(int *)(g + 0x1cc14)) {
                        *(undefined4 *)(g + 0x1cc14) = 0xffffffff;
                        *(undefined4 *)(iVar10 + 0x1bbcc) = 1;
                    }
                }
                if ((1999 < *(int *)(iVar10 + 0x1cc14)) && (*(int *)(iVar10 + 0x20b48) == 0)) {
                    *(undefined4 *)(iVar10 + 0x1cc14) = 0xffffffff;
                    *(undefined4 *)(iVar10 + 0x1bbcc) = 1;
                    iVar10 = g;
                }
                if (local_18 == 0x26) {
                    *(uint *)(iVar10 + 0x14af4) = (uint)(*(int *)(iVar10 + 0x14af4) == 0);
                    iVar10 = g;
                }
                iVar6 = iVar10;
                if ((local_18 == 0x2e) &&
                    (iVar7 = *(int *)(iVar10 + 0x20740) + 1, *(int *)(iVar10 + 0x20740) = iVar7, iVar6 = g,
                     2 < iVar7)) {
                    *(undefined4 *)(iVar10 + 0x20740) = 0;
                iVar6 = g;
                     }
                     if ((local_18 == 0x17) &&
                         (iVar10 = *(int *)(iVar6 + 0x1d164), iVar10 <= *(int *)(iVar6 + 0x1d168))) {
                         iVar7 = iVar10 * 4 + 0x1cf60;
                     do {
                         iVar2 = *(int *)(iVar7 + 4 + iVar6);
                         if (((iVar2 == 0) || (*(int *)(iVar2 + 0x158) == 0)) ||
                             (bVar8 = true, *(int *)(iVar2 + 0x1c) != 0)) {
                             bVar8 = false;
                             }
                             if (bVar8) {
                                 PlayerChangeState();
                                 iVar6 = g;
                                 iVar2 = *(int *)(iVar7 + 4 + g);
                                 *(undefined4 *)(iVar2 + 0xe0c) = 1;
                                 *(undefined4 *)(iVar2 + 0x1b8) = 0;
                                 *(undefined4 *)(iVar2 + 0x1b4) = 0;
                             }
                             iVar10 = iVar10 + 1;
                             iVar7 = iVar7 + 4;
                     } while (iVar10 <= *(int *)(iVar6 + 0x1d168));
                         }
                         if ((*(int *)(iVar6 + 0x20730) != 0) && (local_18 == 0x14)) {
                             *(undefined4 *)(iVar6 + 0xced8) = 0;
                             if ((*(int *)(iVar6 + 0x1cf6c) == 0) ||
                                 (bVar8 = true, *(int *)(*(int *)(iVar6 + 0x1cf6c) + 0x158) == 0)) {
                                 bVar8 = false;
                                 }
                                 if (bVar8) {
                                     *(undefined4 *)(*(int *)(g + 0x1cf6c) + 0x262c) = 0;
                                 }
                                 iVar10 = g;
                             piVar1 = (int *)(g + 0xceb8);
                             *(undefined4 *)(g + 0x1d454) = 0xffffffff;
                             *(uint *)(iVar10 + 0xceb8) = (uint)(*piVar1 != 3) * 3;
                             TrainingMenuReset();
                         }
            }
            iVar10 = g;
            if ((local_18 == 0x20) && (*(int *)(g + 0x20738) != 0)) {
                do {
                    *(undefined4 *)(iVar10 + 0x20734) = 1;
                    *(undefined4 *)(*(int *)(iVar10 + 0x20b5c) + 0x20) = 1;
                    iVar6 = *(int *)(iVar10 + 0x2072c) + 1;
                    *(int *)(iVar10 + 0x2072c) = iVar6;
                    iVar6 = *(int *)(iVar10 + 0x1cf64 + iVar6 * 4);
                    if ((iVar6 == 0) || (bVar8 = true, *(int *)(iVar6 + 0x158) == 0)) {
                        bVar8 = false;
                    }
                    iVar6 = g;
                } while ((!bVar8) && (iVar6 = iVar10, *(int *)(iVar10 + 0x2072c) < *(int *)(iVar10 + 0x1d168))
                );
                if (*(int *)(iVar6 + 0x1d168) < *(int *)(iVar6 + 0x2072c)) {
                    *(undefined4 *)(iVar6 + 0x20734) = 0;
                    *(undefined4 *)(*(int *)(iVar6 + 0x20b5c) + 0x20) = 0;
                    *(undefined4 *)(iVar6 + 0x2072c) = 0;
                }
            }
        }
        if (framestep.0 != '\0') {
            framestep.0 = '\0';
            keypauseflag = '\x01';
        }
        if ((((*(int *)(g + 0x1cc24) != 0) && (local_18 != 0)) && (framestep.0 == '\0')) &&
            (((local_18 & 0x100) == 0 && (local_18 != 0x58)))) {
            if ((*(int *)(g + 0xceb8) != 3) || (local_18 == 0x46)) {
                keypauseflag = '\0';
            }
            if (local_18 == 0x46) {
                framestep.0 = '\x01';
            }
            }
            if (*(int *)(g + 0x1d388) == 1) {
                ScreenSnap();
                *(undefined4 *)(g + 0x1d388) = 0;
            }
            if (local_18 == 0x58) {
                if (*(int *)(g + 0x1cc24) == 0) {
                    ScreenSnap();
                }
                else {
                    *(undefined4 *)(g + 0x1d388) = 1;
                }
            }
            return 0;
}

