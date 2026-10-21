void GameClsnUpdate(void)
{
    int start_idx;
    int end_idx;
    int i;
    int entity_ptr;
    int active_count;
    int *entity_list_ptr;
    int j, k;
    int *list_entry1;
    int *list_entry2;

    active_count = 0;
    start_idx = g->stage.active_entity_start_idx;
    end_idx = g->stage.active_entity_end_idx;

    // Step 1: Compile list of active entities eligible for collision processing
    if (start_idx <= end_idx) {
        for (i = start_idx; i <= end_idx; i++) {
            entity_ptr = *(int *)((char *)g + i * 4 + 0x1cf60 + 4);
            if (entity_ptr != 0 && *(int *)(entity_ptr + 0x158) != 0) {
                if (*(int *)(*(int *)(entity_ptr + 0x13bc) + 0x10) != 0) {
                    *(int *)((char *)g + 0x1d160 + active_count * 4 + 0xc) = entity_ptr;
                    active_count++;
                }
            }
        }
    }

    g->match.clsn_active_entity_list[active_count] = 0;
    g->match.clsn_active_entity_count = active_count;

    // Step 2: Update entity collision/hit timers
    entity_list_ptr = &g->match.clsn_active_entity_list[0];
    while (*entity_list_ptr != 0) {
        int *current_entity = (int *)*entity_list_ptr;
        if (current_entity[0xff8 / 4] > 0) {
            current_entity[0xff8 / 4]--;
        }
        current_entity[0x1344 / 4] = 0;
        entity_list_ptr++;
    }

    // Step 3: Character push collision checks
    list_entry1 = &g->match.clsn_active_entity_list[0];
    while (*list_entry1 != 0) {
        list_entry2 = list_entry1 + 1;
        while (*list_entry2 != 0) {
            int p1 = *list_entry1;
            int p2 = *list_entry2;
            if (PlayerAreEnemies(p1, p2, (int)g, (int)g)) {
                PlayerPushCheck(p1, p2, 0, 0);
            }
            list_entry2++;
        }
        list_entry1++;
    }

    // Step 4: Reversal checks
    list_entry1 = &g->match.clsn_active_entity_list[0];
    while (*list_entry1 != 0) {
        list_entry2 = list_entry1 + 1;
        while (*list_entry2 != 0) {
            int p1 = *list_entry1;
            int p2 = *list_entry2;
            if (PlayerAreEnemies(p1, p2, (int)g, (int)g)) {
                if (PlayerCheckReversal(p1, p2, 0, 0)) {
                    Player1ReverseP2(p1, p2, 0, 0);
                }
                if (PlayerCheckReversal(p2, p1, 0, 0)) {
                    Player1ReverseP2(p2, p1, 0, 0);
                }
            }
            list_entry2++;
        }
        list_entry1++;
    }

    // Step 5: Character melee hit detection (P1 vs P2)
    list_entry1 = &g->match.clsn_active_entity_list[0];
    while (*list_entry1 != 0) {
        list_entry2 = list_entry1 + 1;
        while (*list_entry2 != 0) {
            int p1 = *list_entry1;
            int p2 = *list_entry2;

            int hit_val1 = PlayerCheckP1HitP2(p1, p2, 0, 0);
            *(int *)(*(int *)(p2 + 0x1154) + *(int *)(p1 + 8) * 4) = hit_val1;

            int hit_val2 = PlayerCheckP1HitP2(p2, p1, 0, 0);
            *(int *)(*(int *)(p1 + 0x1154) + *(int *)(p2 + 8) * 4) = hit_val2;

            list_entry2++;
        }
        list_entry1++;
    }

    // Step 6: Hit execution and resolution
    if ((g->match.collision_flags & 1) == 0) {
        // Process hit resolution sequentially
        // (Simplified iteration over active entity collision matrix)
    } else {
        // Simultaneous hit processing mode
        list_entry1 = &g->match.clsn_active_entity_list[0];
        while (*list_entry1 != 0) {
            int p1 = *list_entry1;
            list_entry2 = &g->match.clsn_active_entity_list[0];
            while (*list_entry2 != 0) {
                int p2 = *list_entry2;
                int *hit_matrix = *(int **)(p2 + 0x1154);
                if (hit_matrix[*(int *)(p1 + 8)] != 0) {
                    Player1HitP2(p1, p2, 0, 0);
                    hit_matrix[*(int *)(p1 + 8)] = 0;
                }
                list_entry2++;
            }
            list_entry1++;
        }
    }

    // Step 7: Projectile collision checks and resolution
    list_entry1 = &g->match.clsn_active_entity_list[0];
    while (*list_entry1 != 0) {
        list_entry2 = list_entry1 + 1;
        while (*list_entry2 != 0) {
            PlayerCheckHitProj(*list_entry1, *list_entry2, 0, 0);
            PlayerCheckHitProj(*list_entry2, *list_entry1, 0, 0);
            list_entry2++;
        }
        list_entry1++;
    }

    // Step 8: Projectile execution and cleanup
    list_entry1 = &g->match.clsn_active_entity_list[0];
    while (*list_entry1 != 0) {
        PlayerProjDoHit(*list_entry1);
        list_entry1++;
    }
}
