void GameDefKeyInit(void)
{
    int player;
    int key;
    char *dest_base = (char *)g + 0x1ccec;

    // Iterate over both players (Player 1 and Player 2)
    for (player = 0; player < 2; player++) {
        // Populate 11 default key mapping entries per player
        for (key = 0; key < 11; key++) {
            int kb_map = KeyCfgToKBIMap[key];
            int default_key = DefaultKeyCfg[player * 11 + key];

            // Assign default key code to the corresponding player input config offset
            *(int *)(dest_base + kb_map * 4) = default_key;
        }
        // Advance to the next player's configuration block (52 bytes / 0x34)
        dest_base += 0x34;
    }
}
