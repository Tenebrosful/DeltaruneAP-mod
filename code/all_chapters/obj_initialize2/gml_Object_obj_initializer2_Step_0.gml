/// PATCH

#if CHAPTER_2
/// REPLACE
    if (ossafe_file_exists("dr.ini"))
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#elsif !CHAPTER_1
/// REPLACE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists("dr.ini"))
/// CODE
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END
#endif