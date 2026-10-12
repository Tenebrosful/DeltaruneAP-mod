/// PATCH

/// BEFORE
            if (room_id >= room_dw_cyber_intro_1 && room_id <= room_dw_cyber_keyboard_puzzle_3 && room_id != room_dw_cyber_rollercoaster)
                border_fade_in = border_alpha < 1;
/// CODE
            if (room_id == room_dw_cyber_post_music_boss_slide)
            {
                if (i_ex(obj_dw_leave_ch4))
                {
                    if ((obj_dw_leave_ch4.fake_v / 80) > 0)
                    {
                        if (!obj_dw_leave_ch4.border_fade)
                        {
                            obj_dw_leave_ch4.border_fade = true;
                            border_fade_in = false;
                            border_fade_out = border_alpha > 0;
                        }
                    }
                }
            }
/// END

/// REPLACE
    if (global.chapter_return > 0 && !global.game_won)
/// CODE
    if (global.chapter_return > 0)
/// END

/// REPLACE
        if ((room_id == room_legend || room_id == 891 || room_id == PLACE_MENU) && global.game_won == 1)
/// CODE
        if ((room_id == room_legend || room_id == 891 || room_id == PLACE_MENU) && false)
/// END