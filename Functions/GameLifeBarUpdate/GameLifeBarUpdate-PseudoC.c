
void GameLifeBarUpdate(int param_1)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;

    iVar2 = (*(int *)(param_1 + 0x164) * 9) / 1000;
    iVar4 = *(int *)(param_1 + 0x164) / 0x19;
    if (iVar2 == 0) {
        iVar2 = 1;
    }
    if (iVar4 == 0) {
        iVar4 = 1;
    }
    if ((*(int *)(g + 0x1cc24) == 0) && (*(int *)(g + 0x1d434) == 0)) {
        iVar1 = *(int *)(param_1 + 0x168);
        iVar3 = *(int *)(param_1 + 0x160);
        if (iVar3 < iVar1) {
            iVar1 = (int)ROUND((double)iVar1 - ((double)(iVar1 - iVar3) * 0.1 + (double)iVar2));
            iVar3 = *(int *)(param_1 + 0x160);
            *(int *)(param_1 + 0x168) = iVar1;
            if (iVar1 < iVar3) {
                *(int *)(param_1 + 0x168) = iVar3;
                iVar1 = iVar3;
            }
        }
        if (iVar1 < iVar3) {
            if (iVar3 - iVar1 < iVar4) {
                iVar4 = iVar3 - iVar1;
            }
            *(int *)(param_1 + 0x168) = iVar4 + iVar1;
        }
        if (((*(int *)(param_1 + 0xe04) != 2) || (iVar2 = PlayerLyingDead(param_1), 0x3c < iVar2)) &&
            (iVar2 = *(int *)(param_1 + 0x168), iVar2 == *(int *)(param_1 + 0x160))) {
            iVar4 = *(int *)(param_1 + 0x16c);
        if (iVar2 < iVar4) {
            iVar4 = (int)ROUND((double)iVar4 - (double)(iVar4 - iVar2) * 0.1);
            iVar2 = *(int *)(param_1 + 0x168);
            *(int *)(param_1 + 0x16c) = iVar4;
        }
        if (iVar4 < iVar2) {
            *(int *)(param_1 + 0x16c) = iVar2;
        }
            }
    }
    return;
}

