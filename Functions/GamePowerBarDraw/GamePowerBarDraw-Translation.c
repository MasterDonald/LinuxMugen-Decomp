void GamePowerBarDraw(int player_index, int power_data_ptr, int current_power, int param_4, int max_power, int param_6)
{
    int scale_multiplier;
    int fill_width;
    int target_power_bound;
    int direction_flag;
    int lifebar_base;
    int bar_start_x;
    int bar_end_x;
    int sprite_ptr_1;
    int sprite_ptr_2;

    direction_flag = -1;

    // Determine scaling multiplier based on widescreen display mode (4 = widescreen mode)
    scale_multiplier = (g->system.screen_mode_flag == 4) ? 2 : 1;

    bar_start_x = current_power * scale_multiplier;
    bar_end_x = max_power * scale_multiplier;
    lifebar_base = (int)&g->match.lifebar_elements_base;

    target_power_bound = bar_end_x;

    if (bar_start_x - bar_end_x != 0 && bar_end_x <= bar_start_x) {
        direction_flag = 1;
        target_power_bound = bar_start_x;
        bar_start_x = bar_end_x;
    }

    // Calculate fill width proportional to power stats
    fill_width = (((target_power_bound - bar_start_x) + 1) * *(int *)(power_data_ptr + 0x180)) / **(int **)(power_data_ptr + 0x174);

    if (fill_width < 1) {
        goto cleanup;
    }

    if (direction_flag == 1) {
        W_Define((target_power_bound - fill_width) + 1, 0, target_power_bound, V_Height - 1);
        sprite_ptr_2 = *(int *)(player_index * 0x230 - 0x22c + lifebar_base);
        sprite_ptr_1 = *(int *)(player_index * 0x230 - 0x230 + lifebar_base);
    } else {
        W_Define(fill_width - 1 + bar_start_x, 0, bar_start_x, V_Height - 1);
        sprite_ptr_2 = *(int *)(player_index * 0x230 - 0x22c + lifebar_base);
        sprite_ptr_1 = *(int *)(player_index * 0x230 - 0x230 + lifebar_base);
    }

    SysExplodCreateDraw_Fight(player_index * 0x230 - 0x6c + lifebar_base, sprite_ptr_1, sprite_ptr_2, param_6);

    cleanup:
    W_Define();
}
