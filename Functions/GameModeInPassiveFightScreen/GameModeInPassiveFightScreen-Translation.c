bool GameModeInPassiveFightScreen(void)
{
    // Check if the game mode configuration flag at offset 0xcedc falls within the passive fight screen range [5, 7]
    return (unsigned int)(g->mode.fight_screen_mode_flag - 5) < 3;
}
