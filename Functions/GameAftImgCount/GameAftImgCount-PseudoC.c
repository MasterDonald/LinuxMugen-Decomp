
int __regparm1 GameAftImgCount(int param_1,int param_2)

{
    int iVar1;
    int iVar2;

    iVar2 = 0;
    iVar1 = 0;
    if (0 < *(int *)(param_2 + 0xc)) {
        do {
            param_1 = ArrayAccessGrpItem(param_2,0,iVar1,param_1);
            if (*(int *)(param_1 + 8) != 0) {
                iVar2 = iVar2 + 1;
            }
            iVar1 = iVar1 + 1;
        } while (iVar1 < *(int *)(param_2 + 0xc));
    }
    return iVar2;
}

