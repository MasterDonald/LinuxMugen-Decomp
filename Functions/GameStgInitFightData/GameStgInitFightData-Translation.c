#include "mugen.h"

int GameStgInitFightData(void)
{
    int player_index = 0;
    int group_seek_res;
    int tp_file_handle;
    char path_buffer[4096];
    int local_sprite_info[3];
    int sprite_group_no;
    int sprite_img_no;

    // Iterate through both sides/teams (0 and 1)
    do {
        int team_member_offset = player_index * 0x1a9c;
        int team_entry_ptr = g + team_member_offset;

        // Check if team member count is valid and matches game rules
        if ((*(int *)(team_entry_ptr + 0xcee4) > 1) &&
            (g->mode.survival_team_count != (2 - player_index))) {

            // Parse system explod sprite group and image number
            int sys_explod_offset = g + 0x12be0 + (player_index * 0x158);
        group_seek_res = SysExplodParseGetSprGrpImgNo(sys_explod_offset, &sprite_img_no, &sprite_group_no, NULL);

        if (group_seek_res != 0) {
            local_sprite_info[0] = sprite_img_no;
            local_sprite_info[1] = sprite_group_no;
            local_sprite_info[2] = -1;

            int loaded_count = 0;
            int character_count = *(int *)(team_entry_ptr + 0xcee4);

            if (character_count > 0) {
                int *character_roster_ptr = (int *)(team_entry_ptr + 0xcefc);

                do {
                    int char_index = *character_roster_ptr;
                    int char_data_offset = char_index * 0x702c;

                    // Construct path to character definition file (.def)
                    char *def_path_base = (char *)(char_data_offset + g->files.arcade_stage_list_ptr + 0x200a);
                    char *def_dir_base = (char *)(char_data_offset + g->files.arcade_stage_list_ptr + 0x100b);

                    joindirfile(path_buffer, def_path_base, def_dir_base, loaded_count);

                    tp_file_handle = TPReadFile(path_buffer);
                    if (tp_file_handle != 0) {
                        path_buffer[0] = '\0';
                        int files_group = TPGroupSeek(tp_file_handle, "Files");

                        if (files_group != -1) {
                            char *sprite_filename = TPGetValue(tp_file_handle, "sprite");
                            if (sprite_filename != NULL) {
                                joindirfile(path_buffer, def_path_base, sprite_filename);
                            }
                        }
                        TPFree(tp_file_handle);

                        // If sprite path was successfully resolved, read SFF list
                        if (path_buffer[0] != '\0') {
                            SpriteSetBufReadMode(0);
                            int sff_handle = SpriteReadSFFList(path_buffer, local_sprite_info);

                            // Store handle into match fighter sprite handles array
                            int handle_array_base = g + 0x14ad4;
                            *(int *)(player_index * 0x10 + handle_array_base + (loaded_count * 4)) = sff_handle;

                            SpriteSetBufReadMode(g->video.sprite_buf_read_mode);
                        }
                    }

                    loaded_count++;
                    character_roster_ptr += 0x17; // Advance to next character slot in roster
                } while (loaded_count < character_count);
            }
        }
            }
            player_index++;
    } while (player_index < 2);

    return 1;
}
