
undefined8 GameReloadStage(void)

{
    int iVar1;
    int iVar2;
    undefined4 uVar3;
    undefined4 extraout_ECX;
    undefined4 uStack_c;

    W_Cls(0);
    V_FontDrawRight("Loading",*(undefined4 *)(g + 0x104e8),V_Width + -4,V_Height + -2,
                    0x18 << ((byte)_rgb_r_shift_16 & 0x1f) | 0x30 << ((byte)_rgb_g_shift_16 & 0x1f) |
                    0x18 << ((byte)_rgb_b_shift_16 & 0x1f));
    FrameSkipReset();
    DrawToScreen();
    PalGrpClear();
    GameStgDeInitFightData();
    GameUnloadStage();
    GameResetPersistVars();
    PlayerCacheClear();
    *(int *)(g + 0x20724) = Ticks;
    iVar1 = GameLoadStage();
    if (iVar1 != 0) {
        iVar2 = GameStgInitFightData();
        iVar1 = g;
        if (iVar2 != 0) {
            *(int *)(g + 0x20724) = Ticks - *(int *)(g + 0x20724);
            GameSetVol(*(undefined4 *)(iVar1 + 0x1bbd4),*(undefined4 *)(iVar1 + 0x1bbdc),extraout_ECX,
                       extraout_ECX);
            BGMStart(g + 0x42a8);
            GameMatchReset();
            FrameSkipReset();
            uVar3 = 1;
            goto LAB_0809ede2;
        }
    }
    uVar3 = 0;
    LAB_0809ede2:
    return CONCAT44(uStack_c,uVar3);
}

