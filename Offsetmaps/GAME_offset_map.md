# GAME FUNCTIONS Offset Map

## GameBarsDraw()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1055c` | `g->match.lifebar_config` | `int` | Lifebar configuration structure base address. |
| `0x1cf68` | `g->match.active_entity_pointers` | `int[32]` | Array of active character and entity pointers for HUD rendering. |
| `0x1cf70` | `g->match.hud_status_flags` | `int[32]` | Status flag array determining alternate HUD layout rendering modes. |

---

## GameBarsUpdate()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cf68` | `g->match.hud_entity_p1` | `int` | Primary Player 1 HUD entity pointer reference. |
| `0x1cf6c` | `g->match.hud_entity_p2` | `int` | Primary Player 2 HUD entity pointer reference. |
| `0x1cf70` | `g->match.hud_entity_helper1` | `int` | Additional helper/teammate entity pointer 1 for HUD updates. |
| `0x1cf74` | `g->match.hud_entity_helper2` | `int` | Additional helper/teammate entity pointer 2 for HUD updates. |

---

## GameBGLoad()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x2014` | `g->files.stage_def_filename` | `char[256]` | Stage definition file path and filename buffer. |

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

## GameDefKeyInit()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1ccec` | `g->input.p1_key_config_base` | `int` | Base offset for Player 1 default keyboard configuration block. |
| `0x1cd20` | `g->input.p2_key_config_base` | `int` | Base offset for Player 2 default keyboard configuration block. |

---

## GameDeInit()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x20710` | `g->stage.load_tick_duration` | `int` | Tick duration elapsed during stage loading. |
| `0x20714` | `g->stage.player1_load_ticks` | `int` | Tick duration elapsed during Player 1 loading. |
| `0x20718` | `g->stage.player2_load_ticks` | `int` | Tick duration elapsed during Player 2 loading. |
| `0x20724` | `g->engine.match_tick_start` | `int` | Tick counter recorded at match start for timing. |
| `0x20728` | `g->stage.bg_pal_groups_count` | `int` | Number of palette groups loaded in background. |

---

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

## GameInitPads()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cdbc` | `g->input.p1_default_pad_config` | `int[13]` | Default gamepad/pad configuration data block for Player 1. |
| `0x1cd54` | `g->input.p1_pad_config` | `int[13]` | Active gamepad/pad configuration data structure for Player 1. |
| `0x1cdf0` | `g->input.p2_default_pad_config` | `int[13]` | Default gamepad/pad configuration data block for Player 2. |
| `0x1cd88` | `g->input.p2_pad_config` | `int[13]` | Active gamepad/pad configuration data structure for Player 2. |
| `0x1ce2c` | `g->input.p1_pad_enabled` | `int` | Player 1 pad activation and device index flag. |
| `0x1ce30` | `g->input.p2_pad_enabled` | `int` | Player 2 pad activation and device index flag. |
| `0x1ce34` | `g->input.p1_device_id` | `int` | Player 1 device type identifier. |
| `0x1ce38` | `g->input.p2_device_id` | `int` | Player 2 device type identifier. |
| `0x1ce40` | `g->input.device_config` | `int` | Specific device initialization configuration block. |

---

## GameInputSetup()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cc84` | `g->config.keyboard_cfg_base` | `int` | Base offset for player keyboard configuration data structures. |
| `0x1cd54` | `g->config.pad_cfg_base` | `int` | Base offset for player gamepad/pad configuration data structures. |

---

## GameInputUpdate()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x104d4` | `g->match.input_active_flag` | `int` | Flag indicating active player input processing. |
| `0x14af4` | `g->match.debug_info_toggle` | `int` | Toggle state for on-screen debug info display. |
| `0x1cc14` | `g->match.debug_timer` | `int` | Debug timer / frame advance counter value. |
| `0x1cc24` | `g->match.keypauseflag_val` | `int` | Cached value of the global key pause flag. |
| `0x1cf60` | `g->match.player_array` | `int[4]` | Base pointer array for active fighters in the match. |
| `0x1d388` | `g->match.screensnap_flag` | `int` | Request flag for capturing screen snapshots. |
| `0x2072c` | `g->match.selected_player_index` | `int` | Index of the currently selected player for debug operations. |

