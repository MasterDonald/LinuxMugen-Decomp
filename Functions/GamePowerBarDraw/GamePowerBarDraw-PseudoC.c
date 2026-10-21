
void GamePowerBarDraw(int param_1,int param_2,int param_3,undefined4 param_4,int param_5,
                      undefined4 param_6)

{
    int iVar1;
    int iVar2;
    int iVar3;
    undefined4 uVar4;
    undefined4 uVar5;
    undefined4 local_28;

    local_28 = -1;
    iVar1 = (*(int *)(g + 0x1d564) == 4) + 1;
    param_3 = param_3 * iVar1;
    param_5 = param_5 * iVar1;
    iVar1 = g + 0x11b3c;
    iVar3 = param_5;
    if (param_3 - param_5 != 0 && param_5 <= param_3) {
        local_28 = 1;
        iVar3 = param_3;
        param_3 = param_5;
    }
    iVar2 = (((iVar3 - param_3) + 1) * *(int *)(param_2 + 0x180)) / **(int **)(param_2 + 0x174);
    if (local_28 == 1) {
        if (iVar2 < 1) goto LAB_08096bd6;
        W_Define((iVar3 - iVar2) + 1,0,iVar3,V_Height + -1);
        uVar5 = *(undefined4 *)(param_1 * 0x230 + -0x22c + iVar1);
        uVar4 = *(undefined4 *)(param_1 * 0x230 + -0x230 + iVar1);
    }
    else {
        if (iVar2 < 1) goto LAB_08096bd6;
        W_Define(iVar2 + -1 + param_3,0,param_3,V_Height + -1);
        uVar5 = *(undefined4 *)(param_1 * 0x230 + -0x22c + iVar1);
        uVar4 = *(undefined4 *)(param_1 * 0x230 + -0x230 + iVar1);
    }
    SysExplodCreateDraw_Fight(param_1 * 0x230 + -0x6c + iVar1,uVar4,uVar5,param_6);
    LAB_08096bd6:
    W_Define();
    return;
}

