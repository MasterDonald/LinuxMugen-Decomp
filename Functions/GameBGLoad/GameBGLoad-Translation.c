bool GameBGLoad(void)
{
    // Open stage definition file for reading
    int cfg_handle = TPReadFile(g->files.stage_def_filename);
    if (cfg_handle == 0) {
        sprintf(g->scratch_error_buffer, "\nError opening %s", g->files.stage_def_filename);
    }

    char dir_buf[4104];
    dir_buf[0] = '\0';

    // Seek [BGdef] configuration group in the stage file
    int bgdef_group = TPGroupSeek(cfg_handle, "BGdef");
    bgdef_group++;
    if (bgdef_group != 0) {
        char *sprite_val = TPGetValue(cfg_handle, "spr");
        if (sprite_val != NULL) {
            // Check if sprite path starts with "stages/"
            if (strmatchlen(sprite_val, "stages/", 7) == 0) {
                splitdirfile(g->files.stage_def_filename, dir_buf, 0, 0);
            }
        }
    }

    // Read background layer definitions and asset structures
    int bg_handle = BGArrayReadTP(cfg_handle, dir_buf, "BG", 0, 0);
    g->stage.bg_array_handle = bg_handle;

    if (bg_handle != 0) {
        TPFree(cfg_handle);
    } else {
        sprintf(g->scratch_error_buffer, "\nBG error reading %s", g->files.stage_def_filename);
    }

    return bg_handle != 0;
}
