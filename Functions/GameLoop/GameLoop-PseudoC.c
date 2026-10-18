
undefined4 GameLoop(undefined4 param_1)

{
  int *piVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  bool bVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  int extraout_ECX_04;
  int extraout_ECX_05;
  int extraout_ECX_06;
  int extraout_ECX_07;
  int extraout_ECX_08;
  undefined4 extraout_ECX_09;
  undefined4 extraout_ECX_10;
  int iVar7;
  undefined4 extraout_ECX_11;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  undefined4 *puVar13;
  undefined4 uVar14;
  undefined1 local_44c [4];
  uint local_448;

  uVar14 = _rgb_r_shift_16;
  iVar5 = g;
  *(undefined4 *)(g + 0xcedc) = param_1;
  *(undefined4 *)(iVar5 + 0x104d4) = 0;
  local_448 = 0x1f << ((byte)uVar14 & 0x1f) | 0x3f << ((byte)_rgb_g_shift_16 & 0x1f) |
              0x1f << ((byte)_rgb_b_shift_16 & 0x1f);
  *(undefined4 *)(iVar5 + 0x1cc58) = 0;
  *(undefined4 *)(iVar5 + 0x1cc54) = 0;
  if (*(int *)(iVar5 + 0x1d564) == 4) {
    uVar14 = *(undefined4 *)(iVar5 + 0x104e0);
  }
  else {
    uVar14 = *(undefined4 *)(iVar5 + 0x104d8);
  }
  V_SetBuf(uVar14,0);
  W_Cls(0);
  W_Define(0,0,V_Width + -1,V_Height + -1);
  puVar11 = (undefined4 *)local_44c;
  puVar10 = (undefined4 *)local_44c;
  FrameSkipReset();
  iVar5 = g;
  if (*(int *)(g + 0x20b4c) == 0) goto LAB_0808fec1;
  *(undefined4 *)(g + 0x1cc14) = 2000;
  *(undefined4 *)(iVar5 + 0x20b48) = 1;
  iVar4 = *(int *)(iVar5 + 0x1cc10);
  puVar13 = (undefined4 *)local_44c;
  do {
    puVar12 = puVar10;
    if (9999 < iVar4) {
LAB_080910a2:
      *(undefined4 *)((int)puVar13 + -4) = 0x80910a7;
      iVar5 = PrecacheIsRunning();
      if ((iVar5 != 0) && ((*(int *)(g + 0x104d4) != 0 || (*(int *)(g + 0xcecc) == 0)))) {
        *(undefined4 *)((int)puVar13 + -4) = 0x80910ca;
        PrecacheRequestCancel();
        *(undefined4 *)((int)puVar13 + -4) = 0x80910cf;
        PrecacheFinish();
      }
      *(undefined4 *)(g + 0xcedc) = 0;
      *(undefined4 *)((int)puVar13 + -4) = 0x80910ea;
      FrameSkipReset();
      *(undefined4 *)((int)puVar13 + -4) = 0x80910ef;
      MasterPalReset();
      return 1;
    }
LAB_0808fee6:
    if (*(int *)(iVar5 + 0x20b50) != 0) {
      *(undefined4 *)((int)puVar12 + -4) = 0x808fef5;
      PrecacheRequestCancel();
      *(undefined4 *)((int)puVar12 + -4) = 0x808fefa;
      PrecacheFinish();
      *(undefined4 *)((int)puVar12 + -4) = 0x808feff;
      GameRoundReset();
      iVar5 = g;
      *(undefined4 *)(g + 0x20b50) = 0;
    }
    if (*(int *)(iVar5 + 0x20b54) != 0) {
      *(undefined4 *)((int)puVar12 + -4) = 0x808ff1f;
      PrecacheRequestCancel();
      *(undefined4 *)((int)puVar12 + -4) = 0x808ff24;
      PrecacheFinish();
      *(undefined4 *)((int)puVar12 + -4) = 0x808ff29;
      iVar5 = GameReloadStage();
      if (iVar5 == 0) {
        return 0;
      }
      *(undefined4 *)(g + 0x20b54) = 0;
    }
    *(undefined4 *)((int)puVar12 + -4) = 0x808ff45;
    iVar5 = GameModeInPassiveFightScreen();
    if (iVar5 == 0) {
      if ((*(int *)(g + 0x42b8) == 0) && (*(char *)(g + 0x1d391) != '\0')) {
        *(int *)((int)puVar12 + -0x10) = g + 0x42a8;
        *(undefined4 *)((int)puVar12 + -0x14) = 0x808ff71;
        BGMPause();
      }
      if ((*(int *)(g + 0x42b8) != 0) && (*(char *)(g + 0x1d391) == '\0')) {
        *(int *)((int)puVar12 + -0x10) = g + 0x42a8;
        *(undefined4 *)((int)puVar12 + -0x14) = 0x808ff9c;
        BGMResume();
      }
    }
    *(int *)((int)puVar12 + -0x10) = g + 0x42a8;
    *(undefined4 *)((int)puVar12 + -0x14) = 0x808ffb4;
    BGMPoll();
    if (*(int *)(g + 0x1d564) == 4) {
      *(undefined4 *)((int)puVar12 + -4) = extraout_ECX;
      *(undefined4 *)((int)puVar12 + -8) = extraout_ECX;
      *(undefined4 *)((int)puVar12 + -0xc) = 0;
      *(undefined4 *)((int)puVar12 + -0x10) = *(undefined4 *)(g + 0x104d8);
      *(undefined4 *)((int)puVar12 + -0x14) = 0x808ffd6;
      V_SetBuf();
      *(undefined4 *)((int)puVar12 + -0xc) = 1;
      *(undefined4 *)((int)puVar12 + -0x10) = *(undefined4 *)(g + 0x1bb50);
      *(undefined4 *)((int)puVar12 + -0x14) = 0x808ffeb;
      BGArraySetViewScale();
    }
    *(undefined4 *)((int)puVar12 + -0x10) = *(undefined4 *)(g + 0x104f4);
    *(undefined4 *)((int)puVar12 + -0x14) = 0x8090003;
    PRSprArrayClear();
    iVar8 = g;
    *(undefined4 *)((int)puVar12 + 0xc) = *(undefined4 *)(g + 0x1cc54);
    iVar5 = *(int *)(g + 0x1cc44);
    *(undefined4 *)((int)puVar12 + 8) = *(undefined4 *)(g + 0x1cc58);
    iVar4 = *(int *)(g + 0x1cc48);
    *(int *)((int)puVar12 + 0xc) = *(int *)((int)puVar12 + 0xc) + iVar5;
    iVar5 = *(int *)(g + 0x1cc24);
    *(int *)((int)puVar12 + 8) = *(int *)((int)puVar12 + 8) + iVar4;
    if (iVar5 == 0) {
      piVar1 = (int *)(g + 0x1d40c);
      iVar5 = 1;
      *(undefined4 *)(g + 0x1d3cc) = 0xffffffff;
      if (*piVar1 < 1) {
        do {
          iVar5 = iVar5 + -1;
          if (iVar5 < 0) goto LAB_0809008d;
        } while (*(int *)(g + 0x1d3e8 + iVar5 * 0x24) < 1);
        *(int *)(g + 0x1d3cc) = iVar5;
      }
      else {
        *(undefined4 *)(iVar8 + 0x1d3cc) = 1;
      }
    }
LAB_0809008d:
    *(undefined4 *)((int)puVar12 + -4) = 0x8090092;
    GameInputUpdate();
    iVar4 = g;
    iVar5 = *(int *)(g + 0x1d430);
    if ((0 < iVar5) && (*(int *)(g + 0x1cc24) == 0)) {
      if (0 < *(int *)(g + 0x1d434)) {
        iVar5 = -100;
      }
      *(int *)(g + 0x1d434) = *(int *)(g + 0x1d434) + iVar5;
    }
    if (*(int *)(iVar4 + 0x1cc24) == 0) {
      *(undefined4 *)((int)puVar12 + -4) = 0x80900d8;
      PalGrpResetPalette();
      iVar4 = g;
    }
    iVar8 = g;
    iVar5 = *(int *)(iVar4 + 0x1cc24);
    if ((iVar5 == 0) && (*(int *)(iVar4 + 0x1d3cc) != -1)) {
      iVar3 = *(int *)(iVar4 + 0x1d3cc) * 0x24;
      iVar9 = *(int *)(iVar3 + 0x1d3d0 + iVar4 + 0x18);
      if (0 < iVar9) {
        iVar7 = *(int *)(iVar4 + 0x1d434);
        if (iVar7 == 0) {
          *(int *)(iVar3 + 0x1d3d0 + iVar4 + 0x18) = iVar9 + -1;
          iVar4 = iVar8;
        }
        if ((*(int *)(iVar3 + 0x1d3e8 + iVar4) != 0) && (*(int *)(iVar3 + 0x1d3e4 + iVar4) != 0)) {
          *(undefined4 *)((int)puVar12 + -4) = 0;
          *(undefined4 *)((int)puVar12 + -8) = 0;
          *(undefined4 *)((int)puVar12 + -0xc) = 0xb00;
          *(undefined1 **)((int)puVar12 + -0x10) = (undefined1 *)((int)puVar12 + 0x410);
          *(undefined4 *)((int)puVar12 + -0x14) = 0x809015a;
          PalGrpMakeFlag();
          *(int *)((int)puVar12 + -0x14) = iVar7;
          *(undefined4 *)((int)puVar12 + -0x18) = 0x80;
          *(undefined4 *)((int)puVar12 + -0x1c) = 0x50;
          *(undefined4 *)((int)puVar12 + -0x20) = 0x50;
          *(undefined4 *)((int)puVar12 + -0x24) = *(undefined4 *)((int)puVar12 + 0x41c);
          *(undefined4 *)((int)puVar12 + -0x28) = *(undefined4 *)((int)puVar12 + 0x418);
          *(undefined4 *)((int)puVar12 + -0x2c) = *(undefined4 *)((int)puVar12 + 0x414);
          *(undefined4 *)((int)puVar12 + -0x30) = *(undefined4 *)((int)puVar12 + 0x410);
          iVar5 = *(int *)((int)puVar12 + 0x40c);
          *(int *)((int)puVar12 + -0x34) = iVar5;
          *(undefined4 *)((int)puVar12 + -0x38) = 0x8090191;
          PalGrpSetMul();
          *(undefined4 *)((int)puVar12 + -8) = 0xc0;
          *(undefined4 *)((int)puVar12 + -0xc) = 0x80;
          *(undefined4 *)((int)puVar12 + -0x10) = 0x80;
          *(undefined4 *)((int)puVar12 + -0x14) = *(undefined4 *)(iVar3 + 0x1d3e0 + g);
          *(undefined4 *)((int)puVar12 + -0x18) = *(undefined4 *)(iVar3 + 0x1d3dc + g);
          *(undefined4 *)((int)puVar12 + -0x1c) = *(undefined4 *)(iVar3 + 0x1d3d8 + g);
          *(undefined4 *)((int)puVar12 + -0x20) = *(undefined4 *)(iVar3 + 0x1d3d4 + g);
          *(undefined4 *)((int)puVar12 + -0x24) = *(undefined4 *)(iVar3 + 0x1d3d0 + g);
          *(undefined4 *)((int)puVar12 + -0x28) = 0x80901cd;
          PalGrpSetMul();
          puVar12 = (undefined4 *)((int)puVar12 + -4);
        }
      }
    }
    puVar12[-5] = 1;
    puVar12[-6] = 0;
    puVar12[-0xd] = iVar5;
    puVar12[-0xe] = 0;
    puVar12[-0xf] = 0x100;
    puVar12[-0x10] = puVar12 + -0xb;
    puVar12[-0x11] = 0x80901f7;
    PalGrpMakeFlag();
    puVar12[-0xc] = g + 0x1bb54;
    puVar12[-0xe] = 0x809020b;
    PalFXUpdate();
    puVar11 = puVar12 + -1;
    puVar10 = puVar12 + -1;
    iVar5 = *(int *)(g + 0x1d168);
    iVar4 = g;
    if (*(int *)(g + 0x1d164) <= iVar5) {
      iVar8 = iVar5 * 4 + 0x1cf60;
      do {
        iVar3 = *(int *)(iVar8 + 4 + iVar4);
        if ((iVar3 == 0) || (bVar2 = true, *(int *)(iVar3 + 0x158) == 0)) {
          bVar2 = false;
        }
        if (bVar2) {
          iVar4 = *(int *)(iVar8 + 4 + iVar4);
          puVar12[-5] = *(undefined4 *)(iVar4 + 0x25d8);
          puVar12[-6] = *(undefined4 *)(iVar4 + 0x25d4);
          puVar12[-7] = *(undefined4 *)(iVar4 + 0x25d0);
          puVar12[-8] = *(undefined4 *)(iVar4 + 0x25cc);
          puVar12[-9] = *(undefined4 *)(iVar4 + 0x25c8);
          puVar12[-10] = 0x8090280;
          iVar3 = PalGrpFlagIsNonZero();
          iVar4 = g;
          if (iVar3 != 0) {
            uVar14 = 0;
            if ((*(int *)(g + 0x1d3cc) == -1) ||
               (*(int *)(*(int *)(iVar8 + 4 + g) + 0x1dc + *(int *)(g + 0x1d3cc) * 4) != 0)) {
              uVar14 = 1;
            }
            puVar12[-2] = uVar14;
            puVar12[-3] = 0;
            iVar4 = *(int *)(iVar8 + g + 4);
            puVar12[-4] = *(undefined4 *)(iVar4 + 0x25d8);
            puVar12[-5] = *(undefined4 *)(iVar4 + 0x25d4);
            puVar12[-6] = *(undefined4 *)(iVar4 + 0x25d0);
            puVar12[-7] = *(undefined4 *)(iVar4 + 0x25cc);
            puVar12[-8] = *(undefined4 *)(iVar4 + 0x25c8);
            puVar12[-9] = *(int *)(iVar8 + g + 4) + 0x25dc;
            puVar12[-10] = 0x80902ed;
            PalFXUpdate();
            iVar4 = g;
          }
        }
        iVar5 = iVar5 + -1;
        iVar8 = iVar8 + -4;
      } while (*(int *)(iVar4 + 0x1d164) <= iVar5);
    }
    puVar12[-2] = 1;
    puVar12[-3] = 1;
    puVar12[-4] = puVar12[0x107];
    puVar12[-5] = puVar12[0x106];
    puVar12[-6] = puVar12[0x105];
    puVar12[-7] = puVar12[0x104];
    puVar12[-8] = puVar12[0x103];
    puVar12[-9] = iVar4 + 0x1bb90;
    puVar12[-10] = 0x8090340;
    PalFXUpdate();
    puVar12[-2] = 0x8090348;
    iVar5 = GameUpdate();
    if (iVar5 == 0) {
      iVar5 = *(int *)(g + 0x1cc24);
      if (iVar5 == 0) {
        puVar12[-5] = *(undefined4 *)(g + 0x14afc);
        puVar12[-6] = 0x809036e;
        ExplodArrayUpdate();
      }
      puVar12[-2] = 0x8090376;
      iVar4 = GameModeInPassiveFightScreen();
      if ((((iVar4 == 0) || ((*(int *)(g + 0x1d504) == 0 && (*(int *)(g + 0x1d508) == 1)))) &&
          ((*(int *)(g + 0x1d3cc) == -1 ||
           (*(int *)(g + 0x1d3ec + *(int *)(g + 0x1d3cc) * 0x24) == 0)))) &&
         ((*(int *)(g + 0x1cc24) == 0 && (*(int *)(g + 0x1d434) == 0)))) {
        iVar5 = *(int *)(g + 0x1bb50);
        puVar12[-5] = iVar5;
        puVar12[-6] = 0x80903d7;
        BGArrayUpdate();
      }
      if (((*(int *)(g + 0x1cc24) == 0) && (*(int *)(g + 0x1d434) == 0)) &&
         (0 < *(int *)(g + 0x10518))) {
        *(int *)(g + 0x10518) = *(int *)(g + 0x10518) + -1;
      }
      bVar2 = false;
      if ((*(int *)(g + 0x14af4) != 0) && (*(char *)(g + 0x1d394) == '\0')) {
        bVar2 = true;
      }
      if (*(int *)(g + 0x1d3a0) != 0) {
        iVar5 = *(int *)(g + 0x1d3bc);
        bVar2 = (bool)(bVar2 & iVar5 != 0);
      }
      if (*(int *)(g + 0x1cc1c) == 0) {
        puVar12[-2] = 0x8090452;
        MasterPalProcessChanges();
        uVar14 = extraout_ECX_00;
        if (*(int *)(g + 0x10518) == 0) {
          if (*(char *)(g + 0x1d395) == '\0') {
            puVar12[-2] = 0x8090470;
            GameBGDraw();
            uVar14 = extraout_ECX_01;
          }
          else {
            puVar12[-5] = 0;
            puVar12[-6] = 0x809047c;
            W_Cls();
            uVar14 = extraout_ECX_02;
          }
          if (*(int *)(g + 0x1d564) == 4) {
            puVar12[-2] = uVar14;
            puVar12[-3] = uVar14;
            puVar12[-4] = 0;
            puVar12[-5] = *(undefined4 *)(g + 0x104e0);
            puVar12[-6] = 0x809049e;
            uVar14 = V_BufGetSurface();
            iVar5 = puVar12[-4];
            puVar12[-4] = uVar14;
            puVar12[-8] = 0;
            puVar12[-9] = *(undefined4 *)(g + 0x104d8);
            puVar12[-10] = 0x80904b7;
            uVar14 = V_BufGetSurface();
            puVar12[-5] = uVar14;
            puVar12[-6] = 0x80904c0;
            V_DoubleRes();
            uVar14 = extraout_ECX_03;
          }
        }
        if (*(int *)(g + 0x1d564) == 4) {
          puVar12[-2] = uVar14;
          puVar12[-3] = uVar14;
          puVar12[-4] = 2;
          puVar12[-5] = *(undefined4 *)(g + 0x1bb50);
          puVar12[-6] = 0x80904e2;
          BGArraySetViewScale();
          iVar5 = puVar12[-5];
          puVar12[-4] = 0;
          puVar12[-5] = *(undefined4 *)(g + 0x104e0);
          puVar12[-6] = 0x80904f7;
          V_SetBuf();
        }
      }
      if (bVar2) {
        puVar12[-5] = 0;
        puVar12[-6] = 0x8090508;
        GameBarsDraw();
      }
      puVar12[-2] = 0x8090510;
      GameBarsUpdate();
      iVar4 = extraout_ECX_04;
      if ((*(int *)(g + 0x1cc1c) == 0) && (iVar4 = *(int *)(g + 0x10518), iVar4 == 0)) {
        if (*(char *)(g + 0x1d392) == '\0') {
          iVar4 = *(int *)(g + 0x1d168);
          iVar8 = g;
          if (*(int *)(g + 0x1d164) <= iVar4) {
            iVar3 = iVar4 * 4 + 0x1cf60;
            do {
              iVar9 = *(int *)(iVar3 + 4 + iVar8);
              if (iVar9 == 0) {
LAB_0809056d:
                bVar6 = false;
              }
              else {
                iVar5 = *(int *)(iVar9 + 0x158);
                bVar6 = true;
                if (iVar5 == 0) goto LAB_0809056d;
              }
              if (bVar6) {
                iVar9 = *(int *)(iVar3 + iVar8 + 4);
                if ((*(char *)(iVar9 + 0x208) == '\0') && (*(int *)(iVar9 + 0x198) != 0)) {
                  puVar12[-2] = iVar5;
                  puVar12[-3] = iVar8 + 0x42a4;
                  puVar12[-4] = iVar8 + 0x4290;
                  puVar12[-5] = *(undefined4 *)(iVar3 + iVar8 + 4);
                  puVar12[-6] = 0x80905a4;
                  PlayerDrawShadow();
                  iVar8 = g;
                }
              }
              iVar4 = iVar4 + -1;
              iVar3 = iVar3 + -4;
            } while (*(int *)(iVar8 + 0x1d164) <= iVar4);
          }
          iVar5 = *(int *)(iVar8 + 0x1d168);
          if (*(int *)(iVar8 + 0x1d164) <= iVar5) {
            iVar4 = iVar5 * 4 + 0x1cf60;
            iVar3 = iVar4;
            do {
              iVar9 = *(int *)(iVar3 + 4 + iVar8);
              if ((iVar9 == 0) || (bVar6 = true, *(int *)(iVar9 + 0x158) == 0)) {
                bVar6 = false;
              }
              if (bVar6) {
                puVar12[-5] = *(undefined4 *)(*(int *)(iVar4 + 4 + iVar8) + 0x21c);
                puVar12[-6] = 0x8090604;
                ProjArrayDrawShadow();
                iVar8 = g;
              }
              iVar5 = iVar5 + -1;
              iVar4 = iVar4 + -4;
              iVar3 = iVar3 + -4;
            } while (*(int *)(iVar8 + 0x1d164) <= iVar5);
          }
          puVar12[-5] = *(undefined4 *)(iVar8 + 0x14af8);
          puVar12[-6] = 0x809062d;
          ExplodArrayDrawShadow();
        }
        if (*(int *)(g + 0x1d564) == 4) {
          uVar14 = 0x40000000;
        }
        else {
          uVar14 = 0x3f800000;
        }
        puVar12[-5] = uVar14;
        puVar12[-6] = -puVar12[1];
        puVar12[-7] = -puVar12[2];
        puVar12[-8] = 2;
        iVar5 = *(int *)(g + 0x104f0);
        puVar12[-9] = iVar5;
        puVar12[-10] = 0x8090672;
        AnimPerArrayDrawScaleGrp();
        iVar4 = extraout_ECX_05;
      }
      if (*(int *)(g + 0x1cc1c) == 0) {
        if ((0 < *(int *)(g + 0x10518)) && (iVar4 = 0, *(int *)(g + 0x10510) != 0)) {
          puVar12[-5] = *(undefined4 *)(g + 0x10514);
          puVar12[-6] = 0x80906ac;
          W_Cls();
          iVar4 = extraout_ECX_06;
        }
        iVar8 = *(int *)(g + 0x1d164);
        iVar3 = g;
        if (iVar8 <= *(int *)(g + 0x1d168)) {
          iVar9 = iVar8 * 4 + 0x1cf60;
          do {
            iVar4 = *(int *)(iVar9 + 4 + iVar3);
            if (iVar4 == 0) {
LAB_080906e7:
              bVar6 = false;
            }
            else {
              iVar5 = *(int *)(iVar4 + 0x158);
              bVar6 = true;
              if (iVar5 == 0) goto LAB_080906e7;
            }
            iVar4 = 0;
            if ((bVar6) && (iVar4 = iVar3 + 4, *(int *)(*(int *)(iVar9 + iVar4) + 0x198) != 0)) {
              puVar12[-2] = iVar5;
              puVar12[-3] = iVar5;
              puVar12[-4] = 0x3f800000;
              puVar12[-5] = *(undefined4 *)(iVar9 + iVar4);
              puVar12[-6] = 0x809070d;
              PlayerDrawAnim();
              iVar4 = extraout_ECX_07;
              iVar3 = g;
            }
            iVar8 = iVar8 + 1;
            iVar9 = iVar9 + 4;
          } while (iVar8 <= *(int *)(iVar3 + 0x1d168));
        }
        iVar5 = *(int *)(iVar3 + 0x1d168);
        if (*(int *)(iVar3 + 0x1d164) <= iVar5) {
          iVar8 = iVar5 * 4 + 0x1cf60;
          iVar9 = iVar8;
          do {
            iVar4 = *(int *)(iVar9 + 4 + iVar3);
            if ((iVar4 == 0) || (bVar6 = true, *(int *)(iVar4 + 0x158) == 0)) {
              bVar6 = false;
            }
            iVar4 = 0;
            if (bVar6) {
              puVar12[-5] = *(undefined4 *)(*(int *)(iVar8 + 4 + iVar3) + 0x21c);
              puVar12[-6] = 0x8090770;
              ProjArrayDraw();
              iVar4 = extraout_ECX_08;
              iVar3 = g;
            }
            iVar5 = iVar5 + -1;
            iVar8 = iVar8 + -4;
            iVar9 = iVar9 + -4;
          } while (*(int *)(iVar3 + 0x1d164) <= iVar5);
        }
        puVar12[-2] = iVar4;
        puVar12[-3] = iVar4;
        puVar12[-4] = 0;
        puVar12[-5] = *(undefined4 *)(iVar3 + 0x14af8);
        puVar12[-6] = 0x809079a;
        ExplodArrayDraw();
        iVar5 = *(int *)(g + 0x1d168);
        uVar14 = extraout_ECX_09;
        iVar4 = g;
        if (*(int *)(g + 0x1d164) <= iVar5) {
          iVar8 = iVar5 * 4 + 0x1cf60;
          do {
            iVar3 = *(int *)(iVar8 + 4 + iVar4);
            if ((iVar3 == 0) || (bVar6 = true, *(int *)(iVar3 + 0x158) == 0)) {
              bVar6 = false;
            }
            uVar14 = 0;
            if (bVar6) {
              puVar12[-5] = *(undefined4 *)(iVar8 + 4 + iVar4);
              puVar12[-6] = 0x80907ea;
              PlayerAftImgDraw();
              puVar12[-5] = *(undefined4 *)(*(int *)(iVar8 + g + 4) + 0x21c);
              puVar12[-6] = 0x8090802;
              ProjArrayAftImgDraw();
              uVar14 = extraout_ECX_10;
              iVar4 = g;
            }
            iVar5 = iVar5 + -1;
            iVar8 = iVar8 + -4;
          } while (*(int *)(iVar4 + 0x1d164) <= iVar5);
        }
        if (*(int *)(iVar4 + 0x1d564) == 4) {
          puVar12[-2] = uVar14;
          puVar12[-3] = uVar14;
          puVar12[-4] = 0x40000000;
          puVar12[-5] = *(undefined4 *)(iVar4 + 0x104f4);
          puVar12[-6] = 0x8090835;
          PRSprArrayScale();
          iVar4 = g;
        }
        puVar12[-5] = *(undefined4 *)(iVar4 + 0x104f4);
        puVar12[-6] = 0x809084d;
        PRSprArrayDraw();
        puVar12[-4] = 1;
        puVar12[-5] = *(undefined4 *)(g + 0x14af8);
        puVar12[-6] = 0x8090862;
        ExplodArrayDraw();
      }
      if (bVar2) {
        puVar12[-5] = 1;
        puVar12[-6] = 0x8090873;
        GameBarsDraw();
      }
      if ((*(int *)(g + 0x1cc1c) == 0) && (*(char *)(g + 0x1d396) == '\0')) {
        puVar12[-2] = 0x8090893;
        GameFGDraw();
      }
      puVar12[-2] = 0x8090898;
      GameRoundDraw();
      if (*(int *)(g + 0x1cc1c) == 0) {
        if ((0 < *(int *)(g + 0x10518)) && (*(int *)(g + 0x10510) == 0)) {
          puVar12[-5] = *(undefined4 *)(g + 0x10514);
          puVar12[-6] = 0x80908cb;
          W_Cls();
        }
        if (*(int *)(g + 0x1d564) == 4) {
          uVar14 = 0x40000000;
        }
        else {
          uVar14 = 0x3f800000;
        }
        puVar12[-5] = uVar14;
        puVar12[1] = -puVar12[1];
        puVar12[-6] = puVar12[1];
        puVar12[2] = -puVar12[2];
        puVar12[-7] = puVar12[2];
        puVar12[-8] = 1;
        puVar12[-9] = *(undefined4 *)(g + 0x104f0);
        puVar12[-10] = 0x809090d;
        AnimPerArrayDrawScaleGrp();
        puVar12[-4] = 2;
        puVar12[-5] = *(undefined4 *)(g + 0x14af8);
        puVar12[-6] = 0x8090923;
        ExplodArrayDraw();
      }
      if (bVar2) {
        puVar12[-5] = 2;
        puVar12[-6] = 0x8090934;
        GameBarsDraw();
      }
      iVar5 = g;
      if (*(int *)(g + 0x1cc1c) == 0) {
        if (*(int *)(g + 0x20740) != 0) {
          iVar4 = *(int *)(g + 0x1d168);
          if (*(int *)(g + 0x1d164) <= iVar4) {
            iVar8 = iVar4 * 4 + 0x1cf60;
            iVar3 = iVar8;
            do {
              iVar9 = *(int *)(iVar3 + 4 + iVar5);
              if ((iVar9 == 0) || (iVar7 = 1, *(int *)(iVar9 + 0x158) == 0)) {
                iVar7 = 0;
              }
              if (iVar7 != 0) {
                puVar12[-2] = iVar7;
                puVar12[-3] = iVar7;
                if (*(int *)(iVar5 + 0x1d564) == 4) {
                  uVar14 = 0x40000000;
                }
                else {
                  uVar14 = 0x3f800000;
                }
                puVar12[-4] = uVar14;
                puVar12[-5] = *(undefined4 *)(iVar8 + 4 + iVar5);
                puVar12[-6] = 0x80909b1;
                PlayerDrawClsn();
                iVar5 = g;
              }
              iVar4 = iVar4 + -1;
              iVar8 = iVar8 + -4;
              iVar3 = iVar3 + -4;
            } while (*(int *)(iVar5 + 0x1d164) <= iVar4);
          }
          iVar4 = *(int *)(iVar5 + 0x1d168);
          if (*(int *)(iVar5 + 0x1d164) <= iVar4) {
            iVar8 = iVar4 * 4 + 0x1cf60;
            iVar3 = iVar8;
            do {
              iVar9 = *(int *)(iVar3 + 4 + iVar5);
              if ((iVar9 == 0) || (iVar7 = 1, *(int *)(iVar9 + 0x158) == 0)) {
                iVar7 = 0;
              }
              if (iVar7 != 0) {
                puVar12[-2] = iVar7;
                puVar12[-3] = iVar7;
                if (*(int *)(iVar5 + 0x1d564) == 4) {
                  uVar14 = 0x40000000;
                }
                else {
                  uVar14 = 0x3f800000;
                }
                puVar12[-4] = uVar14;
                puVar12[-5] = *(undefined4 *)(*(int *)(iVar8 + 4 + iVar5) + 0x21c);
                puVar12[-6] = 0x8090a29;
                ProjArrayClsnDraw();
                iVar5 = g;
              }
              iVar4 = iVar4 + -1;
              iVar8 = iVar8 + -4;
              iVar3 = iVar3 + -4;
            } while (*(int *)(iVar5 + 0x1d164) <= iVar4);
          }
        }
        if (*(int *)(iVar5 + 0x14af4) != 0) {
          puVar12[-5] = 1;
          puVar12[-6] = 0x8090a57;
          ComboDisplay();
          puVar12[-5] = 2;
          puVar12[-6] = 0x8090a63;
          ComboDisplay();
          iVar5 = g;
        }
        if (*(int *)(iVar5 + 0x1cc30) != 0) {
          puVar12[-5] = 0;
          puVar12[-6] = *(undefined4 *)(iVar5 + 0x1cc34);
          puVar12[-7] = V_Width;
          puVar12[-8] = 0;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090aa5;
          W_BoxFill();
          puVar12[-5] = 0x10 << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x20 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0x10 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = *(int *)(g + 0x1cc34) + 4;
          puVar12[-7] = V_Width;
          puVar12[-8] = *(undefined4 *)(g + 0x1cc34);
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090af3;
          W_BoxFillTransSub16();
          puVar12[-5] = 0xc << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x18 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0xc << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = *(int *)(g + 0x1cc34) + 9;
          puVar12[-7] = V_Width;
          puVar12[-8] = *(int *)(g + 0x1cc34) + 5;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090b43;
          W_BoxFillTransSub16();
          puVar12[-5] = 8 << ((byte)_rgb_r_shift_16 & 0x1f) | 0x10 << ((byte)_rgb_g_shift_16 & 0x1f)
                        | 8 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = *(int *)(g + 0x1cc34) + 0xe;
          puVar12[-7] = V_Width;
          puVar12[-8] = *(int *)(g + 0x1cc34) + 10;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090b96;
          W_BoxFillTransSub16();
          puVar12[-5] = 4 << ((byte)_rgb_r_shift_16 & 0x1f) | 8 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        4 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = *(int *)(g + 0x1cc34) + 0x13;
          puVar12[-7] = V_Width;
          puVar12[-8] = *(int *)(g + 0x1cc34) + 0xf;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090be4;
          W_BoxFillTransSub16();
          puVar12[-5] = 0;
          puVar12[-6] = V_Height + -1;
          puVar12[-7] = V_Width;
          puVar12[-8] = (V_Height - *(int *)(g + 0x1cc34)) + -1;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090c0f;
          W_BoxFill();
          puVar12[-5] = 0x10 << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x20 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0x10 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = (V_Height - *(int *)(g + 0x1cc34)) + -5;
          puVar12[-7] = V_Width;
          puVar12[-8] = (V_Height - *(int *)(g + 0x1cc34)) + -1;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090c67;
          W_BoxFillTransSub16();
          puVar12[-5] = 0xc << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x18 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0xc << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = (V_Height - *(int *)(g + 0x1cc34)) + -10;
          puVar12[-7] = V_Width;
          puVar12[-8] = (V_Height - *(int *)(g + 0x1cc34)) + -6;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090cc2;
          W_BoxFillTransSub16();
          puVar12[-5] = 8 << ((byte)_rgb_r_shift_16 & 0x1f) | 0x10 << ((byte)_rgb_g_shift_16 & 0x1f)
                        | 8 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = (V_Height - *(int *)(g + 0x1cc34)) + -0xf;
          puVar12[-7] = V_Width;
          puVar12[-8] = (V_Height - *(int *)(g + 0x1cc34)) + -0xb;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090d1c;
          W_BoxFillTransSub16();
          puVar12[-5] = 4 << ((byte)_rgb_r_shift_16 & 0x1f) | 8 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        4 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = (V_Height - *(int *)(g + 0x1cc34)) + -0x14;
          puVar12[-7] = V_Width;
          puVar12[-8] = (V_Height - *(int *)(g + 0x1cc34)) + -0x10;
          puVar12[-9] = 0;
          puVar12[-10] = 0x8090d72;
          W_BoxFillTransSub16();
          iVar5 = g;
        }
        if ((*(int *)(iVar5 + 0x20734) != 0) &&
           ((*(int *)(iVar5 + 0x1d3a0) == 0 || (*(int *)(iVar5 + 0x1d3c0) != 0)))) {
          puVar12[-5] = *(undefined4 *)(iVar5 + 0x2072c);
          puVar12[-6] = 0x8090da8;
          ShowDebugInfo();
          iVar5 = g;
        }
      }
      if ((*(int *)(iVar5 + 0x1cc30) != 0) && (*(int *)(iVar5 + 0x1cc24) == 0)) {
        iVar4 = *(int *)(iVar5 + 0x1cc38);
        iVar8 = iVar4 + *(int *)(iVar5 + 0x1cc34);
        *(int *)(iVar5 + 0x1cc34) = iVar8;
        iVar5 = g;
        if (((iVar4 < 0) && (iVar8 < 0)) || ((0 < iVar4 && (V_Height / 2 < iVar8)))) {
          *(undefined4 *)(g + 0x1cc30) = 0;
        }
      }
      if ((*(int *)(iVar5 + 0x1cc24) == 0) && (*(int *)(iVar5 + 0x1d434) == 0)) {
        puVar12[-5] = 1;
        puVar12[-6] = 0x8090e34;
        ComboDisplayUpdate();
        puVar12[-5] = 2;
        puVar12[-6] = 0x8090e40;
        ComboDisplayUpdate();
        iVar5 = g;
      }
      iVar4 = *(int *)(iVar5 + 0x1cc24);
      if ((iVar4 != 0) && (*(int *)(iVar5 + 0x1d388) == 0)) {
        if (*(int *)(iVar5 + 0x1f6e8) == 0) {
          puVar12[-2] = iVar5;
          puVar12[-3] = iVar5;
          puVar12[-4] = "PAUSED";
          puVar12[-5] = puVar12 + 3;
          puVar12[-6] = 0x8090e84;
          sprintf((char *)puVar12[-5],(char *)puVar12[-4]);
          puVar12[-5] = 10 << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x14 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0x10 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = 0x1b;
          puVar12[-7] = 0xb9;
          puVar12[-8] = 8;
          puVar12[-9] = 0x85;
          puVar12[-10] = 0x8090ec5;
          W_Box();
          puVar12[-5] = 0x18 << ((byte)_rgb_r_shift_16 & 0x1f) |
                        0x30 << ((byte)_rgb_g_shift_16 & 0x1f) |
                        0x1e << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = 0x1a;
          puVar12[-7] = 0xb8;
          puVar12[-8] = 9;
          puVar12[-9] = 0x86;
          puVar12[-10] = 0x8090f07;
          W_Box();
          puVar12[-5] = 3 << ((byte)_rgb_b_shift_16 & 0x1f);
          puVar12[-6] = 0x19;
          puVar12[-7] = 0xb7;
          puVar12[-8] = 10;
          puVar12[-9] = 0x87;
          puVar12[-10] = 0x8090f2b;
          W_BoxFillTransAdd16_B50();
          puVar12[-5] = *puVar12;
          puVar12[-6] = 0x14;
          puVar12[-7] = 0x8e;
          puVar12[-8] = *(undefined4 *)(g + 0x104ec);
          puVar12[-9] = puVar12 + 3;
          puVar12[-10] = 0x8090f4c;
          V_FontDraw();
          iVar5 = g;
        }
        else {
          puVar12[-2] = 0x8090f5c;
          TrainingMenuDraw();
          iVar5 = g;
        }
      }
      if (*(int *)(iVar5 + 0x104dc) != 0) {
        puVar12[-2] = iVar4;
        puVar12[-3] = iVar4;
        puVar12[-4] = 0;
        puVar12[-5] = *(undefined4 *)(iVar5 + 0x104dc);
        puVar12[-6] = 0x8090f7c;
        uVar14 = V_SetBuf();
        uVar14 = CONCAT31((int3)((uint)uVar14 >> 8),keypauseflag);
        if (keypauseflag == '\0') {
          puVar12[-2] = extraout_ECX_11;
          puVar12[-3] = extraout_ECX_11;
          puVar12[-4] = 0x80;
          puVar12[-5] = 0x80;
          puVar12[-6] = 0;
          puVar12[-7] = 0;
          puVar12[-8] = 0;
          puVar12[-9] = *(undefined4 *)(g + 0x104d8);
          puVar12[-10] = 0x8090fab;
          uVar14 = W_PutSpriteTransAdd_B();
        }
        puVar12[-2] = uVar14;
        puVar12[-3] = uVar14;
        puVar12[-4] = 0;
        puVar12[-5] = *(undefined4 *)(g + 0x104d8);
        puVar12[-6] = 0x8090fc3;
        V_SetBuf();
        iVar5 = g;
      }
      if (*(int *)(iVar5 + 0x20b48) == 0) {
        puVar12[-2] = 0x8090fdb;
        TimerWaitSync();
        iVar5 = g;
      }
      if ((*(int *)(iVar5 + 0x1cc1c) == 0) && (*(int *)(iVar5 + 0x1050c) != 0)) {
        puVar12[-2] = 0x8090ffa;
        VRetrace();
      }
      puVar12[-2] = 0x8090fff;
      DrawToScreen();
      if (*(int *)(g + 0x1cc1c) == 0) {
        puVar12[-2] = 0x8091013;
        MasterPalFinishedDraw();
      }
      puVar12[-2] = 0x8091018;
      FrameSkipUpdate();
      iVar5 = g;
      piVar1 = (int *)(g + 0x1cc24);
      *(undefined4 *)(g + 0x1cc20) = 0;
      if (*piVar1 == 0) {
        *(int *)(iVar5 + 0x1cc10) = *(int *)(iVar5 + 0x1cc10) + 1;
      }
    }
    puVar12[-2] = 0x8091043;
    iVar4 = GameModeInPassiveFightScreen();
    iVar5 = g;
    if (((iVar4 == 0) && (puVar13 = puVar12 + -1, *(int *)(g + 0x1d518) != 0)) ||
       (puVar13 = puVar12 + -1, *(int *)(g + 0x104d4) != 0)) goto LAB_080910a2;
    if (*(int *)(g + 0x20b4c) == 0) {
LAB_0808fec1:
      iVar5 = g;
      iVar4 = *(int *)(g + 0x20b58);
      puVar12 = puVar11;
      if ((iVar4 != 0) && (iVar4 != -1)) {
        *(int *)(g + 0x1cc14) = iVar4;
        *(undefined4 *)(iVar5 + 0x20b48) = 1;
        iVar5 = g;
      }
      goto LAB_0808fee6;
    }
    *(undefined4 *)(g + 0x1cc14) = 2000;
    *(undefined4 *)(iVar5 + 0x20b48) = 1;
    iVar4 = *(int *)(iVar5 + 0x1cc10);
    iVar5 = g;
    puVar13 = puVar12 + -1;
  } while( true );
}

