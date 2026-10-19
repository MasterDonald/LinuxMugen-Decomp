
void GameStgDeInitFightData(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;

    iVar3 = 0;
    iVar5 = g + 0x10524;
    do {
        iVar4 = 3;
        iVar2 = iVar3 * 0x10 + 0x45b0;
        do {
            iVar1 = *(int *)(iVar5 + iVar2);
            if (iVar1 != 0) {
                SpriteArrayFree(iVar1);
                *(undefined4 *)(iVar5 + iVar2) = 0;
            }
            iVar2 = iVar2 + 4;
            iVar4 = iVar4 + -1;
        } while (-1 < iVar4);
        iVar3 = iVar3 + 1;
    } while (iVar3 < 2);
    return;
}

