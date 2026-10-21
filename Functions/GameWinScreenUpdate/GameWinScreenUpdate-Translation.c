void GameWinScreenUpdate(void)
{
    int win_screen_config_base;
    int current_state;
    int current_timer;
    int fadein_limit;
    int hold_limit;
    int fadeout_limit;
    int state_changed;
    int color_val;

    win_screen_config_base = (int)g + 0x8d48;

    do {
        current_state = g->match.arcade_win_screen_state;
        current_timer = g->match.arcade_win_screen_timer;
        state_changed = 0;

        if (current_state == 1) {
            hold_limit = *(int *)(win_screen_config_base + 0x2078);
            if (current_timer == hold_limit) {
                g->match.arcade_win_screen_state = 2;
                g->match.arcade_win_screen_timer = 0;
                state_changed = 1;
            }
        }
        else if (current_state < 1) {
            if (current_state == 0) {
                fadein_limit = *(int *)(win_screen_config_base + 0x207c);
                if (current_timer < fadein_limit) {
                    color_val = (current_timer << 8) / fadein_limit;
                    MasterPalMul(color_val, color_val, color_val, 0);
                }
                if (current_timer == fadein_limit) {
                    state_changed = 1;
                    MasterPalMul(0x100, 0x100, 0x100, 0);
                    g->match.arcade_win_screen_state = 1;
                    g->match.arcade_win_screen_timer = 0;
                }
            }
        }
        else if (current_state == 2) {
            fadeout_limit = *(int *)(win_screen_config_base + 0x2080);
            if (current_timer < fadeout_limit) {
                color_val = 0x100 - (current_timer << 8) / fadeout_limit;
                MasterPalMul(color_val, color_val, color_val, 0);
            }
            if (current_timer == fadeout_limit) {
                MasterPalMul(0, 0, 0, 0);
                g->engine.continue_selected_flag = 1;
            }
        }
    } while (state_changed != 0);

    // Apply baseline palette group flags and create win screen visual elements
    PalGrpMakeFlag(NULL, 0xffffffff, 0, 0);
    PalGrpSetMul();
    SysExplodCreate_Sys((void *)(win_screen_config_base + 0x200c), 0, 0);

    // Increment win screen tick counter
    g->match.arcade_win_screen_timer++;
}
