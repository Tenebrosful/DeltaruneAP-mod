/// PATCH

#if CHAPTER_1
/// REPLACE
    if (ossafe_file_exists("filech1_0"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(global.chapter, 0))
/// END

/// REPLACE
    if (ossafe_file_exists("filech1_1"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(global.chapter, 1))
/// END

/// REPLACE
    if (ossafe_file_exists("filech1_2"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(global.chapter, 2))
/// END
#else
/// REPLACE
    if (ossafe_file_exists("filech" + CH + "_0"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(1, 0))
/// END

/// REPLACE
    if (ossafe_file_exists("filech" + CH + "_1"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(1, 1))
/// END

/// REPLACE
    if (ossafe_file_exists("filech" + CH + "_2"))
/// CODE
    if (scr_chapter_save_file_exists_in_slot(1, 2))
/// END
#endif

/// REPLACE
    if (ossafe_file_exists("dr.ini"))
    {
        ossafe_ini_open("dr.ini");
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
    {
        ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END