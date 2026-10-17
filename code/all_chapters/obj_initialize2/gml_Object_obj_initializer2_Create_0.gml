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

/// REPLACE
global.game_won = false;
/// CODE
global.game_won = scr_completed_chapter_any_slot(2);
/// END
#endif

#if !CHAPTER_1
/// REPLACE
if (global.is_console)
    loadtex = instance_create(0, 0, obj_prefetchtex);
else
    scr_prefetch_textures();
/// CODE
loadtex = instance_create(0, 0, obj_prefetchtex);
/// END
#endif

/// APPEND
if (ossafe_file_exists("true_config.ini"))
{
    ossafe_ini_open("true_config.ini");
    var _readval = 0;
    
    for (var i = 0; i < 10; i += 1)
    {
        _readval = ini_read_real("KEYBOARD_CONTROLS", string(i), -1);
        
        if (_readval != -1)
            global.input_k[i] = _readval;
    }
    
    for (var i = 0; i < 10; i += 1)
    {
        _readval = ini_read_real("GAMEPAD_CONTROLS", string(i), -1);
        
        if (_readval != -1)
            global.input_g[i] = _readval;
    }
    
    _readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
    
    if (_readval != -1)
        obj_gamecontroller.gamepad_shoulderlb_reassign = _readval;
    
    global.button0 = global.input_g[4];
    global.button1 = global.input_g[5];
    global.button2 = global.input_g[6];
    global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
    var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
    scr_enable_screen_border(!_disable_border);
    ossafe_ini_close();
    ossafe_savedata_save();
}
/// END