
void GameNextRound(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int iVar6;
    int local_1c;

    iVar6 = 0;
    *(int *)(g + 0x1d418) = *(int *)(g + 0x1d418) + 1;
    local_1c = 0;
    do {
        iVar3 = GameRoundWinner();
        if (iVar3 != iVar6 + 1) {
            iVar3 = local_1c + g;
            if (*(int *)(iVar3 + 0xcee0) + 1 < *(int *)(iVar3 + 0xcee4)) {
                W_Cls(0);
                FrameSkipReset();
                DrawToScreen();
                *(int *)(iVar3 + 0xcee0) = *(int *)(iVar3 + 0xcee0) + 1;
                TeamReorderAll(iVar6);
                GameLoadAndActivateTeam(iVar6);
            }
            iVar1 = local_1c + g;
            iVar3 = *(int *)(iVar1 + 0xcee0) * 0x17;
            iVar2 = iVar1 + 0xceec + *(int *)(iVar1 + 0xcee0) * 0x5c;
            iVar4 = 0;
            if (0 < *(int *)(iVar2 + 8)) {
                do {
                    iVar5 = iVar4 + 1;
                    iVar4 = *(int *)(g + 0x1cf64 + *(int *)(iVar2 + 0xc + iVar4 * 0x14) * 4);
                    iVar3 = (int)ROUND((float)*(int *)(iVar4 + 0x50) * *(float *)(iVar1 + 0xe96c));
                    *(int *)(iVar4 + 0x164) = iVar3;
                    *(int *)(iVar4 + 0x16c) = iVar3;
                    *(int *)(iVar4 + 0x168) = iVar3;
                    *(int *)(iVar4 + 0x160) = iVar3;
                    iVar4 = iVar5;
                } while (iVar5 < *(int *)(iVar2 + 8));
            }
        }
        iVar6 = iVar6 + 1;
        local_1c = local_1c + 0x1a9c;
    } while (iVar6 < 2);
    if (*(int *)(g + 0xced0) != 0) {
        SurvivalBuildRandomTeam
        (g + 0xcee0 + (2 - *(int *)(g + 0xced0)) * 0x1a9c,2 - *(int *)(g + 0xced0),0,iVar3);
    }
    GameRoundReset();
    FrameSkipReset();
    return;
}

