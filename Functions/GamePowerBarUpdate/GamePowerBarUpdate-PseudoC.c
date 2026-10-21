
int GamePowerBarUpdate(int param_1)

{
    int iVar1;
    int iVar2;
    int iVar3;

    if ((*(int *)(g + 0x1cc24) == 0) && (*(int *)(g + 0x1d434) == 0)) {
        iVar2 = *(int *)(param_1 + 0x180);
        iVar3 = *(int *)(param_1 + 0x178);
        if (iVar2 < iVar3) {
            iVar2 = (iVar3 - iVar2) / 0x14 + 0xf + iVar2;
            *(int *)(param_1 + 0x180) = iVar2;
        }
        if (iVar2 <= iVar3) goto LAB_08096c71;
        *(int *)(param_1 + 0x180) = iVar3;
    }
    iVar3 = *(int *)(param_1 + 0x178);
    LAB_08096c71:
    iVar1 = iVar3 / 1000;
    iVar2 = *(int *)(param_1 + 0x184);
    if (iVar2 != iVar1) {
        if ((iVar2 < iVar1) && (iVar1 < 10)) {
            GameSndPlay(*(undefined4 *)(g + 0x10554),
                        *(undefined4 *)(g + 0x12074 + (*(int *)(param_1 + 0x178) / 1000) * 4),
                        *(undefined4 *)(g + 0x1209c + iVar1 * 4),0);
            iVar3 = *(int *)(param_1 + 0x178);
        }
        iVar2 = iVar3 * 0x10624dd3;
        *(int *)(param_1 + 0x184) = iVar3 / 1000;
    }
    return iVar2;
}

