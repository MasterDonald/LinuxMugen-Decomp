
void MainLoop(int param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar5;
  char *unaff_EBX;
  char *unaff_ESI;
  char *in_stack_ffffefd4;
  char *pcVar6;
  char local_101c [4108];

LAB_0809d0ad:
  if (((param_1 != 0) && (*(char *)(g + 0x7d44) != '\0')) && (*(int *)(g + 0x8d44) == 0)) {
    IntroScreen();
    *(undefined4 *)(g + 0x8d44) = 1;
  }
LAB_0809d0dd:
  GameResetPersistVars();
  if (param_1 == 0) {
    *(undefined4 *)(g + 0xced4) = 1;
  }
  else {
    ModeSelect();
    if (*(int *)(g + 0xced4) == 10) {
      BGMFree(g + 0x1bbe8);
      return;
    }
  }
LAB_0809cb85:
  GameResetPersistVars();
  iVar3 = g;
  *(undefined4 *)(g + 0x1d50c) = 0;
  if ((param_1 == 0) ||
     ((*(int *)(iVar3 + 0x1d3a0) != 0 &&
      (unaff_ESI = *(char **)(iVar3 + 0x1d3ac), unaff_ESI == (char *)0x0)))) {
    if (*(int *)(g + 0x1d3a0) != 0) {
      DemoFightSetup();
      in_stack_ffffefd4 = (char *)(g + 0x1bbe8);
      BGMFree(in_stack_ffffefd4);
    }
  }
  else {
    in_stack_ffffefd4 = *(char **)(iVar3 + 0xced4);
    iVar3 = CharacterSelectScreen
                      (in_stack_ffffefd4,*(undefined4 *)(iVar3 + 0xced8),unaff_EBX,unaff_EBX);
    if (iVar3 == 0) goto LAB_0809d0dd;
    if ((*(int *)(g + 0xcecc) != 0) && (ArcadeListBuild(), *(int *)(g + 0x5340) != 0)) {
      PrecacheRequestCurArcadeTeam();
      PrecacheStart();
    }
    if (*(int *)(g + 0xced0) != 0) {
      in_stack_ffffefd4 = (char *)(g + 0xcee0 + (2 - *(int *)(g + 0xced0)) * 0x1a9c);
      SurvivalBuildRandomTeam(in_stack_ffffefd4,2 - *(int *)(g + 0xced0),1,unaff_ESI);
    }
  }
  if (param_1 == 0) {
    if (*(char *)(g + 0x2014) != '\0') goto LAB_0809cd09;
    pcVar6 = (char *)(g + 0x1f710);
  }
  else {
    if (*(char *)(g + 0x2014) != '\0') goto LAB_0809cd09;
    unaff_ESI = in_stack_ffffefd4;
    lVar4 = random();
    pcVar6 = (char *)(*(int *)(g + 0x52d0) + 0x3009 + (lVar4 % *(int *)(g + 0x52d4)) * 0x702c);
  }
  strcpy((char *)(g + 0x2014),pcVar6);
LAB_0809cd09:
  TrainingMenuReset();
  do {
    iVar2 = g;
    iVar3 = *(int *)(g + 0x1d510);
    unaff_EBX = (char *)(*(int *)(g + 0x1d50c) + 1);
    *(undefined1 *)(g + 0x3013) = 0;
    *(char **)(iVar2 + 0x1d50c) = unaff_EBX;
    *(int *)(iVar2 + 0x1d510) = iVar3 + 1;
    bVar1 = false;
    if ((*(int *)(g + 0xcecc) != 0) && (iVar3 = ArcadeListGetCurrent(), iVar3 != -1)) {
      unaff_EBX = (char *)(*(int *)(g + 0x52d0) + iVar3 * 0x702c);
      strcpy((char *)(g + 0x2014),unaff_EBX + 0x3009);
      strcpy((char *)(g + 0x3013),unaff_EBX + 0x4008);
    }
    if (*(char *)(g + 0x2014) == '\0') {
LAB_0809cf11:
      unaff_EBX = *(char **)(g + 0xceb4);
      if ((int)unaff_EBX < 1) {
        pcVar6 = (char *)(g + 0x1f710);
      }
      else {
        lVar4 = random();
        pcVar6 = (char *)(*(int *)(g + 0xceb0) + (lVar4 % *(int *)(g + 0xceb4)) * 0x1054);
      }
      in_stack_ffffefd4 = (char *)(g + 0x2014);
      strcpy(in_stack_ffffefd4,pcVar6);
    }
    else {
      in_stack_ffffefd4 = (char *)(g + 0x2014);
      iVar3 = _alemu_stricmp(in_stack_ffffefd4,"random",unaff_ESI,unaff_ESI);
      if (iVar3 == 0) goto LAB_0809cf11;
    }
    unaff_ESI = *(char **)(g + 0xcecc);
    if ((unaff_ESI != (char *)0x0) && (*(int *)(g + 0x1d50c) == 1)) {
      in_stack_ffffefd4 = (char *)0x3c;
      TimerSetSyncFPS();
      iVar3 = *(int *)(g + 0xb460 + *(int *)(g + 0xcecc) * 0x1a9c);
      if (iVar3 != -1) {
        iVar3 = iVar3 * 0x702c;
        unaff_ESI = (char *)(iVar3 + *(int *)(g + 0x52d0) + 0x5028);
        sprintf(local_101c,"%s/%s",iVar3 + *(int *)(g + 0x52d0) + 0x200a,unaff_ESI);
        iVar3 = fileexist(local_101c);
        uVar5 = extraout_ECX;
        if (iVar3 == 0) {
          strcpy(local_101c,unaff_ESI);
          uVar5 = extraout_ECX_00;
        }
        in_stack_ffffefd4 = local_101c;
        PlayCutscene(local_101c,"scene",uVar5,uVar5);
        unaff_EBX = local_101c;
      }
    }
    while( true ) {
      if ((param_1 != 0) &&
         (((*(int *)(g + 0x1d3a0) == 0 || (*(int *)(g + 0x1d3b0) != 0)) &&
          (iVar3 = VersusScreen(), iVar3 == 0)))) goto LAB_0809d066;
      iVar3 = GamePlay();
      if (iVar3 == 0) {
        ErrorExit();
      }
      if (*(int *)(g + 0x104d0) == 0) break;
      GameResetPersistVars();
      unaff_EBX = *(char **)(g + 0xced8);
      in_stack_ffffefd4 = *(char **)(g + 0xced4);
      iVar3 = CharacterSelectScreen(in_stack_ffffefd4,unaff_EBX,unaff_ESI,unaff_ESI);
      if (iVar3 == 0) {
        *(undefined4 *)(g + 0x104d0) = 0;
        goto LAB_0809d0dd;
      }
      *(undefined4 *)(g + 0x104d0) = 0;
      iVar3 = ArcadeListGetCurrent();
      if (iVar3 != -1) {
        unaff_ESI = (char *)(g + 0x2014);
        iVar3 = *(int *)(g + 0x52d0) + iVar3 * 0x702c;
        strcpy(unaff_ESI,(char *)(iVar3 + 0x3009));
        in_stack_ffffefd4 = (char *)(g + 0x3013);
        strcpy(in_stack_ffffefd4,(char *)(iVar3 + 0x4008));
      }
      unaff_EBX = (char *)(*(int *)(g + 0x1d510) + 1);
      *(char **)(g + 0x1d510) = unaff_EBX;
    }
    if (*(int *)(g + 0xcecc) != 0) {
      *(int *)(g + 0x52ec) = *(int *)(g + 0x52ec) + 1;
      iVar3 = ArcadeListGetCurSize();
      *(int *)(g + 0x52e8) = *(int *)(g + 0x52e8) + iVar3;
      iVar3 = ArcadeListEnemiesLeft();
      if (iVar3 == 0) break;
      bVar1 = true;
    }
    if ((!bVar1) || (unaff_ESI = *(char **)(g + 0x104d4), unaff_ESI != (char *)0x0)) break;
  } while( true );
LAB_0809d066:
  iVar3 = PrecacheIsRunning();
  if (iVar3 != 0) {
    PrecacheRequestCancel();
    PrecacheFinish();
  }
  if (param_1 == 0) {
    return;
  }
  CharStopUsingPalAll();
  if (((*(int *)(g + 0xcecc) != 0) ||
      (unaff_ESI = *(char **)(g + 0x1d3a0), unaff_ESI != (char *)0x0)) ||
     (unaff_EBX = *(char **)(g + 0xced0), unaff_EBX != (undefined1 *)0x0)) goto LAB_0809d0ad;
  goto LAB_0809cb85;
}

