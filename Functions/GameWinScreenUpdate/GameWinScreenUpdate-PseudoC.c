
void GameWinScreenUpdate(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int in_ECX;
    int extraout_ECX;
    int extraout_ECX_00;
    int extraout_ECX_01;
    int extraout_ECX_02;
    bool bVar5;
    undefined1 auStack_4c [20];
    undefined4 local_38;
    undefined4 local_34;
    int local_30;
    int iStack_2c;
    int iStack_28;
    int iStack_24;
    int iStack_20;

    iVar3 = g;
    do {
        iVar2 = g;
        iVar4 = *(int *)(g + 0x1d504);
        bVar5 = false;
        iVar1 = *(int *)(g + 0x1d508);
        if (iVar4 == 1) {
            if (iVar1 == *(int *)(iVar3 + 0xadc0)) {
                *(undefined4 *)(g + 0x1d504) = 2;
                *(undefined4 *)(iVar2 + 0x1d508) = 0;
                bVar5 = true;
            }
        }
        else if (iVar4 < 2) {
            if (iVar4 == 0) {
                iVar2 = *(int *)(iVar3 + 0xadc4);
                if (iVar1 < iVar2) {
                    iStack_2c = (iVar1 << 8) / iVar2;
                    local_30 = 0x8091e9f;
                    iStack_28 = iStack_2c;
                    iStack_24 = iStack_2c;
                    iStack_20 = iVar4;
                    MasterPalMul();
                    in_ECX = extraout_ECX;
                }
                if (iVar1 == iVar2) {
                    bVar5 = true;
                    iStack_24 = 0x100;
                    iStack_28 = 0x100;
                    iStack_2c = 0x100;
                    local_30 = 0x8091ec4;
                    iStack_20 = in_ECX;
                    MasterPalMul();
                    iVar4 = g;
                    *(undefined4 *)(g + 0x1d504) = 1;
                    *(undefined4 *)(iVar4 + 0x1d508) = 0;
                    in_ECX = extraout_ECX_00;
                }
            }
        }
        else if (iVar4 == 2) {
            iVar2 = *(int *)(iVar3 + 0xadc8);
            if (iVar1 < iVar2) {
                iStack_20 = g;
                iStack_2c = 0x100 - (iVar1 << 8) / iVar2;
                local_30 = 0x8091f2d;
                iStack_28 = iStack_2c;
                iStack_24 = iStack_2c;
                iVar4 = MasterPalMul();
                in_ECX = extraout_ECX_01;
            }
            if (iVar1 == iVar2) {
                iStack_24 = 0;
                iStack_28 = 0;
                iStack_2c = 0;
                local_30 = 0x8091f40;
                iStack_20 = iVar4;
                MasterPalMul();
                *(undefined4 *)(g + 0x104d4) = 1;
                in_ECX = extraout_ECX_02;
            }
        }
    } while (bVar5);
    local_30 = 0x80;
    local_34 = 0x80;
    local_38 = 0x80;
    PalGrpMakeFlag(auStack_4c,0xffffffff,0,0);
    PalGrpSetMul();
    local_30 = iVar3 + 0xad54;
    iStack_28 = 0;
    iStack_2c = 0;
    local_34 = 0x8091f9d;
    SysExplodCreate_Sys();
    *(int *)(g + 0x1d508) = *(int *)(g + 0x1d508) + 1;
    return;
}

