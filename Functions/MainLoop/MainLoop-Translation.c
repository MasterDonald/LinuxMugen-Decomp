#include "game_types.h"

void MainLoop(int param_1) {
    bool bVar1;
    int iVar3;
    char local_101c[4108];

    // Check intro storyboard flags (g + 0x7d44, g + 0x8d44)
    if (param_1 != 0 && g->system.intro_played_flag != 0 && g->system.intro_complete_flag == 0) {
        IntroScreen();
        g->system.intro_complete_flag = 1;
    }

    GameResetPersistVars();
    if (param_1 == 0) {
        g->mode.current_game_mode = 1; // Maps to g + 0xced4
    } else {
        ModeSelect();
        if (g->mode.current_game_mode == 10) {
            BGMFree((void *)(g + 0x1bbe8));
            return;
        }
    }

    while (1) {
        GameResetPersistVars();
        g->match.arcade_match_index = 0; // Maps to g + 0x1d50c

        if (param_1 == 0 || (g->engine.debug_flag != 0)) {
            DemoFightSetup();
            BGMFree((void *)(g + 0x1bbe8));
        } else {
            if (!CharacterSelectScreen((void *)g->mode.current_game_mode, (void *)g->mode.difficulty_setting, NULL, NULL)) {
                GameResetPersistVars();
                g->mode.current_game_mode = 1;
                return;
            }
            if (g->mode.arcade_mode_flag != 0) { // Maps to g + 0xcecc
                ArcadeListBuild();
                if (g->files.arcade_stage_count != 0) { // Maps to g + 0x52d4
                    PrecacheRequestCurArcadeTeam();
                    PrecacheStart();
                }
            }
            if (g->mode.survival_team_count != 0) { // Maps to g + 0xced0
                SurvivalBuildRandomTeam((void *)(g + 0xcee0 + (2 - g->mode.survival_team_count) * 0x1a9c), 2 - g->mode.survival_team_count, 1, NULL);
            }
        }

        TrainingMenuReset();

        do {
            g->match.arcade_match_index++;
            g->match.total_matches_played++; // Maps to g + 0x1d510

            bVar1 = false;
            if (g->mode.arcade_mode_flag != 0) {
                iVar3 = ArcadeListGetCurrent();
                if (iVar3 != -1) {
                    // Copy opponent stage details from table at g + 0x52d0
                }
            }

            while (1) {
                if (param_1 != 0) {
                    if (!VersusScreen()) goto LAB_CLEANUP;
                }
                if (!GamePlay()) {
                    ErrorExit();
                }
                if (g->system.precache_cancel_flag == 0) break; // Check return to title flag
                GameResetPersistVars();
                CharacterSelectScreen((void *)g->mode.current_game_mode, (void *)g->mode.difficulty_setting, NULL, NULL);
                g->system.precache_cancel_flag = 0;
            }

            if (g->mode.arcade_mode_flag != 0) {
                g->score.arcade_wins_count++; // Maps to g + 0x52ec
                iVar3 = ArcadeListGetCurSize();
                g->score.arcade_total_score += iVar3; // Maps to g + 0x52e8
                if (ArcadeListEnemiesLeft() == 0) break;
                bVar1 = true;
            }
            if (!bVar1 || g->system.precache_cancel_flag != 0) break;
        } while (1);

            LAB_CLEANUP:
            if (PrecacheIsRunning()) {
                PrecacheRequestCancel();
                PrecacheFinish();
            }
            if (param_1 == 0) return;
            CharStopUsingPalAll();
        if (g->mode.arcade_mode_flag == 0 && g->engine.debug_flag == 0 && g->mode.survival_team_count == 0) {
            break;
        }
    }
}
