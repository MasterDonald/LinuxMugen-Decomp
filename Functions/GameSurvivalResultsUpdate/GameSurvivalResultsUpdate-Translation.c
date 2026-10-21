void GameSurvivalResultsUpdate(void)
{
    int survival_config_base;
    int current_state;
    int current_timer;
    int fadein_limit;
    int hold_limit;
    int fadeout_limit;
    int state_changed;
    int color_val;
    char text_buffer[256];
    char *text_source;

    survival_config_base = (int)&g->match.survival_results_config;
    text_source = (char *)((char *)&g->match.survival_results_config + 0x40);

    do {
        current_state = g->match.arcade_win_screen_state;
        current_timer = g->match.arcade_win_screen_timer;
        state_changed = 0;

        if (current_state == 1) {
            hold_limit = *(int *)(survival_config_base + 0x70);
            if (current_timer == hold_limit) {
                g->match.arcade_win_screen_state = 2;
                g->match.arcade_win_screen_timer = 0;
                state_changed = 1;
            }
        }
        else if (current_state < 1) {
            if (current_state == 0) {
                fadein_limit = *(int *)(survival_config_base + 0x74);
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
            fadeout_limit = *(int *)(survival_config_base + 0x78);
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

    // Apply baseline palette group flags
    PalGrpMakeFlag(NULL, 0xffffffff, 0, 0);
    PalGrpSetMul();

    // Format and update survival statistics text
    strcpy(text_buffer, text_source);
    sprintf(text_source, text_buffer, *(int *)((char *)&g + g->mode.survival_team_count * 4 + 0x1d418));

    // Create survival results system explod elements
    SysExplodCreate_Sys((void *)(survival_config_base + 0x4), 0, 0);

    strcpy(text_source, text_buffer);

    // Increment results screen timer tick counter
    g->match.arcade_win_screen_timer++;
}
