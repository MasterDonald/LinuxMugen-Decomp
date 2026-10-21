void GameFGDraw(void)
{
    // Render the foreground background layers (layer 1) using the active background array handle
    BGArrayDrawLayer(g->stage.bg_array_handle, 1);
}
