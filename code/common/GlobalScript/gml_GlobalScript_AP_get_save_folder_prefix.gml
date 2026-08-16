/// IMPORT

function AP_get_save_folder_prefix(version = -1)
{
    switch(version)
    {
        case 1:
            return string(global.AP_multiworld) + "_" + AP_sanitizeString(global.AP_name) + "/";
        case 2:
            return string(global.AP_multiworld) + string(global.AP_team) + "_" + string(global.AP_slot) + "/";
        case 3:
        default:
            return string(global.AP_multiworld) + "_" + string(global.AP_team) + "_" + string(global.AP_slot) + "/";
    }
}