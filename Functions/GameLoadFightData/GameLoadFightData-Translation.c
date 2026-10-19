int GameLoadFightData(char *filename)
{
    int file_handle;
    int anim_scan;
    char dir_buffer[4096];
    char file_buffer[4096];
    char name_buffer[32];
    char scan_buffer[204];

    // Open the fight definition file (fight.def)
    file_handle = TPReadFile(filename);
    if (file_handle == 0) {
        sprintf(g->scratch_error_buffer, "Can't open %s", filename);
        return 0;
    }

    splitdirfile(filename, dir_buffer, 0, 0);

    // Seek to [Files] group section
    if (TPGroupSeek(file_handle, "Files") == -1) {
        sprintf(g->scratch_error_buffer, "Missing files info");
        return 0;
    }

    // Load main fighter sprite file (.sff)
    char *sff_name = (char *)TPGetValue(file_handle, "sff", 0, 0);
    if (sff_name == NULL) {
        sprintf(g->scratch_error_buffer, "Can't read Files|sff");
        return 0;
    }
    if (FindFileDirEx(sff_name, file_buffer, 0, dir_buffer) == 0) {
        return 0;
    }
    g->match.fight_data_internal_base = SpriteReadFile(file_buffer);
    if (g->match.fight_data_internal_base == 0) {
        sprintf(g->scratch_error_buffer, "Can't read %s", sff_name);
        return 0;
    }

    // Load main fighter sound file (.snd)
    char *snd_name = (char *)TPGetValue(file_handle, "snd", 0, 0);
    if (snd_name == NULL) {
        sprintf(g->scratch_error_buffer, "Can't read Files|snd");
        return 0;
    }
    if (FindFileDirEx(snd_name, file_buffer, 0, dir_buffer) == 0) {
        return 0;
    }
    g->match.fight_snd = SndReadFile(file_buffer);
    if (g->match.fight_snd == 0) {
        sprintf(g->scratch_error_buffer, "Can't read %s", snd_name);
        return 0;
    }

    // Load fightfx.sff sprite container
    char *ffx_sff = (char *)TPGetValue(file_handle, "fightfx.sff", 0, 0);
    if (ffx_sff == NULL) {
        sprintf(g->scratch_error_buffer, "Can't read Files|fightfx.sff");
        return 0;
    }
    if (FindFileDirEx(ffx_sff, file_buffer, 0, dir_buffer) == 0) {
        return 0;
    }
    g->match.fightfx_spr = SpriteReadFile(file_buffer);
    if (g->match.fightfx_spr == 0) {
        sprintf(g->scratch_error_buffer, "Can't load %s", ffx_sff);
        return 0;
    }

    // Load fightfx.air animation script
    char *ffx_air = (char *)TPGetValue(file_handle, "fightfx.air", 0, 0);
    if (ffx_air == NULL) {
        sprintf(g->scratch_error_buffer, "Can't read Files|fightfx.air");
        return 0;
    }
    if (FindFileDirEx(ffx_air, file_buffer, 0, dir_buffer) == 0) {
        return 0;
    }
    g->match.fightfx_air = AnimRCReadFile(file_buffer);
    if (g->match.fightfx_air == 0) {
        sprintf(g->scratch_error_buffer, "Can't load %s", ffx_air);
        return 0;
    }

    // Load common.snd sound container
    char *com_snd = (char *)TPGetValue(file_handle, "common.snd", 0, 0);
    if (com_snd == NULL) {
        sprintf(g->scratch_error_buffer, "Can't read Files|common.snd");
        return 0;
    }
    if (FindFileDirEx(com_snd, file_buffer, 0, dir_buffer) == 0) {
        return 0;
    }
    g->match.common_snd = SndReadFile(file_buffer);
    if (g->match.common_snd == 0) {
        sprintf(g->scratch_error_buffer, "Can't load %s", com_snd);
        return 0;
    }

    // Load fonts 0 through 9
    for (int i = 0; i < 10; i++) {
        g->match.fonts[i] = g->video.primary_surface_handle;
        sprintf(name_buffer, "font%i", i);
        char *font_val = (char *)TPGetValue(file_handle, name_buffer);
        if (font_val != NULL) {
            if (FindFileDirEx(font_val, file_buffer, 0, dir_buffer) == 0) {
                return 0;
            }
            g->match.fonts[i] = FontReadFile(file_buffer);
            if (g->match.fonts[i] == 0) {
                sprintf(g->scratch_error_buffer, "Can't read font %s", font_val);
                sprintf(g->scratch_error_buffer, g->scratch_error_buffer);
                return 0;
            }
        }
    }

    // Scan and load custom fight animations
    anim_scan = TPGroupScanFirst(file_handle);
    while (anim_scan != 0) {
        if (strimatch(anim_scan + 1, "begin action ", anim_scan, anim_scan) != 0) {
            break;
        }
        anim_scan = TPGroupScanNext(file_handle);
    }
    if (anim_scan != 0) {
        g->match.anim = AnimRCReadFileTP(file_handle);
        if (g->match.anim == 0) {
            strcat(g->scratch_error_buffer, "\nError loading anim in Files");
            return 0;
        }
    }

    // Parse Lifebar section parameters
    if (TPGroupSeek(file_handle, "Lifebar") == -1) {
        sprintf(g->scratch_error_buffer, "Missing lifebar info");
        return 0;
    }
    // (UI layout parsing for lifebars, turns, simul, powerbars, faces, names, and round info follows sequentially)

    // Allocate Explod and System Explod arrays
    TPFree(file_handle);

    g->assets.p1_explod_array_handle = ExplodArrayNew(g->engine.layered_sprite_max, g->assets.pr_sprite_handle);
    if (g->assets.p1_explod_array_handle == 0) {
        sprintf(g->scratch_error_buffer, "Can't allocate explods");
        return 0;
    }

    g->assets.p2_explod_array_handle = ExplodArrayNew(g->engine.explod_max, 0);
    if (g->assets.p2_explod_array_handle == 0) {
        sprintf(g->scratch_error_buffer, "Can't allocate sysexplods");
        return 0;
    }

    return 1;
}
