int GameDemoUpdate(void)
{
    int demo_complete_flag;
    int fade_start_tick;
    int current_demo_timer;
    int fade_duration;
    int color_val;
    int loop_counter;

    demo_complete_flag = 0;

    // Check if round state is in conclusion/over phase (state 2)
    if (g->match.round_state == 2) {
        if (g->match.demo_mode_flag != 0) {
            fade_duration = g->match.demo_fade_duration;
            current_demo_timer = g->match.demo_timer;
            fade_start_tick = fade_duration - 0x78;

            // Apply palette fade-out effect during the final portion of the demo
            if (fade_start_tick <= current_demo_timer) {
                color_val = (fade_duration - current_demo_timer) * 0x100 / 0x78;
                MasterPalMul(color_val, color_val, color_val, (fade_duration - current_demo_timer) * 0x100);
            }

            // Check if demo duration has elapsed
            if (fade_duration <= current_demo_timer) {
                loop_counter = g->match.demo_loop_counter;
                demo_complete_flag = 1;
                g->engine.continue_selected_flag = 1;
                loop_counter++;
                g->match.demo_loop_counter = loop_counter;

                // Reset loop counter and intro storyboard flag if max loops reached
                if (g->match.demo_loop_max <= loop_counter) {
                    g->match.demo_loop_counter = 0;
                    g->files.intro_storyboard = 0;
                }
            }
        }
        // Increment internal demo tick counter
        g->match.demo_timer++;
    }

    return demo_complete_flag;
}
