
undefined4 GameFreeChars(int param_1)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int local_18;

    local_18 = 0;
    iVar1 = g + param_1 * 0x5c;
    if (0 < *(int *)(iVar1 + 0x10420)) {
        do {
            iVar2 = *(int *)(iVar1 + 0x10424 + local_18 * 0x14);
            iVar5 = iVar2 * 4;
            iVar4 = *(int *)(iVar5 + 0x1cf64 + g);
            if (iVar4 != 0) {
                if (*(int *)(iVar4 + 0x158) != 0) {
                    iVar4 = PlayerEnableSet(iVar2,0,local_18 * 5,local_18 * 5);
                }
                iVar3 = *(int *)(iVar5 + 0x1cf60 + g + 4);
                if (*(int *)(iVar3 + 0x10) != -1) {
                    PlayerSavePersistVars
                    (*(undefined4 *)(iVar5 + 0x1cf60 + g + 4),
                     *(int *)(iVar3 + 0x18) * 400 + 0xd05c +
                     *(int *)(iVar3 + 0x14) * 0x640 + *(int *)(iVar3 + 0x10) * 0x1a9c + g,iVar4,
                     iVar4);
                }
                iVar4 = -1;
                iVar5 = **(int **)(iVar5 + 0x1cf64 + g);
                if (iVar5 != 0) {
                    iVar4 = *(int *)(iVar5 + 0x10a8);
                }
                iVar2 = iVar2 * 4;
                GameFreePlayerDependencies(*(undefined4 *)(iVar2 + 0x1cf64 + g));
                PlayerFree(*(undefined4 *)(iVar2 + 0x1cf60 + g + 4));
                if (iVar4 != -1) {
                    PlayerCacheFree(iVar4);
                }
                iVar5 = g + 4;
                *(undefined4 *)(g + 0x1ce64 + iVar2) = 0;
                *(undefined4 *)(iVar2 + 0x1cf60 + iVar5) = 0;
            }
            local_18 = local_18 + 1;
        } while (local_18 < *(int *)(iVar1 + 0x10420));
    }
    return 1;
}

