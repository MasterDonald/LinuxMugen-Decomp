
undefined4 GameVarLoadFonts(void)

{
    int iVar1;
    char *__src;

    iVar1 = FontReadFile(&DAT_082774a9);
    *(int *)(g + 0x104e8) = iVar1;
    if (iVar1 == 0) {
        ErrorSet(1);
        __src = "f-4x6.fnt";
    }
    else {
        iVar1 = FontReadFile(&DAT_08278fed);
        *(int *)(g + 0x104ec) = iVar1;
        if (iVar1 != 0) {
            return 1;
        }
        ErrorSet(1);
        __src = "f-6x9.fnt";
    }
    memcpy((void *)(g + 0x20748),__src,10);
    GameVarDeInit();
    return 0;
}

