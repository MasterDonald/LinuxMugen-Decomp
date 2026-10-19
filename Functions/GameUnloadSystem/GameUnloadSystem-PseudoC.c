
void GameUnloadSystem(void)

{
    int *piVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;

    BGArrayFree(*(undefined4 *)(g + 0x18b40));
    iVar3 = g;
    *(undefined4 *)(g + 0x18b40) = 0;
    BGArrayFree(*(undefined4 *)(iVar3 + 0x18b3c));
    iVar3 = g;
    *(undefined4 *)(g + 0x18b3c) = 0;
    BGArrayFree(*(undefined4 *)(iVar3 + 0x18b34));
    iVar3 = g;
    *(undefined4 *)(g + 0x18b34) = 0;
    BGArrayFree(*(undefined4 *)(iVar3 + 0x18b38));
    iVar3 = g;
    piVar1 = (int *)(g + 0x6d40);
    *(undefined4 *)(g + 0x18b38) = 0;
    if (*piVar1 != 0) {
        iVar4 = 0;
        if (0 < *(int *)(iVar3 + 0x6394) * *(int *)(iVar3 + 0x6390)) {
            iVar5 = 0;
            do {
                iVar2 = *(int *)(*(int *)(iVar3 + 0x6d40) + 0x2034 + iVar5);
                if (iVar2 != 0) {
                    SpriteArrayFree(iVar2);
                    iVar3 = g;
                }
                iVar4 = iVar4 + 1;
                iVar5 = iVar5 + 0x2038;
            } while (iVar4 < *(int *)(iVar3 + 0x6394) * *(int *)(iVar3 + 0x6390));
        }
        free(*(void **)(iVar3 + 0x6d40));
    }
    iVar5 = 0x18b00;
    iVar4 = 9;
    iVar3 = g;
    do {
        iVar2 = *(int *)(iVar5 + 0xc + iVar3);
        if (iVar2 != *(int *)(iVar3 + 0x104e8)) {
            FontFree(iVar2);
            iVar3 = g;
        }
        iVar5 = iVar5 + 4;
        iVar4 = iVar4 + -1;
    } while (-1 < iVar4);
    AnimRCFree(*(undefined4 *)(iVar3 + 0x18b08));
    SndArrayFree(*(undefined4 *)(g + 0x17b04));
    iVar3 = g;
    *(undefined1 *)(g + 0x17b08) = 0;
    *(undefined4 *)(iVar3 + 0x17b04) = 0;
    SpriteArrayFree(*(undefined4 *)(g + 0x16b00));
    iVar3 = g;
    *(undefined4 *)(g + 0x16b00) = 0;
    *(undefined1 *)(iVar3 + 0x16b04) = 0;
    return;
}

