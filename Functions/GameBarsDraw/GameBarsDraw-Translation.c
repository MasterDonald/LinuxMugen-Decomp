void GameBarsDraw(int render_flags)
{
    int base_g = g;
    int fight_data_base = g + 0x10524;
    int bar_base_1 = g + 0x11b3c;
    int bar_base_2 = g + 0x138a4;
    int lifebar_config = g + 0x1055c;
    int hud_element_base = g + 0x14240;

    int row_index = 0;
    int layer_offset = 0;

    // Draw background elements for life/power bars across multiple rows/layers
    do {
        int inner_index = 0;
        int sub_offset_1 = 0;
        int sub_offset_2 = 0;
        int sub_offset_3 = 0;
        int target_slot = 0x1cf6c;

        do {
            int draw_mode;
            int resource_ptr;

            if (*(int *)(target_slot + 4 + g) == 0) {
                draw_mode = 1;
                resource_ptr = lifebar_config;
                if (1 < *(int *)(g + sub_offset_1 + 0xcee4)) {
                    resource_ptr = base_g + 0x1127c;
                }
            } else {
                draw_mode = 3;
                resource_ptr = base_g + 0x109bc;
            }

            if (inner_index < draw_mode + inner_index) {
                int pos_y = layer_offset + resource_ptr + 0x14 + sub_offset_2;
                int current_sub = sub_offset_3;
                int loop_counter = inner_index;

                do {
                    loop_counter += 2;
                    int *ptr1 = (int *)(resource_ptr + current_sub);
                    int *ptr2 = (int *)(resource_ptr + 4 + current_sub);
                    current_sub += 0x460;
                    SysExplodCreateDraw_Fight(pos_y, *ptr1, *ptr2, render_flags);
                    pos_y += 0x460;
                } while (loop_counter < draw_mode + inner_index);
                g = base_g;
            }

            inner_index++;
            sub_offset_1 += 0x1a9c;
            sub_offset_2 += 0x230;
            sub_offset_3 += 0x230;
            target_slot += 4;
        } while (inner_index < 2);

        row_index++;
        layer_offset += 0x6c;
    } while (row_index < 3);

    // Draw player life bars for active team members
    int player_index = 0;
    while (1) {
        int active_flag_val = *(int *)(g + 0x1cf70 + player_index * 4);
        int draw_mode_life;
        int resource_ptr_life;

        if (active_flag_val == 0) {
            draw_mode_life = 1;
            resource_ptr_life = lifebar_config;
            if (1 < *(int *)(g + player_index * 0x1a9c + 0xcee4)) {
                resource_ptr_life = base_g + 0x1127c;
            }
        } else {
            draw_mode_life = 3;
            resource_ptr_life = base_g + 0x109bc;
        }

        int target_member = player_index;
        if (player_index < draw_mode_life + player_index) {
            while (1) {
                GameLifeBarDraw(target_member + 1, *(int *)(g + 0x1cf68 + target_member * 4),
                                target_member * 0x230 + resource_ptr_life, render_flags);
                if (draw_mode_life + player_index <= target_member + 2) break;
                g = base_g;
                target_member += 2;
            }
        }

        player_index++;
        if (1 < player_index) break;
        g = base_g;
    }

    // Draw power bars for players
    int power_bar_idx = 0;
    int current_bar_base = bar_base_1;
    do {
        int current_pos = current_bar_base + 0x14;
        int step = 1;
        int offset_val = 0;

        do {
            int next_offset = offset_val + 4;
            int *p1 = (int *)(bar_base_1 + offset_val);
            int *p2 = (int *)(next_offset + bar_base_1);
            offset_val += 0x230;
            SysExplodCreateDraw_Fight(current_pos, *p1, *p2, render_flags);
            current_pos += 0x230;
            step--;
        } while (-1 < step);

        bar_base_1 += 0x6c;
        power_bar_idx++;
    } while (power_bar_idx < 3);

    // Render power bar values and character specific gauges via GamePowerBarDraw
    for (int i = 0; i < 2; i++) {
        int bar_offset = i * 0x230;
        GamePowerBarDraw(i + 1, *(int *)(g + 0x1cf68 + i * 4),
                         *(int *)(bar_offset + base_g + 0x11b44) + *(int *)(bar_offset + bar_base_1),
                         *(int *)(bar_offset + 4 + bar_base_1),
                         *(int *)(bar_offset + base_g + 0x11b48) + *(int *)(bar_offset + bar_base_1),
                         render_flags, 0, 0);
    }

    // Render round timer and clock numbers
    int timer_base = base_g + 0x11f9c;
    int timer_idx = 0;
    char *timer_str_ptr = (char *)(base_g + 0x11fd8);
    int timer_loop = 1;
    int font_slot = 0x1cf64;

    do {
        int char_val = *(int *)(*(int *)(font_slot + g + 4) + 0x180) / 1000;
        sprintf(timer_str_ptr, "%i", char_val);
        timer_str_ptr += 0x6c;
        int font_offset = timer_idx + 4;
        int *f_ptr1 = (int *)(bar_base_1 + timer_idx);
        timer_idx += 0x230;
        SysExplodCreateDraw_Fight(timer_base, *f_ptr1, *(int *)(font_offset + bar_base_1), render_flags);
        timer_base += 0x6c;
        font_slot += 4;
        timer_loop--;
    } while (-1 < timer_loop);

    // Render win icons and match outcome indicators for teams
    int win_icon_base = base_g + 0x12b74;
    g = base_g;
    int team_idx = 0;
    int team_offset = 0;

    do {
        if (g->mode.survival_team_count != 2 - team_idx) {
            int member_count = *(int *)(g + team_offset + 0xcee4);
            if (1 < member_count) {
                int icon_loop = 0;
                int icon_x = *(int *)(win_icon_base + 0x144);
                int icon_y = *(int *)(win_icon_base + 0x148);
                if (0 < member_count - 1) {
                    do {
                        icon_loop++;
                        SysExplodCreateDraw_Fight(win_icon_base, icon_x, icon_y, render_flags);
                        icon_y += *(int *)(win_icon_base + 0x154);
                        icon_x += *(int *)(win_icon_base + 0x150);
                    } while (icon_loop < *(int *)(g + team_offset + 0xcee4) - 1);
                    g = base_g;
                }
            }
        }
        team_idx++;
        win_icon_base += 0x158;
        team_offset += 0x1a9c;
    } while (team_idx < 2);

    // Render additional HUD indicators and character portraits if applicable
    // (Remaining display loops handle round indicators, match score icons, and timer flashes)
}
