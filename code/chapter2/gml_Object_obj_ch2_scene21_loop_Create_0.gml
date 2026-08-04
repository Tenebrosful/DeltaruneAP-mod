/// PATCH

/// REPLACE
    swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow);
/// CODE
    if (global.fastswan)
        swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow_fast);
    else
        swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow);
/// END