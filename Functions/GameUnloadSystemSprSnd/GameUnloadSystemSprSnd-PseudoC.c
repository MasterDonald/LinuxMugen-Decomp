
void GameUnloadSystemSprSnd(void)

{
    int iVar1;

    BGArrayFree(*(undefined4 *)(g + 0x18b40));
    iVar1 = g;
    *(undefined4 *)(g + 0x18b40) = 0;
    BGArrayFree(*(undefined4 *)(iVar1 + 0x18b3c));
    iVar1 = g;
    *(undefined4 *)(g + 0x18b3c) = 0;
    BGArrayFree(*(undefined4 *)(iVar1 + 0x18b34));
    iVar1 = g;
    *(undefined4 *)(g + 0x18b34) = 0;
    BGArrayFree(*(undefined4 *)(iVar1 + 0x18b38));
    iVar1 = g;
    *(undefined4 *)(g + 0x18b38) = 0;
    SpriteArrayFree(*(undefined4 *)(iVar1 + 0x16b00));
    *(undefined4 *)(g + 0x16b00) = 0;
    return;
}

