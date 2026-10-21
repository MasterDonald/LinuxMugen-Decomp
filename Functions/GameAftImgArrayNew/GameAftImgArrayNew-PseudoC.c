
int GameAftImgArrayNew(int param_1,undefined4 param_2)

{
    int iVar1;
    int iVar2;
    int iVar3;
    undefined4 *puVar4;
    undefined4 auStack_9c [35];

    iVar1 = ArrayNew(param_1,0x7c,0);
    if (iVar1 == 0) {
        iVar1 = 0;
    }
    else {
        iVar3 = 0;
        if (0 < param_1) {
            do {
                puVar4 = auStack_9c;
                for (iVar2 = 0x1f; iVar2 != 0; iVar2 = iVar2 + -1) {
                    *puVar4 = 0;
                    puVar4 = puVar4 + 1;
                }
                iVar2 = AftImgInit(auStack_9c,param_2,puVar4,puVar4);
                if (iVar2 == 0) {
                    GameAftImgArrayFree(iVar1);
                    return 0;
                }
                iVar2 = iVar3 + 1;
                ArrayAdd(iVar1,auStack_9c,0,iVar3);
                iVar3 = iVar2;
            } while (iVar2 < param_1);
        }
    }
    return iVar1;
}

