int GameMatchWinner(void)
{
    int winning_team;
    int i;
    int team_wins;
    int team_struct_stride = 0x1a9c;

    winning_team = 0;

    // Check if match is in final conclusion state and timer threshold is met, or if round state is active (< 3)
    if ((g->match.round_state == 3 && g->match.round_timer_counter >= g->match.match_conclusion_threshold) ||
        (g->match.round_state < 3)) {
        winning_team = 0;
        } else {
            // Iterate through both competing teams/players (index 0 and 1)
            for (i = 0; i < 2; i++) {
                team_wins = g->match.win_rounds[i];

                // Evaluate bonus win conditions if round start delay is zero and winner matches criteria
                if (g->match.round_start_delay == 0 &&
                    (g->match.round_winner == i + 1 ||
                    (g->match.round_winner == 0 &&
                    *(int *)((char *)&g->match + 0xe974 + i * team_struct_stride) < g->match.intro_time + 1))) {
                    team_wins++;
                    }

                    // Check if team wins meet or exceed the required win limit for the match
                    if (*(int *)((char *)&g->match + 0xe970 + i * team_struct_stride) <= team_wins) {
                        if (winning_team == 0) {
                            winning_team = i + 1;
                        } else if (g->mode.arcade_mode_flag == 0) {
                            winning_team = 1;
                        } else {
                            winning_team = 3 - g->mode.arcade_mode_flag;
                        }
                    }
            }
        }

        return winning_team;
}
