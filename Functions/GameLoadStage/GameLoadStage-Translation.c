#include "mugen.h"

int GameLoadStage(void)
{
    int tp_handle;
    char stage_path_buffer[256];
    int iVar3;
    int shadow_r = 0;
    int shadow_g = 0;
    int shadow_b = 0;
    int local_120[8];

    // Initialize stage configuration structure to zero
    memset(&g->stage.info, 0, sizeof(StageInfo));

    // Copy active stage file path
    strcpy(stage_path_buffer, g->files.current_stage_path);

    // Open stage definition file via text parser
    tp_handle = TPReadFile(stage_path_buffer);
    if (tp_handle == 0) {
        sprintf(g->scratch_error_buffer, "Can't open stage: %s", stage_path_buffer);
        return 0;
    }

    // 1. Parse [Camera] group
    if (TPGroupSeek(tp_handle, "Camera") == -1) {
        sprintf(g->scratch_error_buffer, "Missing camera info: %s", stage_path_buffer);
        TPFree(tp_handle);
        return 0;
    }

    // Set default camera values
    g->stage.camera.floortension = 0;
    g->stage.camera.tension = 50;
    g->stage.camera.boundhigh = -25;
    g->stage.camera.boundlow = 0;
    g->stage.camera.startx = 0;
    g->stage.camera.starty = 0;
    g->stage.camera.boundleft = -75;
    g->stage.camera.boundright = 75;
    g->stage.camera.verticalfollow = 0.8f; // 0x3e4ccccd

    TPGetValueInt(tp_handle, "boundleft", &g->stage.info.boundleft);
    TPGetValueInt(tp_handle, "boundright", &g->stage.info.boundright);
    TPGetValueInt(tp_handle, "startx", &g->stage.info.startx);
    TPGetValueInt(tp_handle, "starty", &g->stage.info.starty);
    TPGetValueInt(tp_handle, "tension", &g->stage.info.tension);
    TPGetValueInt(tp_handle, "floortension", &g->stage.info.floortension);
    TPGetValueInt(tp_handle, "boundhigh", &g->stage.info.boundhigh);
    TPGetValueInt(tp_handle, "boundlow", &g->stage.info.boundlow);
    TPGetValueFloat(tp_handle, "verticalfollow", &g->stage.info.verticalfollow);

    // 2. Parse [PlayerInfo] group
    if (TPGroupSeek(tp_handle, "PlayerInfo") == -1) {
        sprintf(g->scratch_error_buffer, "Missing player info: %s", stage_path_buffer);
        TPFree(tp_handle);
        return 0;
    }

    int p1_x_ok = TPGetValueInt(tp_handle, "p1startx", &g->stage.info.p1startx);
    int p1_y_ok = TPGetValueInt(tp_handle, "p1starty", &g->stage.info.p1starty);
    int p1_z_ok = TPGetValueInt(tp_handle, "p1startz", &g->stage.info.p1startz);
    int p1_f_ok = TPGetValueInt(tp_handle, "p1facing", &g->stage.info.p1facing);
    int p2_x_ok = TPGetValueInt(tp_handle, "p2startx", &g->stage.info.p2startx);
    int p2_y_ok = TPGetValueInt(tp_handle, "p2starty", &g->stage.info.p2starty);
    int p2_z_ok = TPGetValueInt(tp_handle, "p2startz", &g->stage.info.p2startz);
    int p2_f_ok = TPGetValueInt(tp_handle, "p2facing", &g->stage.info.p2facing);
    int l_bound_ok = TPGetValueInt(tp_handle, "leftbound", &g->stage.info.leftbound);
    int r_bound_ok = TPGetValueInt(tp_handle, "rightbound", &g->stage.info.rightbound);
    int t_bound_ok = TPGetValueInt(tp_handle, "topbound", &g->stage.info.topbound);
    int b_bound_ok = TPGetValueInt(tp_handle, "botbound", &g->stage.info.botbound);

    if (!(p1_x_ok && p1_y_ok && p1_z_ok && p1_f_ok && p2_x_ok && p2_y_ok && p2_z_ok &&
        p2_f_ok && l_bound_ok && r_bound_ok && t_bound_ok && b_bound_ok)) {
        sprintf(g->scratch_error_buffer, "Can't read player info: %s", stage_path_buffer);
    TPFree(tp_handle);
    return 0;
        }

        // Configure match spawn positions relative to player start offsets
        g->match.p1_spawn_x = g->stage.info.p1startx - 25;
        g->match.p1_spawn_y = g->stage.info.p1starty;
        g->match.p1_spawn_z = g->stage.info.p1startz;
        g->match.p1_facing = g->stage.info.p1facing;
        g->match.p2_spawn_x = g->stage.info.p2startx + 25;
        g->match.p2_spawn_y = g->stage.info.p2starty;
        g->match.p2_spawn_z = g->stage.info.p2startz;
        g->match.p2_facing = g->stage.info.p2facing;

        // 3. Parse [Scaling] group
        if (TPGroupSeek(tp_handle, "Scaling") == -1) {
            sprintf(g->scratch_error_buffer, "Missing scaling info: %s", stage_path_buffer);
            TPFree(tp_handle);
            return 0;
        }

        int scale_top_val = TPGetValueInt(tp_handle, "topscale", &g->stage.info.topscale_int);
        int scale_bot_val = TPGetValueInt(tp_handle, "botscale", &g->stage.info.botscale_int);
        int scale_top_f = TPGetValueFloat(tp_handle, "topscale_f", &g->stage.info.topscale);
        int scale_bot_f = TPGetValueFloat(tp_handle, "botscale_f", &g->stage.info.botscale);

        if (!(scale_top_val && scale_bot_val && scale_top_f && scale_bot_f)) {
            sprintf(g->scratch_error_buffer, "Can't read scaling info: %s", stage_path_buffer);
            TPFree(tp_handle);
            return 0;
        }

        if (g->stage.info.topscale_int == g->stage.info.botscale_int) {
            g->stage.info.botscale += 1.0f;
        }

        // 4. Parse [Bound] group
        if (TPGroupSeek(tp_handle, "Bound") == -1) {
            sprintf(g->scratch_error_buffer, "Missing bound info: %s", stage_path_buffer);
            TPFree(tp_handle);
            return 0;
        }

        int s_left = TPGetValueInt(tp_handle, "screenleft", &g->stage.info.screenleft);
        int s_right = TPGetValueInt(tp_handle, "screenright", &g->stage.info.screenright);
        if (!(s_left && s_right)) {
            sprintf(g->scratch_error_buffer, "Can't read bound info: %s", stage_path_buffer);
            TPFree(tp_handle);
            return 0;
        }

        // 5. Parse [StageInfo] group
        if (TPGroupSeek(tp_handle, "StageInfo") == -1) {
            sprintf(g->scratch_error_buffer, "Missing stage info: %s", stage_path_buffer);
            TPFree(tp_handle);
            return 0;
        }

        g->stage.zoffset = 190;
        g->stage.zoffsetlink = -1;
        TPGetValueInt(tp_handle, "zoffset", &g->stage.zoffset);
        TPGetValueInt(tp_handle, "zoffsetlink", &g->stage.zoffsetlink);
        g->stage.zoffset_original = g->stage.zoffset;
        g->stage.info.autoturn = 0;
        TPGetValueInt(tp_handle, "autoturn", &g->stage.info.autoturn);
        g->stage.info.resetbg = 1;
        TPGetValueInt(tp_handle, "resetbg", &g->stage.info.resetbg);

        g->stage.info.shadow_yscale = 0.3f;
        g->stage.info.shadow_intensity = 128;

        // 6. Parse optional [Shadow] group
        if (TPGroupSeek(tp_handle, "Shadow") != -1) {
            TPScanf(tp_handle, "color", "%d,%d,%d", &shadow_r, &shadow_g, &shadow_b);
            TPGetValueInt(tp_handle, "intensity", &g->stage.info.shadow_intensity);
            TPGetValueFloat(tp_handle, "yscale", &g->stage.info.shadow_yscale);
            TPScanf(tp_handle, "fade.range", "%d,%d", &g->stage.info.shadow_fade_start, &g->stage.info.shadow_fade_end);
        }

        // Compute packed shadow color
        unsigned int red_val   = (shadow_r >> 3) << _rgb_r_shift_16;
        unsigned int green_val = (shadow_g >> 2) << _rgb_g_shift_16;
        unsigned int blue_val  = (shadow_b >> 3) << _rgb_b_shift_16;
        g->stage.info.shadow_color = red_val | green_val | blue_val;

        // 7. Parse optional [Reflection] group
        if (TPGroupSeek(tp_handle, "Reflection") != -1) {
            TPGetValueInt(tp_handle, "intensity", &g->stage.info.reflection_intensity);
        }

        // 8. Parse optional [Music] group
        if (TPGroupSeek(tp_handle, "Music") != -1 && g->audio.master_volume != 0) {
            char *bgm_filename = TPGetValue(tp_handle, "bgmusic");
            if (g->files.stage_music_override[0] != '\0') {
                bgm_filename = g->files.stage_music_override;
            } else if (bgm_filename != NULL) {
                TPGetValueInt(tp_handle, "bgvolume", &g->stage.info.bgvolume);
            }

            if (bgm_filename != NULL) {
                if ((g->audio.mp3_enabled == 0 || g->audio.mix_rate != 0) &&
                    BGMLoad(&g->audio.current_bgm_path, bgm_filename, 1, g->audio.master_volume) == 0) {
                    TPFree(tp_handle);
                return 0;
                    }
            }
        }

        TPFree(tp_handle);

        // Load stage background assets and time duration
        g->stage.load_tick_duration = Ticks;
        if (GameBGLoad() == 0) {
            return 0;
        }
        g->stage.load_tick_duration = Ticks - g->stage.load_tick_duration;

        g->stage.bg_scroll_factor = g->stage.bg_element_count + g->stage.bg_scroll_factor;
        g->stage.bg_ layer_count = 1;

        // Clear helper/stage character slots
        for (int i = 0; i < 2; i++) {
            // Reset slot entries
        }

        // Create stage entities / helper characters
        for (int i = 0; i < g->stage.bg_element_count; i++) {
            int helper_ptr = PlayerNew(0);
            g->stage.helper_entities[i] = helper_ptr;
            if (helper_ptr == 0) {
                strcat(g->scratch_error_buffer, "\nCan't create helper characters");
                return 0;
            }
            // Register palette flags for helper characters
            // ...
        }

        g->stage.loaded_success_flag = (g->stage.reload_requested_flag != 0) ? 1 : 0;
        return 1;
}
