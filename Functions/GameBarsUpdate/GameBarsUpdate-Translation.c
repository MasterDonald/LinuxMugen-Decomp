void GameBarsUpdate(void)
{
    int p1_entity = g->match.hud_entity_p1;
    int p2_entity = g->match.hud_entity_p2;
    int helper_entity_1 = g->match.hud_entity_helper1;
    int helper_entity_2 = g->match.hud_entity_helper2;

    // Update life bars for primary player entities
    GameLifeBarUpdate(p1_entity);
    GameLifeBarUpdate(p2_entity);

    // Update life bars for secondary or helper entities if active
    if (helper_entity_1 != 0) {
        GameLifeBarUpdate(helper_entity_1);
    }
    if (helper_entity_2 != 0) {
        GameLifeBarUpdate(helper_entity_2);
    }

    // Update power bars for primary player entities
    GamePowerBarUpdate(p1_entity);
    GamePowerBarUpdate(p2_entity);
}
