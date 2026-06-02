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

#if !CHAPTER_1
/// REPLACE
COMPLETEFILE_PREV[0] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_3");
COMPLETEFILE_PREV[1] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_4");
COMPLETEFILE_PREV[2] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_5");
INCOMPLETEFILE_PREV[0] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_0");
INCOMPLETEFILE_PREV[1] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_1");
INCOMPLETEFILE_PREV[2] = ossafe_file_exists("filech" + string(global.chapter - 1) + "_2");
/// CODE
COMPLETEFILE_PREV[0] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_3");
COMPLETEFILE_PREV[1] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_4");
COMPLETEFILE_PREV[2] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_5");
INCOMPLETEFILE_PREV[0] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_0");
INCOMPLETEFILE_PREV[1] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_1");
INCOMPLETEFILE_PREV[2] = ossafe_file_exists(AP_get_save_folder_prefix() + "filech" + string(global.chapter - 1) + "_2");

for (i = 0; i < 3; i++)
{
    COMPLETEFILE_PREV_NAME[i] = stringsetloc("NO DATA", "DEVICE_MENU_slash_Create_0_gml_182_0");
    COMPLETEFILE_PREV_TIME[i] = 0;
    COMPLETETIME_STRING[i] = "???";
    COMPLETEFILE_PREV_PLACE[i] = stringsetloc("CHAPTER 1", "DEVICE_MENU_slash_Create_0_gml_221_0");
    INCOMPLETEFILE_PREV_NAME[i] = stringsetloc("NO DATA", "DEVICE_MENU_slash_Create_0_gml_185_0");
    INCOMPLETEFILE_PREV_TIME[i] = 0;
}
/// END
#endif