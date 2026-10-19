#include "mugen.h"

void GameStgDeInitFightData(void)
{
    // Iterate through both players/teams (0 and 1)
    for (int player_index = 0; player_index < 2; player_index++) {
        // Each player has 4 sprite handle slots managed in this deinit block
        for (int handle_slot = 0; handle_slot < 4; handle_slot++) {
            int *sprite_handle_ptr = &g->match.fight_sprite_handles[(player_index * 4) + handle_slot];

            if (*sprite_handle_ptr != 0) {
                SpriteArrayFree(*sprite_handle_ptr);
                *sprite_handle_ptr = 0;
            }
        }
    }
}
