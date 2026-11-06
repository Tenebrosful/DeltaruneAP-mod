/// PATCH

/// REPLACE
if (scr_is_switch_os() || os_type == os_ps4 || os_type == os_ps5)
{
    if (scr_is_switch_os() && wh == 720)
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
