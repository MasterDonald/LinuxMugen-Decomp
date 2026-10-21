
undefined4 GameAftImgArrayFree(int param_1)

{
    undefined4 uVar1;
    undefined4 in_ECX;
    undefined4 extraout_ECX;
    undefined4 unaff_EBX;
    int iVar2;
    int iVar3;

    if (param_1 != 0) {
        iVar2 = 0;
        if (0 < *(int *)(param_1 + 0xc)) {
            do {
                iVar3 = iVar2 + 1;
                uVar1 = ArrayAccessGrpItem(param_1,0,iVar2,in_ECX);
                AftImgDeInit(uVar1);
                in_ECX = extraout_ECX;
                iVar2 = iVar3;
            } while (iVar3 < *(int *)(param_1 + 0xc));
        }
        uVar1 = ArrayFree();
        return uVar1;
    }
    return unaff_EBX;
}

