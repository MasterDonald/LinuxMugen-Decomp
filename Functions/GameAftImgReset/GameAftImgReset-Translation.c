void GameAftImgReset(int array_handle)
{
    int i;
    int element_count;
    int *item_ptr;

    if (array_handle != 0) {
        element_count = *(int *)(array_handle + 0xc);

        // Iterate through all items in the array container and reset their states
        for (i = 0; i < element_count; i++) {
            item_ptr = (int *)ArrayAccessGrpItem(array_handle, 0, i);
            if (item_ptr != NULL) {
                item_ptr[6] = 0; // Offset 0x18 (6 * 4 bytes) - reset timer/parameter
                item_ptr[2] = 0; // Offset 0x8  (2 * 4 bytes) - reset active status flag
            }
        }
    }
}
