int GameFreePlayerDependencies(int *player_ptr)
{
    int start_idx;
    int end_idx;
    int i;
    int *entity_ptr;
    int player_array_base;

    // Remove player explods and drop bound targets
    ExplodRemoveID(g->match.explod_container, player_ptr[1], -1);
    PlayerDropBoundTargets(player_ptr, 0);

    start_idx = g->stage.active_entity_start_idx;
    end_idx = g->stage.active_entity_end_idx;

    if (start_idx <= end_idx) {
        for (i = start_idx; i <= end_idx; i++) {
            entity_ptr = *(int **)((char *)g + i * 4 + 0x1cf64);

            if (entity_ptr != player_ptr && entity_ptr != NULL) {
                // Check if this entity is a helper belonging to the freed player
                if ((int *)entity_ptr[0x989] == player_ptr) {
                    ExplodRemoveID(g->match.explod_container, entity_ptr[1], -1);
                    HelperDestroy(entity_ptr);
                } else {
                    // Clear references to the freed player across other entities
                    if (player_ptr[0x4e5] != 0) {
                        *(int *)(player_ptr[0x4e5] + 0x18) = 0;
                        *(int *)(player_ptr[0x4e5] + 8) = 0;
                        player_ptr[0x4e5] = 0;
                    }

                    if (entity_ptr[0x4f0] == *(int *)(*player_ptr + 0x11cc)) {
                        entity_ptr[0x4f0] = 0;
                    }

                    if (entity_ptr[0x2fb] == player_ptr[0x2fa]) {
                        entity_ptr[0x2fb] = 0;
                        entity_ptr[0x2fc] = -1;
                    }

                    if ((int *)entity_ptr[0xd09] == player_ptr) {
                        entity_ptr[0xd09] = 0;
                    }

                    if ((int *)entity_ptr[0xd0a] == player_ptr) {
                        entity_ptr[0xd0a] = 0;
                    }

                    if ((int *)entity_ptr[0xd15] == player_ptr && entity_ptr[0xd0c] != 0) {
                        entity_ptr[0xd0c] = 0;
                        entity_ptr[0xd15] = 0;
                    }
                }
            }
        }
    }

    return 1;
}
