
void GameUnloadStage(void)

{
    int iVar1;
    int *piVar2;
    int iVar3;
    int iVar4;
    undefined4 extraout_EDX;
    int unaff_EBP;
    int iVar5;
    int local_18;
    int local_14;

    BGMFree(g + 0x42a8);
    local_14 = 1;
    iVar4 = g;
    if (0 < *(int *)(g + 0x1ce54)) {
        iVar5 = 0x1cf64;
        local_18 = 4;
        do {
            iVar3 = *(int *)(iVar5 + 4 + iVar4);
            if (iVar3 != 0) {
                if (*(int *)(iVar3 + 0x158) != 0) {
                    iVar3 = PlayerEnableSet(local_14,0,iVar4,iVar4);
                    iVar4 = g;
                }
                iVar1 = *(int *)(iVar5 + iVar4 + 4);
                if (*(int *)(iVar1 + 0x10) != -1) {
                    PlayerSavePersistVars
                    (*(undefined4 *)(iVar5 + iVar4 + 4),
                     *(int *)(iVar1 + 0x18) * 400 + 0xd05c +
                     *(int *)(iVar1 + 0x14) * 0x640 + *(int *)(iVar1 + 0x10) * 0x1a9c + iVar4,iVar3,
                     iVar3);
                    iVar4 = g;
                }
                piVar2 = *(int **)(iVar5 + 4 + iVar4);
                iVar3 = -1;
                if ((*piVar2 != 0) && (piVar2[0x989] == 0)) {
                    iVar3 = *(int *)(*piVar2 + 0x10a8);
                    if (piVar2[3] == *(int *)(iVar4 + 0xcecc)) {
                        unaff_EBP = *(int *)(iVar4 + 0xe984) + *(int *)(iVar4 + 0xcee8);
                    }
                    else {
                        unaff_EBP = 0;
                    }
                }
                PlayerFree(*(undefined4 *)(iVar5 + 4 + iVar4));
                if (iVar3 != -1) {
                    PlayerCacheFreePriority(iVar3,unaff_EBP,extraout_EDX,extraout_EDX);
                }
                iVar4 = g;
                iVar3 = g + 4;
                *(undefined4 *)(g + 0x1ce64 + local_18) = 0;
                *(undefined4 *)(iVar5 + iVar3) = 0;
            }
            local_14 = local_14 + 1;
            local_18 = local_18 + 4;
            iVar5 = iVar5 + 4;
        } while (local_14 <= *(int *)(iVar4 + 0x1ce54));
    }
    BGArrayFree(*(undefined4 *)(iVar4 + 0x1bb50));
    *(undefined4 *)(g + 0x1bb50) = 0;
    return;
}

