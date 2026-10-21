
bool GameModeInPassiveFightScreen(void)

{
    return *(int *)(g + 0xcedc) - 5U < 3;
}

