
bool GameBGLoad(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    undefined4 extraout_EDX;
    undefined4 uVar4;
    undefined8 uVar5;
    undefined1 local_100c [4104];

    uVar5 = TPReadFile(g + 0x2014);
    uVar4 = (undefined4)((ulonglong)uVar5 >> 0x20);
    iVar1 = (int)uVar5;
    if (iVar1 == 0) {
        sprintf((char *)(g + 0x20748),"\nError opening %s",g + 0x2014,extraout_ECX);
        uVar4 = extraout_EDX;
    }
    local_100c[0] = 0;
    iVar2 = TPGroupSeek(iVar1,"BGdef",uVar4,uVar4);
    iVar2 = iVar2 + 1;
    if (iVar2 != 0) {
        iVar2 = TPGetValue(iVar1,&DAT_0827859b,iVar2,iVar2);
        if (iVar2 != 0) {
            uVar5 = strmatchlen(iVar2,"stages/",7,extraout_ECX_00);
            if ((int)uVar5 == 0) {
                splitdirfile(g + 0x2014,local_100c,0,(int)((ulonglong)uVar5 >> 0x20));
            }
        }
    }
    iVar3 = BGArrayReadTP(iVar1,local_100c,"BG",0,0);
    iVar2 = g;
    *(int *)(g + 0x1bb50) = iVar3;
    if (iVar3 != 0) {
        TPFree(iVar1);
    }
    else {
        sprintf((char *)(iVar2 + 0x20748),"\nBG error reading %s",iVar2 + 0x2014,0);
    }
    return iVar3 != 0;
}

