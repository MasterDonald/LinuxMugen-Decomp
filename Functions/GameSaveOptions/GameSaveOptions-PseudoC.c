
void GameSaveOptions(void)

{
    int iVar1;
    int iVar2;
    undefined4 uVar3;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    undefined4 unaff_ESI;
    undefined4 *puVar4;
    undefined4 *puVar5;
    undefined8 uVar6;
    char *pcVar7;
    undefined4 auStack_5c [19];

    iVar1 = TPReadFileForWrite("data/mugen.cfg");
    uVar3 = extraout_ECX;
    if (iVar1 == 0) {
        sprintf((char *)(g + 0x20748),"Error saving options");
        ErrorExit();
        uVar3 = extraout_ECX_00;
    }
    iVar2 = TPGroupSeek(iVar1,"Options",uVar3,uVar3);
    if (iVar2 != -1) {
        TPPrintf(iVar1,"Difficulty",&DAT_08276ce0,*(undefined4 *)(g + 0x1e678));
        TPPrintf(iVar1,&DAT_0827d876,&DAT_08276ce0,*(undefined4 *)(g + 0x1e67c));
        TPPrintf(iVar1,&DAT_0827d833,&DAT_08276ce0,*(undefined4 *)(g + 0x1e680));
        unaff_ESI = *(undefined4 *)(g + 0x1e684);
        TPPrintf(iVar1,"GameSpeed",&DAT_08276ce0,unaff_ESI);
        TPPrintf(iVar1,"WavVolume",&DAT_08276ce0,*(undefined4 *)(g + 0x1e688));
        TPPrintf(iVar1,"MidiVolume",&DAT_08276ce0,*(undefined4 *)(g + 0x1e68c));
        TPPrintf(iVar1,&DAT_0827d86d,&DAT_08276ce0,*(undefined4 *)(g + 0x1e6d0));
        TPPrintf(iVar1,"Team.LoseOnKO",&DAT_08276ce0,*(undefined4 *)(g + 0x1e6d4));
    }
    iVar2 = TPGroupSeek(iVar1,"Input",unaff_ESI,unaff_ESI);
    uVar3 = 0;
    if (iVar2 != -1) {
        TPPrintf(iVar1,"p1.joystick.type",&DAT_08276ce0,*(undefined4 *)(g + 0x1e6ac));
        uVar3 = TPPrintf(iVar1,"p2.joystick.type",&DAT_08276ce0,*(undefined4 *)(g + 0x1e6c0));
    }
    puVar4 = (undefined4 *)(g + 0x1cc84);
    puVar5 = auStack_5c;
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
    }
    PlayerKeysConvertToZero(auStack_5c,0x100,uVar3,uVar3);
    pcVar7 = "p1 keys";
    PlayerSaveKeys(iVar1,auStack_5c,"p1 keys");
    puVar4 = (undefined4 *)(g + 0x1ccb8);
    puVar5 = auStack_5c;
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
    }
    PlayerKeysConvertToZero(auStack_5c,0x100,pcVar7,uVar3);
    PlayerSaveKeys(iVar1,auStack_5c,"p2 keys");
    puVar4 = (undefined4 *)(g + 0x1cdbc);
    puVar5 = auStack_5c;
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
    }
    PlayerKeysConvertToZero(auStack_5c,0x80);
    PlayerSaveKeys(iVar1,auStack_5c,"p1 joystick");
    puVar4 = (undefined4 *)(g + 0x1cdf0);
    puVar5 = auStack_5c;
    for (iVar2 = 0xd; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar5 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar5 = puVar5 + 1;
    }
    PlayerKeysConvertToZero(auStack_5c,0x80);
    PlayerSaveKeys(iVar1,auStack_5c,"p2 joystick");
    uVar6 = TPWriteFile(iVar1,"data/mugen.cfg");
    uVar3 = (undefined4)((ulonglong)uVar6 >> 0x20);
    if ((int)uVar6 == 0) {
        sprintf((char *)(g + 0x20748),"Error saving options",uVar3,uVar3);
        ErrorExit();
    }
    TPFree(iVar1);
    return;
}

