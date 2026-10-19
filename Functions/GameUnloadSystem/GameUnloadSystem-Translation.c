void GameUnloadSystem(void)
{
    int i;
    int font_handle;

    // Free system background element and layer arrays
    BGArrayFree(g->assets.system_bg_array_4);
    g->assets.system_bg_array_4 = 0;

    BGArrayFree(g->assets.system_bg_array_3);
    g->assets.system_bg_array_3 = 0;

    BGArrayFree(g->assets.system_bg_array_2);
    g->assets.system_bg_array_2 = 0;

    BGArrayFree(g->assets.system_bg_array_1);
    g->assets.system_bg_array_1 = 0;

    // Free character select portraits and configuration data if allocated
    if (g->files.select_data != NULL) {
        int total_slots = g->select.rows * g->select.cols;
        if (total_slots > 0) {
            int offset = 0;
            for (i = 0; i < total_slots; i++) {
                int sprite_ptr = *(int *)((char *)g->files.select_data + 0x2034 + offset);
                if (sprite_ptr != 0) {
                    SpriteArrayFree(sprite_ptr);
                }
                offset += 0x2038;
            }
        }
        free(g->files.select_data);
        g->files.select_data = NULL;
    }

    // Free loaded system fonts (indices 0 to 9), preserving the default system font
    for (i = 9; i >= 0; i--) {
        font_handle = (int)g->assets.fonts[i];
        if (font_handle != g->video.default_font_handle) {
            FontFree(font_handle);
        }
    }

    // Free global animation script container (.air)
    AnimRCFree(g->assets.air);
    g->assets.air = NULL;

    // Free primary sound container (.snd) and clear its load flag
    SndArrayFree(g->assets.snd);
    g->assets.snd = NULL;
    g->assets.snd_loaded_flag = 0;

    // Free primary sprite container (.sff) and clear its load flag
    SpriteArrayFree(g->assets.spr);
    g->assets.spr = NULL;
    g->assets.spr_loaded_flag = 0;
}
