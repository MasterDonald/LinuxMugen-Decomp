#include "game_types.h"

int GameConfigRead(GlobalState* g, const char* config_path) {
    // Open configuration file (e.g., mugen.cfg)
    ConfigFile* cfg = ConfigOpen(config_path);
    if (!cfg) {
        PrintLog("Error: Failed to open configuration file: %s\n", config_path);
        return 0;
    }

    // 1. Core Rules & Multipliers (0x1cc74 range)
    g->system.game_type = ConfigReadInt(cfg, "Options", "GameType", 0);
    g->rules.attack_lifetopowermul = ConfigReadFloat(cfg, "Options", "DefaultAttackLifeToPowerMul", 1.0f);
    g->rules.gethit_lifetopowermul  = ConfigReadFloat(cfg, "Options", "DefaultGetHitLifeToPowerMul", 1.0f);
    g->rules.super_targetdefencemul = ConfigReadFloat(cfg, "Options", "SuperTargetDefenceMul", 1.0f);

    // 2. Engine & Video Limits (0x1d54c - 0x1d5e0)
    g->engine.gamespeed          = ConfigReadInt(cfg, "Options", "GameSpeed", 60);
    g->engine.draw_shadows       = ConfigReadInt(cfg, "Options", "DrawShadows", 1);
    g->engine.afterimage_max     = ConfigReadInt(cfg, "Limit", "AfterImageMax", 8);
    g->engine.layered_sprite_max = ConfigReadInt(cfg, "Limit", "LayeredSpriteMax", 200);
    g->engine.explod_max         = ConfigReadInt(cfg, "Limit", "ExplodMax", 256);
    g->engine.helper_max         = ConfigReadInt(cfg, "Limit", "HelperMax", 56);

    // Video Resolution & Display Settings
    g->video.width      = ConfigReadInt(cfg, "Video", "Width", 640);
    g->video.height     = ConfigReadInt(cfg, "Video", "Height", 480);
    g->video.depth      = ConfigReadInt(cfg, "Video", "Depth", 16);
    g->video.fullscreen = ConfigReadInt(cfg, "Video", "Fullscreen", 0);
    g->video.blit_mode  = ConfigReadInt(cfg, "Video", "BlitMode", 0);

    // 3. Audio & Sound Subsystem (0x1bbcc - 0x1bbe4)
    g->audio.master_volume    = ConfigReadInt(cfg, "Sound", "MasterVolume", 100);
    g->audio.wav_volume       = ConfigReadInt(cfg, "Sound", "WAVVolume", 100);
    g->audio.midi_volume      = ConfigReadInt(cfg, "Sound", "MIDIVolume", 100);
    g->audio.mp3_volume       = ConfigReadInt(cfg, "Sound", "MP3Volume", 100);
    g->audio.mod_volume       = ConfigReadInt(cfg, "Sound", "MODVolume", 100);
    g->audio.cd_volume        = ConfigReadInt(cfg, "Sound", "CDVolume", 100);
    g->audio.stereo_panning   = ConfigReadInt(cfg, "Sound", "StereoPanning", 1);

    // 4. Input & Key Configurations (0x1ce24 & 0x1cc84 / 0x1ccb8)
    g->input.config.joystick_enabled = ConfigReadInt(cfg, "KeyConfig", "Joystick", 0);
    g->input.config.force_feedback   = ConfigReadInt(cfg, "KeyConfig", "ForceFeedback", 0);

    LoadPlayerKeyConfig(cfg, "KeyConfig", &g->input.p1_keys, 1);
    LoadPlayerKeyConfig(cfg, "KeyConfig", &g->input.p2_keys, 2);

    ConfigClose(cfg);
    return 1;
}
