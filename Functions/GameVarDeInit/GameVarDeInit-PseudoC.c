void GameVarDeInit(void)

{
    if (g != (void *)0x0) {
        FontFree(*(undefined4 *)((int)g + 0x104e8));
        FontFree(*(undefined4 *)((int)g + 0x104ec));
        IntCircBufDeInit((int)g + 0x1ce44);
        free(*(void **)((int)g + 0x104f8));
        PRSprArrayFree(*(undefined4 *)((int)g + 0x104f4));
        GameAftImgArrayFree(*(undefined4 *)((int)g + 0x104fc));
        AnimPerArrayFree(*(undefined4 *)((int)g + 0x104f0));
        V_DeAlloc(*(undefined4 *)((int)g + 0x104d8));
        if (*(int *)((int)g + 0x104dc) != 0) {
            V_DeAlloc(*(int *)((int)g + 0x104dc));
        }
        if (*(int *)((int)g + 0x104e0) != 0) {
            V_DeAlloc(*(int *)((int)g + 0x104e0));
        }
        if (*(int *)((int)g + 0x20744) != 0) {
            ClipboardFree(*(int *)((int)g + 0x20744));
        }
        free(g);
        g = (void *)0x0;
    }
    return;
}
