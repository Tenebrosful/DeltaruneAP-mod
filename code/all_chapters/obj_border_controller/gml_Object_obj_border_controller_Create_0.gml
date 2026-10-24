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

#if CHAPTER_4
/// BEFORE
            if (saveload_border)
/// CODE
            if (variable_global_exists("load_stop_effect"))
            {
                if (global.load_stop_effect == 1)
                {
                    custom_effect = -1;
                    custom_effect_alpha = 0;
                    global.load_stop_effect = 0;
                }
            }
/// END
#elsif CHAPTER_5
/// BEFORE
        if (saveload_border)
/// CODE
        if (variable_global_exists("load_stop_effect"))
        {
            if (global.load_stop_effect == 1)
            {
                custom_effect = -1;
                custom_effect_alpha = 0;
                global.load_stop_effect = 0;
            }
        }
/// END
#endif