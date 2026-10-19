
void GameMatchReset(void)

{
    float fVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int iVar6;
    int iVar7;
    int iVar8;
    uint uVar9;
    undefined4 *puVar10;
    undefined2 in_FPUControlWord;
    float local_2c [4];
    undefined2 local_1c;
    undefined2 uStack_1a;

    if (*(int *)(g + 0xcecc) == 0) {
        GameResetPersistVars();
    }
    else {
        TeamResetPersistVars(2 - *(int *)(g + 0xcecc));
    }
    iVar5 = 0xe950;
    iVar4 = 0xe960;
    iVar6 = 1;
    TeamReorderAll(0);
    TeamReorderAll(1);
    GameLoadAndActivateTeam(0);
    GameLoadAndActivateTeam(1);
    iVar8 = g;
    iVar2 = g + 0xc;
    iVar7 = g + 0x18;
    iVar3 = g;
    do {
        *(undefined4 *)(iVar4 + iVar2) = 0x3f800000;
        iVar4 = iVar4 + 0x1a9c;
        *(undefined4 *)(iVar3 + 0xe95c) = 0;
        *(undefined4 *)(iVar3 + 0xe960) = 0;
        *(undefined4 *)(iVar3 + 0xe964) = 0;
        *(undefined4 *)(iVar5 + iVar7) = 1;
        iVar5 = iVar5 + 0x1a9c;
        *(undefined4 *)(iVar3 + 0xe970) = *(undefined4 *)(iVar8 + 0x139d4);
        *(undefined4 *)(iVar3 + 0xe974) = *(undefined4 *)(iVar8 + 0x139d8);
        iVar3 = iVar3 + 0x1a9c;
        iVar6 = iVar6 + -1;
    } while (-1 < iVar6);
    iVar2 = g;
    if ((1 < *(int *)(g + 0xcee4)) || (1 < *(int *)(g + 0xe980))) {
        iVar7 = 0;
        do {
            iVar8 = iVar7 * 0x1a9c;
            *(undefined4 *)(iVar8 + 0xe95c + iVar2) = 0x7d;
            *(undefined4 *)(iVar8 + 0xe968 + iVar2) = 0;
            *(undefined4 *)(iVar8 + 0xe960 + iVar2) = 0x43898000;
            *(undefined4 *)(iVar8 + 0xe964 + iVar2) = 0x3f19999a;
            iVar3 = *(int *)(iVar2 + 0xcee4 + (1 - iVar7) * 0x1a9c);
            if (1 < iVar3) {
                *(int *)(iVar2 + 0xe970 + iVar8) = iVar3;
            }
            iVar2 = g;
            iVar7 = iVar7 + 1;
            *(undefined4 *)(iVar8 + 0xe974 + g) = 0;
        } while (iVar7 < 2);
    }
    iVar7 = g;
    iVar8 = 0;
    do {
        local_2c[iVar8] =
        (float)*(int *)(iVar8 * 0x1a9c + 0xcef4 + iVar2) /
        (float)*(int *)(iVar2 + 0xe970 + iVar8 * 0x1a9c);
        iVar8 = iVar8 + 1;
        iVar2 = g;
    } while (iVar8 < 2);
    local_2c[0] = local_2c[0] / local_2c[1];
    fVar1 = local_2c[0];
    if (local_2c[0] < 1.0) {
        fVar1 = 1.0 / local_2c[0];
    }
    uVar9 = (uint)(local_2c[0] < 1.0);
    iVar2 = g + 0xc;
    *(float *)(g + 0xe96c + uVar9 * 0x1a9c) = 1.0 / fVar1;
    if (*(int *)(iVar7 + 0xced0) != 0) {
        uVar9 = *(int *)(iVar7 + 0xced0) - 1;
        iVar8 = iVar7 + 4;
        iVar4 = uVar9 * 0x1a9c;
        iVar3 = iVar4 + 0xcee0;
        *(undefined4 *)(iVar7 + 0xe970 + iVar4) = 999999;
        if (*(int *)(iVar3 + iVar8) < 2) {
            *(undefined4 *)(iVar7 + 0xe970 + (1 - uVar9) * 0x1a9c) = 1;
        }
        else {
            iVar5 = *(int *)(iVar3 + iVar8);
            *(float *)(iVar7 + 0xe96c + iVar4) = 1.0 - (float)(*(int *)(iVar3 + iVar8) + -1) * 0.1;
            iVar4 = iVar4 + 0xe950;
            _local_1c = CONCAT22(uStack_1a,in_FPUControlWord);
            *(int *)(iVar4 + iVar2) = (int)ROUND((float)*(int *)(iVar4 + iVar2) * (1.0 / (float)iVar5));
            *(float *)(iVar4 + iVar7 + 0x10) =
            (1.0 / ((float)*(int *)(iVar3 + iVar8) - 0.5)) * *(float *)(iVar4 + iVar7 + 0x10);
        }
    }
    iVar2 = g;
    if (*(int *)(g + 0x20730) != 0) {
        *(undefined4 *)(g + 0xe96c + uVar9 * 0x1a9c) = 0x3f800000;
    }
    iVar7 = g;
    iVar8 = 1;
    if (0 < *(int *)(iVar2 + 0x1ce54)) {
        iVar3 = 0x1cf64;
        do {
            iVar4 = *(int *)(iVar3 + 4 + iVar2);
            if (iVar4 != 0) {
                *(undefined4 *)(iVar4 + 0x180) = 0;
                *(undefined4 *)(iVar4 + 0x178) = 0;
                *(undefined4 *)(iVar4 + 0x342c) = 0;
                iVar2 = iVar7;
            }
            iVar8 = iVar8 + 1;
            iVar3 = iVar3 + 4;
        } while (iVar8 <= *(int *)(iVar2 + 0x1ce54));
    }
    iVar8 = 9;
    GameRoundReset();
    iVar2 = g;
    iVar7 = 0;
    *(undefined4 *)(g + 0x1d518) = 0;
    *(undefined4 *)(iVar2 + 0x1d45c) = 0;
    *(undefined4 *)(iVar2 + 0x1d418) = 1;
    *(undefined4 *)(iVar2 + 0x1d420) = 0;
    *(undefined4 *)(iVar2 + 0x1d41c) = 0;
    *(undefined4 *)(iVar2 + 0x1d428) = 0;
    do {
        *(undefined4 *)(iVar2 + 0x1d48c + iVar7) = 0xffffffff;
        *(undefined4 *)(iVar2 + 0x1d464 + iVar7) = 0xffffffff;
        *(undefined4 *)(iVar2 + 0x1d4dc + iVar7) = 0xffffffff;
        *(undefined4 *)(iVar2 + 0x1d4b4 + iVar7) = 0xffffffff;
        iVar7 = iVar7 + 4;
        iVar8 = iVar8 + -1;
    } while (-1 < iVar8);
    puVar10 = (undefined4 *)(g + 0x1cc5c);
    for (iVar2 = 6; iVar7 = g, iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar10 = 0;
        puVar10 = puVar10 + 1;
    }
    *(undefined4 *)(g + 0x1d384) = 0;
    BGArrayReset(*(undefined4 *)(iVar7 + 0x1bb50));
    return;
}

