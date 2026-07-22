/// IMPORT
function scr_get_shortcut_doors()
{
    var unlock_flag = 1878;
    var door_list = [new scr_shortcut_door(stringsetloc("Garden", "scr_shortcut_door_slash_scr_shortcut_door_gml_8_0"), [new scr_shortcut(stringsetloc("Hopschef", "scr_shortcut_door_slash_scr_shortcut_door_gml_9_0"), 126, unlock_flag, 0), new scr_shortcut(stringsetloc("Near Shrine", "scr_shortcut_door_slash_scr_shortcut_door_gml_10_0"), 151, "custom", 2), new scr_shortcut(stringsetloc("End of Garden", "scr_shortcut_door_slash_scr_shortcut_door_gml_11_0"), 150, "custom", 1)]), new scr_shortcut_door(stringsetloc("Cliffs", "scr_shortcut_door_slash_scr_shortcut_door_gml_13_0"), [new scr_shortcut(stringsetloc("First Climb", "scr_shortcut_door_slash_scr_shortcut_door_gml_14_0"), 155, "custom", 3), new scr_shortcut(stringsetloc("Shop", "scr_shortcut_door_slash_scr_shortcut_door_gml_15_0"), 160, "custom", 4), new scr_shortcut(stringsetloc("Netskie Climb", "scr_shortcut_door_slash_scr_shortcut_door_gml_16_0"), 162, "custom", 5)]), new scr_shortcut_door(stringsetloc("Castle", "scr_shortcut_door_slash_scr_shortcut_door_gml_18_0"), [new scr_shortcut(stringsetloc("Foyer", "scr_shortcut_door_slash_scr_shortcut_door_gml_19_0"), 178, "custom", 6), new scr_shortcut(stringsetloc("Blue's Room", "scr_shortcut_door_slash_scr_shortcut_door_gml_20_0"), 187, "custom", 7), new scr_shortcut(stringsetloc("Mysterious Puzzle", "scr_shortcut_door_slash_scr_shortcut_door_gml_21_0"), 208, "custom", 8)]), new scr_shortcut_door(stringsetloc("Top of Castle", "scr_shortcut_door_slash_scr_shortcut_door_gml_23_0"), [new scr_shortcut(stringsetloc("Green's Shop", "scr_shortcut_door_slash_scr_shortcut_door_gml_24_0"), 224, "custom", 9), new scr_shortcut(stringsetloc("Pink Door", "scr_shortcut_door_slash_scr_shortcut_door_gml_25_0"), 229, unlock_flag, 2), new scr_shortcut(stringsetloc("Last Room", "scr_shortcut_door_slash_scr_shortcut_door_gml_26_0"), 225, unlock_flag, 3)])];
    return door_list;
}

function scr_shortcut_door(arg0, arg1) constructor
{
    _label = arg0;
    _options = arg1;
    
    get_label = function()
    {
        return _label;
    };
    
    get_options = function()
    {
        return _options;
    };
}

function scr_shortcut(arg0, arg1, arg2 = -1, arg3 = -1) constructor
{
    _label = arg0;
    _room_index = arg1;
    _flag_id = arg2;
    _flag_value = arg3;
    
    is_optional = function()
    {
        if (_flag_id == "custom")
            return true;
        
        return _flag_id != -1;
    };
    
    is_unlocked = function()
    {
        if (is_optional())
        {
            if (_flag_id == "custom")
                return global.customflags[global.custom_flags_indexes.ch5_shortcut_door_state] >= _flag_value;
            else
                return scr_flag_get_ext(_flag_id, _flag_value) == 1;
        }
        
        return true;
    };
    
    get_label = function()
    {
        return _label;
    };
    
    get_room_index = function()
    {
        return _room_index;
    };
}
