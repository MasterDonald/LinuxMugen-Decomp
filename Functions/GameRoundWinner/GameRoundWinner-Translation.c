/**
 * Retrieves the winner of the current round.
 *
 * @return int Round winner identifier (0 = draw/none, 1 = Player 1, 2 = Player 2).
 */
int GameRoundWinner(void)
{
    // Return the round winner status from the global match state.
    return g->match.round_winner;
}
