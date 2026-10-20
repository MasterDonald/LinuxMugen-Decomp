
void GameResetOptions(void)

{
    int iVar1;

    iVar1 = g;
    *(undefined4 *)(g + 0x1e678) = 4;
    *(undefined4 *)(iVar1 + 0x1e67c) = 100;
    *(undefined4 *)(iVar1 + 0x1e680) = 99;
    *(undefined4 *)(iVar1 + 0x1e684) = 0;
    *(undefined4 *)(iVar1 + 0x1e688) = 0x32;
    *(undefined4 *)(iVar1 + 0x1e68c) = 0x32;
    return;
}

