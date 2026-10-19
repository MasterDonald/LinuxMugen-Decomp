
void GameDeInit(int param_1)

{
    float fVar1;
    undefined8 uVar2;
    undefined4 uVar3;

    uVar3 = 8;
    uVar2 = 0x1900000050;
    G_SetMode();
    printf("M.U.G.E.N test ver %i.%02i.%02i\t\t\t\t\t(c)%i Elecbyte\n\n",MUGENDATE_Y,MUGENDATE_M,
           MUGENDATE_D,MUGENDATE_Y,uVar2,uVar3);
    fVar1 = (float)TicksPerSecond;
    printf("BG load time: %.1f ms\nPlayer load time: %.1f ms, %.1f ms\n",
           (double)(((float)*(int *)(g + 0x20710) / fVar1) * 1000.0),
           (double)(((float)*(int *)(g + 0x20714) / fVar1) * 1000.0),
           (double)(((float)*(int *)(g + 0x20718) / fVar1) * 1000.0));
    printf("Total load time: %.1f ms\n",
           (double)(((float)*(int *)(g + 0x20724) / (float)TicksPerSecond) * 1000.0));
    printf("Pal groups in background: %i\n",*(undefined4 *)(g + 0x20728));
    printf("\n");
    PlayerCacheClear();
    CharInfoFree();
    if (param_1 != 0) {
        FreeSelectScreenMatrix();
    }
    GameFreeFightData();
    GameUnloadSystem();
    chdir(g);
    GameVarDeInit();
    UInpDeInit();
    PadDeInit();
    KBDeInit();
    SwitchCallbacksDeInit();
    TimerDeInit();
    G_DeInit();
    CDADeInit();
    MP3DeInit();
    SndDeInit();
    ElecDeInit();
    return;
}

