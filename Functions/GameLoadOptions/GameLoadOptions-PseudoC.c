
undefined4 GameLoadOptions(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    undefined4 extraout_ECX;
    undefined4 extraout_ECX_00;
    undefined4 uVar5;
    undefined4 uStack_c;

    iVar3 = TPReadFile("data/mugen.cfg");
    if (iVar3 == 0) {
        sprintf((char *)(g + 0x20748),"Error loading options",0,0);
        ErrorExit();
    }
    iVar4 = TPGroupSeek(iVar3,"Options");
    uVar5 = extraout_ECX;
    if (iVar4 != -1) {
        TPGetValueInt(iVar3,"Difficulty",g + 0x1e678,extraout_ECX);
        TPGetValueInt(iVar3,&DAT_0827d876,g + 0x1e67c);
        TPGetValueInt(iVar3,&DAT_0827d833,g + 0x1e680);
        TPGetValueInt(iVar3,"GameSpeed",g + 0x1e684);
        TPGetValueInt(iVar3,"WavVolume",g + 0x1e688);
        TPGetValueInt(iVar3,"MidiVolume",g + 0x1e68c);
        TPScanf(iVar3,"motif","%s",g + 0x1e6e0);
        if (*(char *)(g + 0x1e6e0) == '\0') {
            memcpy((void *)(g + 0x1e6e0),"data/system.def",0x10);
        }
        splitdirfile(g + 0x1e6e0,g + 0x15aff,g + 0x14b00);
        TPGetValueInt(iVar3,&DAT_0827d86d,g + 0x1e6d0);
        TPGetValueInt(iVar3,"Team.LoseOnKO",g + 0x1e6d4);
        uVar5 = extraout_ECX_00;
    }
    iVar4 = g;
    *(undefined4 *)(g + 0x1e6a4) = 1;
    PlayerLoadKeys(iVar3,iVar4 + 0x1cc84,"p1 keys",uVar5);
    PlayerLoadKeys(iVar3,g + 0x1ccb8,"p2 keys");
    uVar5 = 0x100;
    PlayerKeysRemoveZero(g + 0x1cc84,0x100);
    PlayerKeysRemoveZero(g + 0x1ccb8,0x100);
    iVar4 = TPGroupSeek(iVar3,"Input");
    if (iVar4 != -1) {
        TPGetValueInt(iVar3,"p1.joystick.type",g + 0x1e6ac,uVar5);
        TPGetValueInt(iVar3,"p2.joystick.type",g + 0x1e6c0);
    }
    iVar2 = g;
    iVar4 = *(int *)(g + 0x1e6ac);
    iVar1 = *(int *)(g + 0x1e6c0);
    *(int *)(g + 0x1ce34) = iVar4;
    *(uint *)(iVar2 + 0x1ce2c) = (uint)(iVar4 != 0);
    *(int *)(iVar2 + 0x1ce38) = iVar1;
    *(uint *)(iVar2 + 0x1ce30) = (uint)(iVar1 != 0);
    PlayerLoadKeys(iVar3,iVar2 + 0x1cdbc,"P1 joystick",iVar4);
    PlayerLoadKeys(iVar3,g + 0x1cdf0,"P2 joystick");
    PlayerKeysRemoveZero(g + 0x1cdbc,0x80);
    PlayerKeysRemoveZero(g + 0x1cdf0,0x80);
    TPFree(iVar3);
    GameInitPads();
    iVar3 = GameInputSetup();
    if (iVar3 == 0) {
        ErrorExitM("Cannot init input");
    }
    return uStack_c;
}

