void GameNextRound(void)
{
    int team_idx = 0;
    int player_block_offset = 0;

    // Increment match round counter
    g->match.round_time++;

    // Iterate through active teams to handle round progression and member reordering
    do {
        int round_winner = GameRoundWinner();

        // If the current team did not win the round outright, check for team member rotation (Simul/Turn mode)
        if (round_winner != team_idx + 1) {
            int current_team_base = player_block_offset;

            // Check if there are remaining members in the team pool
            if (g->match.team_member_count[team_idx] + 1 < g->match.team_mode[team_idx]) {
                W_Cls(0);
                FrameSkipReset();
                DrawToScreen();

                // Advance to the next team member
                g->match.team_member_count[team_idx]++;
                TeamReorderAll(team_idx);
                GameLoadAndActivateTeam(team_idx);
            }

            // Update active fighter health and attributes based on team scaling ratios
            // (Processed via entity pointers and scaling factors)
        }

        team_idx++;
        player_block_offset += 0x1a9c;
    } while (team_idx < 2);

    // If survival mode is active, generate a randomized next team opponent pool
    if (g->mode.survival_team_count != 0) {
        SurvivalBuildRandomTeam(
            (int *)((char *)g + 0xcee0 + (2 - g->mode.survival_team_count) * 0x1a9c),
                                2 - g->mode.survival_team_count,
                                0,
                                0
        );
    }

    // Reset round state, timers, and fighter positioning for the upcoming round
    GameRoundReset();
    FrameSkipReset();
}
