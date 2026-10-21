
void GameFreeFightData(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;

    iVar4 = 0x10520;
    iVar3 = 9;
    iVar2 = g;
    do {
        iVar1 = *(int *)(iVar4 + 0xc + iVar2);
        if (iVar1 != *(int *)(iVar2 + 0x104e8)) {
            FontFree(iVar1);
            iVar2 = g;
        }
        iVar4 = iVar4 + 4;
        iVar3 = iVar3 + -1;
    } while (-1 < iVar3);
    AnimRCFree(*(undefined4 *)(iVar2 + 0x10528));
    SpriteArrayFree(*(undefined4 *)(g + 0x10524));
    SndArrayFree(*(undefined4 *)(g + 0x10558));
    SndArrayFree(*(undefined4 *)(g + 0x10554));
    SpriteArrayFree(*(undefined4 *)(g + 0x1051c));
    AnimRCFree(*(undefined4 *)(g + 0x10520));
    ExplodArrayFree(*(undefined4 *)(g + 0x14afc));
    ExplodArrayFree(*(undefined4 *)(g + 0x14af8));
    return;
}

