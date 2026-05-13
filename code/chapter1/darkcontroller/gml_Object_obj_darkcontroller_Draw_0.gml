/// PATCH

/// REPLACE
        draw_sprite_ext(_spr_darkmenudesc, global.menucoord[0], xx + 20, (yy + tp) - 56, 2, 2, 0, c_white, 1);
/// CODE
        draw_sprite_ext(scr_84_get_sprite("spr_darkmenudesc"), global.menucoord[0], xx + 20, (yy + tp) - 56, 2, 2, 0, c_white, 1);
/// END

/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
    draw_sprite_ext(_spr_dmenu_captions, 4, xx + 124, yy + 210, 2, 2, 0, c_white, 1);
    draw_sprite_ext(_spr_dmenu_captions, 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
/// CODE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 124, yy + 84, 2, 2, 0, c_white, 1);
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 4, xx + 124, yy + 210, 2, 2, 0, c_white, 1);
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 5, xx + 380, yy + 210, 2, 2, 0, c_white, 1);
/// END

/// REPLACE
    draw_sprite_ext(_spr_dmenu_captions, 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
    draw_sprite_ext(_spr_dmenu_captions, 1, xx + 376, yy + 86, 2, 2, 0, c_white, 1);
/// CODE
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 0, xx + 118, yy + 86, 2, 2, 0, c_white, 1);
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 1, xx + 376, yy + 86, 2, 2, 0, c_white, 1);
/// END

/// REPLACE
        draw_sprite_ext(_spr_dmenu_captions, 2, xx + 372, yy + 216, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(_spr_dmenu_captions, 3, xx + 372, yy + 216, 2, 2, 0, c_white, 1);
    
    draw_sprite_ext(_spr_dmenu_captions, 4, xx + 116, yy + 216, 2, 2, 0, c_white, 1);
/// CODE
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 2, xx + 372, yy + 216, 2, 2, 0, c_white, 1);
    else
        draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 3, xx + 372, yy + 216, 2, 2, 0, c_white, 1);
    
    draw_sprite_ext(scr_84_get_sprite("spr_dmenu_captions"), 4, xx + 116, yy + 216, 2, 2, 0, c_white, 1);
/// END

/// REPLACE
        if ((5 + pagemax[pm]) < 11)
/// CODE
        if ((5 + pagemax[pm]) < 47)
/// END