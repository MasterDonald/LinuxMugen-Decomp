void GameLifeBarDraw(undefined4 param_1, int param_2, int *param_3, int param_4)
{
    undefined4 uVar1;
    undefined4 uVar2;
    undefined4 uVar3;
    undefined4 uVar4;
    uint uVar5;
    int iVar6;
    undefined4 uVar7;
    undefined4 uVar8;
    int iVar9;
    int iVar10;
    int iVar11;
    int iVar12;
    int local_134;
    uint local_120;
    char local_11c[268];

    uVar4 = W_y1;
    uVar3 = W_x2;
    uVar2 = W_x1;
    uVar1 = W_y2;
    local_134 = -1;
    iVar10 = (*(int *)(g + 0x1d564) == 4) + 1;
    iVar11 = param_3[1] * iVar10;
    iVar12 = (*param_3 + param_3[2]) * iVar10;
    iVar10 = (*param_3 + param_3[3]) * iVar10;
    iVar6 = iVar12;
    if (iVar12 - iVar10 != 0 && iVar10 <= iVar12) {
        local_134 = 1;
        iVar6 = iVar10;
        iVar10 = iVar12;
    }
    uVar5 = (*(int *)(param_2 + 0x16c) * (iVar10 - iVar6)) / *(int *)(param_2 + 0x164);
    iVar12 = (*(int *)(param_2 + 0x168) * (iVar10 - iVar6)) / *(int *)(param_2 + 0x164);
    local_120 = iVar12 + 1U & (*(int *)(param_2 + 0x168) == 0) - 1;
    if ((int)uVar5 < (int)local_120) {
        local_120 = uVar5;
    }
    W_Define(iVar6, W_y1, iVar10, W_y2);
    if (local_134 == 1) {
        iVar9 = *(int *)(param_2 + 0x168);
        if (iVar9 < *(int *)(param_2 + 0x16c)) {
            W_Define(iVar10 - local_120, uVar4, iVar10 - uVar5, uVar1);
            SysExplodCreateDraw_Fight(param_3 + 0x56, *param_3, param_3[1], param_4);
            iVar9 = *(int *)(param_2 + 0x168);
        }
        if (0 < iVar9) {
            W_Define(iVar10 - iVar12, uVar4, iVar10, uVar1);
            SysExplodCreateDraw_Fight(param_3 + 0x71, *param_3, param_3[1], param_4);
        }
        if ((g->debug.show_health_values == 0) || (param_3[0x79] != param_4)) goto LAB_08096896;
        W_Define(iVar6, 0, iVar10, V_Height + -1);
        iVar6 = sprintf(local_11c, "%i", *(undefined4 *)(param_2 + 0x160));
        uVar7 = makecol(0x80, 0x80, 0, iVar6);
        V_FontDraw(local_11c, g->assets.font_handle, (iVar10 - iVar12) + 1, iVar11 + 5, uVar7);
        sprintf(local_11c, "%3i", *(int *)(param_2 + 0x16c) - *(int *)(param_2 + 0x160));
        if (*(int *)(param_2 + 0x16c) == *(int *)(param_2 + 0x160) ||
            *(int *)(param_2 + 0x16c) - *(int *)(param_2 + 0x160) < 0) goto LAB_08096896;
        uVar8 = makecol(0x80, 0, 0);
        iVar6 = (iVar10 - local_120) + -0xb;
        uVar7 = g->assets.font_handle;
    }
    else {
        iVar9 = *(int *)(param_2 + 0x168);
        if (iVar9 < *(int *)(param_2 + 0x16c)) {
            W_Define(iVar6 + local_120, uVar4, iVar6 + uVar5, uVar1);
            SysExplodCreateDraw_Fight(param_3 + 0x56, *param_3, param_3[1], param_4);
            iVar9 = *(int *)(param_2 + 0x168);
        }
        if (0 < iVar9) {
            W_Define(iVar6 + iVar12, uVar4, iVar6, uVar1);
            SysExplodCreateDraw_Fight(param_3 + 0x71, *param_3, param_3[1], param_4);
        }
        if ((g->debug.show_health_values == 0) || (param_3[0x79] != param_4)) goto LAB_08096896;
        W_Define(iVar6, 0, iVar10, V_Height + -1);
        iVar10 = sprintf(local_11c, "%i", *(undefined4 *)(param_2 + 0x160));
        uVar7 = makecol(0x80, 0x80, 0, iVar10);
        V_FontDrawRight(local_11c, g->assets.font_handle, iVar12 + -1 + iVar6, iVar11 + 5, uVar7);
        sprintf(local_11c, "%i", *(int *)(param_2 + 0x16c) - *(int *)(param_2 + 0x160));
        if (*(int *)(param_2 + 0x16c) == *(int *)(param_2 + 0x160) ||
            *(int *)(param_2 + 0x16c) - *(int *)(param_2 + 0x160) < 0) goto LAB_08096896;
        uVar8 = makecol(0x80, 0, 0);
        iVar6 = local_120 + 1 + iVar6;
        uVar7 = g->assets.font_handle;
    }
    V_FontDraw(local_11c, uVar7, iVar6, iVar11 + 5, uVar8);
    LAB_08096896:
    W_Define(uVar2, uVar4, uVar3, uVar1);
}
