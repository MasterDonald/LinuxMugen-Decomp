int GamePowerBarUpdate(int player_bars_ptr)
{
    int current_display_power;
    int target_power;
    int power_diff;
    int target_threshold;
    int previous_threshold;
    int sound_id;

    // Check if the match is paused or in a slowdown state
    if ((g->match.pause_flag == 0) && (g->match.round_slowdown_timer == 0)) {
        current_display_power = *(int *)(player_bars_ptr + 0x180);
        target_power = *(int *)(player_bars_ptr + 0x178);

        // Smoothly interpolate current display power toward target power
        if (current_display_power < target_power) {
            power_diff = target_power - current_display_power;
            current_display_power = (power_diff / 20) + 15 + current_display_power;
            *(int *)(player_bars_ptr + 0x180) = current_display_power;
        }

        if (current_display_power > target_power) {
            *(int *)(player_bars_ptr + 0x180) = target_power;
        }
    }

    target_power = *(int *)(player_bars_ptr + 0x178);
    target_threshold = target_power / 1000;
    previous_threshold = *(int *)(player_bars_ptr + 0x184);

    // Check if power crossed a 1000-unit threshold to play a sound effect
    if (previous_threshold != target_threshold) {
        if ((previous_threshold < target_threshold) && (target_threshold < 10)) {
            sound_id = *(int *)((int)g + 0x12074 + (*(int *)(player_bars_ptr + 0x178) / 1000) * 4);
            GameSndPlay(g->match.fight_snd, sound_id, *(int *)((int)g + 0x1209c + target_threshold * 4), 0);
            target_power = *(int *)(player_bars_ptr + 0x178);
        }
        target_threshold = target_power / 1000;
        *(int *)(player_bars_ptr + 0x184) = target_threshold;
    }

    return target_threshold;
}
