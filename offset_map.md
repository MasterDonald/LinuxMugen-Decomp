# Game Engine Offset Map

## GameInit()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d57c` | `g->engine.debug_flag` | `int` | Debug mode / profiling toggle flag. |
| `0x1d580` | `g->audio.mp3_enabled` | `int` | MP3 subsystem initialization check flag. |
| `0x1d56c` | `g->audio.mix_rate` | `int` | Audio hardware mixing sample rate parameter. |
| `0x1d570` | `g->audio.buffer_size` | `int` | Audio output buffer size parameter. |
| `0x1d574` | `g->audio.channels` | `int` | Audio channels configuration (mono/stereo). |
| `0x1d39c` | `g->engine.initialized_flag` | `int` | Core graphics and video initialization completion flag. |
| `0x1d630` | `g->system.logging_enabled` | `int` | Debug/Error log file generation toggle. |
| `0x1d634` | `g->system.log_filepath` | `char[256]` | File path buffer for the engine log output. |
| `0x1e634` | `g->match.net_arguments` | `int[17]` | Network match setup and argument configuration block. |
| `0x20b4c` | `g->match.player_mode_flag` | `int` | Player game mode or handicap configuration value. |
| `0x20b58` | `g->match.ai_level_override` | `int` | AI difficulty override setting. |
| `0x1e674` | `g->match.team_mode_setting` | `int` | Team match mode option flag. |
| `0x20730` | `g->system.skip_intro` | `int` | Toggle to skip startup intro sequence. |
| `0x1e678` | `g->engine.gamespeed_override` | `int` | Command-line game tick speed override. |
| `0x1e684` | `g->engine.display_mode_override` | `int` | Display mode / controller profile override. |
| `0x15aff` | `g->files.system_def_path` | `char[256]` | System definition file directory path. |
| `0x14b00` | `g->files.system_def_filename` | `char[256]` | System definition filename (system.def). |
| `0x20748` | `g->scratch_error_buffer` | `char[512]` | Temporary scratchpad buffer for formatting error strings. |

---

## GameLoop()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cc10` | `g->engine.match_frame_count` | `int` | Current match frame tick counter. |
| `0x1cc14` | `g->engine.round_timer_limit` | `int` | Round countdown timer threshold. |
| `0x1cc44` | `g->engine.scroll_offset_x1` | `int` | Horizontal viewport scroll offset layer 1. |
| `0x1cc48` | `g->engine.scroll_offset_x2` | `int` | Horizontal viewport scroll offset layer 2. |
| `0x1cc54` | `g->engine.bg_offset_x1` | `int` | Background layer 1 translation position. |
| `0x1cc58` | `g->engine.bg_offset_x2` | `int` | Background layer 2 translation position. |
| `0x1cc30` | `g->engine.pause_menu_active` | `int` | Pause menu active display state flag. |
| `0x1cc34` | `g->engine.pause_menu_cursor` | `int` | Pause menu vertical cursor position. |
| `0x104d4` | `g->system.precache_cancel_flag` | `int` | Flag signaling cancellation of asset precaching. |
| `0x104d8` | `g->video.primary_surface_handle` | `int` | Main drawing video surface handle pointer. |
| `0x104e0` | `g->video.secondary_surface_handle` | `int` | Secondary rendering buffer/surface pointer. |
| `0x104f0` | `g->assets.scale_group_handle` | `int` | Layered scale and sprite group handle. |
| `0x104f4` | `g->assets.pr_sprite_handle` | `int` | Primitive sprite array container pointer. |
| `0x10518` | `g->engine.fade_timer` | `int` | Screen fade-in/fade-out timer counter. |
| `0x20b48` | `g->match.timer_sync_flag` | `int` | Match timer synchronization mode toggle. |
| `0x20b4c` | `g->match.game_over_flag` | `int` | Match completion / exit request state flag. |
| `0x20b50` | `g->match.round_reset_flag` | `int` | Round reset trigger flag. |
| `0x20b54` | `g->match.stage_reload_flag` | `int` | Stage reload trigger flag. |

---

