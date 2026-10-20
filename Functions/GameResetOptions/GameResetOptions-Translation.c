void GameResetOptions(void)
{
    // Reset engine difficulty to default level (4)
    g->engine.difficulty = 4;

    // Reset match life setting to default percentage (100)
    g->match.life_setting = 100;

    // Reset round time limit setting to default (99)
    g->match.round_time_setting = 99;

    // Reset game speed governor setting to default (0)
    g->engine.gamespeed = 0;

    // Reset sound effect (WAV) volume to default level (50)
    g->audio.wav_volume = 50;

    // Reset MIDI music volume to default level (50)
    g->audio.midi_volume = 50;
}
