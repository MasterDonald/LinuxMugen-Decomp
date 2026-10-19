
int GameRoundResetPlayerPos(void)

{
    int iVar1;
    float fVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int iVar6;

    iVar5 = g;
    iVar6 = 3;
    iVar4 = 0x1cf64;
    do {
        iVar3 = *(int *)(iVar4 + 4 + iVar5);
        if (iVar3 != 0) {
            *(undefined4 *)(iVar3 + 0x1bc) = 0;
            *(undefined4 *)(iVar3 + 0x1b8) = 0;
            *(undefined4 *)(iVar3 + 0x1b4) = 0;
        }
        iVar4 = iVar4 + 4;
        iVar6 = iVar6 + -1;
    } while (-1 < iVar6);
    iVar4 = 1;
    do {
        iVar6 = iVar4 * 4;
        iVar1 = *(int *)(iVar6 + 0x1cf64 + iVar5);
        if (iVar1 != 0) {
            if (*(int *)(iVar6 + 0x4250 + iVar5) != *(int *)(iVar1 + 400)) {
                PlayerTurnAround(iVar1);
                iVar5 = g;
            }
            iVar3 = *(int *)(iVar5 + 0x4220 + iVar6) + 0xa0;
            *(float *)(iVar1 + 0x19c) = (float)iVar3;
            *(float *)(iVar1 + 0x1a8) = (float)iVar3;
            fVar2 = (float)*(int *)(iVar5 + 0x4230 + iVar6);
            *(float *)(iVar1 + 0x1a0) = fVar2;
            *(float *)(iVar1 + 0x1ac) = fVar2;
            fVar2 = (float)*(int *)(iVar5 + 0x4240 + iVar6);
            *(float *)(iVar1 + 0x1a4) = fVar2;
            *(float *)(iVar1 + 0x1b0) = fVar2;
        }
        iVar4 = iVar4 + 1;
        iVar5 = g;
    } while (iVar4 < 5);
    return iVar3;
}

