
bool GameInputSetup(void)

{
    undefined4 *puVar1;
    int *piVar2;
    int iVar3;
    int iVar4;
    undefined4 uVar5;
    int iVar6;
    int iVar7;
    bool bVar8;
    int local_644;
    int local_640;
    undefined4 *local_63c;
    code *local_638;
    int local_634;
    int local_630;
    undefined4 local_62c [383];
    int local_30 [8];

    iVar6 = 0x17f;
    piVar2 = local_30;
    do {
        *piVar2 = iVar6;
        piVar2 = piVar2 + -1;
        iVar6 = iVar6 + -1;
    } while (-1 < iVar6);
    local_634 = 0;
    do {
        local_638 = KBToUInp;
        if (local_634 != 0) {
            local_638 = PadToUInp;
        }
        local_630 = 0;
        local_63c = &DefaultKeyCfg;
        local_640 = 0;
        local_644 = 0;
        do {
            if (local_634 == 0) {
                iVar6 = local_644 + g + 0x1cc84;
            }
            else {
                iVar6 = local_640 + g + 0x1cd54;
            }
            iVar7 = 0;
            do {
                iVar4 = (&KeyCfgToKBIMap)[iVar7];
                iVar3 = (*local_638)(*(undefined4 *)(iVar4 * 4 + iVar6));
                if (0x180 < iVar3) {
                    /* WARNING: Subroutine does not return */
                    __assert_fail("KeyConvFunc(key_pad->sc[KeyCfgToKBIMap[i]]) < ((0x20*4)+256)+1",
                                  "src/mugen/init.c",0x254,"GameInputSetup");
                }
                iVar4 = (*local_638)(*(undefined4 *)(iVar4 * 4 + iVar6));
                puVar1 = local_63c + iVar7;
                iVar7 = iVar7 + 1;
                uVar5 = KBToUInp(*puVar1);
                local_62c[iVar4] = uVar5;
            } while (iVar7 < 0xb);
            local_630 = local_630 + 1;
            local_63c = local_63c + 0xb;
            local_640 = local_640 + 0x34;
            local_644 = local_644 + 0x34;
        } while (local_630 < 2);
        local_634 = local_634 + 1;
    } while (local_634 < 2);
    iVar6 = UInpSetKeyMap(local_62c);
    if (iVar6 == 0) {
        bVar8 = false;
    }
    else {
        iVar6 = UInpReInit();
        bVar8 = iVar6 != 0;
    }
    return bVar8;
}

