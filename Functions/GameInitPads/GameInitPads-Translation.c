void GameInitPads(void)
{
    int i;

    // Copy Player 1 default pad configuration to active configuration (13 elements)
    for (i = 0; i < 0xd; i++) {
        g->input.p1_pad_config[i] = g->input.p1_default_pad_config[i];
    }

    // Copy Player 2 default pad configuration to active configuration (13 elements)
    for (i = 0; i < 0xd; i++) {
        g->input.p2_pad_config[i] = g->input.p2_default_pad_config[i];
    }

    // If Player 1 pad is disabled (0), clear configuration and sanitize zero key codes
    if (g->input.p1_pad_enabled == 0) {
        for (i = 0; i < 0xd; i++) {
            g->input.p1_pad_config[i] = 0;
        }
        PlayerKeysRemoveZero(g->input.p1_pad_config, 0x80, 0, 0);
    }

    // If Player 2 pad is disabled (0), clear configuration and sanitize zero key codes
    if (g->input.p2_pad_enabled == 0) {
        for (i = 0; i < 0xd; i++) {
            g->input.p2_pad_config[i] = 0;
        }
        PlayerKeysRemoveZero(g->input.p2_pad_config, 0x80, 0, 0);
    }

    // Deinitialize existing hardware pads if previously installed
    if (PadInstalled != 0) {
        PadDeInit();
    }

    // Initialize controller devices if active and team mode is standard/single
    if ((g->input.p1_pad_enabled != 0 || g->input.p2_pad_enabled != 0) && (g->match.team_mode_setting == 0)) {
        int device_id = (g->input.p1_pad_enabled == 0) ? g->input.p2_device_id : g->input.p1_device_id;

        if (device_id == 0x16) {
            DeviceInit(0x16, &g->input.device_config, g->input.p1_pad_enabled, g->input.p1_pad_enabled);
        }

        int init_result = PadInit(device_id, g->input.p1_pad_enabled == 0, 0, 0);
        if (init_result == 0) {
            g->input.p2_pad_enabled = 0;
            g->input.p1_pad_enabled = 0;
        }
    }

    // Reinitialize user input subsystem and verify success
    if (UInpReInit() == 0) {
        ErrorExitM("Can't init input");
    }
}
