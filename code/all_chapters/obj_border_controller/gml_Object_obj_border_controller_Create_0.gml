/// PATCH .ignore if CHAPTER_1

/// REPLACE
if (scr_is_switch_os() && wh == 720)
    global.window_scale = 4/3;
else
    global.window_scale = floor(min(scale_w, scale_h));
/// CODE
if (global.screen_border_id == "None" || global.screen_border_id == "なし" || !window_get_fullscreen())
    global.window_scale = min(scale_w, scale_h);
else
    global.window_scale = floor(min(scale_w, scale_h));
/// END

#if CHAPTER_3
/// REPLACE
        if (global.tempflag[95] == 1)
        {
            global.tempflag[95] = 0;
            set_border(room_border, 1);
            show_border(0.05);
        }
        else
        {
            set_border(room_border);
        }
/// CODE
        if (!variable_global_exists("load_stop_effect"))
            global.load_stop_effect = 0;
        
        if (!variable_global_exists("shortcut_border"))
            global.shortcut_border = 0;
        
        if (global.tempflag[95] == 1)
        {
            global.tempflag[95] = 0;
            
            if (global.load_stop_effect == 1)
            {
                custom_effect = -1;
                custom_effect_alpha = 0;
                global.load_stop_effect = 0;
            }
            
            if (overlay_alpha == 1)
                set_border(room_border, 1);
            else
                set_border(room_border);
            
            show_border(0.05);
        }
        else if (global.shortcut_border == 0)
        {
            set_border(room_border);
        }
/// END

/// REPLACE
            if (room_id == room_dw_couch_overworld_intro || room_id == room_dw_couch_overworld_01 || room_id == room_dw_couch_overworld_02 || room_id == room_dw_couch_overworld_03 || room_id == room_dw_couch_overworld_04 || room_id == room_dw_couch_overworld_05 || room_id == room_dw_couch_points || room_id == room_dw_couch_overworld_intro_left)
            {
                overlay_alpha = 1;
                hide_border();
            }
/// CODE
            if (global.shortcut_border > 0)
            {
                if (room_id == room_dw_couch_overworld_02)
                    hide_border(0.025);
                else
                {
                    if (global.shortcut_border == 2)
                        set_border(room_border, 1);
                    else
                        set_border(room_border);
                    
                    show_border();
                }
                
                global.shortcut_border = 0;
            }
            else
            {
                if (room_id == room_dw_couch_overworld_intro || room_id == room_dw_couch_overworld_01 || room_id == room_dw_couch_overworld_02 || room_id == room_dw_couch_overworld_03 || room_id == room_dw_couch_overworld_04 || room_id == room_dw_couch_overworld_05 || room_id == room_dw_couch_points || room_id == room_dw_couch_overworld_intro_left)
                {
                    overlay_alpha = 1;
                    hide_border();
                }
            }
/// END
#elsif CHAPTER_4
/// REPLACE
            if (saveload_border)
            {
                set_border(room_border, 1);
                show_border(0.05);
            }
            else
            {
                overlay_alpha = 1;
                hide_border();
            }
/// CODE
            if (!variable_global_exists("load_stop_effect"))
                global.load_stop_effect = 0;
            
            if (global.load_stop_effect == 1)
            {
                custom_effect = -1;
                custom_effect_alpha = 0;
                global.load_stop_effect = 0;
            }
            
            if (saveload_border)
            {
                if (overlay_alpha == 1)
                    set_border(room_border, 1);
                else
                    set_border(room_border);
                
                show_border(0.05);
            }
            else
            {
                overlay_alpha = 1;
                hide_border();
            }
/// END
#elsif CHAPTER_5
/// REPLACE
        if (saveload_border)
        {
            set_border(room_border, 1);
            show_border(0.05);
        }
        else
        {
            overlay_alpha = 1;
            hide_border();
        }
/// CODE
        if (!variable_global_exists("load_stop_effect"))
            global.load_stop_effect = 0;
        
        if (global.load_stop_effect == 1)
        {
            custom_effect = -1;
            custom_effect_alpha = 0;
            global.load_stop_effect = 0;
        }
        
        if (saveload_border)
        {
            if (overlay_alpha == 1)
                set_border(room_border, 1);
            else
                set_border(room_border);
            
            show_border(0.05);
        }
        else
        {
            overlay_alpha = 1;
            hide_border();
        }
/// END
#endif