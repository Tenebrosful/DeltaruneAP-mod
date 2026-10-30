/// PATCH

#if CHAPTER_1
/// REPLACE
                ossafe_file_delete("filech1_" + string(MENUCOORD[5]));
                iniwrite = ossafe_ini_open("dr.ini");
/// CODE
                ossafe_file_delete(AP_get_save_folder_prefix() + "filech1_" + string(MENUCOORD[5]));
                iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END
#else
/// REPLACE
                ossafe_file_delete("filech" + string(global.chapter) + "_" + string(MENUCOORD[5]));
                iniwrite = ossafe_ini_open("dr.ini");
/// CODE
                ossafe_file_delete(AP_get_save_folder_prefix() + "filech" + string(global.chapter) + "_" + string(MENUCOORD[5]));
                iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END
#endif

/// APPEND
if (global.AP_route_from_settings == global.AP_ENUM_CHOSEN_ROUTE.BOTH_ROUTES && (global.chapter == 2 || global.chapter == 5))
{
    if (keyboard_check_pressed(ord("K")))
    {
        if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS)
        {
            global.AP_current_route = global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE
        }
        else
        {
            global.AP_current_route = global.AP_ENUM_CHOSEN_ROUTE.ALL_RECRUITS
        }
    }
}
/// END

#if !CHAPTER_1
/// REPLACE
if (MENU_NO == 10)
{
    var M = MENU_NO;
    var MAXY = 3;
    
    if (down_p())
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            MENUCOORD[MENU_NO] += 1;
            MOVENOISE = 1;
        }
    }
    
    if (up_p())
    {
        if (MENUCOORD[MENU_NO] > 0)
        {
            MENUCOORD[MENU_NO] -= 1;
            MOVENOISE = 1;
        }
    }
    
    if (button1_p() && ONEBUFFER < 0)
    {
        MESSAGETIMER = -1;
        
        if (MENUCOORD[M] <= 2)
        {
            var FILECHECK = 1;
            
            if (INCOMPLETE_LOAD == 0 && COMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                FILECHECK = 0;
            
            if (INCOMPLETE_LOAD == 1 && INCOMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                FILECHECK = 0;
/// CODE
if (MENU_NO == 10)
{
    var M = MENU_NO;
    var MAXY = 3;
    
    if (down_p())
    {
        if (MENUCOORD[MENU_NO] < 3)
        {
            MENUCOORD[MENU_NO] += 1;
            MOVENOISE = 1;
        }
    }
    
    if (up_p())
    {
        if (MENUCOORD[MENU_NO] > 0)
        {
            MENUCOORD[MENU_NO] -= 1;
            MOVENOISE = 1;
        }
    }
    
    if (button1_p() && ONEBUFFER < 0)
    {
        MESSAGETIMER = -1;
        
        if (MENUCOORD[M] <= 2)
        {
            var FILECHECK = -1;
            
            if (INCOMPLETE_LOAD == 0 && COMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                FILECHECK = -1;
            
            if (INCOMPLETE_LOAD == 1 && INCOMPLETEFILE_PREV[MENUCOORD[M]] != 1)
                FILECHECK = -1;
/// END
#endif

/// REPLACE
                    if (ossafe_file_exists("keyconfig_" + string(global.filechoice) + ".ini"))
                    {
                        ossafe_ini_open("keyconfig_" + string(global.filechoice) + ".ini");
                        
#if CHAPTER_5
                        for (i = 0; i < 10; i += 1)
#else
                        for (var i = 0; i < 10; i += 1)
#endif
                        {
                            readval = ini_read_real("KEYBOARD_CONTROLS", string(i), -1);
                            
                            if (readval != -1)
                                global.input_k[i] = readval;
                        }
                        
#if CHAPTER_5
                        for (i = 0; i < 10; i += 1)
#else
                        for (var i = 0; i < 10; i += 1)
#endif
                        {
                            readval = ini_read_real("GAMEPAD_CONTROLS", string(i), -1);
                            
                            if (readval != -1)
                                global.input_g[i] = readval;
                        }
/// CODE
                    if (ossafe_file_exists("true_config.ini"))
                    {
                        ossafe_ini_open("true_config.ini");
                        
                        for (var i = 0; i < 10; i += 1)
                        {
                            readval = ini_read_real("KEYBOARD_CONTROLS", string(i), -1);
                            
                            if (readval != -1)
                                global.input_k[i] = readval;
                        }
                        
                        for (var i = 0; i < 10; i += 1)
                        {
                            readval = ini_read_real("GAMEPAD_CONTROLS", string(i), -1);
                            
                            if (readval != -1)
                                global.input_g[i] = readval;
                        }
/// END

#if CHAPTER_1
/// REPLACE
                        if (global.is_console)
                        {
                            global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
                            var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
                            scr_enable_screen_border(!_disable_border);
                        }
                        
                        ossafe_ini_close();
                        ossafe_savedata_save();
                    }
                    else if (ossafe_file_exists("config_" + string(global.filechoice) + ".ini"))
/// CODE
                        global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
                        var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
                        scr_enable_screen_border(!_disable_border);
                        ossafe_ini_close();
                        ossafe_savedata_save();
                    }
                    else if (ossafe_file_exists("config_" + string(global.filechoice) + ".ini"))
/// END
#else
/// REPLACE
                        if (!global.is_console)
                        {
                            ini_close();
                        }
                        else
                        {
                            readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
                            
                            if (readval != -1)
                                obj_gamecontroller.gamepad_shoulderlb_reassign = readval;
                            
                            global.button0 = global.input_g[4];
                            global.button1 = global.input_g[5];
                            global.button2 = global.input_g[6];
                            global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
                            var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
                            scr_enable_screen_border(!_disable_border);
                            ossafe_ini_close();
                            ossafe_savedata_save();
                        }
/// CODE
                        readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
                        
                        if (readval != -1)
                            obj_gamecontroller.gamepad_shoulderlb_reassign = readval;
                        
                        global.button0 = global.input_g[4];
                        global.button1 = global.input_g[5];
                        global.button2 = global.input_g[6];
                        global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
                        var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
                        scr_enable_screen_border(!_disable_border);
                        ossafe_ini_close();
                        ossafe_savedata_save();
/// END
#endif

/// REPLACE
                if (ossafe_file_exists("keyconfig_" + string(MENUCOORD[5]) + ".ini"))
                    ossafe_file_delete("keyconfig_" + string(MENUCOORD[5]) + ".ini");
#if CHAPTER_3 || CHAPTER_4
                
                if (ossafe_file_exists("keyconfig_" + string(MENUCOORD[5]) + ".ini"))
                    ossafe_file_delete("keyconfig_" + string(MENUCOORD[5]) + ".ini");
#endif
/// CODE
/// END