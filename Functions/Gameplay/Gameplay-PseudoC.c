
undefined4 GamePlay(void)

{
    int iVar1;
    int iVar2;
    int iVar3;
    char *pcVar4;
    undefined4 uVar5;
    char *pcVar6;
    int iVar7;
    char *pcVar8;
    char *extraout_ECX;
    char *pcVar9;
    char *pcVar10;
    int iVar11;
    char *pcVar12;
    int local_4024;
    int local_4020;
    char local_401c [4096];
    char local_301c [4096];
    char local_201c [4096];
    char local_101c [4108];

    memset(local_201c,0,0xfff);
    memset(local_301c,0,0xfff);
    memset(local_401c,0,0xfff);
    iVar3 = *(int *)(g + 0x1d5f0);
    pcVar4 = g;
    pcVar4[0x14af4] = '\x01';
    pcVar4[0x14af5] = '\0';
    pcVar4[0x14af6] = '\0';
    pcVar4[0x14af7] = '\0';
    if (iVar3 != 0) {
        GameUnloadSystemSprSnd();
    }
    LogPreMatch();
    *(int *)(g + 0x20724) = Ticks;
    iVar3 = GameLoadStage();
    if ((iVar3 == 0) || (iVar3 = GameStgInitFightData(), pcVar4 = g, iVar3 == 0)) {
        LAB_0809d30d:
        uVar5 = 0;
    }
    else {
        *(int *)(g + 0x20724) = Ticks - *(int *)(g + 0x20724);
        pcVar12 = (char *)0xfff;
        GameSetVol(*(undefined4 *)(pcVar4 + 0x1bbd4),*(undefined4 *)(pcVar4 + 0x1bbdc),0xfff,0xfff);
        BGMStart(g + 0x42a8);
        while( true ) {
            iVar3 = 1;
            KBBufferClear();
            PadPoll();
            PadBufClear();
            UInpRefreshFlags();
            UInpBufClear();
            pcVar4 = g + 0xcee0;
            do {
                pcVar4[0] = '\0';
                pcVar4[1] = '\0';
                pcVar4[2] = '\0';
                pcVar4[3] = '\0';
                pcVar4 = pcVar4 + 0x1a9c;
                iVar3 = iVar3 + -1;
            } while (-1 < iVar3);
            local_4020 = 0xcee0;
            local_4024 = 0;
            iVar11 = 0x10410;
            iVar3 = 1;
            do {
                iVar1 = iVar11 + 8;
                iVar11 = iVar11 + 0x5c;
                iVar2 = local_4024 + *(int *)(g + local_4020) * 0x5c;
                local_4024 = local_4024 + 0x1a9c;
                pcVar4 = g + iVar2 + 0xceec;
                pcVar8 = g + iVar1;
                for (iVar7 = 0x17; iVar7 != 0; iVar7 = iVar7 + -1) {
                    *(undefined4 *)pcVar8 = *(undefined4 *)pcVar4;
                    pcVar4 = pcVar4 + 4;
                    pcVar8 = pcVar8 + 4;
                }
                local_4020 = local_4020 + 0x1a9c;
                iVar3 = iVar3 + -1;
            } while (-1 < iVar3);
            GameMatchReset();
            pcVar4 = *(char **)(g + 0x1d5bc);
            pcVar8 = pcVar4 + *(int *)(g + 0x1e684) * 5;
            if ((int)pcVar8 < 10) {
                pcVar8 = (char *)0xa;
            }
            TimerSetSyncFPS(pcVar8);
            pcVar8 = (char *)(float)*(int *)(g + 0x4204);
            CameraMoveAbs((float)*(int *)(g + 0x4200),pcVar8);
            pcVar10 = g;
            pcVar10[0x1d380] = '\x01';
            pcVar10[0x1d381] = '\0';
            pcVar10[0x1d382] = '\0';
            pcVar10[0x1d383] = '\0';
            pcVar10[0x1d37c] = '\x01';
            pcVar10[0x1d37d] = '\0';
            pcVar10[0x1d37e] = '\0';
            pcVar10[0x1d37f] = '\0';
            iVar3 = GameLoop(4);
            if (iVar3 == 0) goto LAB_0809d30d;
            PalGrpResetPalette();
            SndIDStop(0xffffffff);
            LogMatch();
            pcVar10 = g;
            if (((*(int *)(g + 0x1d518) == 0) || (*(int *)(g + 0x104d4) != 0)) ||
                (*(int *)(g + 0xcecc) == 0)) goto LAB_0809d55a;
            if (*(int *)(g + 0x1d514) == *(int *)(g + 0xcecc)) break;
            pcVar8 = (char *)0x0;
            pcVar12 = g;
            GameSetVol(0,0,g,g);
            BGMPause(g + 0x42a8);
            pcVar10 = g;
            pcVar6 = *(char **)(g + 0xae4c);
            pcVar10[0x104d4] = '\x01';
            pcVar10[0x104d5] = '\0';
            pcVar10[0x104d6] = '\0';
            pcVar10[0x104d7] = '\0';
            if (pcVar6 == (char *)0x0) {
                if (*(int *)(pcVar10 + 0xbe50) != 0) {
                    pcVar8 = pcVar10 + 0xbe54;
                    strcpy(local_401c,pcVar8);
                    pcVar10 = g;
                    pcVar4 = g;
                    pcVar4[0x8d44] = '\0';
                    pcVar4[0x8d45] = '\0';
                    pcVar4[0x8d46] = '\0';
                    pcVar4[0x8d47] = '\0';
                    pcVar12 = pcVar6;
                }
                goto LAB_0809d55a;
            }
            iVar3 = ContinueScreen();
            pcVar10 = g;
            if ((iVar3 == 0) ||
                (iVar3 = *(int *)(g + 0x104d0), pcVar10[0x104d4] = '\0', pcVar10[0x104d5] = '\0',
                 pcVar10[0x104d6] = '\0', pcVar10[0x104d7] = '\0', iVar3 != 0)) goto LAB_0809d55a;
                 GameSetVol(*(undefined4 *)(pcVar10 + 0x1bbd4),*(undefined4 *)(pcVar10 + 0x1bbdc),pcVar4,pcVar4
                 );
                 BGMResume(g + 0x42a8);
                 pcVar12 = pcVar4;
        }
        iVar3 = ArcadeListEnemiesLeft();
        iVar11 = ArcadeListGetCurSize();
        pcVar10 = g;
        if (iVar3 <= iVar11) {
            BGMFree(g + 0x42a8);
            pcVar9 = *(char **)(g + *(int *)(g + 0xcecc) * 0x1a9c + 0xb460);
            pcVar6 = (char *)(*(int *)(g + 0x52d0) + (int)pcVar9 * 0x702c);
            pcVar10 = pcVar6 + 0x6027;
            if (pcVar6[0x6027] == '\0') {
                if (*(int *)(g + 0xad50) != 0) {
                    pcVar6 = (char *)ArcadeWinScreen();
                    pcVar9 = extraout_ECX;
                }
                if (*(int *)(g + 0x9d4c) != 0) {
                    pcVar10 = g + 0x9d50;
                    pcVar4 = pcVar9;
                    goto LAB_0809d500;
                }
            }
            else {
                joindirfile(local_101c,pcVar6 + 0x200a,pcVar10,*(int *)(g + 0x52d0));
                pcVar12 = (char *)fileexist(local_101c);
                if (pcVar12 != (char *)0x0) {
                    pcVar10 = local_101c;
                    pcVar4 = pcVar12;
                }
                LAB_0809d500:
                pcVar6 = strcpy(local_201c,pcVar10);
                pcVar8 = pcVar10;
                pcVar12 = pcVar4;
            }
            if (*(int *)(g + 0x8d48) != 0) {
                pcVar8 = g + 0x8d4c;
                strcpy(local_301c,pcVar8);
                pcVar12 = pcVar6;
            }
            pcVar4 = g;
            pcVar4[0x8d44] = '\0';
            pcVar4[0x8d45] = '\0';
            pcVar4[0x8d46] = '\0';
            pcVar4[0x8d47] = '\0';
            pcVar10 = g;
        }
        LAB_0809d55a:
        if (((*(int *)(pcVar10 + 0x1d518) != 0) && (*(int *)(pcVar10 + 0x104d4) == 0)) &&
            ((*(int *)(pcVar10 + 0xced0) != 0 &&
            (BGMFree(pcVar10 + 0x42a8,pcVar8,pcVar12), *(int *)(g + 0xadcc) != 0)))) {
            SurvivalResultsScreen();
            }
            PalGrpClear();
        GameStgDeInitFightData();
        GameUnloadStage();
        TimerSetSyncFPS(0x3c);
        PlayCutscene(local_201c,"scene");
        PlayCutscene(local_301c,"scene");
        PlayCutscene(local_401c,"scene");
        GameReloadSystemSprSnd();
        GameSetVol(*(undefined4 *)(g + 0x1bbd4),*(undefined4 *)(g + 0x1bbdc));
        uVar5 = 1;
    }
    return uVar5;
}

