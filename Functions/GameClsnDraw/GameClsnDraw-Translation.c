void GameClsnDraw(int clsn_container, float scale_x_or_pos_x, float pos_y, float scale_x, float scale_y,
                  unsigned int blend_param, unsigned int flags, int fill_style_flag)
{
    int i;
    int num_boxes;
    int box_offset;
    int *box_data;
    float flip_multiplier;
    int x1;
    int y1;
    int x2;
    int y2;
    unsigned int color_mask;

    if (clsn_container != 0 && scale_x != 0.0f && scale_y != 0.0f) {
        num_boxes = *(int *)(clsn_container + 4);
        if (num_boxes > 0) {
            box_offset = 0;
            for (i = 0; i < num_boxes; i++) {
                box_data = (int *)(box_offset + *(int *)(clsn_container + 8));

                // Check if box type/flag indicates active rendering
                if (box_data[0] == 0) {
                    flip_multiplier = (float)(((flags & 1) == 0) ? 1 : -1);

                    x1 = (int)((float)box_data[1] * scale_x * flip_multiplier + scale_x_or_pos_x);
                    y1 = (int)((float)box_data[2] * scale_y + pos_y);
                    x2 = (int)((float)box_data[3] * scale_x * flip_multiplier + scale_x_or_pos_x);
                    y2 = (int)((float)box_data[4] * scale_y + pos_y);

                    color_mask = (4 << (_rgb_r_shift_16 & 0x1f)) |
                    (8 << (_rgb_g_shift_16 & 0x1f)) |
                    (4 << (_rgb_b_shift_16 & 0x1f));

                    W_BoxTransSub16(x1, y1, x2, y2, color_mask);

                    if (fill_style_flag == 0) {
                        W_BoxTransAdd16(x1, y1, x2, y2, blend_param);
                    } else {
                        W_BoxFillTransAdd16(x1, y1, x2, y2, blend_param);
                    }
                }

                box_offset += 0x14; // Each collision box structure is 20 bytes (0x14)
            }
        }
    }
}
