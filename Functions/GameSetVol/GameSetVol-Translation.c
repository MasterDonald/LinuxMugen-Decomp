int GameSetVol(int sound_vol, int midi_vol)
{
    // Scale sound effect volume if specified
    if (sound_vol != -1) {
        sound_vol = (sound_vol * g->audio.wav_volume) / 100;
    }

    // Scale MIDI music volume if specified
    if (midi_vol != -1) {
        midi_vol = (midi_vol * g->audio.midi_volume) / 100;
    }

    // If master volume is disabled (0), bypass sound server update and return sound volume
    if (g->audio.master_volume == 0) {
        return sound_vol;
    }

    // Apply final volumes via the audio subsystem
    return SndSetVol(sound_vol, midi_vol);
}