## MainLoop()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0xced4` | `g->mode.current_game_mode` | `int` | Selected game mode identifier (arcade, versus, training). |
| `0xced8` | `g->mode.difficulty_setting` | `int` | Selected game difficulty level setting. |
| `0xced0` | `g->mode.survival_team_count` | `int` | Survival mode team configuration setting. |
| `0xcecc` | `g->mode.arcade_mode_flag` | `int` | Arcade mode active execution toggle. |
| `0xceb0` | `g->files.extra_stage_list_ptr` | `int*` | Pointer to extra/random stage array list. |
| `0xceb4` | `g->files.extra_stage_count` | `int` | Total count of extra/random stages. |
| `0x2014` | `g->files.current_stage_path` | `char[256]` | File path buffer for the active stage definition. |
| `0x3013` | `g->files.stage_music_override` | `char[128]` | Optional custom music track override for the stage. |
| `0x52d0` | `g->files.arcade_stage_list_ptr` | `int*` | Arcade stage table reference base pointer. |
| `0x52d4` | `g->files.arcade_stage_count` | `int` | Total number of configured arcade stages. |
| `0x52e8` | `g->score.arcade_total_score` | `int` | Accumulated score counter across arcade matches. |
| `0x52ec` | `g->score.arcade_wins_count` | `int` | Total match victories in current arcade run. |
| `0x7d44` | `g->system.intro_played_flag` | `int` | Startup intro movie/storyboard playback flag. |
| `0x8d44` | `g->system.intro_complete_flag` | `int` | Intro storyboard completion confirmation flag. |
| `0xb460` | `g->files.ending_cutscene_table` | `int[100]` | Lookup table mapping character endings to cutscenes. |
| `0x1d50c` | `g->match.arcade_match_index` | `int` | Current match round index in arcade ladder. |
| `0x1d510` | `g->match.total_matches_played` | `int` | Cumulative count of completed matches. |

---

## GameConfigRead()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cc74` | `g->system.game_type` | `int` | Active game mode / match type flag. |
| `0x1cc78` | `g->rules.attack_lifetopowermul` | `float` | Default damage-to-power multiplier when attacking. |
| `0x1cc7c` | `g->rules.gethit_lifetopowermul` | `float` | Default damage-to-power multiplier when receiving hits. |
| `0x1cc80` | `g->rules.super_targetdefencemul` | `float` | Super move target defense scaling multiplier. |
| `0x1cc84` | `g->input.p1_keys` | `KeyConfig` | Player 1 keyboard and button mapping structure buffer. |
| `0x1ccb8` | `g->input.p2_keys` | `KeyConfig` | Player 2 keyboard and button mapping structure buffer. |
| `0x1ce24` | `g->input.config` | `InputConfig` | General input subsystem settings (joystick, force feedback). |
| `0x1bbcc` | `g->audio.master_volume` | `int` | Master audio volume level (0–100). |
| `0x1bbd0` | `g->audio.wav_volume` | `int` | Sound effect (WAV) volume level. |
| `0x1bbd4` | `g->audio.midi_volume` | `int` | MIDI music volume level. |
| `0x1bbd8` | `g->audio.mp3_volume` | `int` | MP3/audio stream volume level. |
| `0x1bbdc` | `g->audio.mod_volume` | `int` | MOD tracker music volume level. |
| `0x1bbe0` | `g->audio.cd_volume` | `int` | CD audio track volume level. |
| `0x1bbe4` | `g->audio.stereo_panning` | `int` | Stereo panning configuration toggle. |
| `0x1d54c` | `g->video.width` | `int` | Rendering window / screen resolution width. |
| `0x1d550` | `g->video.height` | `int` | Rendering window / screen resolution height. |
| `0x1d554` | `g->video.depth` | `int` | Video color bit depth. |
| `0x1d558` | `g->video.fullscreen` | `int` | Fullscreen display mode toggle flag. |
| `0x1d55c` | `g->video.blit_mode` | `int` | Hardware/software blitting acceleration mode. |
| `0x1d5bc` | `g->engine.gamespeed` | `int` | Target ticks per second (game speed governor). |
| `0x1d5c0` | `g->engine.draw_shadows` | `int` | Global toggle flag for rendering character/object shadows. |
| `0x1d5c4` | `g->engine.afterimage_max` | `int` | Resource limit for active afterimage effects. |
| `0x1d5c8` | `g->engine.layered_sprite_max` | `int` | Resource limit for concurrent layered sprites. |
| `0x1d5cc` | `g->engine.explod_max` | `int` | Resource limit for active explosion/effect objects. |
| `0x1d5d0` | `g->engine.helper_max` | `int` | Resource limit for active character helper entities. |

---

## GameLoadSystem()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x05380` | `g->files.select_def` | `char[256]` | Path string for select.def (character roster and stages). |
| `0x06d44` | `g->files.logo_storyboard` | `char[256]` | File path for the startup logo storyboard script. |
| `0x07d44` | `g->files.intro_storyboard` | `char[256]` | File path for the main menu intro storyboard script. |
| `0x16b00` | `g->assets.spr` | `SffHandle*` | Pointer to the primary loaded sprite container (.sff). |
| `0x17b04` | `g->assets.snd` | `SndHandle*` | Pointer to the primary loaded sound container (.snd). |
| `0x18b08` | `g->assets.air` | `AirHandle*` | Global animation script container pointer (.air). |
| `0x18b0c` | `g->assets.fonts[10]` | `FontHandle*[10]` | Array of loaded font handles for rendering text (fonts 0–9). |
