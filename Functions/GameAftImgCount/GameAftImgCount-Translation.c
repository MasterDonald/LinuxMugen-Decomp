int GameAftImgCount(int array_handle)
{
    int active_count;
    int i;
    int element_count;
    int *item_ptr;

    active_count = 0;

    if (array_handle != 0) {
        element_count = *(int *)(array_handle + 0xc);

        // Iterate through all items in the array container
        for (i = 0; i < element_count; i++) {
            item_ptr = (int *)ArrayAccessGrpItem(array_handle, 0, i);

            // Check if the afterimage active flag/status at offset 0x8 is non-zero
            if (item_ptr != NULL && item_ptr[2] != 0) { // item_ptr[2] corresponds to offset 0x8 (2 * 4 bytes)
                active_count++;
            }
        }
    }

    return active_count;
}
