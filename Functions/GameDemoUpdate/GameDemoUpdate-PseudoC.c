
undefined4 GameDemoUpdate(void)

{
    int iVar1;
    int iVar2;
    undefined4 uVar3;

    uVar3 = 0;
    if (*(int *)(g + 0x1d444) == 2) {
        if (*(int *)(g + 0x1d3a0) != 0) {
            if (*(int *)(g + 0x1d3b4) + -0x78 <= *(int *)(g + 0x1d3c4)) {
                iVar2 = (*(int *)(g + 0x1d3b4) - *(int *)(g + 0x1d3c4)) * 0x100;
                iVar1 = iVar2 / 0x78;
                MasterPalMul(iVar1,iVar1,iVar1,iVar2);
            }
            iVar1 = g;
            if (*(int *)(g + 0x1d3b4) <= *(int *)(g + 0x1d3c4)) {
                iVar2 = *(int *)(g + 0x1d3c8);
                uVar3 = 1;
                *(undefined4 *)(g + 0x104d4) = 1;
                *(int *)(iVar1 + 0x1d3c8) = iVar2 + 1;
                if (*(int *)(iVar1 + 0x1d3a4) <= iVar2) {
                    *(undefined4 *)(iVar1 + 0x1d3c8) = 0;
                    *(undefined4 *)(iVar1 + 0x8d44) = 0;
                }
            }
        }
        *(int *)(g + 0x1d3c4) = *(int *)(g + 0x1d3c4) + 1;
    }
    return uVar3;
}

