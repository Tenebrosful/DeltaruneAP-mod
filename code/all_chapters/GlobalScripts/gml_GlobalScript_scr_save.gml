/// PATCH

#if CHAPTER_1
/// REPLACE
    ossafe_ini_open("dr.ini");
/// CODE
    ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END
#else
/// REPLACE
    iniwrite = ossafe_ini_open("dr.ini");
/// CODE
    iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END
#endif

/// REPLACE
    ossafe_ini_open("keyconfig_" + string(global.filechoice) + ".ini");
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("KEYBOARD_CONTROLS", string(i), global.input_k[i]);
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("GAMEPAD_CONTROLS", string(i), global.input_g[i]);
    
#if CHAPTER_5
    if (global.is_console)
        ini_write_string("BORDER", "TYPE", global.screen_border_id);
    
#endif
    ini_write_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
    ossafe_ini_close();
/// CODE
    ossafe_ini_open("true_config.ini");
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("KEYBOARD_CONTROLS", string(i), global.input_k[i]);
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("GAMEPAD_CONTROLS", string(i), global.input_g[i]);
    
    ini_write_string("BORDER", "TYPE", global.screen_border_id);
    ini_write_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
    ossafe_ini_close();
/// END