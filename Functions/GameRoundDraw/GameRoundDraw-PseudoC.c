
void __regparm3 GameRoundDraw(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
    int iVar1;
    int *piVar2;
    int *piVar3;
    int *piVar4;
    int *piVar5;
    int iVar6;
    undefined4 extraout_EDX;
    int iVar7;
    char *unaff_EBX;
    char *__src;
    undefined4 uVar8;
    undefined4 uVar9;
    char local_5c [76];

    iVar6 = g;
    piVar2 = *(int **)(g + 0x1cf68);
    iVar1 = g + 0x139d4;
    piVar3 = *(int **)(g + 0x1cf6c);
    piVar4 = *(int **)(g + 0x1cf70);
    piVar5 = *(int **)(g + 0x1cf74);
    iVar7 = *(int *)(g + 0x1d444);
    if (iVar7 == 2) {
        if ((*(int *)(g + 0x1d450) == *(int *)(g + 0x13f54) + 1) &&
            (unaff_EBX = *(char **)(g + 0x1d3a0), unaff_EBX == (char *)0x0)) {
            SysExplodCreate_Fight
            (g + 0x13ee8,*(undefined4 *)(g + 0x139e4),*(undefined4 *)(g + 0x139e8),param_3);
            }
    }
    else if (iVar7 < 3) {
        if (((iVar7 == 1) && (*(int *)(g + 0x1d438) == *(int *)(g + 0x13e90) + 2)) &&
            (*(int *)(g + 0x1d3a0) == 0)) {
            if (*(int *)(g + 0x1d418) < 10) {
                SysExplodCreate_Fight
                (g + 0x13a58 + *(int *)(g + 0x1d418) * 0x6c,*(undefined4 *)(g + 0x139e4),
                 *(undefined4 *)(g + 0x139e8));
                param_2 = extraout_EDX;
            }
            __src = (char *)(iVar6 + 0x13a28);
        strcpy(local_5c,__src);
        sprintf(__src,local_5c,*(undefined4 *)(g + 0x1d418),param_2);
        uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
        iVar7 = iVar6 + 0x139ec;
        uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
        LAB_08093848:
        unaff_EBX = local_5c;
        SysExplodCreate_Fight(iVar7,uVar8,uVar9);
        strcpy(__src,unaff_EBX);
            }
    }
    else if ((iVar7 == 4) && (*(int *)(g + 0x1d450) == *(int *)(g + 0x14224) + 1)) {
        iVar7 = GameRoundWinner();
        if (iVar7 == 1) {
            if (piVar4 == (int *)0x0) {
                __src = (char *)(iVar6 + 0x14104);
                strcpy(local_5c,__src);
                sprintf(__src,local_5c,*piVar2 + 0x30);
                uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
                iVar7 = iVar6 + 0x140c8;
                uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
            }
            else {
                __src = (char *)(iVar6 + 0x14170);
                strcpy(local_5c,__src);
                sprintf(__src,local_5c,*piVar2 + 0x30,*piVar4 + 0x30);
                uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
                iVar7 = iVar6 + 0x14134;
                uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
            }
        }
        else {
            iVar7 = GameRoundWinner();
            if (iVar7 == 2) {
                if (piVar5 == (int *)0x0) {
                    __src = (char *)(iVar6 + 0x14104);
                    strcpy(local_5c,__src);
                    sprintf(__src,local_5c,*piVar3 + 0x30);
                    uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
                    iVar7 = iVar6 + 0x140c8;
                    uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
                }
                else {
                    __src = (char *)(iVar6 + 0x14170);
                    strcpy(local_5c,__src);
                    sprintf(__src,local_5c,*piVar3 + 0x30,*piVar5 + 0x30);
                    uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
                    iVar7 = iVar6 + 0x14134;
                    uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
                }
            }
            else {
                if (*(int *)(g + 0x1d44c) != 3) goto LAB_08093860;
                __src = (char *)(iVar6 + 0x141dc);
                strcpy(local_5c,__src);
                sprintf(__src,local_5c,*piVar3 + 0x30);
                uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
                uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
                iVar7 = iVar6 + 0x141a0;
            }
        }
        goto LAB_08093848;
    }
    LAB_08093860:
    if (1 < *(int *)(g + 0x1d444) - 3U) goto LAB_080938d7;
    iVar7 = *(int *)(g + 0x1d450);
    if (*(int *)(g + 0x1d444) == 4) {
        iVar7 = iVar7 + *(int *)(g + 0x1d43c);
    }
    if (iVar7 != *(int *)(iVar6 + 0x140a8) + 1) goto LAB_080938d7;
    iVar7 = *(int *)(g + 0x1d44c);
    if (iVar7 == 3) {
        iVar7 = iVar6 + 0x1403c;
        LAB_080938bf:
        uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
        uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
    }
    else {
        if (iVar7 != 2) {
            if (iVar7 != 1) goto LAB_080938d7;
            iVar7 = iVar6 + 0x13f64;
            goto LAB_080938bf;
        }
        iVar7 = iVar6 + 0x13fd0;
        uVar9 = *(undefined4 *)(iVar6 + 0x139e8);
        uVar8 = *(undefined4 *)(iVar6 + 0x139e4);
        unaff_EBX = (char *)0x2;
    }
    SysExplodCreate_Fight(iVar7,uVar8,uVar9,unaff_EBX);
    LAB_080938d7:
    if (*(int *)(g + 0x1cc1c) == 0) {
        ExplodArrayDraw(*(undefined4 *)(g + 0x14afc),0xffffffff,iVar1,iVar1);
    }
    return;
}

