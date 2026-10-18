
undefined4 GameLoadSystem(void)

{
  char *pcVar1;
  char *pcVar2;
  int iVar3;
  char *pcVar4;
  int iVar5;
  char *pcVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  char *extraout_ECX_07;
  char *extraout_ECX_08;
  undefined4 extraout_EDX;
  undefined8 uVar9;
  char *pcVar10;
  char *pcVar11;
  undefined4 uVar12;
  char *local_2180;
  char *local_217c [4];
  char *local_216c;
  char *local_2168;
  char *local_2164;
  char *local_2160;
  char *local_215c;
  char *local_2158;
  undefined *local_2154;
  char *local_214c [4];
  char *local_213c;
  char *local_2138;
  char *local_2134;
  char *local_2130;
  char *local_212c;
  char *local_2128;
  undefined *local_2124;
  char local_211c [4096];
  char local_111c [4096];
  char local_11c [268];

  pcVar6 = local_111c;
  joindirfile(pcVar6,g + 0x15aff,g + 0x14b00);
  pcVar1 = (char *)TPReadFile(pcVar6);
  if (pcVar1 == (char *)0x0) {
    pcVar2 = (char *)(g + 0x20748);
    pcVar10 = "Can\'t open %s%s";
    pcVar4 = (char *)(g + 0x15aff);
    pcVar6 = (char *)(g + 0x14b00);
  }
  else {
    uVar9 = TPGroupSeek(pcVar1,"Files",extraout_ECX,extraout_ECX);
    pcVar4 = (char *)((ulonglong)uVar9 >> 0x20);
    iVar3 = (int)uVar9 + 1;
    if (iVar3 == 0) {
      pcVar2 = (char *)(g + 0x20748);
      pcVar10 = "Can\'t access [Files] group";
      pcVar6 = pcVar4;
    }
    else {
      pcVar4 = (char *)TPGetValue(pcVar1,&DAT_0827859b,iVar3,iVar3);
      if (pcVar4 == (char *)0x0) {
        pcVar2 = (char *)(g + 0x20748);
        pcVar10 = "Missing spr specification in [Files]";
        pcVar4 = pcVar6;
      }
      else {
        iVar3 = FindFileDir(pcVar4,pcVar6,0);
        if (iVar3 == 0) {
          return 0;
        }
        iVar5 = SpriteReadFile(pcVar6);
        iVar3 = g;
        *(int *)(g + 0x16b00) = iVar5;
        if (iVar5 == 0) {
          pcVar2 = (char *)(iVar3 + 0x20748);
          pcVar10 = "Can\'t load %s";
          pcVar6 = pcVar1;
        }
        else {
          uVar8 = extraout_ECX_00;
          uVar12 = extraout_ECX_00;
          strcpy((char *)(iVar3 + 0x16b04),pcVar6);
          pcVar4 = (char *)TPGetValue(pcVar1,"snd",uVar8,uVar12);
          pcVar2 = (char *)0x0;
          if (pcVar4 != (char *)0x0) {
            iVar3 = FindFileDir(pcVar4,pcVar6,0);
            if (iVar3 == 0) {
              return 0;
            }
            iVar5 = SndReadFile(pcVar6);
            iVar3 = g;
            *(int *)(g + 0x17b04) = iVar5;
            if (iVar5 == 0) {
              pcVar2 = (char *)(iVar3 + 0x20748);
              pcVar10 = "Can\'t load %s";
              goto LAB_080d3985;
            }
            pcVar2 = strcpy((char *)(iVar3 + 0x17b08),pcVar6);
          }
          pcVar6 = (char *)TPGetValue(pcVar1,"fight",pcVar2,pcVar2);
          if (pcVar6 == (char *)0x0) {
            return 0;
          }
          strcpy(local_211c,pcVar6);
          iVar3 = TPScanf(pcVar1,"select","%s",g + 0x5380);
          if (iVar3 < 1) {
            return 0;
          }
          TPScanf(pcVar1,"logo.storyboard","%s",g + 0x6d44);
          TPScanf(pcVar1,"intro.storyboard","%s",g + 0x7d44);
          local_2180 = (char *)0x0;
          do {
            *(undefined4 *)(g + 0x18b0c + (int)local_2180 * 4) = *(undefined4 *)(g + 0x104e8);
            sprintf(local_11c,"font%i",local_2180,local_111c);
            pcVar4 = (char *)TPGetValue(pcVar1,local_11c);
            if (pcVar4 != (char *)0x0) {
              iVar3 = FindFileDir(pcVar4,local_111c,0,pcVar4);
              if (iVar3 == 0) {
                return 0;
              }
              iVar5 = FontReadFile(local_111c);
              iVar3 = g;
              *(int *)(g + 0x18b0c + (int)local_2180 * 4) = iVar5;
              if (iVar5 == 0) {
                pcVar2 = (char *)(iVar3 + 0x20748);
                pcVar10 = "Can\'t read font %s";
                pcVar6 = (char *)0x0;
                goto LAB_080d3985;
              }
            }
            local_2180 = local_2180 + 1;
          } while ((int)local_2180 < 10);
          iVar3 = TPGroupScanFirst(pcVar1);
          do {
            iVar5 = strimatch(iVar3 + 1,"begin action ",local_11c,local_11c);
            if (iVar5 != 0) break;
            iVar3 = TPGroupScanNext(pcVar1);
          } while (iVar3 != 0);
          if (iVar3 != 0) {
            iVar7 = AnimRCReadFileTP(pcVar1);
            iVar5 = g;
            *(int *)(g + 0x18b08) = iVar7;
            if (iVar7 == 0) {
              pcVar2 = (char *)(iVar5 + 0x20748);
              pcVar10 = "Error loading anim";
              pcVar4 = pcVar1;
              pcVar6 = pcVar1;
              goto LAB_080d3985;
            }
          }
          iVar3 = TPGroupSeek(pcVar1,"Music",iVar3,iVar3);
          uVar8 = extraout_ECX_01;
          if (iVar3 != -1) {
            BGMParse(pcVar1,g + 0x18b44,"title.bgm",local_111c);
            BGMParse(pcVar1,g + 0x1ab4c,"select.bgm");
            BGMParse(pcVar1,g + 0x19b48,"vs.bgm");
            uVar8 = extraout_ECX_02;
          }
          uVar9 = TPGroupSeek(pcVar1,"title info",uVar8,uVar8);
          iVar3 = g;
          pcVar4 = (char *)((ulonglong)uVar9 >> 0x20);
          pcVar6 = (char *)((int)uVar9 + 1);
          if (pcVar6 == (char *)0x0) {
            pcVar2 = (char *)(g + 0x20748);
            pcVar10 = "Can\'t access [Title Info] group";
            pcVar6 = pcVar4;
          }
          else {
            local_214c[0] = "arcade";
            iVar5 = g + 0x4014;
            *(undefined4 *)(g + 0x4034) = 0x9f;
            *(undefined4 *)(iVar3 + 0x4038) = 0x9e;
            *(undefined4 *)(iVar3 + 0x4058) = 0xd;
            local_214c[1] = "versus";
            local_214c[2] = "teamarcade";
            local_214c[3] = "teamversus";
            local_213c = "teamcoop";
            local_2138 = "survival";
            local_2134 = "survivalcoop";
            local_2130 = "training";
            local_212c = "watch";
            local_2128 = "options";
            local_2124 = &DAT_0827d0db;
            local_217c[0] = "Arcade";
            local_217c[1] = "VS Mode";
            local_217c[2] = "Team Arcade";
            local_217c[3] = "Team Versus";
            local_216c = "Team Co-op";
            local_2168 = "Survival";
            local_2164 = "Survival Co-op";
            local_2160 = "Training";
            *(undefined4 *)(iVar3 + 0x41bc) = 0xc;
            *(undefined4 *)(iVar3 + 0x41c0) = 8;
            *(undefined4 *)(iVar3 + 0x41c4) = 5;
            *(undefined4 *)(iVar3 + 0x41c8) = 1;
            *(undefined4 *)(iVar3 + 0x41cc) = 0xffffffe0;
            *(undefined4 *)(iVar3 + 0x41d0) = 0xfffffff6;
            *(undefined4 *)(iVar3 + 0x41d4) = 0x20;
            *(undefined4 *)(iVar3 + 0x41d8) = 2;
            *(undefined4 *)(iVar3 + 0x4048) = 0xffffffff;
            *(undefined4 *)(iVar3 + 0x403c) = 0xffffffff;
            local_215c = "Watch";
            local_2158 = "Options";
            local_2154 = &DAT_082798d6;
            TPGetValueInt(pcVar1,"fadein.time",iVar5,pcVar6);
            pcVar4 = (char *)(iVar3 + 0x4018);
            TPGetValueInt(pcVar1,"fadeout.time",pcVar4);
            pcVar2 = *(char **)(iVar3 + 0x4014);
            if ((int)pcVar2 < 1) {
              *(undefined4 *)(iVar3 + 0x4014) = 1;
            }
            if (*(int *)(iVar3 + 0x4018) < 1) {
              *(undefined4 *)(iVar3 + 0x4018) = 1;
            }
            TPScanf(pcVar1,"menu.pos",&DAT_08276cdd,iVar3 + 0x4034,iVar3 + 0x4038);
            TPScanf(pcVar1,"menu.item.font",&DAT_08276cda,iVar3 + 0x403c,iVar3 + 0x4044,
                    iVar3 + 0x4040);
            pcVar10 = (char *)(iVar3 + 0x404c);
            TPScanf(pcVar1,"menu.item.active.font",&DAT_08276cda,iVar3 + 0x4048,iVar3 + 0x4050,
                    pcVar10);
            TPScanf(pcVar1,"menu.item.spacing",&DAT_08276cdd,iVar3 + 0x4054,iVar3 + 0x4058);
            local_2180 = (char *)0x0;
            do {
              pcVar11 = local_214c[(int)local_2180];
              if (*pcVar11 != '\0') {
                pcVar6 = local_2180;
                sprintf(local_11c,"menu.itemname.%s",pcVar11,local_2180);
                pcVar10 = local_11c;
                iVar7 = TPGetValue(pcVar1,local_11c);
                if (iVar7 == 0) {
                  pcVar10 = local_217c[(int)local_2180];
                  pcVar4 = pcVar2;
                  pcVar6 = pcVar2;
                  strcpy((char *)((int)local_2180 * 0x20 + 0x48 + iVar5),pcVar10);
                }
                else {
                  GetQuotedString(pcVar1,local_11c,(int)local_2180 * 0x20 + 0x48 + iVar5,0x1f,0);
                  pcVar4 = pcVar11;
                }
              }
              local_2180 = local_2180 + 1;
            } while ((int)local_2180 < 0xb);
            TPScanf(pcVar1,"menu.window.margins.y",&DAT_08276cdd,iVar3 + 0x41bc,iVar3 + 0x41c0,
                    pcVar10,pcVar4,pcVar6);
            TPGetValueInt(pcVar1,"menu.window.visibleitems",iVar3 + 0x41c4);
            TPGetValueInt(pcVar1,"menu.boxcursor.visible",iVar3 + 0x41c8);
            TPScanf(pcVar1,"menu.boxcursor.coords",&DAT_08276cd7,iVar3 + 0x41cc,iVar3 + 0x41d0,
                    iVar3 + 0x41d4,iVar3 + 0x41d8);
            ParseSndGI(pcVar1,"cursor.move.snd",iVar3 + 0x401c,iVar3 + 0x4020);
            ParseSndGI(pcVar1,"cursor.done.snd",iVar3 + 0x4024,iVar3 + 0x4028);
            ParseSndGI(pcVar1,"cancel.snd",iVar3 + 0x402c,iVar3 + 0x4030);
            iVar5 = TPGroupSeek(pcVar1,"option info");
            iVar3 = g;
            if (iVar5 == -1) {
              pcVar10 = "Can\'t access [Option Info] group";
              pcVar2 = (char *)(g + 0x20748);
              pcVar4 = (char *)0x0;
              pcVar6 = (char *)0x0;
            }
            else {
              ParseSndGI(pcVar1,"cursor.move.snd",g + 0x41e4,g + 0x41e8);
              ParseSndGI(pcVar1,"cursor.done.snd",iVar3 + 0x41ec,iVar3 + 0x41f0);
              pcVar4 = (char *)(iVar3 + 0x41f4);
              ParseSndGI(pcVar1,"cancel.snd",pcVar4,iVar3 + 0x41f8);
              iVar3 = TPGroupSeek(pcVar1,"select info");
              if (iVar3 == -1) {
                pcVar2 = (char *)(g + 0x20748);
                pcVar10 = "Can\'t access [Select Info] group";
                pcVar6 = pcVar4;
              }
              else {
                iVar3 = CharselReadConfig(pcVar1);
                if (iVar3 == 0) {
                  return 0;
                }
                uVar9 = TPGroupSeek(pcVar1,"vs screen",extraout_ECX_03,extraout_ECX_03);
                iVar3 = g;
                if ((int)uVar9 == -1) {
                  pcVar2 = (char *)(g + 0x20748);
                  pcVar10 = "Can\'t access [VS Screen] group\n";
                  pcVar4 = pcVar1;
                  pcVar6 = pcVar1;
                }
                else {
                  *(undefined4 *)(g + 0xce54) = 0x96;
                  iVar5 = iVar3 + 0xce54;
                  TPGetValueInt(pcVar1,"time",iVar5,(int)((ulonglong)uVar9 >> 0x20));
                  TPGetValueInt(pcVar1,"fadein.time",iVar3 + 0xce58);
                  TPGetValueInt(pcVar1,"fadeout.time",iVar3 + 0xce5c);
                  local_2180 = (char *)0x0;
                  pcVar6 = local_11c;
                  do {
                    iVar7 = (int)local_2180 * 0x28;
                    *(undefined4 *)(iVar7 + 0x14 + iVar5) = 0xffffffff;
                    *(uint *)(iVar7 + 0x28 + iVar5) = (uint)(local_2180 == (char *)0x0) * 2 + -1;
                    *(undefined4 *)(iVar7 + 0x30 + iVar5) = 0x3f800000;
                    *(undefined4 *)(iVar7 + 0x2c + iVar5) = 0x3f800000;
                    sprintf(pcVar6,"p%i.pos",local_2180 + 1,0x3f800000);
                    iVar7 = iVar5 + (int)local_2180 * 0x28;
                    TPScanf(pcVar1,pcVar6,&DAT_08276cdd,iVar7 + 0xc,iVar7 + 0x10);
                    sprintf(pcVar6,"p%i.facing",local_2180 + 1);
                    TPScanf(pcVar1,pcVar6,&DAT_08276ce0,iVar3 + 0xce7c + (int)local_2180 * 0x28);
                    sprintf(pcVar6,"p%i.scale",local_2180 + 1);
                    iVar7 = iVar5 + (int)local_2180 * 0x28;
                    TPScanf(pcVar1,pcVar6,"%f,%f",iVar7 + 0x2c,iVar7 + 0x30);
                    sprintf(pcVar6,"p%i.name.pos",local_2180 + 1);
                    iVar7 = iVar5 + (int)local_2180 * 0x28;
                    TPScanf(pcVar1,pcVar6,&DAT_08276cdd,iVar7 + 0x20,iVar7 + 0x24);
                    pcVar4 = pcVar6;
                    sprintf(pcVar6,"p%i.name.font",local_2180 + 1);
                    iVar7 = iVar5 + (int)local_2180 * 0x28;
                    TPScanf(pcVar1,pcVar6,&DAT_08276cda,iVar7 + 0x14,iVar7 + 0x18,iVar7 + 0x1c);
                    local_2180 = local_2180 + 1;
                  } while ((int)local_2180 < 2);
                  *(undefined4 *)(g + 0x1d3a8) = 0xffffffff;
                  iVar3 = TPGroupSeek(pcVar1,"demo mode",iVar5,iVar5);
                  if (iVar3 != -1) {
                    local_2180 = (char *)0x0;
                    uVar9 = TPGetValueInt(pcVar1,"enabled",&local_2180,pcVar6);
                    uVar8 = (undefined4)uVar9;
                    if (local_2180 != (char *)0x0) {
                      uVar8 = TPGetValueInt(pcVar1,"title.waittime",g + 0x1d3a8,
                                            (int)((ulonglong)uVar9 >> 0x20));
                    }
                    TPGetValueInt(pcVar1,"select.enabled",g + 0x1d3ac,uVar8);
                    TPGetValueInt(pcVar1,"vsscreen.enabled",g + 0x1d3b0);
                    TPGetValueInt(pcVar1,"fight.endtime",g + 0x1d3b4);
                    TPGetValueInt(pcVar1,"fight.playbgm",g + 0x1d3b8);
                    TPGetValueInt(pcVar1,"fight.bars.display",g + 0x1d3bc);
                    TPGetValueInt(pcVar1,"intro.waitcycles",g + 0x1d3a4);
                    TPGetValueInt(pcVar1,"debuginfo",g + 0x1d3c0);
                  }
                  iVar3 = TPGroupSeek(pcVar1,"continue screen",pcVar4,pcVar4);
                  if (iVar3 != -1) {
                    pcVar6 = (char *)(g + 0xae50);
                    TPGetValueInt(pcVar1,"enabled",g + 0xae4c,iVar5);
                    TPScanf(pcVar1,"storyboard","%s",pcVar6);
                  }
                  uVar9 = TPGroupSeek(pcVar1,"game over screen",pcVar6,pcVar6);
                  uVar8 = (undefined4)((ulonglong)uVar9 >> 0x20);
                  if ((int)uVar9 != -1) {
                    iVar3 = g + 0xbe54;
                    TPGetValueInt(pcVar1,"enabled",g + 0xbe50,extraout_ECX_04);
                    TPScanf(pcVar1,"storyboard","%s",iVar3);
                    uVar8 = extraout_EDX;
                  }
                  iVar7 = TPGroupSeek(pcVar1,"win screen",uVar8,uVar8);
                  iVar3 = g;
                  if (iVar7 + 1 != 0) {
                    TPGetValueInt(pcVar1,"enabled",g + 0xad50,iVar7 + 1);
                    SysExplodParse(pcVar1,iVar3 + 0xad54,"wintext");
                    TPGetValueInt(pcVar1,"fadein.time",iVar3 + 0xadc4);
                    TPGetValueInt(pcVar1,"pose.time",iVar3 + 0xadc0);
                    TPGetValueInt(pcVar1,"fadeout.time",iVar3 + 0xadc8);
                  }
                  iVar7 = TPGroupSeek(pcVar1,"survival results screen",pcVar4,pcVar4);
                  iVar3 = g;
                  uVar8 = extraout_ECX_05;
                  if (iVar7 != -1) {
                    TPGetValueInt(pcVar1,"enabled",g + 0xadcc,iVar5);
                    SysExplodParse(pcVar1,iVar3 + 0xadd0,"winstext");
                    TPGetValueInt(pcVar1,"fadein.time",iVar3 + 0xae40);
                    TPGetValueInt(pcVar1,"show.time",iVar3 + 0xae3c);
                    TPGetValueInt(pcVar1,"fadeout.time",iVar3 + 0xae44);
                    TPGetValueInt(pcVar1,"roundstowin",iVar3 + 0xae48);
                    uVar8 = extraout_ECX_06;
                  }
                  uVar9 = TPGroupSeek(pcVar1,"default ending",uVar8,uVar8);
                  uVar8 = 0;
                  if ((int)uVar9 != -1) {
                    iVar3 = g + 0x9d50;
                    TPGetValueInt(pcVar1,"enabled",g + 0x9d4c,(int)((ulonglong)uVar9 >> 0x20));
                    uVar8 = TPScanf(pcVar1,"storyboard","%s",iVar3);
                  }
                  iVar3 = TPGroupSeek(pcVar1,"end credits",uVar8,uVar8);
                  if (iVar3 != -1) {
                    iVar3 = g + 0x8d4c;
                    TPGetValueInt(pcVar1,"enabled",g + 0x8d48,pcVar4);
                    TPScanf(pcVar1,"storyboard","%s",iVar3);
                  }
                  iVar5 = BGArrayReadTP(pcVar1,g + 0x15aff,"TitleBG",*(undefined4 *)(g + 0x16b00),
                                        *(undefined4 *)(g + 0x18b08));
                  iVar3 = g;
                  *(int *)(g + 0x18b38) = iVar5;
                  if (iVar5 == 0) {
                    pcVar2 = (char *)(iVar3 + 0x20748);
                    pcVar10 = "Error loading TitleBG";
                    pcVar4 = extraout_ECX_07;
                    pcVar6 = extraout_ECX_07;
                  }
                  else {
                    iVar5 = BGArrayReadTP(pcVar1,iVar3 + 0x15aff,"VersusBG",
                                          *(undefined4 *)(iVar3 + 0x16b00),
                                          *(undefined4 *)(iVar3 + 0x18b08));
                    iVar3 = g;
                    *(int *)(g + 0x18b34) = iVar5;
                    if (iVar5 == 0) {
                      pcVar2 = (char *)(iVar3 + 0x20748);
                      pcVar10 = "Error loading VersusBG";
                      pcVar4 = pcVar1;
                      pcVar6 = pcVar1;
                    }
                    else {
                      pcVar4 = *(char **)(iVar3 + 0x18b08);
                      iVar5 = BGArrayReadTP(pcVar1,iVar3 + 0x15aff,"SelectBG",
                                            *(undefined4 *)(iVar3 + 0x16b00),pcVar4);
                      iVar3 = g;
                      *(int *)(g + 0x18b3c) = iVar5;
                      if (iVar5 == 0) {
                        pcVar2 = (char *)(iVar3 + 0x20748);
                        pcVar10 = "Error loading SelectBG";
                        pcVar4 = extraout_ECX_08;
                        pcVar6 = extraout_ECX_08;
                      }
                      else {
                        iVar5 = BGArrayReadTP(pcVar1,iVar3 + 0x15aff,"OptionBG",
                                              *(undefined4 *)(iVar3 + 0x16b00),
                                              *(undefined4 *)(iVar3 + 0x18b08));
                        iVar3 = g;
                        *(int *)(g + 0x18b40) = iVar5;
                        if (iVar5 != 0) {
                          TPFree(pcVar1);
                          iVar3 = FindFileDir(local_211c,local_111c,0);
                          if (iVar3 == 0) {
                            return 0;
                          }
                          iVar3 = GameLoadFightData(local_111c);
                          if (iVar3 == 0) {
                            strcat((char *)(g + 0x20748),"\nError loading fight data: ");
                            strcat((char *)(g + 0x20748),local_211c);
                            return 0;
                          }
                          return 1;
                        }
                        pcVar2 = (char *)(iVar3 + 0x20748);
                        pcVar10 = "Error loading OptionBG";
                        pcVar6 = pcVar4;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
LAB_080d3985:
  sprintf(pcVar2,pcVar10,pcVar4,pcVar6);
  return 0;
}

