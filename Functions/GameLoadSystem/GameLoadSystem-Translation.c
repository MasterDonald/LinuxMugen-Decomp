#include "game_types.h"

int GameLoadSystem(GlobalState* g) {
    PrintLog("Initializing system asset loading...\n");

    // 1. Load System Paths & Script Files
    ConfigReadString(g->config_handle, "Files", "select", "data/select.def", g->files.select_def, sizeof(g->files.select_def));
    ConfigReadString(g->config_handle, "Files", "logo.storyboard", "", g->files.logo_storyboard, sizeof(g->files.logo_storyboard));
    ConfigReadString(g->config_handle, "Files", "intro.storyboard", "", g->files.intro_storyboard, sizeof(g->files.intro_storyboard));

    // 2. Load Core Containers (Sprites & Sounds)
    char system_sff_path[256];
    ConfigReadString(g->config_handle, "Files", "system", "data/system.sff", system_sff_path, sizeof(system_sff_path));

    g->assets.spr = SffLoad(system_sff_path);
    if (!g->assets.spr) {
        PrintLog("Fatal Error: Failed to load system sprite container: %s\n", system_sff_path);
        return 0;
    }

    char system_snd_path[256];
    ConfigReadString(g->config_handle, "Files", "snd", "data/system.snd", system_snd_path, sizeof(system_snd_path));

    g->assets.snd = SndLoad(system_snd_path);
    if (!g->assets.snd) {
        PrintLog("Warning: Failed to load system sound container: %s\n", system_snd_path);
        // Non-fatal, continue loading
    }

    // 3. Load Global Animation Script (AIR)
    char system_air_path[256];
    ConfigReadString(g->config_handle, "Files", "air", "data/system.air", system_air_path, sizeof(system_air_path));

    g->assets.air = AirLoad(system_air_path);
    if (!g->assets.air) {
        PrintLog("Fatal Error: Failed to load global animation script: %s\n", system_air_path);
        return 0;
    }

    // 4. Load Font Handles Array (Fonts 0 through 9)
    for (int i = 0; i < 10; i++) {
        char font_key[32];
        snprintf(font_key, sizeof(font_key), "font%d", i);

        char font_path[256];
        if (ConfigReadString(g->config_handle, "Files", font_key, "", font_path, sizeof(font_path)) && font_path[0] != '\0') {
            g->assets.fonts[i] = FontLoad(font_path);
        } else {
            g->assets.fonts[i] = NULL;
        }
    }

    PrintLog("System assets successfully loaded.\n");
    return 1;
}
