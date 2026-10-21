
int GameMatchWinner(void)

{
    int iVar1;
    int iVar2;
    int iVar3;

    iVar3 = 0;
    if (((*(int *)(g + 0x1d444) == 3) && (*(int *)(g + 0x1d450) < *(int *)(g + 0x14234))) ||
        (iVar1 = 0, *(int *)(g + 0x1d444) < 3)) {
        iVar3 = 0;
        }
        else {
            for (; iVar1 < 2; iVar1 = iVar1 + 1) {
                iVar2 = *(int *)(g + 0x1d41c + iVar1 * 4);
                if ((*(int *)(g + 0x1d424) == 0) &&
                    ((*(int *)(g + 0x1d448) == iVar1 + 1 ||
                    ((*(int *)(g + 0x1d448) == 0 &&
                    (*(int *)(g + 0xe974 + iVar1 * 0x1a9c) < *(int *)(g + 0x1d428) + 1)))))) {
                    iVar2 = iVar2 + 1;
                    }
                    if (*(int *)(g + 0xe970 + iVar1 * 0x1a9c) <= iVar2) {
                        if (iVar3 == 0) {
                            iVar3 = iVar1 + 1;
                        }
                        else if (*(int *)(g + 0xcecc) == 0) {
                            iVar3 = 1;
                        }
                        else {
                            iVar3 = 3 - *(int *)(g + 0xcecc);
                        }
                    }
            }
        }
        return iVar3;
}

