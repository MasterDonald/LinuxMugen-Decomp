void GameActivateAI(void)
{
    int team_index;
    int member_count;
    int team_config_base;
    int *member_indices;
    int player_obj;
    int i;
    int ai_active;

    ai_active = 0;

    // Check if global AI control or demo mode is enabled
    if ((g->engine.ai_enabled_flag != 0) || (g->match.demo_mode_flag != 0)) {
        ai_active = 1;
    }

    // Iterate through both teams (index 0 and 1)
    for (team_index = 0; team_index < 2; team_index++) {
        team_config_base = team_index * 0x1a9c + *(int *)((char *)g + 0xcee0 + team_index * 0x1a9c) * 0x5c + (int)g;
        member_count = *(int *)(team_config_base + 0xcef4);

        if (member_count > 0) {
            member_indices = (int *)(team_config_base + 0xcef8);

            for (i = 0; i < member_count; i++) {
                if (ai_active != 0) {
                    player_obj = *(int *)((char *)g + 0x1cf64 + member_indices[i * 5] * 4);
                    if (player_obj != 0) {
                        *(int *)(player_obj + 0x262c) = 1;
                    }
                }
            }
        }
    }
}
