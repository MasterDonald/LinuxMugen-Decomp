
void GameLoadAndActivateTeam(int param_1)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    undefined4 *puVar5;
    int iVar6;
    undefined4 *puVar7;

    iVar6 = -1;
    iVar4 = param_1 * 4 + 0x1cf64;
    iVar1 = g + param_1 * 0x1a9c;
    iVar2 = *(int *)(iVar1 + 0xcee0);
    PalGrpClear();
    iVar3 = *(int *)(iVar4 + g + 4);
    if (iVar3 != 0) {
        iVar6 = *(int *)(iVar3 + 0x178);
    }
    iVar3 = GameFreeChars(param_1);
    if (iVar3 == 0) {
        ErrorExit();
    }
    iVar3 = GameLoadAndCreateChars(param_1);
    if (iVar3 == 0) {
        ErrorExit();
    }
    if ((iVar6 != -1) && (iVar4 = *(int *)(iVar4 + g + 4), iVar4 != 0)) {
        *(int *)(iVar4 + 0x184) = iVar6;
        *(int *)(iVar4 + 0x180) = iVar6;
        *(int *)(iVar4 + 0x178) = iVar6;
    }
    PalGrpBuildFight();
    puVar5 = (undefined4 *)(iVar1 + 0xceec + iVar2 * 0x5c);
    puVar7 = (undefined4 *)(param_1 * 0x5c + g + 0x10418);
    for (iVar4 = 0x17; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar7 = *puVar5;
        puVar5 = puVar5 + 1;
        puVar7 = puVar7 + 1;
    }
    GameActivateAI();
    return;
}

