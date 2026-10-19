#include "mugen.h"

int GameRoundResetPlayerPos(void)
{
    int i, slot_index;
    int spawn_pos_x = 0;
    Entity* entity;

    // 1. Reset velocity and movement physics variables for active stage entity slots
    for (i = 0; i < 3; i++) {
        entity = (Entity*)g->stage.entity_slots[i + 1];
        if (entity != NULL) {
            entity->vel_x = 0.0f;
            entity->vel_y = 0.0f;
            entity->accel_x = 0.0f;
        }
    }

    // 2. Position players and fighters at their round start coordinates and align facing directions
    for (slot_index = 1; slot_index <= 4; slot_index++) {
        entity = (Entity*)g->stage.entity_slots[slot_index];
        if (entity != NULL) {
            // Check if current entity facing direction matches the configured match spawn facing
            if (g->match.spawn_facing_config[slot_index] != entity->facing) {
                PlayerTurnAround(entity);
            }

            // Set initial X, Y, and Z spawn coordinates along with backup tracking positions
            spawn_pos_x = g->stage.spawn_x[slot_index] + 0xa0;
            entity->pos_x = (float)spawn_pos_x;
            entity->pos_x_backup = (float)spawn_pos_x;

            float spawn_y = (float)g->stage.spawn_y[slot_index];
            entity->pos_y = spawn_y;
            entity->pos_y_backup = spawn_y;

            float spawn_z = (float)g->stage.spawn_z[slot_index];
            entity->pos_z = spawn_z;
            entity->pos_z_backup = spawn_z;
        }
    }

    return spawn_pos_x;
}
