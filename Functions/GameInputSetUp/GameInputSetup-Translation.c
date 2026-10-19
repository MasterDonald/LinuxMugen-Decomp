bool GameInputSetup(void)
{
    int *piVar2;
    int iVar3;
    int iVar4;
    int iVar6;
    int iVar7;
    bool success;
    int local_644;
    int local_640;
    int *local_63c;
    int (*key_conv_func)(int);
    int device_idx;
    int config_pass;
    undefined4 key_map_buffer[383];
    int local_30[8];

    // Initialize temporary stack markers
    iVar6 = 0x17f;
    piVar2 = local_30;
    do {
        *piVar2 = iVar6;
        piVar2 = piVar2 - 1;
        iVar6 = iVar6 - 1;
    } while (-1 < iVar6);

    device_idx = 0;
    do {
        // Select conversion function based on device type (0 = Keyboard, 1 = Pad)
        if (device_idx == 0) {
            key_conv_func = KBToUInp;
        } else {
            key_conv_func = PadToUInp;
        }

        config_pass = 0;
        local_63c = (int *)&DefaultKeyCfg;
        local_640 = 0;
        local_644 = 0;

        do {
            int target_offset;
            if (device_idx == 0) {
                target_offset = local_644 + g->config.keyboard_cfg_base;
            } else {
                target_offset = local_640 + g->config.pad_cfg_base;
            }

            iVar7 = 0;
            do {
                iVar4 = KeyCfgToKBIMap[iVar7];
                iVar3 = key_conv_func(*(int *)(iVar4 * 4 + target_offset));

                // Assert bounds safety for input mapping indices
                if (iVar3 > 0x180) {
                    __assert_fail(
                        "KeyConvFunc(key_pad->sc[KeyCfgToKBIMap[i]]) < ((0x20*4)+256)+1",
                                  "src/mugen/init.c", 0x254, "GameInputSetup"
                    );
                }

                iVar4 = key_conv_func(*(int *)(iVar4 * 4 + target_offset));
                int default_key = local_63c[iVar7];
                iVar7 = iVar7 + 1;

                key_map_buffer[iVar4] = KBToUInp(default_key);
            } while (iVar7 < 11);

            config_pass = config_pass + 1;
            local_63c = local_63c + 11;
            local_640 = local_640 + 0x34;
            local_644 = local_644 + 0x34;
        } while (config_pass < 2);

        device_idx = device_idx + 1;
    } while (device_idx < 2);

    // Apply key configuration mapping to the engine
    if (UInpSetKeyMap(key_map_buffer) == 0) {
        success = false;
    } else {
        success = (UInpReInit() != 0);
    }

    return success;
}
