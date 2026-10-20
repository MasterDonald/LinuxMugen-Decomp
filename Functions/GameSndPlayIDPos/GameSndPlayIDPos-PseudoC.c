
void GameSndPlayIDPos(undefined4 param_1,undefined4 param_2,int param_3,int param_4,
                      undefined4 param_5,undefined4 param_6)

{
    int iVar1;
    undefined4 uVar2;
    int iVar3;
    undefined4 uVar4;
    undefined4 uVar5;

    if ((((*(int *)(g + 0x1bbcc) != 0) && (param_3 != 0)) && (*(int *)(g + 0x1cc20) == 0)) &&
        (param_4 != -1)) {
        iVar1 = SndIDPrepare(param_1,param_3,param_4,param_5);
    if (iVar1 != -1) {
        if (*(int *)(g + 0x1d5b0) == 0) {
            uVar2 = 0;
        }
        else {
            uVar2 = ScrPositionToPan(param_2);
        }
        iVar3 = SndCorrectVolOff(param_6);
        uVar4 = PanVolumeAdjust(iVar3 + *(int *)(g + 0x1bbd0),uVar2);
        uVar5 = SndVoiceGetFreq(iVar1);
        SndVoiceSetVol(iVar1,uVar4);
        SndVoiceSetFreq(iVar1,uVar5);
        SndVoiceSetPan(iVar1,uVar2);
        SndVoiceSetLoop(iVar1,0);
        SndVoiceStart(iVar1);
    }
        }
        return;
}