---

## GameLifeBarDraw()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d564` | `g->system.screen_mode_flag` | `int` | Active screen display mode / widescreen configuration flag. |
| `0x20734` | `g->debug.show_health_values` | `int` | Debug flag indicating whether numerical health values are drawn on screen. |
| `0x104e8` | `g->assets.font_handle` | `int` | Active font asset handle used for HUD text rendering. |

---

## GameLifeBarUpdate()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cc24` | `g->match.pause_flag` | `int` | Match pause or freeze state indicator flag. |
| `0x1d434` | `g->match.round_slowdown_timer` | `int` | Round slowdown / dramatic finish timer counter. |

---

## GameLoadFightData()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1051c` | `g->match.fightfx_spr` | `SffHandle*` | Fight FX sprite container handle (.sff). |
| `0x10520` | `g->match.fightfx_air` | `AirHandle*` | Fight FX animation script container handle (.air). |
| `0x10524` | `g->match.fight_data_internal_base` | `int` | Internal base offset pointer for match fighter data structures. |
| `0x10528` | `g->match.anim` | `int` | Match animation script container handle. |
| `0x1052c` | `g->match.fonts[10]` | `FontHandle*[10]` | Array of match-specific font handles. |
| `0x10554` | `g->match.fight_snd` | `SndHandle*` | Loaded fighter/system sound container handle (.snd). |
| `0x10558` | `g->match.common_snd` | `SndHandle*` | Common sound container handle (.snd). |
| `0x1055c` | `g->match.lifebar_config` | `int` | Lifebar configuration structure base. |
| `0x14ad0` | `g->match.use_icon_upto` | `int` | Maximum win icons displayed limit. |
| `0x14af8` | `g->assets.p1_explod_array_handle` | `int` | Player 1 active explod array container handle. |
| `0x14afc` | `g->assets.p2_explod_array_handle` | `int` | Player 2 active explod array container handle. |

---

## GameLoadOptions()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1e678` | `g->engine.difficulty` | `int` | Difficulty setting loaded from configuration. |
| `0x1e67c` | `g->match.life_setting` | `int` | Default match life setting loaded from configuration. |
| `0x1e680` | `g->match.round_time_setting` | `int` | Default round time setting loaded from configuration. |
| `0x1e684` | `g->engine.gamespeed` | `int` | Game speed tick rate setting loaded from configuration. |
| `0x1e688` | `g->audio.wav_volume` | `int` | Sound effect (WAV) volume setting. |
| `0x1e68c` | `g->audio.midi_volume` | `int` | MIDI music volume setting. |
| `0x1e6a4` | `g->input.config_loaded_flag` | `int` | Flag indicating input configuration has been loaded. |
| `0x1e6ac` | `g->input.p1_joystick_type` | `int` | Player 1 joystick device type configuration. |
| `0x1e6c0` | `g->input.p2_joystick_type` | `int` | Player 2 joystick device type configuration. |
| `0x1e6d0` | `g->match.team_1vs2_life` | `int` | Life multiplier configuration for 1 vs 2 team matches. |
| `0x1e6d4` | `g->match.team_lose_on_ko` | `int` | Team LoseOnKO rule configuration flag. |
| `0x1e6e0` | `g->files.motif_path` | `char[256]` | File path string for the active motif/system definition. |

---

