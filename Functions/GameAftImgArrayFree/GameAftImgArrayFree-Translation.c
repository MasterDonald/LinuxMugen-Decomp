int GameAftImgArrayFree(int array_handle)
{
    int i;
    int element_count;
    void *item_ptr;
    int free_result = 0;

    if (array_handle != 0) {
        element_count = *(int *)(array_handle + 0xc);

        // Deinitialize each afterimage structure stored in the array
        for (i = 0; i < element_count; i++) {
            item_ptr = (void *)ArrayAccessGrpItem(array_handle, 0, i);
            if (item_ptr != NULL) {
                AftImgDeInit(item_ptr);
            }
        }

        // Free the array container itself
        free_result = ArrayFree(array_handle);
    }

    return free_result;
}
