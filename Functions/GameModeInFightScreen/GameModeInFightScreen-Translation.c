bool GameModeInFightScreen(void)
{
    // Check if the game mode configuration flag at offset 0xcedc falls within the active fight screen range [4, 7]
    return (unsigned int)(g->mode.fight_screen_mode_flag - 4) < 4;
}
