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
