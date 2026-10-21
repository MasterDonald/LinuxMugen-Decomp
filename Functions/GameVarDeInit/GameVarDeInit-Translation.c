void GameVarDeInit(void)
{
    // Check if the global engine context pointer is allocated
    if (g != NULL) {
        // Release system font handles
        FontFree(g->assets.font_handle_1);
        FontFree(g->assets.font_handle_2);

        // Deinitialize input/event circular buffer
        IntCircBufDeInit(&g->input.circ_buf);

        // Free player 1 explod array memory block
        free((void *)g->assets.p1_explod_array_handle);

        // Free primitive sprite array container
        PRSprArrayFree(g->assets.pr_sprite_handle);

        // Free afterimage container and scale group handles
        GameAftImgArrayFree(g->assets.afterimage_container_handle);
        AnimPerArrayFree(g->assets.scale_group_handle);

        // Deallocate video surfaces and extra buffers if active
        V_DeAlloc(g->video.primary_surface_handle);
        if (g->video.surface_extra_handle != 0) {
            V_DeAlloc(g->video.surface_extra_handle);
        }
        if (g->video.secondary_surface_handle != 0) {
            V_DeAlloc(g->video.secondary_surface_handle);
        }

        // Free system clipboard resource if allocated
        if (g->system.clipboard_handle != 0) {
            ClipboardFree(g->system.clipboard_handle);
        }

        // Free the main global game structure memory and nullify pointer
        free(g);
        g = NULL;
    }
}
