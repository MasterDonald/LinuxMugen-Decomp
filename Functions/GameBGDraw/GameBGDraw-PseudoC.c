
void GameBGDraw(void)

{
    int iVar1;
    int iVar2;
    undefined4 extraout_ECX;

    BGArrayMoveOffset(*(undefined4 *)(g + 0x1bb50),(float)*(int *)(g + 0x1cc44),
                      (float)*(int *)(g + 0x1cc48),-*(int *)(g + 0x1cc54),-*(int *)(g + 0x1cc58));
    BGArrayDrawLayer(*(undefined4 *)(g + 0x1bb50),0);
    iVar1 = g;
    *(undefined4 *)(g + 0x10500) = *(undefined4 *)(g + 0x10504);
    iVar2 = *(int *)(iVar1 + 0x10508);
    if (iVar2 != -1) {
        iVar2 = BGAccessID(*(undefined4 *)(iVar1 + 0x1bb50),iVar2,extraout_ECX,extraout_ECX);
        if (iVar2 != 0) {
            *(int *)(g + 0x10500) =
            (int)ROUND((float)*(int *)(g + 0x10500) +
            ((float)*(int *)(iVar2 + 0x10) -
            (float)*(int *)(g + 0x1cc48) * *(float *)(iVar2 + 0x20)) + 0.999999);
        }
    }
    if (0 < *(int *)(g + 0x1cc58)) {
        W_BoxFill(0,V_Height + -1,V_Width + -1,V_Height - *(int *)(g + 0x1cc58),0);
    }
    if ((int)*(uint *)(g + 0x1cc58) < 0) {
        W_BoxFill(0,0,V_Width + -1,*(uint *)(g + 0x1cc58) ^ 0xffffffff,0);
    }
    return;
}

