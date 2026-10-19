#include "mugen.h"

void GameMatchReset(void)
{
    float team1_ratio, team2_ratio, scaling_factor;
    int i, j, member_count, weaker_team;
    Entity* entity;

    // 1. Reset match persistence variables depending on arcade or versus/training mode
    if (g->mode.arcade_mode_flag == 0) {
        GameResetPersistVars();
    } else {
        TeamResetPersistVars(2 - g->mode.arcade_mode_flag);
    }

    // 2. Reorder teams and load/activate team fighter entities
    TeamReorderAll(0);
    TeamReorderAll(1);
    GameLoadAndActivateTeam(0);
    GameLoadAndActivateTeam(1);

    // 3. Initialize base combat attributes and default life/power for both teams
    for (i = 0; i < 2; i++) {
        g->match.teams[i].active_flag = 1;
        g->match.teams[i].control_flag = 0;
        g->match.teams[i].attack_multiplier = 1.0f;
        g->match.teams[i].defense_multiplier = 1.0f;
        g->match.teams[i].recovery_multiplier = 0.0f;
        g->match.teams[i].life = g->match.default_life;
        g->match.teams[i].power = g->match.default_power;
    }

    // 4. Handle simul and turn mode specific team adjustments
    if (g->match.team_mode[0] > 1 || g->match.team_mode[1] > 1) {
        for (i = 0; i < 2; i++) {
            g->match.teams[i].simul_life_multiplier = 0x7d; // 125% base scaling
            g->match.teams[i].simul_attack_multiplier = 1.0f;
            g->match.teams[i].simul_defense_multiplier = 0.95f;

            member_count = g->match.team_mode[1 - i];
            if (member_count > 1) {
                g->match.teams[i].life = member_count;
            }
            g->match.teams[i].power = 0;
        }
    }

    // 5. Calculate life ratio scaling between competing teams for handicap balance
    team1_ratio = (float)g->match.team_max_life[0] / (float)g->match.teams[0].life;
    team2_ratio = (float)g->match.team_max_life[1] / (float)g->match.teams[1].life;

    team1_ratio = team1_ratio / team2_ratio;
    scaling_factor = team1_ratio;
    if (team1_ratio < 1.0f) {
        scaling_factor = 1.0f / team1_ratio;
    }

    weaker_team = (team1_ratio < 1.0f) ? 1 : 0;
    g->match.teams[weaker_team].handicap_scaling = 1.0f / scaling_factor;

    // 6. Apply survival mode specific health and difficulty overrides if active
    if (g->mode.survival_team_count != 0) {
        int surv_index = g->mode.survival_team_count - 1;
        g->match.teams[surv_index].life = 999999;
        // Adjust survival scaling parameters based on consecutive wins
        if (g->match.survival_wins[surv_index] < 2) {
            g->match.teams[1 - surv_index].life = 1;
        } else {
            int win_streak = g->match.survival_wins[surv_index];
            g->match.teams[surv_index].handicap_scaling = 1.0f - (float)(win_streak - 1) * 0.1f;
            // Apply floating-point rounding adjustments for health pool
            g->match.teams[surv_index].life = (int)((float)g->match.teams[surv_index].life * (1.0f / (float)win_streak));
        }
    }

    // 7. Override handicap scaling if startup intro sequence skipping is enabled
    if (g->system.skip_intro != 0) {
        g->match.teams[0].handicap_scaling = 1.0f;
        g->match.teams[1].handicap_scaling = 1.0f;
    }

    // 8. Reset runtime state flags for all active stage-bound entities
    for (i = 1; i <= g->stage.bg_layer_count; i++) {
        entity = (Entity*)g->stage.entity_slots[i];
        if (entity != NULL) {
            entity->var_180 = 0;
            entity->var_178 = 0;
            entity->var_342c = 0;
        }
    }

    // 9. Trigger core round reset and initialize match statistics counters
    GameRoundReset();
    g->engine.arcade_mode_active = 0;
    g->match.match_over_flag = 0;
    g->match.round_state = 1; // Set round state to active combat (FIGHT)
    g->match.round_over_timer = 0;
    g->match.intro_time = 0;
    g->match.continue_screen_allowed = 0;

    // Reset match history tracking arrays
    for (i = 0; i < 9; i++) {
        g->match.win_team[i] = -1;
        g->match.win_type[i] = -1;
        g->match.draw_games[i] = -1;
        g->match.win_rounds[i] = -1;
    }

    // 10. Clear viewport background scroll translation layers
    memset(&g->engine.bg_offset_x1, 0, sizeof(int) * 6);
    g->engine.match_paused_flag = 0;

    // 11. Reset background array container subsystem
    BGArrayReset(g->stage.bg_array_handle);
}
