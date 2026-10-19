#include "mugen.h"

void GameUnloadStage(void)
{
    int player_cache_priority = -1;
    int priority_value = 0;

    // Free active stage background music
    BGMFree(g->audio.current_bgm_path);

    int layer_index = 1;
    if (g->stage.bg_layer_count > 0) {
        int entity_offset = 0x1cf64;
        int slot_offset = 4;

        do {
            int entity_ptr = *(int *)(entity_offset + 4 + g);
            if (entity_ptr != 0) {
                if (*(int *)(entity_ptr + 0x158) != 0) {
                    PlayerEnableSet(layer_index, 0, g, g);
                }

                int persist_data_ptr = *(int *)(entity_offset + g + 4);
                if (*(int *)(persist_data_ptr + 0x10) != -1) {
                    int var_offset = *(int *)(persist_data_ptr + 0x18) * 400 + 0xd05c +
                    *(int *)(persist_data_ptr + 0x14) * 0x640 +
                    *(int *)(persist_data_ptr + 0x10) * 0x1a9c;

                    PlayerSavePersistVars(*(undefined4 *)(entity_offset + g + 4), var_offset + g, entity_ptr, entity_ptr);
                }

                int *player_block = *(int **)(entity_offset + 4 + g);
                player_cache_priority = -1;

                if ((*player_block != 0) && (player_block[0x989] == 0)) {
                    player_cache_priority = *(int *)(*player_block + 0x10a8);
                    if (player_block[3] == g->mode.arcade_mode_flag) {
                        priority_value = g->system.intro_played_flag + g->system.intro_complete_flag;
                    } else {
                        priority_value = 0;
                    }
                }

                PlayerFree(*(undefined4 *)(entity_offset + 4 + g));

                if (player_cache_priority != -1) {
                    PlayerCacheFreePriority(player_cache_priority, priority_value);
                }

                *(int *)(g + 0x1ce64 + slot_offset) = 0;
                *(int *)(entity_offset + g + 4) = 0;
            }

            layer_index++;
            slot_offset += 4;
            entity_offset += 4;
        } while (layer_index <= g->stage.bg_layer_count);
    }

    // Free background element array and clear handle
    BGArrayFree(g->stage.bg_array_handle);
    g->stage.bg_array_handle = 0;
}
