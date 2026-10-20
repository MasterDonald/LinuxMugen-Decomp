
int __regparm1 GameSetVol(int param_1,int param_2,int param_3)

{
    int iVar1;

    if (param_2 != -1) {
        param_1 = param_2 * *(int *)(g + 0x1e688) * 0x51eb851f;
    }
    if (param_3 != -1) {
        param_1 = param_3 * *(int *)(g + 0x1e68c) * 0x51eb851f;
    }
    if (*(int *)(g + 0x1bbcc) == 0) {
        return param_1;
    }
    iVar1 = SndSetVol();
    return iVar1;
}

