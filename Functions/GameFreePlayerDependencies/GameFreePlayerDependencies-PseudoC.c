
undefined4 GameFreePlayerDependencies(int *param_1)

{
    int *piVar1;
    int iVar2;
    int iVar3;
    int iVar4;

    ExplodRemoveID(*(undefined4 *)(g + 0x14af8),param_1[1],0xffffffff);
    PlayerDropBoundTargets(param_1,0);
    iVar4 = *(int *)(g + 0x1d164);
    if (iVar4 <= *(int *)(g + 0x1d168)) {
        iVar3 = iVar4 * 4 + 0x1cf60;
        iVar2 = g;
        do {
            piVar1 = *(int **)(iVar3 + 4 + iVar2);
            if ((piVar1 != param_1) && (piVar1 != (int *)0x0)) {
                if ((int *)piVar1[0x989] == param_1) {
                    ExplodRemoveID(*(undefined4 *)(iVar2 + 0x14af8),piVar1[1],0xffffffff,iVar2);
                    HelperDestroy(piVar1);
                    iVar2 = g;
                }
                else {
                    iVar2 = param_1[0x4e5];
                    if (iVar2 != 0) {
                        *(undefined4 *)(iVar2 + 0x18) = 0;
                        *(undefined4 *)(iVar2 + 8) = 0;
                        param_1[0x4e5] = 0;
                    }
                    if (piVar1[0x4f0] == *(int *)(*param_1 + 0x11cc)) {
                        piVar1[0x4f0] = 0;
                    }
                    if (piVar1[0x2fb] == param_1[0x2fa]) {
                        piVar1[0x2fb] = 0;
                        piVar1[0x2fc] = -1;
                    }
                    if ((int *)piVar1[0xd09] == param_1) {
                        piVar1[0xd09] = 0;
                    }
                    if ((int *)piVar1[0xd0a] == param_1) {
                        piVar1[0xd0a] = 0;
                    }
                    iVar2 = g;
                    if (((int *)piVar1[0xd15] == param_1) && (piVar1[0xd0c] != 0)) {
                        piVar1[0xd0c] = 0;
                        piVar1[0xd15] = 0;
                        iVar2 = g;
                    }
                }
            }
            iVar4 = iVar4 + 1;
            iVar3 = iVar3 + 4;
        } while (iVar4 <= *(int *)(iVar2 + 0x1d168));
    }
    return 1;
}

