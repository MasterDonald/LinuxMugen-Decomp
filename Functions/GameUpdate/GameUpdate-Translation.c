int GameUpdate(void)
{
    int i;
    int player_count;
    int active_flag;
    int *player_ptr;
    int enemy_ptr;
    int round_state;

    // Reset core update status flag
    g->engine.update_status_flag = 0;
    if (g->match.match_mode_setting == 3 || g->match.training_mode_flag != 0) {
        g->engine.update_status_flag = 1;
    }

    // Update active player entity flags and validate pointers
    for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
        player_ptr = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
        if (player_ptr == NULL || player_ptr[0x158] == 0) {
            g->engine.player_active_flags[i] = 0;
        } else {
            g->engine.player_active_flags[i] = 1;
        }
    }

    // Process stage background layers and camera tracking bindings
    for (i = 1; i <= g->stage.bg_layer_count; i++) {
        int *bg_elem = *(int **)((char *)g + 0x1cf64 + (i * 4));
        if (bg_elem != NULL) {
            // Update stage element positions and nearest enemy targeting
            if (bg_elem[0x158] != 0) {
                enemy_ptr = bg_elem[0x3424];
                if (enemy_ptr != 0 && *(int *)(enemy_ptr + 0x158) != 0 && *(int *)(enemy_ptr + 0x1c) == 0) {
                    bg_elem[0x3428] = enemy_ptr;
                }
                bg_elem[0x3424] = PlayerNearestEnemy((int)bg_elem);
            }
        }
    }

    // Handle input processing queue and keyboard updates
    while ((active_flag = IntCircBufGet((int)&g->engine.scroll_offset_x1)) != 0) {
        if (g->match.arcade_match_index == 0 || (active_flag & 0x1000) != 0) {
            for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
                int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
                if (p_ent != NULL && p_ent[0x158] != 0) {
                    if (*(int *)((char *)p_ent + 0x262c) == 0) {
                        KBIUpdate(*(int *)((char *)p_ent + 0x960), (int)p_ent + 0x248, active_flag, 0);
                    }
                }
            }
        }
    }

    // Execute AI state updates and decision loops if not in replay/demo mode
    if (g->match.arcade_match_index == 0 && g->match.p2_win_count < 1) {
        for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
            int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
            if (p_ent != NULL && p_ent[0x158] != 0) {
                PlayerAIMsgStateUpdate((int)p_ent);
            }
        }
        for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
            int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
            if (p_ent != NULL && p_ent[0x158] != 0) {
                PlayerAI((int)p_ent);
            }
        }
        for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
            int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
            if (p_ent != NULL && p_ent[0x158] != 0) {
                PlayerAIClearMsg((int)p_ent);
            }
        }

        // Match mode outcome dispatching (Arcade, Survival, Round Updates)
        round_state = g->mode.arcade_mode_flag;
        if (round_state == 5) {
            GameWinScreenUpdate();
        } else if (round_state < 6) {
            if (round_state == 4) {
                if (g->match.arcade_match_index == 0 && GameRoundUpdate() != 0) {
                    return 1;
                }
                if (g->match.arcade_match_index == 0 && g->match.training_mode_flag != 0 && GameDemoUpdate() != 0) {
                    return 1;
                }
            }
        } else if (round_state == 6) {
            GameSurvivalResultsUpdate();
        }
    }

    // Update character physics, animations, projectiles, and collision boxes
    for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
        int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
        if (p_ent != NULL && p_ent[0x158] != 0) {
            PlayerKBUpdate((int)p_ent);
        }
    }

    // Trigger timer and update active frame counters across all fighters
    g->engine.timer_display_flag = 0;
    g->engine.timer_value = 0;

    for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
        int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
        if (p_ent != NULL && g->engine.player_active_flags[i] != 0) {
            p_ent[0x20c] = 0;
            p_ent[0x204] = 0;
            p_ent[0x208] = 0;
        }
    }

    // Main player frame update dispatch
    g->engine.player_update_trigger = 0;
    for (i = g->match.player_loop_start; i <= g->match.player_loop_end; i++) {
        int *p_ent = *(int **)((char *)g + 0x1cf60 + (i * 4) + 4);
        if (p_ent != NULL && g->engine.player_active_flags[i] != 0 && p_ent[0xe04] == 1) {
            PlayerUpdate((int)p_ent);
        }
    }

    // Process dependent player binding and projectile updates
    CameraMoveP();
    AnimPerArrayUpdate(g->assets.scale_group_handle);
    ExplodArrayUpdate(g->assets.p1_explod_array_handle);

    return 0;
}
