void GameFreeFightData(void)
{
    int i;
    int font_handle;

    // Free loaded match font handles (protecting the primary system font handle)
    for (i = 0; i < 10; i++) {
        font_handle = (int)g->match.fonts[i];
        if (font_handle != g->assets.font_handle_1) {
            FontFree(font_handle);
        }
    }

    // Free animation script and sprite containers for match data
    AnimRCFree(g->match.anim);
    SpriteArrayFree(*(int *)((char *)g + 0x10524));

    // Free common and fight sound containers
    SndArrayFree(g->match.common_snd);
    SndArrayFree(g->match.fight_snd);

    // Free fight FX sprite and animation containers
    SpriteArrayFree(g->match.fightfx_spr);
    AnimRCFree((int)g->match.fightfx_air);

    // Free Player 1 and Player 2 active explod array containers
    ExplodArrayFree(g->assets.p2_explod_array_handle);
    ExplodArrayFree(g->assets.p1_explod_array_handle);
}
