
void GameClsnDraw(int param_1,float param_2,float param_3,float param_4,float param_5,
                  undefined4 param_6,uint param_7,int param_8)

{
    int iVar1;
    int iVar2;
    int iVar3;
    float fVar4;
    int *piVar5;
    int iVar6;
    int local_24;
    int local_1c;

    if (((param_1 != 0) && (param_4 != 0.0)) && (param_5 != 0.0)) {
        local_1c = 0;
        iVar6 = *(int *)(param_1 + 4);
        if (0 < iVar6) {
            local_24 = 0;
            do {
                piVar5 = (int *)(local_24 + *(int *)(param_1 + 8));
                if (*piVar5 == 0) {
                    fVar4 = (float)(int)((uint)((param_7 & 1) == 0) * 2 + -1);
                    iVar6 = (int)ROUND((float)piVar5[1] * param_4 * fVar4 + param_2);
                    iVar1 = (int)ROUND((float)piVar5[2] * param_5 + param_3);
                    iVar2 = (int)ROUND((float)piVar5[3] * param_4 * fVar4 + param_2);
                    iVar3 = (int)ROUND((float)piVar5[4] * param_5 + param_3);
                    W_BoxTransSub16(iVar6,iVar1,iVar2,iVar3,
                                    4 << ((byte)_rgb_r_shift_16 & 0x1f) | 8 << ((byte)_rgb_g_shift_16 & 0x1f)
                                    | 4 << ((byte)_rgb_b_shift_16 & 0x1f));
                    if (param_8 == 0) {
                        W_BoxTransAdd16(iVar6,iVar1,iVar2,iVar3,param_6);
                        iVar6 = *(int *)(param_1 + 4);
                    }
                    else {
                        W_BoxFillTransAdd16(iVar6,iVar1,iVar2,iVar3,param_6);
                        iVar6 = *(int *)(param_1 + 4);
                    }
                }
                local_1c = local_1c + 1;
                local_24 = local_24 + 0x14;
            } while (local_1c < iVar6);
        }
    }
    return;
}

