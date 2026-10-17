/// PATCH

/// REPLACE
if (global.is_console)
    _blackall.visible = false;
/// CODE
if (global.screen_border_id != "None" && global.screen_border_id != "なし" || !window_get_fullscreen())
    _blackall.visible = false;
/// END
