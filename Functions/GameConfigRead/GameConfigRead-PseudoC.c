
undefined4 GameConfigRead(undefined4 param_1)

{
  char cVar1;
  undefined4 ******ppppppuVar2;
  int iVar3;
  char *pcVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined4 *******pppppppuVar8;
  uint uVar9;
  uint uVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  undefined4 extraout_ECX_09;
  undefined4 extraout_ECX_10;
  undefined4 extraout_ECX_11;
  undefined4 extraout_ECX_12;
  undefined4 uVar11;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 extraout_EDX_01;
  undefined4 uVar12;
  undefined4 *******pppppppuVar13;
  undefined4 *puVar14;
  undefined4 *puVar15;
  undefined8 uVar16;
  char *pcVar17;
  undefined4 ******local_134;
  undefined4 ******local_130;
  undefined4 ******local_12c;
  uint local_128;
  int local_124;
  undefined4 ******local_120;
  char local_11c [268];

  iVar3 = TPReadFile(param_1);
  if ((iVar3 == 0) && (iVar3 = TPReadFile(param_1), iVar3 == 0)) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t open %s. Make sure you have extracted with directories";
    goto LAB_080d4c73;
  }
  iVar5 = TPGroupSeek(iVar3,"Rules",iVar3,iVar3);
  if (iVar5 == -1) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t load rules.";
    goto LAB_080d4c73;
  }
  pcVar4 = (char *)TPGetValue(iVar3,"gametype");
  if (pcVar4 == (char *)0x0) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t get game type.";
    goto LAB_080d4c73;
  }
  iVar5 = *(int *)(__ctype_tolower + *pcVar4 * 4);
  if (iVar5 == 0x6d) {
    *(undefined4 *)(g + 0x1cc74) = 1;
  }
  else {
    if (iVar5 != 0x76) {
      pcVar4 = (char *)(g + 0x20748);
      pcVar17 = "Can\'t get game type.";
      goto LAB_080d4c73;
    }
    *(undefined4 *)(g + 0x1cc74) = 0;
  }
  iVar5 = g;
  *(undefined4 *)(g + 0x1cc78) = 0x40400000;
  *(undefined4 *)(iVar5 + 0x1cc7c) = 0x40000000;
  *(undefined4 *)(iVar5 + 0x1cc80) = 0x3f800000;
  TPGetValueFloat(iVar3,"default.attack.lifetopowermul",iVar5 + 0x1cc78,extraout_ECX);
  TPGetValueFloat(iVar3,"default.gethit.lifetopowermul",g + 0x1cc7c);
  TPGetValueFloat(iVar3,"super.targetdefencemul",g + 0x1cc80);
  iVar6 = TPGroupSeek(iVar3,"config");
  iVar5 = g;
  if (iVar6 == -1) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t access config.";
    goto LAB_080d4c73;
  }
  *(undefined4 *)(g + 0x1d5bc) = 0x3c;
  *(undefined4 *)(iVar5 + 0x1d5c0) = 1;
  TPGetValueInt(iVar3,"gamespeed",iVar5 + 0x1d5bc,param_1);
  TPGetValueInt(iVar3,"drawshadows",g + 0x1d5c0);
  TPGetValueInt(iVar3,"afterimagemax",g + 0x1d5c4);
  iVar6 = g;
  iVar5 = *(int *)(g + 0x1d5c4);
  if (iVar5 < 1) {
    *(undefined4 *)(g + 0x1d5c4) = 1;
  }
  TPGetValueInt(iVar3,"layeredspritemax",iVar6 + 0x1d5c8,extraout_ECX_00);
  iVar6 = g;
  if (*(int *)(g + 0x1d5c8) < 0x20) {
    *(undefined4 *)(g + 0x1d5c8) = 0x20;
  }
  TPGetValueInt(iVar3,"explodmax",iVar6 + 0x1d5cc,extraout_EDX);
  iVar6 = g;
  if (*(int *)(g + 0x1d5cc) < 8) {
    *(undefined4 *)(g + 0x1d5cc) = 8;
  }
  TPGetValueInt(iVar3,"sysexplodmax",iVar6 + 0x1d5d0);
  iVar6 = g;
  if (*(int *)(g + 0x1d5d0) < 8) {
    *(undefined4 *)(g + 0x1d5d0) = 8;
  }
  TPGetValueInt(iVar3,"helpermax",iVar6 + 0x1d5d4,param_1);
  iVar6 = g;
  if (*(int *)(g + 0x1d5d4) < 4) {
    *(undefined4 *)(g + 0x1d5d4) = 4;
  }
  if (0x38 < *(int *)(iVar6 + 0x1d5d4)) {
    *(undefined4 *)(iVar6 + 0x1d5d4) = 0x38;
    iVar6 = g;
  }
  TPGetValueInt(iVar3,"playerprojectilemax",iVar6 + 0x1d5d8,iVar5);
  iVar6 = g;
  if (*(int *)(g + 0x1d5d8) < 5) {
    *(undefined4 *)(g + 0x1d5d8) = 5;
  }
  TPGetValueInt(iVar3,"playerpalmax",iVar6 + 0x1d5dc,extraout_ECX_01);
  iVar6 = g;
  if (*(int *)(g + 0x1d5dc) < 0xc) {
    *(undefined4 *)(g + 0x1d5dc) = 0xc;
  }
  pcVar4 = "firstrun";
  TPGetValueInt(iVar3,"firstrun",iVar6 + 0x1d5e0,extraout_EDX_00);
  iVar6 = TPGroupSeek(iVar3,"Debug");
  uVar12 = extraout_ECX_02;
  if (iVar6 != -1) {
    TPGetValueInt(iVar3,"debug",g + 0x20734,iVar5);
    TPGetValueInt(iVar3,"allowdebugmode",g + 0x20738);
    TPGetValueInt(iVar3,"allowdebugkeys",g + 0x2073c);
    iVar5 = g;
    if (*(int *)(g + 0x20734) != 0) {
      *(undefined4 *)(g + 0x20738) = 1;
      TPGetValueInt(iVar3,"speedup",iVar5 + 0x20b48,extraout_EDX_01);
    }
    pcVar4 = (char *)TPGetValue(iVar3,"startstage",pcVar4,pcVar4);
    uVar12 = extraout_ECX_03;
    if (pcVar4 != (char *)0x0) {
      strncpy((char *)(g + 0x1f710),pcVar4,0xfff);
      uVar12 = extraout_ECX_04;
    }
  }
  iVar5 = TPGroupSeek(iVar3,"video linux",uVar12,uVar12);
  if (iVar5 + 1 == 0) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t load video config: [%s]";
    goto LAB_080d4c73;
  }
  uVar7 = TPGetValueInt(iVar3,"width",g + 0x1d54c,iVar5 + 1);
  pppppppuVar8 = (undefined4 *******)TPGetValueInt(iVar3,"height",g + 0x1d550);
  uVar9 = TPGetValueInt(iVar3,"depth",g + 0x1d554);
  uVar10 = TPGetValueInt(iVar3,"vretrace",g + 0x1d568);
  iVar5 = g;
  if ((uVar7 & (uint)pppppppuVar8 & uVar9 & uVar10) != 1) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t read video config.";
    goto LAB_080d4c73;
  }
  *(undefined4 *)(g + 0x1d560) = 0;
  TPGetValueInt(iVar3,"stretch",iVar5 + 0x1d560,uVar9);
  iVar5 = g;
  *(undefined4 *)(g + 0x1d564) = 0;
  TPGetValueInt(iVar3,"doubleres",iVar5 + 0x1d564);
  iVar5 = g;
  if (*(int *)(g + 0x1d564) < 0) {
    *(undefined4 *)(g + 0x1d564) = 0;
  }
  if (4 < *(int *)(iVar5 + 0x1d564)) {
    *(undefined4 *)(iVar5 + 0x1d564) = 4;
    iVar5 = g;
  }
  *(undefined4 *)(iVar5 + 0x1d558) = 1;
  pcVar4 = (char *)TPGetValue(iVar3,"fullscreen",extraout_ECX_05,extraout_ECX_05);
  iVar5 = g;
  if (pcVar4 != (char *)0x0) {
    cVar1 = *pcVar4;
    iVar6 = *(int *)(__ctype_tolower + cVar1 * 4);
    if (iVar6 == 0x30) {
      *(undefined4 *)(g + 0x1d558) = 2;
    }
    else if (iVar6 == 0x31) {
      *(undefined4 *)(g + 0x1d558) = 1;
    }
    else {
      *(undefined4 *)(g + 0x1d558) = 0;
      sprintf((char *)(iVar5 + 0x20748),"Unrecognised option: %s.  Trying to autodetect...",pcVar4,
              (int)cVar1);
    }
  }
  if (*(code **)(system_driver + 0x6c) == (code *)0x0) {
    local_130 = (undefined4 *******)0x0;
  }
  else {
    local_130 = (undefined4 ******)(**(code **)(system_driver + 0x6c))();
  }
  iVar5 = g;
  if ((((undefined4 *******)local_130 != (undefined4 *******)0x0) &&
      ((undefined4 *******)local_130 != *(undefined4 ********)(g + 0x1d554))) &&
     (*(int *)(g + 0x1d558) == 2)) {
    *(undefined4 *******)(g + 0x1d554) = local_130;
  }
  *(undefined4 *)(iVar5 + 0x1d55c) = 0;
  pcVar4 = (char *)TPGetValue(iVar3,"blitmode",iVar5,iVar5);
  if (pcVar4 != (char *)0x0) {
    iVar5 = *(int *)(__ctype_tolower + *pcVar4 * 4);
    if (iVar5 == 0x70) {
      *(undefined4 *)(g + 0x1d55c) = 1;
    }
    else if (iVar5 < 0x71) {
      if (iVar5 != 0x6e) {
LAB_080d44f2:
        pcVar4 = (char *)(g + 0x20748);
        pcVar17 = "Unrecognised BlitMode: %s";
        goto LAB_080d4c73;
      }
      *(undefined4 *)(g + 0x1d55c) = 0;
    }
    else {
      if (iVar5 != 0x74) goto LAB_080d44f2;
      *(undefined4 *)(g + 0x1d55c) = 2;
    }
  }
  uVar16 = TPGroupSeek(iVar3,"sound linux",uVar9,uVar9);
  iVar5 = g;
  if ((int)uVar16 == -1) {
    pcVar4 = (char *)(g + 0x20748);
    pcVar17 = "Can\'t load sound config: [%s]";
  }
  else {
    *(undefined4 *)(g + 0x1bbd0) = 0xaf;
    *(undefined4 *)(iVar5 + 0x1bbd4) = 200;
    *(undefined4 *)(iVar5 + 0x1bbe4) = 0xaf;
    *(undefined4 *)(iVar5 + 0x1bbe0) = 0xaf;
    *(undefined4 *)(iVar5 + 0x1bbd8) = 0xffffffff;
    *(undefined4 *)(iVar5 + 0x1bbcc) = 1;
    *(undefined4 *)(iVar5 + 0x1d5b0) = 1;
    *(undefined4 *)(iVar5 + 0x1d5b4) = 0xa0;
    TPGetValueInt(iVar3,"sound",iVar5 + 0x1bbcc,(int)((ulonglong)uVar16 >> 0x20));
    TPGetValueInt(iVar3,"stereoeffects",g + 0x1d5b0);
    TPGetValueInt(iVar3,"panningwidth",g + 0x1d5b4);
    pppppppuVar13 = &local_130;
    iVar5 = TPGetValueInt(iVar3,"reversestereo",pppppppuVar13);
    ppppppuVar2 = local_130;
    if (iVar5 != 0) {
      SndSetReverseStereo(local_130);
      pppppppuVar8 = (undefined4 *******)ppppppuVar2;
    }
    TPGetValueInt(iVar3,"pausebgmondefocus",g + 0x1d5b8,"sound linux");
    TPGetValueInt(iVar3,"masterwavvolume",g + 0x1bbd4);
    TPGetValueInt(iVar3,"wavvolume",g + 0x1bbd0);
    TPGetValueInt(iVar3,"midivolume",g + 0x1bbdc);
    TPGetValueInt(iVar3,"mp3volume",g + 0x1bbe0);
    TPGetValueInt(iVar3,"modvolume",g + 0x1bbe4);
    TPGetValueInt(iVar3,"cdavolume",g + 0x1bbd8);
    iVar5 = g;
    *(undefined4 *)(g + 0x1d588) = 1;
    *(undefined4 *)(iVar5 + 0x1d584) = 1;
    *(undefined4 *)(iVar5 + 0x1d580) = 1;
    *(undefined4 *)(iVar5 + 0x1d58c) = 1;
    TPGetValueInt(iVar3,&DAT_0827d615,iVar5 + 0x1d58c);
    TPGetValueInt(iVar3,&DAT_0827d61d,g + 0x1d580);
    TPGetValueInt(iVar3,"playmidi",g + 0x1d584);
    TPGetValueInt(iVar3,"playmod",g + 0x1d588);
    pcVar4 = (char *)TPGetValue(iVar3,"cdadevice");
    if (pcVar4 != (char *)0x0) {
      strncpy((char *)(g + 0x1d590),pcVar4,0x1f);
    }
    *(undefined4 *)(g + 0x1d56c) = 0xffffffff;
    iVar5 = TPGetValue(iVar3,"wavdevice",pppppppuVar8,pppppppuVar8);
    uVar12 = extraout_ECX_06;
    if (iVar5 != 0) {
      iVar6 = SndParseWavDevice(iVar5);
      iVar5 = g;
      *(int *)(g + 0x1d56c) = iVar6;
      uVar12 = extraout_ECX_07;
      if (iVar6 == -2) {
        pcVar4 = (char *)(iVar5 + 0x20748);
        pcVar17 = "Invalid wav device: %s";
        goto LAB_080d4c73;
      }
    }
    iVar5 = g;
    *(undefined4 *)(g + 0x1d574) = 8;
    TPGetValueInt(iVar3,"wavchannels",iVar5 + 0x1d574,uVar12);
    TPGetValueInt(iVar3,"modvoices",g + 0x1d578);
    *(undefined4 *)(g + 0x1d570) = 0xffffffff;
    pcVar4 = (char *)TPGetValue(iVar3,"mididevice");
    if (pcVar4 != (char *)0x0) {
      iVar6 = SndParseMidiDevice(pcVar4);
      iVar5 = g;
      *(int *)(g + 0x1d570) = iVar6;
      if (iVar6 == -2) {
        pcVar4 = (char *)(iVar5 + 0x20748);
        pcVar17 = "Invalid midi device: %s";
        goto LAB_080d4c73;
      }
    }
    iVar6 = TPGroupSeek(iVar3,&DAT_0827d69a,pppppppuVar8,pppppppuVar8);
    iVar5 = g;
    if (iVar6 == -1) {
      pcVar4 = (char *)(g + 0x20748);
      pcVar17 = "Can\'t load misc config.";
    }
    else {
      *(undefined4 *)(g + 0x1d5e4) = 0;
      TPGetValueInt(iVar3,"playercache",iVar5 + 0x1d5e4,extraout_ECX_08);
      iVar5 = g;
      *(int *)(g + 0x1d5e4) = *(int *)(g + 0x1d5e4) + 2;
      *(undefined4 *)(iVar5 + 0x1d5e8) = 0;
      TPGetValueInt(iVar3,"precache",iVar5 + 0x1d5e8);
      iVar5 = TPGetValueInt(iVar3,"bufferedread",pppppppuVar13);
      uVar12 = extraout_ECX_09;
      if (iVar5 != 0) {
        SpriteSetBufReadMode(local_130);
        pppppppuVar13 = (undefined4 *******)local_130;
        SndSetBufReadMode(local_130);
        *(undefined4 *******)(g + 0x1d5ec) = local_130;
        uVar12 = extraout_ECX_10;
      }
      TPGetValueInt(iVar3,"unloadsystem",g + 0x1d5f0,uVar12);
      TPGetValueInt(iVar3,"pauseondefocus",g + 0x1d5f4);
      iVar5 = g;
      if (*(int *)(g + 0x1d5f4) != 0) {
        *(undefined4 *)(g + 0x1d5b8) = 1;
      }
      iVar5 = TPScanf(iVar3,"expires","%i,%i,%i,%x",&local_128,&local_12c,&local_124,&local_120,
                      iVar5);
      if ((iVar5 == 4) &&
         (local_130 = (undefined4 ******)
                      ((int)(((uint)local_12c ^ local_128) * local_124 - (MUGENDATE_M ^ MUGENDATE_D)
                            ^ MUGENDATE_Y) % 0x10000), pppppppuVar13 = (undefined4 *******)local_12c
         , local_120 == local_130)) {
        MUGENEXPDATE_D = (undefined4 *******)local_12c;
        MUGENEXPDATE_M = local_128;
        MUGENEXPDATE_Y = local_124;
      }
      uVar16 = TPGroupSeek(iVar3,"Arcade",pppppppuVar13,pppppppuVar13);
      if ((int)uVar16 == -1) {
        pcVar4 = (char *)(g + 0x20748);
        pcVar17 = "Can\'t load arcade config.";
      }
      else {
        TPGetValueInt(iVar3,"ai.randomcolor",g + 0x1d5f8,(int)((ulonglong)uVar16 >> 0x20));
        local_130 = (undefined4 *******)0x0;
        do {
          if ((undefined4 *******)local_130 == (undefined4 *******)0x1) {
            pcVar4 = "team";
            local_134 = (undefined4 ******)(g + 0x1d610);
            pppppppuVar8 = (undefined4 *******)local_134;
          }
          else {
            pppppppuVar8 = (undefined4 *******)local_130;
            if ((int)local_130 < 2) {
              if ((undefined4 *******)local_130 == (undefined4 *******)0x0) {
                pcVar4 = "arcade";
                local_134 = (undefined4 ******)(g + 0x1d600);
                pppppppuVar8 = (undefined4 *******)local_134;
              }
            }
            else if ((undefined4 *******)local_130 == (undefined4 *******)0x2) {
              pcVar4 = "survival";
              local_134 = (undefined4 ******)(g + 0x1d620);
              pppppppuVar8 = (undefined4 *******)local_134;
            }
          }
          pcVar17 = local_11c;
          sprintf(local_11c,"%s.AIramp.start",pcVar4,pppppppuVar8);
          TPScanf(iVar3,local_11c,&DAT_08276cdd,local_134,local_134 + 1);
          sprintf(local_11c,"%s.AIramp.end",pcVar4);
          TPScanf(iVar3,local_11c,&DAT_08276cdd,local_134 + 2,local_134 + 3);
          local_130 = (undefined4 ******)((int)local_130 + 1);
        } while ((int)local_130 < 3);
        iVar5 = TPGroupSeek(iVar3,"Input",local_130,local_130);
        if (iVar5 == -1) {
          pcVar4 = (char *)(g + 0x20748);
          pcVar17 = "Can\'t load input config.";
        }
        else {
          TPGetValueInt(iVar3,"p1.usekeyboard",g + 0x1ce24,pcVar17);
          TPGetValueInt(iVar3,"p2.usekeyboard",g + 0x1ce28);
          TPGetValueInt(iVar3,"p1.joystick.type",g + 0x1ce34);
          TPGetValueInt(iVar3,"p2.joystick.type",g + 0x1ce38);
          iVar6 = g;
          iVar5 = *(int *)(g + 0x1ce34);
          uVar7 = (uint)(iVar5 != 0);
          uVar9 = (uint)(*(int *)(g + 0x1ce38) != 0);
          *(uint *)(g + 0x1ce2c) = uVar7;
          *(uint *)(iVar6 + 0x1ce30) = uVar9;
          uVar12 = 0;
          if ((uVar7 != 0) || (uVar9 != 0)) {
            uVar12 = 1;
          }
          *(undefined4 *)(iVar6 + 0x1ce3c) = uVar12;
          TPGetValueInt(iVar3,"forcefeedback",g + 0x1ce3c,uVar7);
          TPGetValueInt(iVar3,"psxdelay",g + 0x1ce40);
          iVar6 = *(int *)(g + 0x1ce24);
          uVar11 = extraout_ECX_11;
          if ((iVar6 == 0) ||
             (iVar5 = PlayerLoadKeys(iVar3,g + 0x1cc84,"p1 keys",iVar5), uVar11 = extraout_ECX_12,
             iVar5 != 0)) {
            PlayerKeysRemoveZero(g + 0x1cc84,0x100,uVar11,uVar11);
            if ((*(int *)(g + 0x1ce28) == 0) ||
               (iVar5 = PlayerLoadKeys(iVar3,g + 0x1ccb8,"p2 keys",iVar6), iVar5 != 0)) {
              PlayerKeysRemoveZero(g + 0x1ccb8,0x100,uVar12,uVar12);
              iVar5 = g;
              *(undefined4 *)(g + 0x1cdc0) = 1;
              *(undefined4 *)(iVar5 + 0x1cdc8) = 2;
              *(undefined4 *)(iVar5 + 0x1cdcc) = 3;
              *(undefined4 *)(iVar5 + 0x1cdc4) = 4;
              puVar14 = (undefined4 *)(iVar5 + 0x1cdbc);
              puVar15 = (undefined4 *)(iVar5 + 0x1cdf0);
              for (iVar6 = 0xd; iVar6 != 0; iVar6 = iVar6 + -1) {
                *puVar15 = *puVar14;
                puVar14 = puVar14 + 1;
                puVar15 = puVar15 + 1;
              }
              sprintf(local_11c,"P1 joystick");
              iVar5 = PlayerLoadKeys(iVar3,g + 0x1cdbc,local_11c);
              if (iVar5 != 0) {
                printf("Loading button config for %s.\n",local_11c,iVar5,iVar5);
              }
              sprintf(local_11c,"P2 joystick",puVar15,puVar15);
              iVar5 = PlayerLoadKeys(iVar3,g + 0x1cdf0,local_11c);
              if (iVar5 != 0) {
                printf("Loading button config for %s.\n",local_11c,puVar14,puVar14);
              }
              puVar14 = (undefined4 *)(g + 0x1cdbc);
              puVar15 = (undefined4 *)(g + 0x1cd54);
              for (iVar5 = 0xd; iVar5 != 0; iVar5 = iVar5 + -1) {
                *puVar15 = *puVar14;
                puVar14 = puVar14 + 1;
                puVar15 = puVar15 + 1;
              }
              puVar14 = (undefined4 *)(g + 0x1cdf0);
              puVar15 = (undefined4 *)(g + 0x1cd88);
              for (iVar5 = 0xd; iVar5 != 0; iVar5 = iVar5 + -1) {
                *puVar15 = *puVar14;
                puVar14 = puVar14 + 1;
                puVar15 = puVar15 + 1;
              }
              if (*(int *)(g + 0x1ce2c) == 0) {
                puVar14 = (undefined4 *)(g + 0x1cd54);
                for (iVar5 = 0xd; iVar5 != 0; iVar5 = iVar5 + -1) {
                  *puVar14 = 0;
                  puVar14 = puVar14 + 1;
                }
              }
              if (*(int *)(g + 0x1ce30) == 0) {
                puVar14 = (undefined4 *)(g + 0x1cd88);
                for (iVar5 = 0xd; iVar5 != 0; iVar5 = iVar5 + -1) {
                  *puVar14 = 0;
                  puVar14 = puVar14 + 1;
                }
              }
              PlayerKeysRemoveZero(g + 0x1cd54,0x80,local_11c,local_11c);
              PlayerKeysRemoveZero(g + 0x1cd88,0x80);
              PlayerKeysRemoveZero(g + 0x1cdbc,0x80);
              PlayerKeysRemoveZero(g + 0x1cdf0,0x80);
              TPFree(iVar3);
              if ((*(int *)(g + 0x1d5e0) != 0) && (iVar3 = TPReadFileForWrite(param_1), iVar3 != 0))
              {
                TPGroupSeek(iVar3,"Config",iVar3,iVar3);
                TPPrintf(iVar3,"FirstRun","0");
                TPWriteFile(iVar3,param_1);
              }
              return 1;
            }
            pcVar4 = (char *)(g + 0x20748);
            pcVar17 = "Can\'t read p2 key config.";
          }
          else {
            pcVar4 = (char *)(g + 0x20748);
            pcVar17 = "Can\'t read p1 key config.";
          }
        }
      }
    }
  }
LAB_080d4c73:
  sprintf(pcVar4,pcVar17);
  return 0;
}

