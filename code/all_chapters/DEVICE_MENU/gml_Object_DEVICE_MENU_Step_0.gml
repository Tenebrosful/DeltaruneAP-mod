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