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

#if CHAPTER_2
/// REPLACE
    scr_prefetch_textures();
    scr_load_audio();
/// CODE
    scr_load_audio();
/// END

/// REPLACE
global.screen_border_id = "";
/// CODE
global.screen_border_id = stringsetloc("Dynamic", "obj_initializer2_slash_Create_0_gml_22_0");
/// END
#endif

#if !CHAPTER_1
/// APPEND
    global.game_won = scr_completed_chapter_any_slot(global.chapter);
/// END

/// REPLACE
if (global.is_console)
    loadtex = instance_create(0, 0, obj_prefetchtex);
else
    scr_prefetch_textures();
/// CODE
loadtex = instance_create(0, 0, obj_prefetchtex);
/// END
#endif