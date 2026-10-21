
void GameClsnUpdate(void)

{
    int iVar1;
    bool bVar2;
    undefined4 uVar3;
    int iVar4;
    int extraout_ECX;
    int extraout_ECX_00;
    int extraout_ECX_01;
    undefined4 extraout_ECX_02;
    undefined4 extraout_ECX_03;
    int extraout_ECX_04;
    int extraout_ECX_05;
    int extraout_ECX_06;
    int extraout_ECX_07;
    int extraout_ECX_08;
    int extraout_ECX_09;
    int extraout_ECX_10;
    int extraout_ECX_11;
    int extraout_ECX_12;
    int extraout_ECX_13;
    int extraout_EDX;
    int extraout_EDX_00;
    int extraout_EDX_01;
    int iVar5;
    int iVar6;
    int iVar7;
    int *piVar8;
    int iVar9;
    int *piVar10;
    undefined8 uVar11;

    iVar5 = g;
    iVar7 = 0;
    iVar4 = *(int *)(g + 0x1d164);
    if (iVar4 <= *(int *)(g + 0x1d168)) {
        iVar6 = iVar4 * 4 + 0x1cf60;
        iVar9 = 0x1d160;
        do {
            iVar1 = *(int *)(iVar6 + 4 + iVar5);
            if ((iVar1 == 0) || (bVar2 = true, *(int *)(iVar1 + 0x158) == 0)) {
                bVar2 = false;
            }
            if ((bVar2) && (*(int *)(*(int *)(iVar1 + 0x13bc) + 0x10) != 0)) {
                *(int *)(iVar9 + 0xc + iVar5) = iVar1;
                iVar9 = iVar9 + 4;
                iVar7 = iVar7 + 1;
            }
            iVar4 = iVar4 + 1;
            iVar6 = iVar6 + 4;
        } while (iVar4 <= *(int *)(iVar5 + 0x1d168));
    }
    *(undefined4 *)(iVar5 + 0x1d16c + iVar7 * 4) = 0;
    iVar6 = *(int *)(iVar5 + 0x1d16c);
    *(int *)(iVar5 + 0x1d270) = iVar7;
    piVar8 = (int *)(iVar5 + 0x1d16c);
    while (iVar6 != 0) {
        if (0 < *(int *)(iVar6 + 0xff8)) {
            *(int *)(iVar6 + 0xff8) = *(int *)(iVar6 + 0xff8) + -1;
        }
        piVar8 = piVar8 + 1;
        *(undefined4 *)(iVar6 + 0x1344) = 0;
        iVar6 = *piVar8;
    }
    piVar8 = (int *)(g + 0x1d16c);
    iVar5 = *(int *)(g + 0x1d16c);
    iVar7 = g;
    while (iVar5 != 0) {
        piVar10 = piVar8 + 1;
        iVar6 = piVar8[1];
        while (iVar6 != 0) {
            uVar11 = PlayerAreEnemies(iVar5,iVar6,iVar7,iVar7);
            iVar7 = (int)((ulonglong)uVar11 >> 0x20);
            iVar4 = extraout_ECX;
            if ((int)uVar11 != 0) {
                PlayerPushCheck(iVar5,iVar6,0,(int)uVar11);
                iVar4 = extraout_ECX_00;
                iVar7 = extraout_EDX;
            }
            piVar10 = piVar10 + 1;
            iVar6 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar5 = *piVar8;
    }
    piVar8 = (int *)(g + 0x1d16c);
    iVar5 = *(int *)(g + 0x1d16c);
    while (iVar5 != 0) {
        piVar10 = piVar8 + 1;
        iVar7 = piVar8[1];
        while (iVar7 != 0) {
            uVar11 = PlayerAreEnemies(iVar5,iVar7,iVar4,iVar4);
            uVar3 = (undefined4)((ulonglong)uVar11 >> 0x20);
            iVar4 = extraout_ECX_01;
            if ((int)uVar11 != 0) {
                iVar4 = PlayerCheckReversal(iVar5,iVar7,uVar3,uVar3);
                uVar3 = extraout_ECX_02;
                if (iVar4 != 0) {
                    Player1ReverseP2(iVar5,iVar7,iVar4,iVar4);
                    uVar3 = extraout_ECX_03;
                }
                uVar11 = PlayerCheckReversal(iVar7,iVar5,uVar3,uVar3);
                uVar3 = (undefined4)((ulonglong)uVar11 >> 0x20);
                iVar4 = extraout_ECX_04;
                if ((int)uVar11 != 0) {
                    Player1ReverseP2(iVar7,iVar5,uVar3,uVar3);
                    iVar4 = extraout_ECX_05;
                }
            }
            piVar10 = piVar10 + 1;
            iVar7 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar5 = *piVar8;
    }
    piVar8 = (int *)(g + 0x1d16c);
    iVar5 = *(int *)(g + 0x1d16c);
    iVar7 = g;
    while (g = iVar7, iVar5 != 0) {
        iVar7 = piVar8[1];
        piVar10 = piVar8 + 1;
        iVar6 = iVar7;
        while (iVar7 != 0) {
            piVar10 = piVar10 + 1;
            uVar3 = PlayerCheckP1HitP2(iVar5,iVar7,iVar6,iVar6);
            *(undefined4 *)(*(int *)(iVar7 + 0x1154) + *(int *)(iVar5 + 8) * 4) = uVar3;
            iVar6 = PlayerCheckP1HitP2(iVar7,iVar5);
            iVar4 = *(int *)(iVar7 + 8);
            iVar7 = *piVar10;
            *(int *)(*(int *)(iVar5 + 0x1154) + iVar4 * 4) = iVar6;
        }
        piVar8 = piVar8 + 1;
        iVar7 = g;
        iVar5 = *piVar8;
    }
    iVar5 = iVar7;
    if ((*(byte *)(iVar7 + 0x1cc10) & 1) == 0) {
        piVar8 = (int *)(iVar7 + 0x1d168 + *(int *)(iVar7 + 0x1d270) * 4);
        if ((int *)(iVar7 + 0x1d16cU) <= piVar8) {
            do {
                iVar5 = *piVar8;
                piVar10 = (int *)(iVar7 + 0x1d16c);
                iVar4 = *(int *)(iVar7 + 0x1d16c);
                while (iVar4 != 0) {
                    iVar7 = *(int *)(iVar5 + 0x1154);
                    if (*(int *)(iVar7 + *(int *)(iVar4 + 8) * 4) != 0) {
                        Player1HitP2(iVar4,iVar5,iVar7,iVar7);
                        *(undefined4 *)(*(int *)(iVar5 + 0x1154) + *(int *)(iVar4 + 8) * 4) = 0;
                    }
                    piVar10 = piVar10 + 1;
                    iVar7 = g;
                    iVar4 = *piVar10;
                }
                piVar8 = piVar8 + -1;
                iVar5 = iVar7;
            } while ((int *)(iVar7 + 0x1d16cU) <= piVar8);
        }
    }
    else {
        piVar8 = (int *)(iVar7 + 0x1d16c);
        iVar6 = *(int *)(iVar7 + 0x1d16c);
        while (iVar7 = iVar4, iVar6 != 0) {
            piVar10 = (int *)(iVar5 + 0x1d16c);
            iVar4 = *(int *)(iVar5 + 0x1d16c);
            while (iVar4 != 0) {
                if (*(int *)(*(int *)(iVar6 + 0x1154) + *(int *)(iVar4 + 8) * 4) != 0) {
                    Player1HitP2(iVar4,iVar6,iVar7,iVar7);
                    *(undefined4 *)(*(int *)(iVar6 + 0x1154) + *(int *)(iVar4 + 8) * 4) = 0;
                    iVar7 = extraout_ECX_06;
                }
                piVar10 = piVar10 + 1;
                iVar5 = g;
                iVar4 = *piVar10;
            }
            piVar8 = piVar8 + 1;
            iVar4 = iVar7;
            iVar6 = *piVar8;
        }
    }
    piVar8 = (int *)(iVar5 + 0x1d16c);
    iVar4 = *(int *)(iVar5 + 0x1d16c);
    while (iVar4 != 0) {
        piVar10 = piVar8 + 1;
        iVar5 = piVar8[1];
        while (iVar5 != 0) {
            piVar10 = piVar10 + 1;
            PlayerCheckHitProj(iVar4,iVar5,iVar7,iVar7);
            PlayerCheckHitProj(iVar5,iVar4);
            iVar7 = extraout_ECX_07;
            iVar5 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar5 = g;
        iVar4 = *piVar8;
    }
    piVar8 = (int *)(iVar5 + 0x1d16c);
    iVar4 = *(int *)(iVar5 + 0x1d16c);
    iVar6 = iVar5;
    while (iVar4 != 0) {
        piVar10 = piVar8 + 1;
        iVar6 = piVar8[1];
        while (iVar6 != 0) {
            if ((*(uint *)(iVar6 + 0xffc) & *(uint *)(iVar6 + 0x1000)) != 0) {
                PlayerCheckProjHit(iVar4,iVar6,iVar7,iVar7);
                iVar7 = extraout_ECX_08;
                iVar5 = extraout_EDX_00;
            }
            if ((*(uint *)(iVar4 + 0xffc) & *(uint *)(iVar4 + 0x1000)) != 0) {
                PlayerCheckProjHit(iVar6,iVar4,iVar5,iVar5);
                iVar7 = extraout_ECX_09;
                iVar5 = extraout_EDX_01;
            }
            piVar10 = piVar10 + 1;
            iVar6 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar6 = g;
        iVar4 = *piVar8;
    }
    piVar8 = (int *)(iVar6 + 0x1d16c);
    iVar4 = *(int *)(iVar6 + 0x1d16c);
    while (iVar4 != 0) {
        piVar8 = piVar8 + 1;
        PlayerProjDoHit(iVar4);
        iVar7 = extraout_ECX_10;
        iVar6 = g;
        iVar4 = *piVar8;
    }
    piVar8 = (int *)(iVar6 + 0x1d16c);
    iVar4 = *(int *)(iVar6 + 0x1d16c);
    while (iVar4 != 0) {
        piVar10 = piVar8 + 1;
        iVar5 = piVar8[1];
        iVar6 = iVar5;
        while (iVar5 != 0) {
            piVar10 = piVar10 + 1;
            iVar6 = CheckProjHitProj(iVar4,iVar5,iVar6,iVar6);
            iVar7 = extraout_ECX_11;
            iVar5 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar6 = g;
        iVar4 = *piVar8;
    }
    piVar8 = (int *)(iVar6 + 0x1d16c);
    iVar4 = *(int *)(iVar6 + 0x1d16c);
    while (iVar4 != 0) {
        piVar10 = piVar8 + 1;
        iVar5 = piVar8[1];
        while (iVar5 != 0) {
            uVar11 = PlayerAreEnemies(iVar4,iVar5,iVar7,iVar7);
            iVar7 = extraout_ECX_12;
            if ((int)uVar11 != 0) {
                PlayerPushCheck(iVar4,iVar5,0,(int)((ulonglong)uVar11 >> 0x20));
                iVar7 = extraout_ECX_13;
            }
            piVar10 = piVar10 + 1;
            iVar5 = *piVar10;
        }
        piVar8 = piVar8 + 1;
        iVar4 = *piVar8;
    }
    return;
}

