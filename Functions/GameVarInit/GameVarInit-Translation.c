int GameVarInit(void)
{
    time_t local_time;
    struct tm *time_info;
    FILE *temp_file;
    char *cwd_result;
    int alloc_result;
    unsigned int seed;

    // Retrieve current working directory into global base buffer
    cwd_result = getcwd((char *)g, 0xfff);
    if (cwd_result == NULL) {
        GameVarDeInit();
        return 0;
    }

    // Set build date identifiers in the global structure
    g->system.mugendate_y = MUGENDATE_Y;
    g->system.mugendate_m = MUGENDATE_M;
    g->system.mugendate_d = MUGENDATE_D;
    g->match.match_mode_setting = 0;

    // Test file write permissions in the working directory
    temp_file = fopen("_mugen__.tmp", "wb");
    if (temp_file != NULL) {
        g->system.write_test_passed = 1;
        fclose(temp_file);
        remove("_mugen__.tmp");
    }

    // Check expiration date
    time(&local_time);
    time_info = gmtime(&local_time);

    if (MDYDateCmp(time_info->tm_mon + 1, time_info->tm_mday, time_info->tm_year + 0x76c,
        MUGENEXPDATE_M, MUGENEXPDATE_D, MUGENEXPDATE_Y) > 0) {
        g->match.expired_flag = 1;
        }

        // Allocate primary screen buffer (320x240, depth 16)
        g->video.primary_surface_handle = (int)V_AllocDepth(0x140, 0xf0, 0x10, 0);
    if (g->video.primary_surface_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't create screen buffer.");
        return 0;
    }

    V_SetBuf(g->video.primary_surface_handle, 0, 0, 0);
    W_Cls(0);
    g->video.active_surface_handle = g->video.primary_surface_handle;

    // Allocate secondary screen buffer if widescreen/alternate screen mode is enabled
    if (g->system.screen_mode_flag != 0) {
        g->video.secondary_surface_handle = (int)V_AllocDepth(0x280, 0x1e0, 0x10, g->video.primary_surface_handle);
        if (g->video.secondary_surface_handle == 0) {
            GameVarDeInit();
            sprintf(&g->scratch_error_buffer[0], "Can't create screen buffer.");
            return 0;
        }
        g->video.active_surface_handle = g->video.secondary_surface_handle;
    }

    // Allocate priority sprite array layer 1
    g->assets.pr_sprite_handle = PRSprArrayNew(g->engine.layer_sprite_max);
    if (g->assets.pr_sprite_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't create priority sprites layer 1.");
        return 0;
    }

    // Allocate persistent animation array
    g->assets.scale_group_handle = (int)AnimPerArrayNew(0x20);
    if (g->assets.scale_group_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't create persistent animation array.");
        return 0;
    }

    // Initialize afterimage container array
    g->assets.afterimage_container_handle = GameAftImgArrayNew(g->engine.afterimage_max, 0x3c);
    if (g->assets.afterimage_container_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't init afterimages.");
        return 0;
    }

    // Allocate palette group array block
    g->assets.p1_explod_array_handle = (int)ecalloc(1, 0xc);
    if (g->assets.p1_explod_array_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't create palgroup array.");
        return 0;
    }

    // Initialize input circular buffer
    if (IntCircBufInit(&g->input.circ_buf, 0x20) == 0) {
        GameVarDeInit();
        return 0;
    }

    // Configure system filenames and default engine ticks
    g->match.arcade_match_index = g->engine.arcade_mode_active;
    g->files.match_active_flag = 1;
    memcpy(&g->files.system_def_filename, "system.def", 0xb);
    g->stage.bg_element_count = g->engine.bg_scroll_layers;
    g->stage.bg_layer_count = g->stage.bg_element_count + 4;
    memcpy(&g->files.system_def_path, "data/", 5);

    g->engine.match_frame_count = 0;
    g->engine.round_timer_limit = -1;
    g->engine.scroll_offset_x1 = 0;
    g->engine.scroll_offset_x2 = 0;
    g->engine.bg_offset_x1 = 0;
    g->engine.bg_offset_x2 = 0;
    g->system.precache_cancel_flag = 0;
    g->engine.anim_update_flag_1 = 1;
    g->engine.anim_update_flag_2 = 1;

    // Seed random number generator with current time
    seed = (unsigned int)time(NULL);
    g->engine.match_paused_flag = seed; // Stored seed reference
    srandom(seed);

    // Create system clipboard handle
    g->system.clipboard_handle = (int)ClipboardNew(0x4d, 8);
    if (g->system.clipboard_handle == 0) {
        GameVarDeInit();
        sprintf(&g->scratch_error_buffer[0], "Can't create clipboard.");
        return 0;
    }

    return 1;
}
