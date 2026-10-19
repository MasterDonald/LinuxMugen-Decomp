void GameDeInit(int free_select_screen)
{
    float ticks_per_sec;

    // Reset video/graphics mode to default cleanup state
    G_SetMode(-1, 0x50, 0x19, 0x8);

    // Print M.U.G.E.N version and copyright banner
    printf("M.U.G.E.N test ver %i.%02i.%02i\t\t\t\t\t(c)%i Elecbyte\n\n",
           MUGENDATE_Y, MUGENDATE_M, MUGENDATE_D, MUGENDATE_Y);

    // Retrieve ticks per second for timing calculations
    ticks_per_sec = (float)TicksPerSecond;

    // Print performance load metrics (stage and player load times in ms)
    printf("BG load time: %.1f ms\nPlayer load time: %.1f ms, %.1f ms\n",
           (double)(((float)g->stage.load_tick_duration / ticks_per_sec) * 1000.0),
           (double)(((float)g->stage.player1_load_ticks / ticks_per_sec) * 1000.0),
           (double)(((float)g->stage.player2_load_ticks / ticks_per_sec) * 1000.0));

    printf("Total load time: %.1f ms\n",
           (double)(((float)g->engine.match_tick_start / ticks_per_sec) * 1000.0));

    printf("Pal groups in background: %i\n", g->stage.bg_pal_groups_count);
    printf("\n");

    // Clear player cache and character information structures
    PlayerCacheClear();
    CharInfoFree();

    // Conditionally free select screen matrix if requested
    if (free_select_screen != 0) {
        FreeSelectScreenMatrix();
    }

    // Clean up fight data and unload system assets
    GameFreeFightData();
    GameUnloadSystem();

    // Revert working directory to base path
    chdir(g);

    // Deinitialize engine subsystems, inputs, timers, and audio
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

    // Final shutdown transfer to electronic/engine deinit
    ElecDeInit();
}
