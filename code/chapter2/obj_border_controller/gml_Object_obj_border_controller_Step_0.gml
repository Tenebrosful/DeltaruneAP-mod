/// PATCH

/// REPLACE
            if (room_id == room_dw_castle_area_1)
            {
                if (i_ex(obj_dw_leave))
                {
                    if (obj_dw_leave.con >= 10)
                    {
                        border_fade_in = false;
                        border_fade_out = border_alpha > 0;
                    }
                }
                
                if (i_ex(obj_dw_transition))
                {
                    if (obj_dw_transition.timer >= 30)
                    {
                        border_fade_out = false;
                        border_fade_in = border_alpha < 1;
                    }
                }
            }
/// CODE
            if (room_id == room_dw_castle_area_1)
            {
                if (global.plot >= 50 && global.plot < 200)
                {
                    border_fade_out = false;
                    border_fade_in = border_alpha < 1;
                }
                else
                {
                    if (i_ex(obj_dw_transition))
                    {
                        if (obj_dw_transition.timer >= 30)
                        {
                            border_fade_out = false;
                            border_fade_in = border_alpha < 1;
                        }
                    }
                }
                
                if (i_ex(obj_dw_leave))
                {
                    if (obj_dw_leave.con >= 10)
                    {
                        border_fade_in = false;
                        border_fade_out = border_alpha > 0;
                    }
                }
            }
/// END

/// BEFORE
            if (room_id == room_dw_city_entrance)
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