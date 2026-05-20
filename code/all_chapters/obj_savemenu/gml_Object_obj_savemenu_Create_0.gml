/// PATCH

/// REPLACE
    if (ossafe_file_exists("dr.ini"))
    {
        ini_ex_file[i] = 1;
        iniread_file[i] = ossafe_ini_open("dr.ini");
/// CODE
    if (ossafe_file_exists(AP_get_save_folder_prefix() + "dr.ini"))
    {
        ini_ex_file[i] = 1;
        iniread_file[i] = ossafe_ini_open(AP_get_save_folder_prefix() + "dr.ini");
/// END