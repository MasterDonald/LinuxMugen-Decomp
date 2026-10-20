
void GameBarsUpdate(void)

{
    undefined4 uVar1;
    undefined4 uVar2;
    int iVar3;
    int iVar4;

    uVar1 = *(undefined4 *)(g + 0x1cf68);
    uVar2 = *(undefined4 *)(g + 0x1cf6c);
    iVar3 = *(int *)(g + 0x1cf70);
    iVar4 = *(int *)(g + 0x1cf74);
    GameLifeBarUpdate(uVar1);
    GameLifeBarUpdate(uVar2);
    if (iVar3 != 0) {
        GameLifeBarUpdate(iVar3);
    }
    if (iVar4 != 0) {
        GameLifeBarUpdate(iVar4);
    }
    GamePowerBarUpdate(uVar1);
    GamePowerBarUpdate(uVar2);
    return;
}

