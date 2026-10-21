int GameLoadAndCreateChars(int team_index)
{
    int i;
    int member_count;
    int team_base;
    int config_struct;
    int player_id;
    int cache_handle;
    int player_obj;
    int load_ticks;
    int team_config_offset;

    team_base = (int)g + team_index * 0x1a9c;
    team_config_offset = team_base + 0xcee0;
    config_struct = team_base + 0xceec + *(int *)team_config_offset * 0x5c;
    member_count = *(int *)(config_struct + 8);

    // Phase 1: Pre-load character caches and measure load durations
    if (member_count >= 1) {
        for (i = 0; i < member_count; i++) {
            player_id = *(int *)(config_struct + i * 0x14 + 0xc);
            if (*(int *)(config_struct + i * 0x14 + 0x10) == -1) {
                continue;
            }

            if ((player_id - 1) < 4) {
                *(int *)((char *)g + player_id * 4 + 0x2070c) = Ticks;
            }

            cache_handle = PlayerCacheLoad(*(int *)(config_struct + i * 0x14 + 0x10));
            g->stage.entity_slots_mask[player_id] = cache_handle;

            if (cache_handle == 0) {
                if (g->scratch_error_buffer[0] == '\0') {
                    sprintf(&g->scratch_error_buffer[0], "\nError loading p%i", player_id);
                }
                return 0;
            }

            if ((player_id - 1) < 4) {
                load_ticks = Ticks - *(int *)((char *)g + player_id * 4 + 0x2070c);
                *(int *)((char *)g + player_id * 4 + 0x2070c) = load_ticks;
            }
        }
    }

    // Phase 2: Instantiate player objects and configure match states
    for (i = 0; i < member_count; i++) {
        player_id = *(int *)(config_struct + i * 0x14 + 0xc);
        player_obj = PlayerNew(g->stage.entity_slots_mask[player_id]);

        if (player_obj == 0) {
            if (g->scratch_error_buffer[0] == '\0') {
                sprintf(&g->scratch_error_buffer[0], "Can't create player %i", player_id);
            }
            return 0;
        }

        // Set player team and member indices
        *(int *)(player_obj + 0xc) = (team_index != 0) ? 2 : 1;
        *(int *)(player_obj + 0x10) = team_index;
        *(int *)(player_obj + 0x14) = *(int *)(config_struct);
        *(int *)(player_obj + 0x18) = i;

        // Restore persistent player variables and keys
        PlayerRestorePersistVars(
            player_obj,
            *(int *)(config_struct) * 0x640 + *(int *)(config_struct + i * 0x14 + 0x10) * 0x1a9c +
            *(int *)(config_struct + i * 0x14 + 0x18) * 400 + 0xd05c + (int)g
        );

        *(int *)(player_obj + 0x960) = (int)g + 0x1ccec + *(int *)(config_struct + i * 0x14 + 0x18) * 0x34;

        if (*(int *)(config_struct + i * 0x14 + 0x10) != 0) {
            *(int *)(player_obj + 0x262c) = 1;
        }

        // Change player palette and enable entity
        PlayerChangePal(player_obj, *(int *)(config_struct + i * 0x14 + 0x14), -1);
        *(int *)(player_obj + 0x13c4) = *(int *)(config_struct + i * 0x14 + 0x14);

        PlayerEnableSet(player_id, 1);
        PlayerCheck(player_obj);

        *(int *)(player_obj + 0x8) = player_id;

        // Configure palette group flags based on player slot index
        if ((player_id - 1) <= 0x1f) {
            PalGrpMakeFlag(NULL, 1 << ((player_id - 1) & 0x1f), 1, 0);
        } else {
            PalGrpMakeFlag(NULL, 1 << ((player_id - 0x21) & 0x1f), 2, 0);
        }

        g->match.active_entity_pointers[player_id] = player_obj;
    }

    return 1;
}
