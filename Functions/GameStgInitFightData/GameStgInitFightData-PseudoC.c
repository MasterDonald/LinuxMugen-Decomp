
undefined4 GameStgInitFightData(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int iVar6;
    undefined4 uVar7;
    undefined4 extraout_ECX;
    int iVar8;
    int unaff_ESI;
    char *unaff_EDI;
    undefined8 uVar9;
    int *local_1048;
    int local_1044;
    undefined4 local_1034;
    undefined4 local_1030;
    char local_102c [4096];
    undefined4 local_2c;
    undefined4 local_28;
    undefined4 local_24;

    iVar3 = g;
    iVar8 = 0;
    iVar1 = g + 0x14ad4;
    do {
        iVar2 = g + iVar8 * 0x1a9c;
        if (((1 < *(int *)(iVar2 + 0xcee4)) && (*(int *)(g + 0xced0) != 2 - iVar8)) &&
            (iVar4 = SysExplodParseGetSprGrpImgNo
            (iVar3 + 0x12be0 + iVar8 * 0x158,&local_1034,&local_1030,unaff_EDI),
             iVar4 != 0)) {
            local_2c = local_1034;
        local_28 = local_1030;
        local_24 = 0xffffffff;
        local_1044 = 0;
        if (0 < *(int *)(iVar2 + 0xcee4)) {
            unaff_EDI = local_102c;
            local_1048 = (int *)(iVar2 + 0xcefc);
            do {
                iVar4 = *local_1048 * 0x702c;
                joindirfile(unaff_EDI,iVar4 + *(int *)(g + 0x52d0) + 0x200a,
                            iVar4 + *(int *)(g + 0x52d0) + 0x100b,unaff_ESI);
                iVar5 = TPReadFile(unaff_EDI);
                if (iVar5 != 0) {
                    local_102c[0] = '\0';
                    iVar6 = TPGroupSeek(iVar5,"Files",iVar5,iVar5);
                    if ((iVar6 != -1) &&
                        (uVar9 = TPGetValue(iVar5,"sprite",extraout_ECX,extraout_ECX), (int)uVar9 != 0)) {
                        joindirfile(unaff_EDI,iVar4 + *(int *)(g + 0x52d0) + 0x200a,uVar9);
                        }
                        TPFree(iVar5);
                    if (local_102c[0] != '\0') {
                        SpriteSetBufReadMode(0);
                        uVar7 = SpriteReadSFFList(unaff_EDI,&local_2c);
                        *(undefined4 *)(iVar8 * 0x10 + iVar1 + local_1044 * 4) = uVar7;
                        SpriteSetBufReadMode(*(undefined4 *)(g + 0x1d5ec));
                    }
                }
                unaff_ESI = local_1044 + 1;
                local_1048 = local_1048 + 0x17;
                local_1044 = unaff_ESI;
            } while (unaff_ESI < *(int *)(iVar2 + 0xcee4));
        }
             }
             iVar8 = iVar8 + 1;
    } while (iVar8 < 2);
    return 1;
}

