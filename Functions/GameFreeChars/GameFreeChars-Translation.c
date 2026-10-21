int GameFreeChars(int team_index)
{
    int i;
    int member_count;
    int member_index;
    int entity_slot_offset;
    int player_struct_ptr;
    int player_obj;
    int cache_handle;
    int team_base;

    // Calculate team configuration base pointer offset
    team_base = (int)g + team_index * 0x5c;
    member_count = *(int *)(team_base + 0x10420);

    if (member_count > 0) {
        for (i = 0; i < member_count; i++) {
            member_index = *(int *)(team_base + 0x10424 + i * 0x14);
            entity_slot_offset = member_index * 4;
            player_obj = *(int *)((char *)g + entity_slot_offset + 0x1cf64);

            if (player_obj != 0) {
                // Disable player if active flag is set
                if (*(int *)(player_obj + 0x158) != 0) {
                    PlayerEnableSet(member_index, 0, i * 5, i * 5);
                }

                player_struct_ptr = *(int *)((char *)g + entity_slot_offset + 0x1cf60 + 4);
                if (*(int *)(player_struct_ptr + 0x10) != -1) {
                    // Save persistent fighter variables before freeing memory
                    PlayerSavePersistVars(
                        *(int *)((char *)g + entity_slot_offset + 0x1cf60 + 4),
                                          *(int *)(player_struct_ptr + 0x18) * 400 + 0xd05c +
                                          *(int *)(player_struct_ptr + 0x14) * 0x640 +
                                          *(int *)(player_struct_ptr + 0x10) * 0x1a9c + (int)g,
                                          player_obj,
                                          player_obj
                    );
                }

                cache_handle = -1;
                player_struct_ptr = **(int **)((char *)g + entity_slot_offset + 0x1cf64);
                if (player_struct_ptr != 0) {
                    cache_handle = *(int *)(player_struct_ptr + 0x10a8);
                }

                // Free player dependencies, structure instance, and cache
                GameFreePlayerDependencies(*(int *)((char *)g + member_index * 4 + 0x1cf64));
                PlayerFree(*(int *)((char *)g + member_index * 4 + 0x1cf60 + 4));

                if (cache_handle != -1) {
                    PlayerCacheFree(cache_handle);
                }

                // Clear entity slot allocation masks and references
                g->stage.entity_slots_mask[member_index] = 0;
                *(int *)((char *)g + member_index * 4 + 0x1cf60 + 4) = 0;
            }
        }
    }

    return 1;
}
