
void GameInitPads(void)

{
    int iVar1;
    int iVar2;
    undefined4 *puVar3;
    undefined4 *puVar4;

    puVar3 = (undefined4 *)(g + 0x1cdbc);
    puVar4 = (undefined4 *)(g + 0x1cd54);
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        puVar4 = puVar4 + 1;
    }
    puVar3 = (undefined4 *)(g + 0x1cdf0);
    puVar4 = (undefined4 *)(g + 0x1cd88);
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        puVar4 = puVar4 + 1;
    }
    if (*(int *)(g + 0x1ce2c) == 0) {
        puVar4 = (undefined4 *)(g + 0x1cd54);
        for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
            *puVar4 = 0;
            puVar4 = puVar4 + 1;
        }
        PlayerKeysRemoveZero(g + 0x1cd54,0x80,0,0);
    }
    if (*(int *)(g + 0x1ce30) == 0) {
        puVar4 = (undefined4 *)(g + 0x1cd88);
        for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
            *puVar4 = 0;
            puVar4 = puVar4 + 1;
        }
        PlayerKeysRemoveZero(g + 0x1cd88,0x80,puVar4,puVar4);
    }
    if (PadInstalled != 0) {
        PadDeInit();
    }
    iVar2 = *(int *)(g + 0x1ce2c);
    if (((iVar2 != 0) || (*(int *)(g + 0x1ce30) != 0)) && (*(int *)(g + 0x1e674) == 0)) {
        if (iVar2 == 0) {
            iVar1 = *(int *)(g + 0x1ce38);
        }
        else {
            iVar1 = *(int *)(g + 0x1ce34);
        }
        if (iVar1 == 0x16) {
            DeviceInit(0x16,g + 0x1ce40,iVar2,iVar2);
        }
        iVar1 = PadInit(iVar1,iVar2 == 0,puVar4,puVar4);
        iVar2 = g;
        if (iVar1 == 0) {
            *(undefined4 *)(g + 0x1ce30) = 0;
            *(undefined4 *)(iVar2 + 0x1ce2c) = 0;
        }
    }
    iVar2 = UInpReInit();
    if (iVar2 == 0) {
        ErrorExitM("Can\'t init input");
    }
    return;
}

