/// PATCH

#if CHAPTER_1
/// REPLACE
TYPE = 0;

if (ossafe_file_exists("filech1_3"))
    TYPE = 1;

if (ossafe_file_exists("filech1_4"))
    TYPE = 1;

if (ossafe_file_exists("filech1_5"))
    TYPE = 1;
/// CODE
TYPE = 1
/// END

#elsif CHAPTER_2

/// REPLACE
TYPE = 1;
SUBTYPE = 0;
CH = string(global.chapter);

if (ossafe_file_exists("filech" + CH + "_3"))
    SUBTYPE = 1;

if (ossafe_file_exists("filech" + CH + "_4"))
    SUBTYPE = 1;

if (ossafe_file_exists("filech" + CH + "_5"))
    SUBTYPE = 1;
/// CODE
TYPE = 1;
SUBTYPE = 1;
CH = string(global.chapter);
/// END
#endif

#if !CHAPTER_1
/// REPLACE
if (ossafe_file_exists("dr.ini"))
{
    ossafe_ini_open("dr.ini");
/// CODE
if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
{
    ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END

/// REPLACE
if (ossafe_file_exists("dr.ini"))
/// CODE
if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
/// END

/// REPLACE
if (ossafe_file_exists("filech" + CH + "_0"))
/// CODE
if (ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + CH + "_0"))
/// END

/// REPLACE
if (ossafe_file_exists("filech" + CH + "_1"))
/// CODE
if (ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + CH + "_1"))
/// END

/// REPLACE
if (ossafe_file_exists("filech" + CH + "_2"))
/// CODE
if (ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + CH + "_2"))
/// END
#endif