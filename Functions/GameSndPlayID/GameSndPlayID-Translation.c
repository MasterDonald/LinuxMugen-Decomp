void GameSndPlayID(int sound_id, int group, int item, int volume, int pan)
{
    // Apply volume panning and offset correction
    int corrected_vol = SndCorrectVolOff(pan);

    // Add master WAV volume configuration offset
    corrected_vol += g->audio.wav_volume;

    // Clamp volume bounds between 0 and 255 (0xFF)
    if (corrected_vol > 0xff) {
        corrected_vol = 0xff;
    }
    if (corrected_vol < 0) {
        corrected_vol = 0;
    }

    // Check if master audio is enabled, group is valid, sound is not paused, and item is specified
    if ((g->audio.master_volume != 0) && (group != 0) && (g->engine.sound_paused_flag == 0) && (item != -1)) {
        SndIDPlay(sound_id, group, item, volume, corrected_vol);
    }
}
