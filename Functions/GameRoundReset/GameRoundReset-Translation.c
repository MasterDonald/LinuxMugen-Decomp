#include "mugen.h"

void GameRoundReset(void)
{
    int i, j, active_count;
    float health_sum;
    Entity* entity;

    // 1. Stop active sound effects and initialize round timer limits
    SndIDStop(-1);
    g->match.round_time_limit = g->match.default_round_time;
    g->match.round_time_multiplier = (g->engine.round_time_multiplier + 1) * g->match.round_time_limit - 1;

    // Reset round state timers, win counts, and ratios
    g->match.round_start_delay = 0;
    g->match.round_reset_counter = 0;
    g->match.round_timer_setting = 0;
    g->match.p1_win_count = 0;
    g->match.p2_win_count = 0;
    g->match.p1_consecutive_wins = 0;
    g->match.p2_consecutive_wins = 0;
    g->match.p1_health_ratio = 0;
    g->match.p2_health_ratio = 0;
    g->match.p1_power_ratio = 0;
    g->match.p2_power_ratio = 0;
    g->match.round_over_reason = 0;

    // Handle special match modes (training, demo, or survival) time limits
    if (g->files.select_def == 3 || g->match.training_mode_flag != 0 || g->mode.survival_team_count != 0) {
        g->match.round_time_elapsed = -1;
    }

    // 2. Iterate through all stage entities and reset player/helper states
    for (i = 1; i <= g->stage.bg_layer_count; i++) {
        entity = (Entity*)g->stage.entity_slots[i];
        if (entity != NULL) {
            if (entity->type_flag == 0) {
                int saved_life = entity->life;
                int saved_state = entity->state_no;
                int saved_ctrl = entity->ctrl;

                PlayerReset(entity);
                PlayerChangeState(entity, 0x170c);
                KBIRefreshKeyflags(&entity->keyconfig, entity->command_id);

                entity->ctrl = saved_ctrl;
                entity->var_180 = saved_ctrl;
                entity->var_178 = saved_ctrl;

                if (g->match.training_mode_flag != 0) {
                    int default_val = *(int*)entity->pdata_ptr;
                    entity->var_180 = default_val;
                    entity->var_184 = default_val;
                    entity->var_178 = default_val;
                }

                if (g->match.teams[entity->team].simul_life_multiplier == 0) {
                    entity->life = saved_life;
                }
                entity->max_life = entity->life;
                entity->life_recovery = entity->life;
            } else if (entity->is_active != 0) {
                PlayerEnableSet(entity->player_id, 0, g, g);
            }
        }
    }

    // 3. Apply team handicap scaling and health point adjustments
    for (i = 0; i < 2; i++) {
        TeamData* team = &g->match.teams[i];
        for (j = 0; j < team->active_member_count; j++) {
            entity = (Entity*)g->stage.entity_slots[team->member_indices[j]];
            int scaled_life = (int)((float)entity->max_life * team->handicap_scaling * (float)g->engine.round_time_multiplier * 0.01f + 0.5f);
            entity->life = scaled_life;
            if (scaled_life < entity->max_life) {
                entity->life_recovery = scaled_life;
                entity->max_life = scaled_life;
                entity->life = scaled_life;
            }
        }
    }

    // 4. Reset player starting positions on the stage
    GameRoundResetPlayerPos();

    // 5. Calculate team average health ratios for HUD and scaling
    for (i = 0; i < 2; i++) {
        g->match.teams[i].health_ratio = 0.0f;
        active_count = g->match.team1_member_count;
        if (active_count > 0) {
            health_sum = 0.0f;
            for (j = 0; j < active_count; j++) {
                entity = (Entity*)g->stage.entity_slots[g->match.team1_member_indices[j]];
                if (entity != NULL) {
                    health_sum += (float)entity->life / (float)entity->max_life;
                }
            }
            g->match.teams[i].health_ratio = health_sum / (float)active_count;
        }
    }

    // 6. Reset entity state flags and apply player override tables
    for (i = 1; i <= g->stage.bg_layer_count; i++) {
        entity = (Entity*)g->stage.entity_slots[i];
        if (entity != NULL) {
            entity->custom_state_flag = 0;
        }
    }

    for (i = 3; i >= 0; i--) {
        entity = (Entity*)g->stage.entity_slots[i];
        if (entity != NULL) {
            int override_val = g->match.override_table_1[i];
            if (override_val != -1) {
                entity->ctrl = override_val;
            }
            override_val = g->match.override_table_2[i];
            if (override_val != -1) {
                entity->life = override_val;
                entity->max_life = override_val;
                entity->life_recovery = override_val;
                entity->life_max = override_val;
            }
            override_val = g->match.override_table_3[i];
            if (override_val != -1) {
                *(int*)entity->target_ptr = override_val;
                entity->var_180 = override_val;
                entity->var_184 = override_val;
            }
        }
    }

    // 7. Reset camera, scroll offsets, palette effects, and particle containers
    CameraMoveAbs((float)g->camera.x, (float)g->camera.y);
    g->engine.bg_offset_x2 = 0;
    g->engine.bg_offset_x1 = 0;
    AnimPerArrayClear(g->assets.scale_group_handle);
    MasterPalAdd(0, 0, 0);
    MasterPalMul(0, 0, 0);

    g->engine.timer_expired_flag = 0;
    g->engine.timer_display_flag = 0;
    g->engine.timer_value = 0;
    g->engine.timer_direction = 0;

    if (g->stage.info != 0) {
        BGArrayReset(g->stage.bg_array_handle);
    }
    PalFXReset(&g->stage.pal_fx_primary);
    PalFXReset(&g->stage.pal_fx_secondary);
    PalGrpResetPalette();
    GameAftImgReset(g->assets.afterimage_container_handle);
    ExplodArrayReset(g->assets.p1_explod_array_handle);
    ExplodArrayReset(g->assets.p2_explod_array_handle);

    g->match.round_decision_state = -1;
    g->match.intro_sequence_timer = 0;
    g->match.round_timer_counter = 0;

    memset(&g->engine.bg_scroll_layers, 0, sizeof(int) * 6);
    memset(&g->engine.match_stat_block_1, 0, sizeof(int) * 6);
    memset(&g->engine.match_stat_block_2, 0, sizeof(int) * 6);

    keypauseflag = 0;
    g->engine.match_frame_count = 0;
}
