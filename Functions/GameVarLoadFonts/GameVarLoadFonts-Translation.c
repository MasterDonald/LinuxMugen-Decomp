int GameVarLoadFonts(void)
{
    int font_handle;
    char *missing_font_name;

    // Load primary system font (4x6)
    font_handle = FontReadFile("f-4x6.fnt");
    g->assets.font_handle_1 = font_handle;
    if (font_handle == 0) {
        ErrorSet(1);
        missing_font_name = "f-4x6.fnt";
    }
    else {
        // Load secondary system font (6x9)
        font_handle = FontReadFile("f-6x9.fnt");
        g->assets.font_handle_2 = font_handle;
        if (font_handle != 0) {
            return 1;
        }
        ErrorSet(1);
        missing_font_name = "f-6x9.fnt";
    }

    // Copy missing font filename to the error scratchpad buffer and deinitialize
    memcpy(&g->scratch_error_buffer[0], missing_font_name, 10);
    GameVarDeInit();
    return 0;
}
