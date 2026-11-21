/// PATCH

/// REPLACE
iniwrite = ossafe_ini_open("dr.ini");
/// CODE
iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END

/// REPLACE
#if CHAPTER_1
    file_copy("filech1_" + string(MENUCOORD[2]), "filech1_" + string(MENUCOORD[3]));
#else
    file_copy("filech" + CH + "_" + string(MENUCOORD[2]), "filech" + CH + "_" + string(MENUCOORD[3]));
#endif
    
    if (file_exists("keyconfig_" + string(MENUCOORD[2]) + ".ini"))
        file_copy("keyconfig_" + string(MENUCOORD[2]) + ".ini", "keyconfig_" + string(MENUCOORD[3]) + ".ini");
/// CODE
#if CHAPTER_1
    file_copy(AP_get_save_folder_prefix() + "filech" + global.chapter + "_" + string(MENUCOORD[2]), AP_get_save_folder_prefix() + "filech" + global.chapter + "_" + string(MENUCOORD[3]));
#else
    file_copy(AP_get_save_folder_prefix() + "filech" + CH + "_" + string(MENUCOORD[2]), AP_get_save_folder_prefix() + "filech" + CH + "_" + string(MENUCOORD[3]));
#endif
/// END
