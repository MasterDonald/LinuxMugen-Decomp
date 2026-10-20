void GameSaveOptions(void)
{
    int cfg_handle = TPReadFileForWrite("data/mugen.cfg");
    if (cfg_handle == 0) {
        sprintf(g->scratch_error_buffer, "Error saving options");
        ErrorExit();
    }

    int group = TPGroupSeek(cfg_handle, "Options");
    if (group != -1) {
        TPPrintf(cfg_handle, "Difficulty", "%d", g->engine.difficulty);
        TPPrintf(cfg_handle, "Life", "%d", g->match.life_setting);
        TPPrintf(cfg_handle, "Time", "%d", g->match.round_time_setting);
        TPPrintf(cfg_handle, "GameSpeed", "%d", g->engine.gamespeed);
        TPPrintf(cfg_handle, "WavVolume", "%d", g->audio.wav_volume);
        TPPrintf(cfg_handle, "MidiVolume", "%d", g->audio.midi_volume);
        TPPrintf(cfg_handle, "Team.1VS2Life", "%d", g->match.team_1vs2_life);
        TPPrintf(cfg_handle, "Team.LoseOnKO", "%d", g->match.team_lose_on_ko);
    }

    int input_group = TPGroupSeek(cfg_handle, "Input");
    if (input_group != -1) {
        TPPrintf(cfg_handle, "p1.joystick.type", "%d", g->input.p1_joystick_type);
        TPPrintf(cfg_handle, "p2.joystick.type", "%d", g->input.p2_joystick_type);
    }

    int temp_key_buf[19];
    int i;

    // Save Player 1 keys
    for (i = 0; i < 0xd; i++) {
        temp_key_buf[i] = g->input.p1_keys[i];
    }
    PlayerKeysConvertToZero(temp_key_buf, 0x100);
    PlayerSaveKeys(cfg_handle, temp_key_buf, "p1 keys");

    // Save Player 2 keys
    for (i = 0; i < 0xd; i++) {
        temp_key_buf[i] = g->input.p2_keys[i];
    }
    PlayerKeysConvertToZero(temp_key_buf, 0x100);
    PlayerSaveKeys(cfg_handle, temp_key_buf, "p2 keys");

    // Save Player 1 joystick configuration
    for (i = 0; i < 0xd; i++) {
        temp_key_buf[i] = g->input.p1_default_pad_config[i];
    }
    PlayerKeysConvertToZero(temp_key_buf, 0x80);
    PlayerSaveKeys(cfg_handle, temp_key_buf, "p1 joystick");

    // Save Player 2 joystick configuration
    for (i = 0; i < 0xd; i++) {
        temp_key_buf[i] = g->input.p2_default_pad_config[i];
    }
    PlayerKeysConvertToZero(temp_key_buf, 0x80);
    PlayerSaveKeys(cfg_handle, temp_key_buf, "p2 joystick");

    if (TPWriteFile(cfg_handle, "data/mugen.cfg") == 0) {
        sprintf(g->scratch_error_buffer, "Error saving options");
        ErrorExit();
    }

    TPFree(cfg_handle);
}
