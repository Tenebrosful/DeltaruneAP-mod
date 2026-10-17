/// PATCH .ignore if CHAPTER_1

/// REPLACE
if (scr_is_switch_os() || os_type == os_ps4 || os_type == os_ps5)
{
#if CHAPTER_5
    if (os_type == os_switch2 && wh == 1440)
        global.window_scale = 2.6666666666666665;
    else if (scr_is_switch_os() && wh == 720)
#else
    if (scr_is_switch_os() && wh == 720)
#endif
        global.window_scale = 4/3;
    else
        global.window_scale = floor(min(scale_w, scale_h));
}
else
{
    global.window_scale = min(scale_w, scale_h);
}
/// CODE
if (global.screen_border_id == "None" || global.screen_border_id == "なし" || !window_get_fullscreen())
    global.window_scale = min(scale_w, scale_h);
else
    global.window_scale = floor(min(scale_w, scale_h));
/// END