## GameLoadStage()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x041fc` | `g->stage.info` | `StageInfo` | Main stage configuration structure block. |
| `0x04200` | `g->stage.camera.startx` | `int` | Stage initial camera start X coordinate. |
| `0x04204` | `g->stage.camera.starty` | `int` | Stage initial camera start Y coordinate. |
| `0x04208` | `g->stage.camera.boundleft` | `int` | Camera left boundary limit. |
| `0x0420c` | `g->stage.camera.boundright` | `int` | Camera right boundary limit. |
| `0x04210` | `g->stage.camera.boundhigh` | `int` | Camera high/top boundary limit. |
| `0x04214` | `g->stage.camera.boundlow` | `int` | Camera low/bottom boundary limit. |
| `0x04218` | `g->stage.camera.verticalfollow` | `float` | Camera vertical tracking follow speed. |
| `0x0421c` | `g->stage.camera.tension` | `int` | Camera horizontal tracking tension zone width. |
| `0x04220` | `g->stage.camera.floortension` | `int` | Camera floor tension threshold. |
| `0x0422c` | `g->match.p1_spawn_x` | `int` | Player 1 spawn X coordinate. |
| `0x04230` | `g->match.p2_spawn_x` | `int` | Player 2 spawn X coordinate. |
| `0x0423c` | `g->match.p1_spawn_y` | `int` | Player 1 spawn Y coordinate. |
| `0x04240` | `g->match.p2_spawn_y` | `int` | Player 2 spawn Y coordinate. |
| `0x0424c` | `g->match.p1_spawn_z` | `int` | Player 1 spawn Z coordinate. |
| `0x04250` | `g->match.p2_spawn_z` | `int` | Player 2 spawn Z coordinate. |
| `0x0425c` | `g->match.p1_facing` | `int` | Player 1 initial facing direction. |
| `0x04260` | `g->match.p2_facing` | `int` | Player 2 initial facing direction. |
| `0x10500` | `g->stage.zoffset` | `int` | Stage floor Z-offset rendering coordinate. |
| `0x10504` | `g->stage.zoffset_original` | `int` | Original unmodified stage Z-offset. |
| `0x10508` | `g->stage.zoffsetlink` | `int` | Stage Z-offset link parameter. |
| `0x1ce54` | `g->stage.bg_layer_count` | `int` | Total active background layers loaded. |
| `0x1ce58` | `g->stage.bg_element_count` | `int` | Total background elements count. |
| `0x1ce5c` | `g->stage.bg_scroll_factor` | `int` | Background scrolling multiplier. |
| `0x1cf74` | `g->stage.helper_entities` | `int[32]` | Array pointers for stage-bound helper entities/characters. |
| `0x20710` | `g->stage.load_tick_duration` | `int` | Tick duration elapsed during stage loading. |
| `0x2072c` | `g->stage.loaded_success_flag` | `int` | Stage loading complete status flag. |
| `0x20734` | `g->stage.reload_requested_flag` | `int` | Stage reload request indicator flag. |

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

## GameMatchReset()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0xcee0` | `g->match.team_member_count` | `int[2]` | Number of active members per team. |
| `0xcee4` | `g->match.team_mode` | `int[2]` | Team mode type (Single, Simul, Turn). |
| `0xcef4` | `g->match.team_max_life` | `int[2]` | Total maximum life pool for each team. |
| `0x139d4` | `g->match.default_life` | `int` | Default starting life configuration value. |
| `0x139d8` | `g->match.default_power` | `int` | Default starting power configuration value. |
| `0x1cc5c` | `g->engine.bg_scroll_layers` | `int[6]` | Background scrolling layer translation state array. |
| `0x1d384` | `g->engine.match_paused_flag` | `int` | Match pause active execution state flag. |
| `0x1d418` | `g->match.round_state` | `int` | Current round phase state (0=intro, 1=fight, 2=over). |
| `0x1d41c` | `g->match.round_time` | `int` | Round elapsed match timer counter. |
| `0x1d420` | `g->match.round_over_timer` | `int` | Round conclusion delay timer counter. |
| `0x1d428` | `g->match.intro_time` | `int` | Intro sequence presentation timer counter. |
| `0x1d45c` | `g->match.match_over_flag` | `int` | Match completion execution state flag. |
| `0x1d464` | `g->match.win_type` | `int[4]` | Victory type classification array flags. |
| `0x1d48c` | `g->match.win_team` | `int` | Winning team identifier index. |
| `0x1d4b4` | `g->match.win_rounds` | `int[2]` | Total rounds won per team. |
| `0x1d4dc` | `g->match.draw_games` | `int` | Cumulative draw games counter. |

