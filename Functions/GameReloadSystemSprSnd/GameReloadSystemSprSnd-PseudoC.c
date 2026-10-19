
void GameReloadSystemSprSnd(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    int iVar5;
    int extraout_ECX;
    int extraout_ECX_00;
    int iVar6;
    undefined1 local_100c [4104];

    iVar4 = g;
    if ((*(int *)(g + 0x16b00) == 0) && (*(char *)(g + 0x16b04) != '\0')) {
        iVar1 = SpriteReadFile(g + 0x16b04);
        iVar4 = g;
        *(int *)(g + 0x16b00) = iVar1;
        if (iVar1 == 0) {
            ErrorExitM("Out of memory loading system file %s",iVar4 + 0x16b04);
            iVar4 = g;
        }
    }
    iVar1 = *(int *)(iVar4 + 0x17b04);
    if ((iVar1 == 0) && (*(char *)(iVar4 + 0x17b08) != '\0')) {
        iVar2 = SndReadFile(iVar4 + 0x17b08);
        iVar4 = g;
        *(int *)(g + 0x17b04) = iVar2;
        iVar1 = extraout_ECX;
        if (iVar2 == 0) {
            ErrorExitM("Out of memory loading system file %s",iVar4 + 0x17b08,0,0);
            iVar1 = extraout_ECX_00;
            iVar4 = g;
        }
    }
    if ((((*(int *)(iVar4 + 0x18b38) == 0) || (iVar1 = *(int *)(iVar4 + 0x18b34), iVar1 == 0)) ||
        (*(int *)(iVar4 + 0x18b3c) == 0)) || (*(int *)(iVar4 + 0x18b40) == 0)) {
        iVar2 = iVar4 + 0x14b00;
    iVar4 = iVar4 + 0x15aff;
    joindirfile(local_100c,iVar4,iVar2,iVar1);
    iVar3 = TPReadFile(local_100c);
    if (iVar3 == 0) {
        iVar4 = g + 0x14b00;
        iVar2 = iVar3;
        iVar1 = iVar3;
        ErrorExitM("Out of memory loading system file %s",iVar4,0,0);
    }
    iVar6 = g;
    if (*(int *)(g + 0x18b38) == 0) {
        iVar5 = BGArrayReadTP(iVar3,g + 0x15aff,"TitleBG",*(undefined4 *)(g + 0x16b00),
                              *(undefined4 *)(g + 0x18b08));
        iVar6 = g;
        *(int *)(g + 0x18b38) = iVar5;
        if (iVar5 == 0) {
            ErrorExitM("Error reloading TitleBG",iVar4,iVar2,iVar1);
            iVar6 = g;
        }
    }
    if (*(int *)(iVar6 + 0x18b34) == 0) {
        iVar5 = BGArrayReadTP(iVar3,iVar6 + 0x15aff,"VersusBG",*(undefined4 *)(iVar6 + 0x16b00),
                              *(undefined4 *)(iVar6 + 0x18b08));
        iVar6 = g;
        *(int *)(g + 0x18b34) = iVar5;
        if (iVar5 == 0) {
            ErrorExitM("Error reloading VersusBG",iVar4,iVar2,iVar1);
            iVar6 = g;
        }
    }
    if (*(int *)(iVar6 + 0x18b3c) == 0) {
        iVar4 = BGArrayReadTP(iVar3,iVar6 + 0x15aff,"SelectBG",*(undefined4 *)(iVar6 + 0x16b00),
                              *(undefined4 *)(iVar6 + 0x18b08));
        iVar6 = g;
        *(int *)(g + 0x18b3c) = iVar4;
        if (iVar4 == 0) {
            ErrorExitM("Error reloading SelectBG");
            iVar6 = g;
        }
    }
    if (*(int *)(iVar6 + 0x18b40) == 0) {
        iVar4 = BGArrayReadTP(iVar3,iVar6 + 0x15aff,"OptionBG",*(undefined4 *)(iVar6 + 0x16b00),
                              *(undefined4 *)(iVar6 + 0x18b08));
        *(int *)(g + 0x18b40) = iVar4;
        if (iVar4 == 0) {
            ErrorExitM("Error reloading OptionBG");
        }
    }
    TPFree(iVar3);
        }
        return;
}

