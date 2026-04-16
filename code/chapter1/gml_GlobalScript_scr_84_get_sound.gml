/// PATCH

/// REPLACE
    var sound_file_name = arg0;
    
    if (global.lang == "ja")
        sound_file_name += "_ja";
    
    return asset_get_index(sound_file_name);
/// CODE
    return ds_map_find_value(global.chemg_sound_map, arg0);
/// END