---

## GameNextRound()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d418` | `g->match.round_time` | `int` | Current active round counter / match round progression index. |

---

## GamePlay()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x04200` | `g->camera.x` | `int` | Camera initial X coordinate for match. |
| `0x04204` | `g->camera.y` | `int` | Camera initial Y coordinate for match. |
| `0x042a8` | `g->audio.current_bgm_path` | `char[256]` | Path or identifier for the current stage BGM. |
| `0x08d44` | `g->system.intro_complete_flag` | `int` | Intro completion status flag. |
| `0x08d48` | `g->files.ending_storyboard` | `int` | Ending storyboard existence/pointer flag. |
| `0x08d4c` | `g->files.ending_storyboard_path` | `char[256]` | File path for ending storyboard. |
| `0x09d4c` | `g->files.victory_storyboard_flag` | `int` | Victory storyboard availability flag. |
| `0x09d50` | `g->files.victory_storyboard_path` | `char[256]` | File path for victory storyboard. |
| `0x104d0` | `g->engine.continue_selected_flag` | `int` | Continue screen selection result flag. |
| `0x104d4` | `g->system.precache_cancel_flag` | `int` | Precache cancellation / pause state flag. |
| `0x14af4` | `g->files.match_active_flag` | `int` | Match active execution state flag. |
| `0x1bbd4` | `g->audio.midi_volume` | `int` | MIDI volume setting. |
| `0x1bbdc` | `g->audio.mod_volume` | `int` | MOD volume setting. |
| `0x1d37c` | `g->engine.match_update_flag` | `int` | Match update processing toggle. |
| `0x1d380` | `g->engine.render_active_flag` | `int` | Rendering active toggle flag. |
| `0x1d50c` | `g->match.arcade_match_index` | `int` | Current match index in arcade mode. |
| `0x1d514` | `g->match.arcade_max_matches` | `int` | Total arcade matches configured. |
| `0x1d518` | `g->engine.arcade_mode_active` | `int` | Arcade / survival mode session active flag. |
| `0x1d5bc` | `g->engine.gamespeed` | `int` | Base game speed ticks per second. |
| `0x1d5f0` | `g->engine.system_spr_loaded` | `int` | System sprites and sounds loaded status flag. |
| `0x1e684` | `g->engine.display_mode_override` | `int` | Display mode / speed override. |
| `0x20724` | `g->engine.match_tick_start` | `int` | Tick counter recorded at match start for timing. |
| `0xad50` | `g->match.arcade_win_screen_flag` | `int` | Arcade win screen trigger flag. |
| `0xadcc` | `g->match.survival_results_flag` | `int` | Survival results screen trigger flag. |
| `0xae4c` | `g->match.continue_screen_allowed` | `int` | Continue screen eligibility flag. |
| `0xbe50` | `g->files.ending_cutscene_flag` | `int` | Ending cutscene availability flag. |
| `0xbe54` | `g->files.ending_cutscene_path` | `char[256]` | Ending cutscene file path. |
| `0xcecc` | `g->mode.arcade_mode_flag` | `int` | Arcade mode active flag. |
| `0xced0` | `g->mode.survival_team_count` | `int` | Survival mode team count. |

---

## GameReloadSystemSprSnd()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x14b00` | `g->files.system_def_filename` | `char[256]` | System definition filename (`system.def`). |
| `0x15aff` | `g->files.system_def_path` | `char[256]` | System definition file directory path. |
| `0x16b00` | `g->assets.spr` | `SffHandle*` | Pointer to primary loaded sprite container (.sff). |
| `0x16b04` | `g->assets.spr_filename` | `char[256]` | File path/name string for the primary sprite container. |
| `0x17b04` | `g->assets.snd` | `SndHandle*` | Pointer to primary loaded sound container (.snd). |
| `0x17b08` | `g->assets.snd_filename` | `char[256]` | File path/name string for the primary sound container. |
| `0x18b08` | `g->assets.air` | `AirHandle*` | Global animation script container pointer (.air). |
| `0x18b34` | `g->assets.system_bg_array_1` | `int` | System background layer/element array handle 1 (`VersusBG`). |
| `0x18b38` | `g->assets.system_bg_array_2` | `int` | System background layer/element array handle 2 (`TitleBG`). |
| `0x18b3c` | `g->assets.system_bg_array_3` | `int` | System background layer/element array handle 3 (`SelectBG`). |
| `0x18b40` | `g->assets.system_bg_array_4` | `int` | System background layer/element array handle 4 (`OptionBG`). |

