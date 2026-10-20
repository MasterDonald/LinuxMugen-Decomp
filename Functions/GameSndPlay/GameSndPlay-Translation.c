void GameSndPlay(int group, int item, int volume, int pan)
{
    // Forward sound playback request to GameSndPlayID with a default sound ID (-1)
    GameSndPlayID(-1, group, item, volume, pan);
}
