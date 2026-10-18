       meInit(void)

{
  char *pcVar1;
  int iVar2;
  FILE *__stream;
  uint uVar3;
  size_t sVar4;
  uint *puVar5;
  uint *puVar6;
  uint *puVar7;
  uint uVar8;
  undefined4 *puVar9;
  char *pcVar10;
  char in_stack_00000044;
  char in_stack_00000144;
  int in_stack_00000188;
  int in_stack_0000028c;
  int in_stack_00000290;
  undefined4 in_stack_00000294;
  int in_stack_000002e0;
  int in_stack_000002e4;
  undefined4 in_stack_000002e8;
  undefined4 in_stack_000002ec;
  undefined4 *in_stack_00000330;

  ElecInit();
  if (*(code **)(system_driver + 0x20) != (code *)0x0) {
    (**(code **)(system_driver + 0x20))();
  }
  pcVar1 = (char *)ecalloc();
  if (pcVar1 == (char *)0x0) {
    printf("Can\'t allocate game variables.\n\n");
                    /* WARNING: Subroutine does not return */
    exit(1);
  }
  g = pcVar1;
  iVar2 = GameConfigRead();
  if (iVar2 == 0) {
    strcat(g + 0x20748,"\nError reading data/mugen.cfg");
    ErrorExit();
  }
  if (in_stack_00000290 != 0) {
    pcVar1 = g;
    pcVar1[0x1d57c] = '\x01';
    pcVar1[0x1d57d] = '\0';
    pcVar1[0x1d57e] = '\0';
    pcVar1[0x1d57f] = '\0';
    pcVar1[0x1d58c] = '\0';
    pcVar1[0x1d58d] = '\0';
    pcVar1[0x1d58e] = '\0';
    pcVar1[0x1d58f] = '\0';
    pcVar1[0x1d584] = '\0';
    pcVar1[0x1d585] = '\0';
    pcVar1[0x1d586] = '\0';
    pcVar1[0x1d587] = '\0';
    pcVar1[0x1d580] = '\0';
    pcVar1[0x1d581] = '\0';
    pcVar1[0x1d582] = '\0';
    pcVar1[0x1d583] = '\0';
    pcVar1[0x1d588] = '\0';
    pcVar1[0x1d589] = '\0';
    pcVar1[0x1d58a] = '\0';
    pcVar1[0x1d58b] = '\0';
  }
  pcVar1 = g;
  if (in_stack_00000188 != 0) {
    pcVar1[0x1d630] = '\x01';
    pcVar1[0x1d631] = '\0';
    pcVar1[0x1d632] = '\0';
    pcVar1[0x1d633] = '\0';
    strcpy(pcVar1 + 0x1d634,&stack0x0000018c);
    __stream = fopen(g + 0x1d634,"wt");
    if (__stream != (FILE *)0x0) {
      fclose(__stream);
    }
  }
  puVar9 = (undefined4 *)&stack0x0000029c;
  pcVar1 = g + 0x1e634;
  for (iVar2 = 0x11; pcVar10 = g, iVar2 != 0; iVar2 = iVar2 + -1) {
    *(undefined4 *)pcVar1 = *puVar9;
    puVar9 = puVar9 + 1;
    pcVar1 = pcVar1 + 4;
  }
  *(undefined4 *)(g + 0x20b4c) = in_stack_000002e8;
  *(undefined4 *)(pcVar10 + 0x20b58) = in_stack_000002ec;
  *(undefined4 *)(pcVar10 + 0x1e674) = in_stack_00000294;
  if (in_stack_00000044 == '\0') {
    *in_stack_00000330 = 1;
  }
  else {
    pcVar10[0x20730] = '\x01';
    pcVar10[0x20731] = '\0';
    pcVar10[0x20732] = '\0';
    pcVar10[0x20733] = '\0';
  }
  TimerInit();
  printf("Initializing keyboard.\n");
  KBInit();
  KBBufferChange();
  KBRepeatSet();
  KBFilterRelease = 0;
  KBLEDLockSet();
  KBLEDSet();
  GameDefKeyInit();
  iVar2 = UInpInit();
  if (iVar2 == 0) {
    ErrorExitM();
  }
  printf("Initializing sound...");
  if (in_stack_0000028c != 0) {
    pcVar1 = g;
    pcVar1[0x1bbcc] = '\0';
    pcVar1[0x1bbcd] = '\0';
    pcVar1[0x1bbce] = '\0';
    pcVar1[0x1bbcf] = '\0';
    SndSetMode();
    printf("sound is disabled\n");
  }
  if (*(int *)(g + 0x1bbcc) != 0) {
    iVar2 = SndInit();
    if (iVar2 == 0) {
      iVar2 = SndInit();
      if (iVar2 == 0) {
        iVar2 = SndInit();
        if (iVar2 == 0) {
          pcVar1 = g;
          pcVar1[0x1bbcc] = '\0';
          pcVar1[0x1bbcd] = '\0';
          pcVar1[0x1bbce] = '\0';
          pcVar1[0x1bbcf] = '\0';
          SndSetMode();
          pcVar1 = "failed to init hardware.\n";
        }
        else {
          pcVar1 = "no wave device found.\n";
        }
      }
      else {
        pcVar1 = "no midi device found.\n";
      }
    }
    else {
      SndSetMode();
      pcVar1 = "ok\n";
    }
    printf(pcVar1);
    ErrorSet();
    if (*(int *)(g + 0x1d580) != 0) {
      MP3Init();
    }
  }
  printf("Initializing graphics.\n");
  iVar2 = G_Init();
  if (iVar2 == 0) {
    ErrorExit();
  }
  iVar2 = G_SetRenderMode();
  if (iVar2 == 0) {
    ErrorExit();
  }
  iVar2 = G_SetMode();
  if (iVar2 == 0) {
    if (((*(int *)(g + 0x1d54c) == 0x280) && (*(int *)(g + 0x1d550) == 0x1e0)) &&
       (*(int *)(g + 0x1d554) == 0x10)) {
      ErrorExit();
    }
    else {
      printf("\nError: Can\'t change video mode to %ix%ix%ibits\n");
      printf("Switch to 640x480x16bits? (y/n)\n\n");
      fflush((FILE *)stdout);
      KBBufferClear();
      do {
        uVar3 = KBgetchraw();
      } while ((uVar3 & 0x100) != 0);
      if (uVar3 != 0x15) {
        ErrorExit();
      }
      iVar2 = G_SetMode();
      if (iVar2 == 0) {
        ErrorExitM();
      }
    }
  }
  if (*(int *)(g + 0x1d554) == 0x20) {
    G_SetRGBtoBGR();
  }
  if (*(int *)(g + 0x1d55c) != 0) {
    G_SetBlitMode();
  }
  pcVar1 = g;
  pcVar1[0x1d39c] = '\x01';
  pcVar1[0x1d39d] = '\0';
  pcVar1[0x1d39e] = '\0';
  pcVar1[0x1d39f] = '\0';
  SwitchCallbacksInit();
  iVar2 = GameVarInit();
  if (iVar2 == 0) {
    ErrorExit();
  }
  strcpy(g + 0xfff,g);
  pcVar10 = g;
  pcVar1 = g + 0xfff;
  sVar4 = strlen(pcVar1);
  if (pcVar10[sVar4 + 0xffe] == '\\') {
    sVar4 = strlen(pcVar1);
    pcVar10[sVar4 + 0xffe] = '\0';
    pcVar10 = g;
  }
  sVar4 = strlen(pcVar10 + 0xfff);
  if (pcVar10[sVar4 + 0xffe] != '/') {
    strcat(pcVar10 + 0xfff,"/");
  }
  iVar2 = GameVarLoadFonts();
  if (iVar2 == 0) {
    ErrorExit();
  }
  GameResetOptions();
  GameLoadOptions();
  if (0 < in_stack_000002e0) {
    *(int *)(g + 0x1e678) = in_stack_000002e0;
  }
  if (in_stack_000002e4 + 9U < 0x13) {
    *(int *)(g + 0x1e684) = in_stack_000002e4;
  }
  if (in_stack_00000144 == '\0') goto LAB_080992ce;
  puVar7 = (uint *)&stack0x00000144;
  builtin_strncpy(g + 0x15aff,"data/",6);
  puVar6 = puVar7;
  do {
    puVar5 = puVar6;
    puVar6 = puVar5 + 1;
    uVar3 = *puVar5 + 0xfefefeff & (*puVar5 ^ 0xffffffff);
    uVar8 = uVar3 & 0x80808080;
  } while (uVar8 == 0);
  if ((uVar3 & 0x8080) == 0) {
    uVar8 = uVar8 >> 0x10;
    puVar6 = (uint *)((int)puVar5 + 6);
  }
  if ((int)puVar6 + ((-3 - (uint)CARRY1((byte)uVar8,(byte)uVar8)) - (int)puVar7) < 4) {
LAB_08099294:
    strcat(&stack0x00000144,"/system.def");
  }
  else {
    do {
      uVar3 = *puVar7;
      puVar7 = puVar7 + 1;
    } while ((uVar3 + 0xfefefeff & (uVar3 ^ 0xffffffff) & 0x80808080) == 0);
    iVar2 = _alemu_stricmp();
    if (iVar2 != 0) goto LAB_08099294;
  }
  splitdirfile();
LAB_080992ce:
  iVar2 = GameLoadSystem();
  if (iVar2 == 0) {
    strcat(g + 0x20748,"\nError loading system data: ");
    strcat(g + 0x20748,g + 0x15aff);
    strcat(g + 0x20748,g + 0x14b00);
    ErrorExit();
  }
  GameSetVol();
  return;
}
