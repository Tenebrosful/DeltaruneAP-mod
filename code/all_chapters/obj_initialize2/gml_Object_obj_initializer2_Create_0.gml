/// PATCH

/// REPLACE
global.debug = 0;
/// CODE
global.debug = file_exists("debug.enable");
global.chemg_show_room = true;
global.chemg_show_val = true;
global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0);
global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%", 20, 0);
/// END

#if CHAPTER_1
/// REPLACE
    scr_84_load_ini();
    scr_gamestart();
/// CODE
    scr_gamestart();
    scr_84_load_ini();
/// END
#endif