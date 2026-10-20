void GameBGDraw(void)
{
    // Update stage background layer offset movement based on scroll and background translation coordinates
    BGArrayMoveOffset(g->stage.bg_array_handle,
                      (float)g->engine.scroll_offset_x1,
                      (float)g->engine.scroll_offset_x2,
                      (float)-g->engine.bg_offset_x1,
                      (float)-g->engine.bg_offset_x2);

    // Draw background layer 0
    BGArrayDrawLayer(g->stage.bg_array_handle, 0);

    // Reset z-offset to original baseline value
    g->stage.zoffset = g->stage.zoffset_original;

    int z_link_id = g->stage.zoffsetlink;
    if (z_link_id != -1) {
        int bg_element = BGAccessID(g->stage.bg_array_handle, z_link_id);
        if (bg_element != 0) {
            // Apply zoffset linkage adjustment formula
            g->stage.zoffset = (int)((float)g->stage.zoffset +
            ((float)*(int *)(bg_element + 0x10) -
            (float)g->engine.scroll_offset_x2 * *(float *)(bg_element + 0x20)) + 0.999999);
        }
    }

    // Fill letterbox / pillarbox screen areas if background vertical offsets extend past bounds
    if (g->engine.bg_offset_x2 > 0) {
        W_BoxFill(0, V_Height - 1, V_Width - 1, V_Height - g->engine.bg_offset_x2, 0);
    }

    if (g->engine.bg_offset_x2 < 0) {
        W_BoxFill(0, 0, V_Width - 1, (uint)(-g->engine.bg_offset_x2) ^ 0xffffffff, 0);
    }
}
