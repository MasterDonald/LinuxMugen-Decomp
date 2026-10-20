void GameSndPlayIDPos(int sound_id, int screen_x, int group, int item, int volume, int pan)
{
    int voice_handle;
    int pan_val;
    int freq;
    int adjusted_vol;

    // Verify master volume, sound group, pause state, and sound item validity
    if ((g->audio.master_volume != 0) && (group != 0) && (g->engine.sound_paused_flag == 0) && (item != -1)) {
        voice_handle = SndIDPrepare(sound_id, group, item, volume);
        if (voice_handle != -1) {
            // Calculate audio panning from screen position if enabled
            if (g->engine.screen_pan_enabled == 0) {
                pan_val = 0;
            } else {
                pan_val = ScrPositionToPan(screen_x);
            }

            // Correct panning volume offset and adjust with system WAV volume
            int corrected_vol = SndCorrectVolOff(pan);
            adjusted_vol = PanVolumeAdjust(corrected_vol + g->audio.wav_volume, pan_val);

            // Retrieve default voice frequency
            freq = SndVoiceGetFreq(voice_handle);

            // Configure voice properties and start playback
            SndVoiceSetVol(voice_handle, adjusted_vol);
            SndVoiceSetFreq(voice_handle, freq);
            SndVoiceSetPan(voice_handle, pan_val);
            SndVoiceSetLoop(voice_handle, 0);
            SndVoiceStart(voice_handle);
        }
    }
}
