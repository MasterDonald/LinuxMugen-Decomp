int GameAftImgArrayNew(int count, int aftimg_config)
{
    int array_handle;
    int i;
    int init_result;
    int local_aftimg_struct[31]; // 124 bytes (0x7c) matching aftimg structure size

    // Allocate a new array container for afterimage structures
    array_handle = ArrayNew(count, 0x7c, 0);
    if (array_handle == 0) {
        return 0;
    }

    // Initialize each afterimage structure in the array
    for (i = 0; i < count; i++) {
        // Clear local structure buffer (31 dwords = 124 bytes)
        for (int j = 0; j < 31; j++) {
            local_aftimg_struct[j] = 0;
        }

        // Initialize the afterimage struct
        init_result = AftImgInit(local_aftimg_struct, aftimg_config, 0, 0);
        if (init_result == 0) {
            GameAftImgArrayFree(array_handle);
            return 0;
        }

        // Add the initialized structure to the array container
        ArrayAdd(array_handle, local_aftimg_struct, 0, i);
    }

    return array_handle;
}
