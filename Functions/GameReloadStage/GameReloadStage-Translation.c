int GameReloadStage(void)
{
    // Clear the screen and draw the loading status message
    W_Cls(0);
    V_FontDrawRight("Loading", g->video.default_font_handle, V_Width - 4, V_Height - 2,
                    0x18 << ((byte)_rgb_r_shift_16 & 0x1f) |
                    0x30 << ((byte)_rgb_g_shift_16 & 0x1f) |
                    0x18 << ((byte)_rgb_b_shift_16 & 0x1f));

    FrameSkipReset();
    DrawToScreen();

    // Clear palette groups, deinitialize fight data, and unload the current stage
    PalGrpClear();
    GameStgDeInitFightData();
    GameUnloadStage();
    GameResetPersistVars();
    PlayerCacheClear();

    // Record the starting tick count for stage loading profiling
    g->engine.match_tick_start = Ticks;

    // Reload the stage and initialize fight data
    if (GameLoadStage() != 0) {
        if (GameStgInitFightData() != 0) {
            // Compute total ticks elapsed during stage loading
            g->engine.match_tick_start = Ticks - g->engine.match_tick_start;

            // Reapply audio volume levels and restart background music
            GameSetVol(g->audio.midi_volume, g->audio.mod_volume);
            BGMStart(g->audio.current_bgm_path);

            // Reset match variables and frame skip counters
            GameMatchReset();
            FrameSkipReset();
            return 1;
        }
    }

    return 0;
}