---

## GameRoundDraw()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1cf68` | `g->match.hud_entity_p1` | `int` | Primary Player 1 HUD entity pointer reference. |
| `0x1cf6c` | `g->match.hud_entity_p2` | `int` | Primary Player 2 HUD entity pointer reference. |
| `0x1cf70` | `g->match.hud_entity_helper1` | `int` | Additional helper/teammate entity pointer 1 for HUD updates. |
| `0x1cf74` | `g->match.hud_entity_helper2` | `int` | Additional helper/teammate entity pointer 2 for HUD updates. |
| `0x1d3a0` | `g->match.training_mode_flag` | `int` | Training mode execution active flag. |
| `0x1d418` | `g->match.round_time` | `int` | Current active round counter / match round progression index. |
| `0x1d438` | `g->match.p1_consecutive_wins` | `int` | Player 1 consecutive win streak counter. |
| `0x1d43c` | `g->match.round_timer_counter` | `int` | Internal round timing tick counter. |
| `0x1d444` | `g->match.round_state` | `int` | Current round phase state machine selector. |
| `0x1d44c` | `g->match.round_winner_p2` | `int` | Player 2 round outcome / winner indicator flag. |
| `0x1d450` | `g->match.round_timer_counter` | `int` | Internal elapsed tick counter for the current round phase. |

---

## GameRoundReset()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x10420` | `g->match.team1_member_count` | `int` | Player/Team 1 active member count. |
| `0x10424` | `g->match.team1_member_indices` | `int[5]` | Player/Team 1 member index lookup array. |
| `0x104fc` | `g->assets.afterimage_container_handle` | `int` | Handle for active afterimage effect container. |
| `0x13984` | `g->match.default_round_time` | `int` | Default round time limit configuration value. |
| `0x14af8` | `g->assets.p1_explod_array_handle` | `int` | Player 1 active explod array container handle. |
| `0x14afc` | `g->assets.p2_explod_array_handle` | `int` | Player 2 active explod array container handle. |
| `0x1bb54` | `g->stage.pal_fx_primary` | `PalFX` | Primary stage palette effects configuration structure. |
| `0x1bb90` | `g->stage.pal_fx_secondary` | `PalFX` | Secondary stage palette effects configuration structure. |
| `0x1d38c` | `g->engine.timer_display_flag` | `int` | Toggle for displaying the round timer on screen. |
| `0x1d390` | `g->engine.timer_value` | `int` | Current active round timer display value. |
| `0x1d394` | `g->engine.timer_direction` | `short` | Round timer countdown direction flag (-1/1). |
| `0x1d396` | `g->engine.timer_expired_flag` | `char` | Flag indicating round timer has reached zero. |
| `0x1d3a0` | `g->match.training_mode_flag` | `int` | Training mode execution active flag. |
| `0x1d3cc` | `g->match.round_decision_state` | `int` | Round outcome decision state flag. |
| `0x1d3e8` | `g->match.round_timer_counter` | `int` | Internal round timing tick counter. |
| `0x1d40c` | `g->match.intro_sequence_timer` | `int` | Round intro sequence duration counter. |
| `0x1d424` | `g->match.round_start_delay` | `int` | Delay counter before round action begins. |
| `0x1d42c` | `g->match.round_timer_setting` | `int` | Configured round duration time limit. |
| `0x1d430` | `g->match.p1_win_count` | `int` | Player 1 match round victories counter. |
| `0x1d434` | `g->match.p2_win_count` | `int` | Player 2 match round victories counter. |
| `0x1d438` | `g->match.p1_consecutive_wins` | `int` | Player 1 consecutive win streak counter. |
| `0x1d43c` | `g->match.p2_consecutive_wins` | `int` | Player 2 consecutive win streak counter. |
| `0x1d440` | `g->match.round_time_limit` | `int` | Active round time limit countdown value. |
| `0x1d444` | `g->match.p1_health_ratio` | `int` | Player 1 current health ratio percentage. |
| `0x1d448` | `g->match.p2_health_ratio` | `int` | Player 2 current health ratio percentage. |
| `0x1d44c` | `g->match.p1_power_ratio` | `int` | Player 1 current power ratio percentage. |
| `0x1d450` | `g->match.p2_power_ratio` | `int` | Player 2 current power ratio percentage. |
| `0x1d454` | `g->match.round_time_elapsed` | `int` | Total ticks elapsed in current round. |
| `0x1d458` | `g->match.round_over_reason` | `int` | Reason code for round conclusion (KO, Time Over, etc.). |
| `0x1d460` | `g->match.round_reset_counter` | `int` | Counter tracking round reset progression. |
| `0x1d51c` | `g->engine.match_stat_block_1` | `int[6]` | Match statistics configuration and tracking block 1. |
| `0x1d534` | `g->engine.match_stat_block_2` | `int[6]` | Match statistics configuration and tracking block 2. |
| `0x1e680` | `g->engine.round_time_multiplier` | `int` | Multiplier scaling factor for round time duration. |

