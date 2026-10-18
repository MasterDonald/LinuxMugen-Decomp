#include "game_types.h"

int GameLoop(int param_1) {
    uint local_448;

    g->scratch_param = param_1; // Maps to g + 0xcedc
    g->system.precache_cancel_flag = 0; // Maps to g + 0x104d4

    local_448 = (0x1f << (_rgb_r_shift_16 & 0x1f)) |
    (0x3f << (_rgb_g_shift_16 & 0x1f)) |
    (0x1f << (_rgb_b_shift_16 & 0x1f));

    g->engine.bg_offset_x2 = 0; // Maps to g + 0x1cc58
    g->engine.bg_offset_x1 = 0; // Maps to g + 0x1cc54

    if (g->video.blit_mode == 4) { // Maps to g + 0x1d564
        V_SetBuf(g->video.secondary_surface_handle, 0); // Maps to g + 0x104e0
    } else {
        V_SetBuf(g->video.primary_surface_handle, 0); // Maps to g + 0x104d8
    }

    W_Cls(0);
    W_Define(0, 0, V_Width - 1, V_Height - 1);
    FrameSkipReset();

    if (g->match.game_over_flag == 0) goto LAB_F_LBL_E; // Maps to g + 0x20b4c

    g->engine.round_timer_limit = 2000; // Maps to g + 0x1cc14
    g->match.timer_sync_flag = 1;       // Maps to g + 0x20b48

    while (1) {
        if (g->engine.match_frame_count > 9999) { // Maps to g + 0x1cc10
            if (PrecacheIsRunning() && (g->system.precache_cancel_flag != 0 || g->mode.arcade_mode_flag == 0)) {
                PrecacheRequestCancel();
                PrecacheFinish();
            }
            g->scratch_param = 0;
            FrameSkipReset();
            MasterPalReset();
            return 1;
        }

        LAB_F_LBL_E:
        if (g->match.round_reset_flag != 0) { // Maps to g + 0x20b50
            PrecacheRequestCancel();
            PrecacheFinish();
            GameRoundReset();
            g->match.round_reset_flag = 0;
        }

        if (g->match.stage_reload_flag != 0) { // Maps to g + 0x20b54
            PrecacheRequestCancel();
            PrecacheFinish();
            if (GameReloadStage() == 0) return 0;
            g->match.stage_reload_flag = 0;
        }

        if (!GameModeInPassiveFightScreen()) {
            if (g->audio.master_volume == 0 && g->system.logging_enabled != 0) { // Condition checks on g + 0x42b8 / 0x1d391
                BGMPause((void *)(g + 0x42a8));
            } else if (g->audio.master_volume != 0 && g->system.logging_enabled == 0) {
                BGMResume((void *)(g + 0x42a8));
            }
        }

        BGMPoll((void *)(g + 0x42a8));

        if (g->video.blit_mode == 4) {
            V_SetBuf(g->video.primary_surface_handle, 0);
            BGArraySetViewScale(g->assets.scale_group_handle, 1); // Maps to g + 0x1bb50
        }

        PRSprArrayClear(g->assets.pr_sprite_handle); // Maps to g + 0x104f4
        GameInputUpdate();

        // Active frame simulation, updates, and rendering ticks
        GameUpdate();
        DrawToScreen();
        FrameSkipUpdate();

        g->engine.match_frame_count++;
    }
}
