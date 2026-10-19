void GameUnloadSystemSprSnd(void)
{
    // Free system background element and layer arrays sequentially
    BGArrayFree(g->assets.system_bg_array_4);
    g->assets.system_bg_array_4 = 0;

    BGArrayFree(g->assets.system_bg_array_3);
    g->assets.system_bg_array_3 = 0;

    BGArrayFree(g->assets.system_bg_array_1);
    g->assets.system_bg_array_1 = 0;

    BGArrayFree(g->assets.system_bg_array_2);
    g->assets.system_bg_array_2 = 0;

    // Free primary sprite container (.sff) and clear its handle pointer
    SpriteArrayFree(g->assets.spr);
    g->assets.spr = 0;
}
