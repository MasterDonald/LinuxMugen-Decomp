#include "game_types.h"

void GameInit(int argc, char* argv[]) {
    // 1. Initialize core system driver and memory allocation
    ElecInit();

    if (system_driver && system_driver->init_callback) {
        system_driver->init_callback("M.U.G.E.N");
    }

    g = (GlobalState*)ecalloc(1, sizeof(GlobalState));
    if (!g) {
        printf("Can't allocate game variables.\n\n");
        exit(1);
    }

    // 2. Read configuration file (mugen.cfg)
    if (!GameConfigRead(g, "data/mugen.cfg")) {
        char err_buf[512];
        snprintf(err_buf, sizeof(err_buf), "%s\nError reading data/mugen.cfg", g->scratch_error_buffer);
        ErrorExit(err_buf);
    }

    // 3. Parse command-line debug and logging options
    if (cmd_flag_debug) {
        g->engine.debug_mode = 1;
        g->engine.debug_flag1 = 0;
        g->engine.debug_flag2 = 0;
        g->engine.debug_flag3 = 0;
        g->engine.debug_flag4 = 0;
    }

    if (cmd_flag_logfile && cmd_logfile_path[0] != '\0') {
        g->system.logging_enabled = 1;
        strncpy(g->system.log_filepath, cmd_logfile_path, sizeof(g->system.log_filepath));
        FILE* log_fp = fopen(g->system.log_filepath, "wt");
        if (log_fp) {
            fclose(log_fp);
        }
    }

    // Copy match network and rule argument blocks (17 dwords)
    memcpy(g->match.net_arguments, cmd_net_args, sizeof(g->match.net_arguments));
    g->match.player_mode_flag = cmd_player_mode;
    g->match.ai_level_override = cmd_ai_level;
    g->match.team_mode_setting = cmd_team_mode;

    if (cmd_skip_intro) {
        g->system.skip_intro = 1;
    }

    // 4. Initialize Subsystems (Timer, Keyboard, Input)
    TimerInit(0xb4, 2, 0, 0);

    printf("Initializing keyboard.\n");
    KBInit();
    KBBufferChange(2);
    KBRepeatSet(0, 0);
    KBFilterRelease = 0;
    KBLEDLockSet(1);
    KBLEDSet(0);

    GameDefKeyInit();
    if (!UInpInit()) {
        ErrorExitM("Can't init input");
    }

    // 5. Initialize Audio Subsystem
    printf("Initializing sound...");
    if (cmd_sound_disabled) {
        g->audio.master_volume = 0;
        SndSetMode(0);
        printf("sound is disabled\n");
    }

    if (g->audio.master_volume != 0) {
        int snd_init_result = SndInit(g->audio.mix_rate, g->audio.buffer_size, g->audio.channels);
        if (!snd_init_result) {
            snd_init_result = SndInit(g->audio.mix_rate, g->audio.channels, 0);
            if (!snd_init_result) {
                snd_init_result = SndInit(g->audio.buffer_size, g->audio.channels, g->audio.mix_rate);
                if (!snd_init_result) {
                    g->audio.master_volume = 0;
                    SndSetMode(0);
                    printf("failed to init hardware.\n");
                } else {
                    printf("no wave device found.\n");
                }
            } else {
                printf("no midi device found.\n");
            }
        } else {
            SndSetMode(1);
            printf("ok\n");
        }
        ErrorSet(0);
        if (g->audio.mp3_enabled) {
            MP3Init();
        }
    }

    // 6. Initialize Graphics Subsystem & Video Modes
    printf("Initializing graphics.\n");
    if (!G_Init()) {
        ErrorExit();
    }
    if (!G_SetRenderMode(0)) {
        ErrorExit();
    }

    if (!G_SetMode(g->video.width, g->video.height, g->video.depth, g->video.fullscreen)) {
        if (g->video.width == 640 && g->video.height == 480 && g->video.depth == 16) {
            ErrorExit();
        } else {
            printf("\nError: Can't change video mode to %dx%dx%dbits\n", g->video.width, g->video.height, g->video.depth);
            printf("Switch to 640x480x16bits? (y/n)\n\n");
            fflush(stdout);
            KBBufferClear();

            unsigned int key;
            do {
                key = KBgetchraw();
            } while (key & 0x100);

            if (key != 0x15) {
                ErrorExit();
            }
            if (!G_SetMode(640, 480, 16, 0)) {
                ErrorExitM("Unable to initialize graphics");
            }
        }
    }

    if (g->video.depth == 32) {
        G_SetRGBtoBGR(1);
    }
    if (g->video.blit_mode != 0) {
        G_SetBlitMode(g->video.blit_mode, 1);
    }

    g->engine.initialized_flag = 1;
    SwitchCallbacksInit();

    if (!GameVarInit()) {
        ErrorExit();
    }

    // Working directory path normalization
    strcpy(g->system.working_dir, argv[0]);
    // Clean trailing slashes/backslashes
    // ...

    if (!GameVarLoadFonts()) {
        ErrorExit();
    }

    GameResetOptions();
    GameLoadOptions();

    if (cmd_speed_override > 0) {
        g->engine.gamespeed_override = cmd_speed_override;
    }
    if (cmd_mode_override >= -9 && cmd_mode_override <= 9) {
        g->engine.display_mode_override = cmd_mode_override;
    }

    // Parse and resolve system definition path (.def)
    if (cmd_custom_system_def[0] != '\0') {
        splitdirfile(cmd_custom_system_def, g->files.system_def_path, g->files.system_def_filename);
    }

    // 7. Load System Assets
    if (!GameLoadSystem(g)) {
        char err_msg[512];
        snprintf(err_msg, sizeof(err_msg), "\nError loading system data: %s%s", g->files.system_def_path, g->files.system_def_filename);
        ErrorExit(err_msg);
    }

    // 8. Finalize Audio Volume Settings
    GameSetVol(g->audio.midi_volume, -1);
}
