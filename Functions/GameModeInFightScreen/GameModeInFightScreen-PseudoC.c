
bool GameModeInFightScreen(void)

{
    return *(int *)(g + 0xcedc) - 4U < 4;
}

