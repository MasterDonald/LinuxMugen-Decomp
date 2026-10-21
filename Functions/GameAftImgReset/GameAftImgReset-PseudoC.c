
void __regparm2 GameAftImgReset(int param_1,undefined4 param_2,int param_3)

{
    int iVar1;
    int iVar2;

    iVar1 = 0;
    if (0 < *(int *)(param_3 + 0xc)) {
        do {
            iVar2 = iVar1 + 1;
            param_1 = ArrayAccessGrpItem(param_3,0,iVar1,param_1,param_2);
            *(undefined4 *)(param_1 + 0x18) = 0;
            *(undefined4 *)(param_1 + 8) = 0;
            iVar1 = iVar2;
        } while (iVar2 < *(int *)(param_3 + 0xc));
    }
    return;
}

