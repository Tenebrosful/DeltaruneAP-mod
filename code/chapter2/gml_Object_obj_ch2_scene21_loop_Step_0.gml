/// PATCH

/// REPLACE
            swan_cover = scr_dark_marker(swanboat.x, swanboat.y, spr_swanboat_cover);
/// CODE
            if (global.fastswan)
                swan_cover = scr_dark_marker(swanboat.x, swanboat.y, spr_swanboat_cover_fast);
            else
                swan_cover = scr_dark_marker(swanboat.x, swanboat.y, spr_swanboat_cover);
/// END