---

## GameRoundResetPlayerPos()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x0420c` | `g->stage.spawn_config_base` | `int` | Base offset pointer for player spawn and boundary configurations. |
| `0x04250` | `g->match.spawn_facing_config` | `int[4]` | Initial spawn facing direction configuration array. |
| `0x1cf64` | `g->stage.entity_array_base` | `int[32]` | Base array pointer for active stage entities and characters. |

---

## GameRoundUpdate()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d440` | `g->match.round_time_limit` | `int` | Active round duration time limit countdown value. |
| `0x1d444` | `g->match.round_state` | `int` | Current round phase state machine selector (0=intro, 1=fight, 2=over, 3=fade, 4=end). |
| `0x1d448` | `g->match.round_winner_p1` | `int` | Player 1 round outcome / winner indicator flag. |
| `0x1d44c` | `g->match.round_winner_p2` | `int` | Player 2 round outcome / winner indicator flag. |
| `0x1d450` | `g->match.round_timer_counter` | `int` | Internal elapsed tick counter for the current round phase. |
| `0x1d454` | `g->match.round_time_elapsed` | `int` | Total ticks elapsed in the active round. |
| `0x1d45c` | `g->match.match_over_flag` | `int` | Flag indicating match completion and transition request. |

---

## GameRoundWinner()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d448` | `g->match.round_winner` | `int` | Round winner identifier / outcome flag (0=none/draw, 1=Player 1, 2=Player 2). |

---

## GameSetVol()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1bbcc` | `g->audio.master_volume` | `int` | Master audio volume level toggle/setting. |
| `0x1e688` | `g->audio.wav_volume` | `int` | Sound effect (WAV) volume setting multiplier. |
| `0x1e68c` | `g->audio.midi_volume` | `int` | MIDI music volume setting multiplier. |

---

## GameSndPlayID()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1bbd0` | `g->audio.wav_volume` | `int` | Sound effect (WAV) volume level offset for playback scaling. |
| `0x1cc20` | `g->engine.sound_paused_flag` | `int` | Global flag indicating whether sound playback is temporarily paused. |

---

## GameSndPlayIDPos()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1d5b0` | `g->engine.screen_pan_enabled` | `int` | Toggle flag for screen position to audio panning conversion. |

---

## GameStgDeInitFightData()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x10524` | `g->match.fight_data_internal_base` | `int` | Internal base offset pointer for match fighter data structures. |

---

## GameStgInitFightData()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x12be0` | `g->system.sys_explod_config` | `int` | System explod configuration data base pointer. |
| `0x14ad4` | `g->match.fight_sprite_handles` | `int[32]` | Loaded fighter sprite container handles for the match. |
| `0x1d5ec` | `g->video.sprite_buf_read_mode` | `int` | Sprite buffer read mode setting toggle. |

