/// IMPORT

function AP_get_save_folder_prefix(legacy = false)
{
    if (legacy)
        return string(global.AP_multiworld) + "_" + AP_sanitizeString(global.AP_name) + "/";
    else
        return string(global.AP_multiworld) + string(global.AP_team) + "_" + string(global.AP_slot) + "/";
}