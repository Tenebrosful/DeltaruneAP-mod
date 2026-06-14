/// IMPORT

function AP_get_save_folder_prefix()
{
    return string(global.AP_multiworld) + "_" + AP_sanitizeString(global.AP_name) + "/";
}