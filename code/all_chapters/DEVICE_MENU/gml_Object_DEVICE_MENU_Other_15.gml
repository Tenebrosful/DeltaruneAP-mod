/// PATCH

/// REPLACE
iniwrite = ossafe_ini_open("dr.ini");
/// CODE
iniwrite = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END

#if CHAPTER_1
/// REPLACE
file_copy("filech1_" + string(MENUCOORD[2]), "filech1_" + string(MENUCOORD[3]));
/// CODE
file_copy(
  AP_get_save_folder_prefix() + "filech" + global.chapter + "_" + string(MENUCOORD[2]),
  AP_get_save_folder_prefix() + "filech" + global.chapter + "_" + string(MENUCOORD[3])
);
/// END
#else
/// REPLACE
file_copy("filech" + CH + "_" + string(MENUCOORD[2]), "filech" + CH + "_" + string(MENUCOORD[3]));
/// CODE
file_copy(AP_get_save_folder_prefix() + "filech" + CH + "_" + string(MENUCOORD[2]), AP_get_save_folder_prefix() + "filech" + CH + "_" + string(MENUCOORD[3]));
#endif