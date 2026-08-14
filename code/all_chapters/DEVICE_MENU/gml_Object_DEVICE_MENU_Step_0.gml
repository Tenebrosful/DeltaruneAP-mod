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
            var FILECHECK = 1;
            
            if (INCOMPLETE_LOAD == 0 && COMPLETEFILE_PREV[MENUCOORD[M]] != 1)
/// CODE
            var FILECHECK = 0;
            
            if (INCOMPLETE_LOAD == 0 && COMPLETEFILE_PREV[MENUCOORD[M]] != 1)
/// END

/// REPLACE
            var FILECHECK = 1;
            
            if (MENU_NO == 10)
/// CODE
            var FILECHECK = 0;
            
            if (MENU_NO == 10)
/// END

/// REPLACE
                if (MENU_NO == 1 && FILE[MENUCOORD[0]] == 1)
                    FILECHECK = 1;
                
                if (MENU_NO == 11)
                {
                    if (INCOMPLETE_LOAD)
                    {
                        if (INCOMPLETEFILE_PREV[FILESLOT] == 1)
                            FILECHECK = 1;
                        else
                            FILECHECK = -1;
                    }
                    else if (COMPLETEFILE_PREV[FILESLOT] == 1)
                    {
                        FILECHECK = 1;
                    }
                    else
                    {
                        FILECHECK = -1;
                    }
/// CODE
                if (MENU_NO == 1 && FILE[MENUCOORD[0]] == 1)
                    FILECHECK = -1;
                
                if (MENU_NO == 11)
                {
                    if (INCOMPLETE_LOAD)
                    {
                        if (INCOMPLETEFILE_PREV[FILESLOT] == 1)
                            FILECHECK = -1;
                        else
                            FILECHECK = -1;
                    }
                    else if (COMPLETEFILE_PREV[FILESLOT] == 1)
                    {
                        FILECHECK = -1;
                    }
                    else
                    {
                        FILECHECK = -1;
                    }
/// END
#endif