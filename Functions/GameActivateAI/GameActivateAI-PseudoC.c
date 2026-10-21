
void GameActivateAI(void)

{
    int iVar1;
    bool bVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int *piVar6;
    int iVar7;

    bVar2 = false;
    if ((*(int *)(g + 0x20b58) != 0) || (*(int *)(g + 0x1d3a0) != 0)) {
        bVar2 = true;
    }
    iVar7 = 0;
    do {
        iVar3 = g;
        iVar4 = 0;
        iVar5 = iVar7 * 0x1a9c + *(int *)(g + 0xcee0 + iVar7 * 0x1a9c) * 0x5c + g;
        if (0 < *(int *)(iVar5 + 0xcef4)) {
            piVar6 = (int *)(iVar5 + 0xcef8);
            do {
                if ((bVar2) && (iVar1 = *(int *)(iVar3 + 0x1cf64 + *piVar6 * 4), iVar1 != 0)) {
                    *(undefined4 *)(iVar1 + 0x262c) = 1;
                }
                iVar4 = iVar4 + 1;
                piVar6 = piVar6 + 5;
            } while (iVar4 < *(int *)(iVar5 + 0xcef4));
        }
        iVar7 = iVar7 + 1;
    } while (iVar7 < 2);
    return;
}

