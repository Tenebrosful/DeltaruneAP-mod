/// PATCH

/// PREPEND
if (global.screen_border_id != "None" && global.screen_border_id != "なし" || !window_get_fullscreen())
    _blackall.visible = false;
else
    _blackall.visible = true;
/// END

/// REPLACE
        if (global.is_console)
        {
            scr_lerpvar("_overlay_alpha", 0, 1, 120);
        }
        else
        {
            with (_blackall)
                scr_lerpvar("image_alpha", 0, 1, 100);
        }
/// CODE
        scr_lerpvar("_overlay_alpha", 0, 1, 120);
        
        with (_blackall)
            scr_lerpvar("image_alpha", 0, 1, 100);
/// END