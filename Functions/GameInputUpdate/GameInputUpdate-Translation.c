int GameInputUpdate(void)
{
    int key_val = 0;
    int pad_val = 0;
    int is_paused = 0;
    int i, p_ptr;

    // Check pause and menu states
    if (*(int *)(g + 0x2072c) != 0 || *(int *)(g + 0x2073c) != 0) {
        is_paused = 1;
    }
    *(int *)(g + 0x1cc24) = (int)keypauseflag;

    // Poll hardware inputs
    PadPoll();
    KBPoll();
    if (KBkbhit() != 0) {
        key_val = KBgetchraw();
    }
    if (PadHit() != 0) {
        pad_val = PadGet();
    }

    GlobalInputUpdate();
    IntCircBufClear();

    // Process training menu inputs while active
    while (TrainingMenuUpdate() != 0) {
        keypauseflag = '\0';
        if (UInpHit() == 0) break;
        UInpGet();
        IntCircBufStuff();
    }

    if (key_val == 1) {
        *(int *)(g + 0x104d4) = 1;
    }

    // Handle debug and training shortcuts
    if (*(int *)(g + 0x1d3a0) != 0) {
        if ((key_val != 0 && (key_val & 0x100) == 0 && key_val != 0x46) ||
            (pad_val != 0 && (pad_val & 0x100) == 0)) {
            *(int *)(g + 0x104d4) = 1;
        *(int *)(g + 0x20b48) = 0;
            }
    }

    // Process debug key commands when paused or stepping frames
    if (is_paused) {
        // Key 0x39 ('9' or similar debug toggle)
        if (key_val == 0x39 || DAT_082c0a99 != '\0') {
            int min_idx = *(int *)(g + 0x1d164);
            int max_idx = *(int *)(g + 0x1d168);
            if (min_idx <= max_idx) {
                int *p_entry = (int *)(min_idx * 4 + 0x1cf60);
                for (i = min_idx; i <= max_idx; i++) {
                    p_ptr = *(int *)((char *)p_entry + 4 + g);
                    if (p_ptr != 0 && *(int *)(p_ptr + 0x158) != 0 && *(int *)(p_ptr + 0x1c) == 0) {
                        if (*(int *)(*(int *)p_entry + 0xbf4) == 0x141e) {
                            PlayerChangeState();
                        }
                        *(int *)(p_ptr + 0x160) = *(int *)(p_ptr + 0x164);
                        *(int *)(p_ptr + 0xe24) = 1;
                        *(int *)(p_ptr + 0x198) = 1;
                        *(int *)(p_ptr + 0x1010) = 0;
                        *(int *)(p_ptr + 0x100c) = 0;
                        **(int **)(p_ptr + 0x170) = **(int **)(p_ptr + 0x174);
                    }
                    p_entry++;
                }
            }
        }

        // Handle life reset and state shortcuts
        if (key_val == 0x3b) {
            if (DAT_082c0afd == '\0' && DAT_082c0a7d == '\0') {
                PlayerLifeSet();
            } else {
                PlayerLifeSet();
            }
        }
        if (key_val == 0x3f) {
            *(int *)(g + 0x1d454) = 1;
        }
        if (key_val == 0x42) {
            ClipboardClear();
        }
    }

    // Handle frame stepping and screenshot flags
    if (framestep.0 != '\0') {
        framestep.0 = '\0';
        keypauseflag = '\x01';
    }

    if (*(int *)(g + 0x1d388) == 1) {
        ScreenSnap();
        *(int *)(g + 0x1d388) = 0;
    }
    if (key_val == 0x58) {
        if (*(int *)(g + 0x1cc24) == 0) {
            ScreenSnap();
        } else {
            *(int *)(g + 0x1d388) = 1;
        }
    }

    return 0;
}
