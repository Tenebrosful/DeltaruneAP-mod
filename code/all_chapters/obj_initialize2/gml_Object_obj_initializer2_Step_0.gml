/// PATCH

#if CHAPTER_1 || CHAPTER_2
/// REPLACE
    if (ossafe_file_exists("dr.ini"))
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#else
/// REPLACE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists("dr.ini"))
/// CODE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#endif