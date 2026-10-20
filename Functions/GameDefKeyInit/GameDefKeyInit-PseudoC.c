
void GameDefKeyInit(void)

{
    int *piVar1;
    undefined4 uVar2;
    undefined4 *puVar3;
    int iVar4;
    int iVar5;
    int iVar6;
    int iVar7;

    iVar5 = 0;
    iVar7 = 0;
    iVar6 = g + 0x1ccec;
    do {
        iVar4 = 0;
        puVar3 = (undefined4 *)((int)&DefaultKeyCfg + iVar7);
        do {
            piVar1 = &KeyCfgToKBIMap + iVar4;
            iVar4 = iVar4 + 1;
            uVar2 = *puVar3;
            puVar3 = puVar3 + 1;
            *(undefined4 *)(iVar6 + *piVar1 * 4) = uVar2;
        } while (iVar4 < 0xb);
        iVar5 = iVar5 + 1;
        iVar6 = iVar6 + 0x34;
        iVar7 = iVar7 + 0x2c;
    } while (iVar5 < 2);
    return;
}

