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