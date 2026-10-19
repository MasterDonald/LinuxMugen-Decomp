void GameReloadSystemSprSnd(void)
{
    char path_buffer[4104];
    int tp_handle;

    // Reload primary sprite container (.sff) if unallocated and filename is provided
    if (g->assets.spr == NULL && g->assets.spr_filename[0] != '\0') {
        g->assets.spr = SpriteReadFile(g->assets.spr_filename);
        if (g->assets.spr == NULL) {
            ErrorExitM("Out of memory loading system file %s", g->assets.spr_filename);
        }
    }

    // Reload primary sound container (.snd) if unallocated and filename is provided
    if (g->assets.snd == NULL && g->assets.snd_filename[0] != '\0') {
        g->assets.snd = SndReadFile(g->assets.snd_filename);
        if (g->assets.snd == NULL) {
            ErrorExitM("Out of memory loading system file %s", g->assets.snd_filename);
        }
    }

    // Check if any system background element arrays are missing and require reloading
    if (g->assets.system_bg_array_2 == 0 ||
        g->assets.system_bg_array_1 == 0 ||
        g->assets.system_bg_array_3 == 0 ||
        g->assets.system_bg_array_4 == 0)
    {
        // Construct full path to system definition file
        joindirfile(path_buffer, g->files.system_def_path, g->files.system_def_filename);

        // Parse the system configuration file
        tp_handle = TPReadFile(path_buffer);
        if (tp_handle == 0) {
            ErrorExitM("Out of memory loading system file %s", g->files.system_def_filename);
        }

        // Reload TitleBG background elements if missing
        if (g->assets.system_bg_array_2 == 0) {
            g->assets.system_bg_array_2 = BGArrayReadTP(tp_handle, g->files.system_def_path, "TitleBG", g->assets.spr, g->assets.air);
            if (g->assets.system_bg_array_2 == 0) {
                ErrorExitM("Error reloading TitleBG");
            }
        }

        // Reload VersusBG background elements if missing
        if (g->assets.system_bg_array_1 == 0) {
            g->assets.system_bg_array_1 = BGArrayReadTP(tp_handle, g->files.system_def_path, "VersusBG", g->assets.spr, g->assets.air);
            if (g->assets.system_bg_array_1 == 0) {
                ErrorExitM("Error reloading VersusBG");
            }
        }

        // Reload SelectBG background elements if missing
        if (g->assets.system_bg_array_3 == 0) {
            g->assets.system_bg_array_3 = BGArrayReadTP(tp_handle, g->files.system_def_path, "SelectBG", g->assets.spr, g->assets.air);
            if (g->assets.system_bg_array_3 == 0) {
                ErrorExitM("Error reloading SelectBG");
            }
        }

        // Reload OptionBG background elements if missing
        if (g->assets.system_bg_array_4 == 0) {
            g->assets.system_bg_array_4 = BGArrayReadTP(tp_handle, g->files.system_def_path, "OptionBG", g->assets.spr, g->assets.air);
            if (g->assets.system_bg_array_4 == 0) {
                ErrorExitM("Error reloading OptionBG");
            }
        }

        // Free the parsed text file structure handler
        TPFree(tp_handle);
    }
}