---

## GameUnloadStage()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x1bb50` | `g->stage.bg_array_handle` | `int` | Pointer handle to the active background element array container. |
| `0x1cf64` | `g->stage.entity_array_base` | `int` | Base offset pointer for active stage-bound entities and characters. |
| `0x1ce64` | `g->stage.entity_slots_mask` | `int[32]` | Entity slot allocation and tracking mask block. |

---

## GameUnloadSystem()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x06390` | `g->select.rows` | `int` | Number of rows in the character select grid. |
| `0x06394` | `g->select.cols` | `int` | Number of columns in the character select grid. |
| `0x06d40` | `g->files.select_data` | `int*` | Pointer to character select configuration and portrait data. |
| `0x104e8` | `g->video.default_font_handle` | `int` | Handle for the default system font (protected from freeing). |
| `0x16b00` | `g->assets.spr` | `SffHandle*` | Pointer to primary loaded sprite container (.sff). |
| `0x16b04` | `g->assets.spr_loaded_flag` | `char` | Status flag indicating primary sprite container is loaded. |
| `0x17b04` | `g->assets.snd` | `SndHandle*` | Pointer to primary loaded sound container (.snd). |
| `0x17b08` | `g->assets.snd_loaded_flag` | `char` | Status flag indicating primary sound container is loaded. |
| `0x18b08` | `g->assets.air` | `AirHandle*` | Global animation script container pointer (.air). |
| `0x18b0c` | `g->assets.fonts[10]` | `FontHandle*[10]` | Array of loaded system font handles (indices 0–9). |
| `0x18b34` | `g->assets.system_bg_array_1` | `int` | System background layer/element array handle 1. |
| `0x18b38` | `g->assets.system_bg_array_2` | `int` | System background layer/element array handle 2. |
| `0x18b3c` | `g->assets.system_bg_array_3` | `int` | System background layer/element array handle 3. |
| `0x18b40` | `g->assets.system_bg_array_4` | `int` | System background layer/element array handle 4. |

---

## GameUnloadSystemSprSnd()

| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0x16b00` | `g->assets.spr` | `SffHandle*` | Pointer to primary loaded sprite container (.sff). |
| `0x18b34` | `g->assets.system_bg_array_1` | `int` | System background layer/element array handle 1. |
| `0x18b38` | `g->assets.system_bg_array_2` | `int` | System background layer/element array handle 2. |
| `0x18b3c` | `g->assets.system_bg_array_3` | `int` | System background layer/element array handle 3. |
| `0x18b40` | `g->assets.system_bg_array_4` | `int` | System background layer/element array handle 4. |

---

## GameUpdate()


| Offset | Variable Name | Type | Description |
| :--- | :--- | :--- | :--- |
| `0xceb8` | `g->match.match_mode_setting` | `int` | Match mode / rule configuration setting. |
| `0x1cc2c` | `g->engine.update_status_flag` | `int` | Engine update processing active flag. |
| `0x1cc60` | `g->engine.bg_scroll_duration` | `int` | Background scroll oscillation duration limit.  |
| `0x1cc68` | `g->engine.bg_scroll_freq` | `float` | Background scroll oscillation frequency parameter.  |
| `0x1cc6c` | `g->engine.bg_scroll_amplitude` | `float` | Background scroll oscillation amplitude parameter.  |
| `0x1cc70` | `g->engine.bg_scroll_phase` | `float` | Background scroll oscillation phase offset.  |
| `0x1d164` | `g->match.player_loop_start` | `int` | Starting index for active player update loop.  |
| `0x1d168` | `g->match.player_loop_end` | `int` | Ending index for active player update loop.  |
| `0x1d278` | `g->engine.player_active_flags` | `int[32]` | Array of active status flags per player entity.  |
| `0x1d378` | `g->engine.player_update_trigger` | `int` | Secondary player update trigger synchronization flag.  |
