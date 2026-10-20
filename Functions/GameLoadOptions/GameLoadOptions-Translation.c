void GameLoadOptions(void)
{
    int cfg_handle = TPReadFile("data/mugen.cfg");
    if (cfg_handle == 0) {
        sprintf(g->scratch_error_buffer, "Error loading options");
        ErrorExit();
    }

    int group = TPGroupSeek(cfg_handle, "Options");
    if (group != -1) {
        TPGetValueInt(cfg_handle, "Difficulty", &g->engine.difficulty);
        TPGetValueInt(cfg_handle, "Life", &g->match.life_setting);
        TPGetValueInt(cfg_handle, "Time", &g->match.round_time_setting);
        TPGetValueInt(cfg_handle, "GameSpeed", &g->engine.gamespeed);
        TPGetValueInt(cfg_handle, "WavVolume", &g->audio.wav_volume);
        TPGetValueInt(cfg_handle, "MidiVolume", &g->audio.midi_volume);
        TPScanf(cfg_handle, "motif", "%s", g->files.motif_path);

        if (g->files.motif_path[0] == '\0') {
            memcpy(g->files.motif_path, "data/system.def", 0x10);
        }

        splitdirfile(g->files.motif_path, g->files.system_def_path, g->files.system_def_filename);
        TPGetValueInt(cfg_handle, "Team.1VS2Life", &g->match.team_1vs2_life);
        TPGetValueInt(cfg_handle, "Team.LoseOnKO", &g->match.team_lose_on_ko);
    }

    g->input.config_loaded_flag = 1;
    PlayerLoadKeys(cfg_handle, &g->input.p1_keys, "p1 keys");
    PlayerLoadKeys(cfg_handle, &g->input.p2_keys, "p2 keys");

    PlayerKeysRemoveZero(&g->input.p1_keys, 0x100);
    PlayerKeysRemoveZero(&g->input.p2_keys, 0x100);

    int input_group = TPGroupSeek(cfg_handle, "Input");
    if (input_group != -1) {
        TPGetValueInt(cfg_handle, "p1.joystick.type", &g->input.p1_joystick_type);
        TPGetValueInt(cfg_handle, "p2.joystick.type", &g->input.p2_joystick_type);
    }

    g->input.p1_device_id = g->input.p1_joystick_type;
    g->input.p1_pad_enabled = (g->input.p1_joystick_type != 0);
    g->input.p2_device_id = g->input.p2_joystick_type;
    g->input.p2_pad_enabled = (g->input.p2_joystick_type != 0);

    PlayerLoadKeys(cfg_handle, g->input.p1_default_pad_config, "P1 joystick");
    PlayerLoadKeys(cfg_handle, g->input.p2_default_pad_config, "P2 joystick");

    PlayerKeysRemoveZero(g->input.p1_default_pad_config, 0x80);
    PlayerKeysRemoveZero(g->input.p2_default_pad_config, 0x80);

    TPFree(cfg_handle);
    GameInitPads();

    if (GameInputSetup() == 0) {
        ErrorExitM("Cannot init input");
    }
}
