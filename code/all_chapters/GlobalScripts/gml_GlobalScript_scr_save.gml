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