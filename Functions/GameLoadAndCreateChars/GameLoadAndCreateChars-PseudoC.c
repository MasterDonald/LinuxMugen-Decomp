
undefined4 GameLoadAndCreateChars(int param_1)

{
    int *piVar1;
    int *piVar2;
    int iVar3;
    int iVar4;
    undefined4 uVar5;
    uint *puVar6;
    uint *puVar7;
    undefined4 extraout_ECX;
    uint uVar8;
    uint uVar9;
    int iVar10;
    int iVar11;
    undefined1 *puVar12;
    char **ppcVar13;
    int iVar14;
    undefined4 uStack_90;
    char *pcStack_88;
    int aiStack_84 [2];
    undefined1 auStack_7c [12];
    int local_70 [12];
    undefined4 local_40 [12];

    iVar11 = g + param_1 * 0x1a9c;
    local_70[2] = 0;
    local_70[4] = iVar11 + 0xceec + *(int *)(iVar11 + 0xcee0) * 0x5c;
    iVar11 = *(int *)(local_70[4] + 8);
    if (iVar11 < 1) {
        LAB_080b075a:
        iVar11 = g + param_1 * 0x1a9c;
        local_70[3] = iVar11 + 0xcee0;
        local_70[2] = 0;
        local_70[4] = iVar11 + 0xceec + *(int *)(iVar11 + 0xcee0) * 0x5c;
        puVar12 = auStack_7c;
        if (0 < *(int *)(local_70[4] + 8)) {
            do {
                *(int *)(puVar12 + 0xc) = *(int *)(puVar12 + 0x1c) + 0xc;
                *(int *)(puVar12 + 0x10) = *(int *)(puVar12 + 0x14) * 5;
                iVar3 = *(int *)(puVar12 + 0x14) * 0x14;
                iVar10 = *(int *)(iVar3 + *(int *)(puVar12 + 0x1c) + 0xc);
                iVar14 = iVar10 * 4;
                *(undefined4 *)(puVar12 + -0x10) = *(undefined4 *)(iVar14 + 0x1ce64 + g);
                *(undefined4 *)(puVar12 + -0x14) = 0x80b07ec;
                iVar4 = PlayerNew();
                iVar11 = g;
                *(int *)(iVar14 + 0x1cf64 + g) = iVar4;
                if (iVar4 == 0) {
                    if (*(char *)(iVar11 + 0x20748) == '\0') {
                        iVar11 = iVar11 + 0x20748;
                        *(int *)(puVar12 + -4) = iVar14;
                        *(int *)(puVar12 + -8) = iVar10;
                        ppcVar13 = (char **)(puVar12 + -0xc);
                        *(char **)(puVar12 + -0xc) = "Can\'t create player %i";
                        LAB_080b0818:
                        ppcVar13[-1] = (char *)iVar11;
                        ppcVar13[-2] = (char *)0x80b081e;
                        sprintf(ppcVar13[-1],*ppcVar13);
                    }
                    return 0;
                }
                *(uint *)(iVar4 + 0xc) = (*(int *)(puVar12 + 0x80) != 0) + 1;
                *(undefined4 *)(iVar4 + 0x10) = *(undefined4 *)(puVar12 + 0x80);
                *(undefined4 *)(iVar4 + 0x14) = **(undefined4 **)(puVar12 + 0x18);
                uVar5 = *(undefined4 *)(puVar12 + 0x14);
                *(undefined4 *)(iVar4 + 0x18) = uVar5;
                *(undefined4 *)(puVar12 + -4) = uVar5;
                *(undefined4 *)(puVar12 + -8) = uVar5;
                *(int *)(puVar12 + -0xc) =
                (*(int *)(puVar12 + 0x10) + iVar3) * 0x10 + 0xd05c +
                **(int **)(puVar12 + 0x18) * 0x640 + *(int *)(puVar12 + 0x80) * 0x1a9c + iVar11;
                *(int *)(puVar12 + -0x10) = iVar4;
                *(undefined4 *)(puVar12 + -0x14) = 0x80b0899;
                PlayerRestorePersistVars();
                *(int *)(iVar4 + 0x960) =
                g + 0x1ccec + *(int *)(iVar3 + 0x18 + *(int *)(puVar12 + 0x1c)) * 0x34;
                if (*(int *)(*(int *)(puVar12 + 0xc) + 0x10 + iVar3) != 0) {
                    *(undefined4 *)(iVar4 + 0x262c) = 1;
                }
                *(undefined4 *)(puVar12 + -4) = extraout_ECX;
                *(undefined4 *)(puVar12 + -8) = 0xffffffff;
                iVar11 = *(int *)(puVar12 + 0x1c) + 0x14;
                *(undefined4 *)(puVar12 + -0xc) = *(undefined4 *)(iVar3 + iVar11);
                *(int *)(puVar12 + -0x10) = iVar4;
                *(undefined4 *)(puVar12 + -0x14) = 0x80b08e7;
                PlayerChangePal();
                *(undefined4 *)(iVar4 + 0x13c4) = *(undefined4 *)(iVar3 + iVar11);
                *(undefined4 *)(puVar12 + -0xc) = 1;
                *(int *)(puVar12 + -0x10) = iVar10;
                *(undefined4 *)(puVar12 + -0x14) = 0x80b08fb;
                PlayerEnableSet();
                *(int *)(puVar12 + -0x10) = iVar4;
                *(undefined4 *)(puVar12 + -0x14) = 0x80b0903;
                uVar5 = PlayerCheck();
                *(int *)(iVar4 + 8) = iVar10;
                if (iVar10 + -1 < 0x20) {
                    *(int *)(puVar12 + -4) = iVar11;
                    *(undefined4 *)(puVar12 + -8) = 1;
                    *(int *)(puVar12 + -0xc) = 1 << ((byte)(iVar10 + -1) & 0x1f);
                    *(undefined1 **)(puVar12 + -0x10) = puVar12 + 0x40;
                    *(undefined4 *)(puVar12 + -0x14) = 0x80b0926;
                    PalGrpMakeFlag();
                    *(undefined4 *)(iVar4 + 0x25c8) = *(undefined4 *)(puVar12 + 0x3c);
                    *(undefined4 *)(iVar4 + 0x25cc) = *(undefined4 *)(puVar12 + 0x40);
                    *(undefined4 *)(iVar4 + 0x25d0) = *(undefined4 *)(puVar12 + 0x44);
                    *(undefined4 *)(iVar4 + 0x25d4) = *(undefined4 *)(puVar12 + 0x48);
                    uVar5 = *(undefined4 *)(puVar12 + 0x4c);
                }
                else {
                    *(undefined4 *)(puVar12 + -4) = uVar5;
                    *(undefined4 *)(puVar12 + -8) = 2;
                    *(int *)(puVar12 + -0xc) = 1 << ((char)iVar10 - 0x21U & 0x1f);
                    *(undefined1 **)(puVar12 + -0x10) = puVar12 + 0x20;
                    *(undefined4 *)(puVar12 + -0x14) = 0x80b096c;
                    PalGrpMakeFlag();
                    *(undefined4 *)(iVar4 + 0x25c8) = *(undefined4 *)(puVar12 + 0x1c);
                    *(undefined4 *)(iVar4 + 0x25cc) = *(undefined4 *)(puVar12 + 0x20);
                    *(undefined4 *)(iVar4 + 0x25d0) = *(undefined4 *)(puVar12 + 0x24);
                    *(undefined4 *)(iVar4 + 0x25d4) = *(undefined4 *)(puVar12 + 0x28);
                    uVar5 = *(undefined4 *)(puVar12 + 0x2c);
                }
                *(undefined4 *)(iVar4 + 0x25d8) = uVar5;
                piVar1 = (int *)(puVar12 + 0x18);
                *(int *)(puVar12 + 0x10) = *(int *)(puVar12 + 0x10) + 1;
                piVar2 = (int *)(puVar12 + 0x10);
                puVar12 = puVar12 + -4;
            } while (*piVar2 < *(int *)(*piVar1 + 8));
        }
        return 1;
    }
    iVar14 = 0;
    LAB_080b0668:
    iVar10 = *(int *)(iVar14 + 0xc + local_70[4]);
    if (*(int *)(local_70[4] + 0x10 + iVar14) == -1) goto LAB_080b073e;
    if (iVar10 + -1 < 4) {
        *(int *)(g + 0x20710 + iVar10 * 4) = Ticks;
    }
    iVar3 = PlayerCacheLoad(*(undefined4 *)(local_70[4] + 0x10 + iVar14));
    iVar4 = g;
    iVar11 = g + 4;
    *(int *)(g + 0x1ce64 + iVar10 * 4) = iVar3;
    if (iVar3 != 0) {
        if (iVar10 + -1 < 4) {
            iVar10 = iVar10 * 4 + 0x2070c;
            *(int *)(iVar10 + iVar11) = Ticks - *(int *)(iVar10 + iVar11);
            iVar11 = *(int *)(local_70[4] + 8);
        }
        else {
            iVar11 = *(int *)(local_70[4] + 8);
        }
        goto LAB_080b073e;
    }
    aiStack_84[1] = iVar14;
    aiStack_84[0] = iVar10;
    ppcVar13 = &pcStack_88;
    pcStack_88 = "\nError loading p%i";
    puVar7 = (uint *)(iVar4 + 0x20748);
    do {
        puVar6 = puVar7;
        puVar7 = puVar6 + 1;
        uVar8 = *puVar6 + 0xfefefeff & (*puVar6 ^ 0xffffffff);
        uVar9 = uVar8 & 0x80808080;
    } while (uVar9 == 0);
    if ((uVar8 & 0x8080) == 0) {
        uVar9 = uVar9 >> 0x10;
        puVar7 = (uint *)((int)puVar6 + 6);
    }
    iVar11 = (int)puVar7 + g + (-(iVar4 + 0x20748) - (uint)CARRY1((byte)uVar9,(byte)uVar9)) + 0x20745;
    goto LAB_080b0818;
    LAB_080b073e:
    iVar14 = iVar14 + 0x14;
    local_70[2] = local_70[2] + 1;
    if (iVar11 <= local_70[2]) goto LAB_080b075a;
    goto LAB_080b0668;
}

