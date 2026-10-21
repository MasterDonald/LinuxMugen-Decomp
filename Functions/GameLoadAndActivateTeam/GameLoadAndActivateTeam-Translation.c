void GameLoadAndActivateTeam(int team_index)
{
    int previous_health;
    int player_array_offset;
    int team_struct_base;
    int team_config_index;
    int *active_player_ptr;
    int player_obj;
    int i;
    int *source_config;
    int *dest_config;

    previous_health = -1;
    player_array_offset = team_index * 4 + 0x1cf64;
    team_struct_base = (int)g + team_index * 0x1a9c;
    team_config_index = *(int *)(team_struct_base + 0xcee0);

    // Clear palette groups before unloading characters
    PalGrpClear();

    active_player_ptr = *(int **)((char *)g + player_array_offset + 4);
    if (active_player_ptr != NULL) {
        previous_health = active_player_ptr[0x178]; // Cache current health/meter value
    }

    // Free existing team characters
    if (GameFreeChars(team_index) == 0) {
        ErrorExit();
    }

    // Load and create new team characters
    if (GameLoadAndCreateChars(team_index) == 0) {
        ErrorExit();
    }

    // Restore cached health/meter values if valid
    if (previous_health != -1) {
        active_player_ptr = *(int **)((char *)g + player_array_offset + 4);
        if (active_player_ptr != NULL) {
            active_player_ptr[0x184] = previous_health;
            active_player_ptr[0x180] = previous_health;
            active_player_ptr[0x178] = previous_health;
        }
    }

    // Rebuild fight palette groups
    PalGrpBuildFight();

    // Copy team configuration data into active match structures (23 dwords)
    source_config = (int *)(team_struct_base + 0xceec + team_config_index * 0x5c);
    dest_config = (int *)((char *)g + team_index * 0x5c + 0x10418);

    for (i = 0x17; i != 0; i--) {
        *dest_config = *source_config;
        source_config++;
        dest_config++;
    }

    // Activate artificial intelligence for the team
    GameActivateAI();
}
