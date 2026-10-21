
void GameSurvivalResultsUpdate(void)

{
    char *__src;
    int iVar1;
    int iVar2;
    int iVar3;
    bool bVar4;
    int iVar5;
    int in_ECX;
    int extraout_ECX;
    int extraout_ECX_00;
    int extraout_ECX_01;
    int extraout_ECX_02;
    int extraout_EDX;
    int extraout_EDX_00;
    int extraout_EDX_01;
    int extraout_EDX_02;
    int iVar6;
    undefined1 auStack_14c [20];
    undefined4 local_138;
    undefined4 local_134;
    int local_120 [68];

    iVar5 = g;
    do {
        iVar6 = g;
        iVar1 = *(int *)(g + 0x1d504);
        bVar4 = false;
        iVar2 = *(int *)(g + 0x1d508);
        if (iVar1 == 1) {
            if (iVar2 == *(int *)(iVar5 + 0xae3c)) {
                *(undefined4 *)(g + 0x1d504) = 2;
                *(undefined4 *)(iVar6 + 0x1d508) = 0;
                bVar4 = true;
            }
        }
        else if (iVar1 < 2) {
            if (iVar1 == 0) {
                iVar1 = *(int *)(iVar5 + 0xae40);
                if (iVar2 < iVar1) {
                    local_120[0] = in_ECX;
                    MasterPalMul();
                    in_ECX = extraout_ECX;
                    iVar6 = extraout_EDX;
                }
                if (iVar2 == iVar1) {
                    bVar4 = true;
                    local_120[0] = iVar6;
                    MasterPalMul();
                    iVar1 = g;
                    *(undefined4 *)(g + 0x1d504) = 1;
                    *(undefined4 *)(iVar1 + 0x1d508) = 0;
                    in_ECX = extraout_ECX_00;
                    iVar6 = extraout_EDX_00;
                }
            }
        }
        else if (iVar1 == 2) {
            iVar3 = *(int *)(iVar5 + 0xae44);
            if (iVar2 < iVar3) {
                local_120[0] = iVar1;
                MasterPalMul();
                in_ECX = extraout_ECX_01;
                iVar6 = extraout_EDX_01;
            }
            if (iVar2 == iVar3) {
                local_120[0] = in_ECX;
                MasterPalMul();
                *(undefined4 *)(g + 0x104d4) = 1;
                in_ECX = extraout_ECX_02;
                iVar6 = extraout_EDX_02;
            }
        }
    } while (bVar4);
    __src = (char *)(iVar5 + 0xae0c);
    local_134 = 0x80;
    local_138 = 0x80;
    PalGrpMakeFlag(auStack_14c,0xffffffff,0,iVar6);
    PalGrpSetMul();
    local_134 = 0x8092123;
    strcpy((char *)local_120,__src);
    local_134 = 0x8092141;
    sprintf(__src,(char *)local_120);
    local_134 = 0x8092151;
    SysExplodCreate_Sys();
    local_134 = 0x809215a;
    strcpy(__src,(char *)local_120);
    *(int *)(g + 0x1d508) = *(int *)(g + 0x1d508) + 1;
    return;
}

