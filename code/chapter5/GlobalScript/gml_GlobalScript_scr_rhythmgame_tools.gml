/// PATCH

/// REPLACE
    var __savestring = "music_timing";
    
    if (arg0 == 0)
        scr_debug_print("loading rock video");
    
    if (arg0 == 1)
    {
        scr_debug_print("loading practice song");
        __savestring += "_practice";
    }
    else if (arg0 == 2)
    {
        arg0 = 2;
        __savestring += "_tenna";
        scr_debug_print("loading tenna_battle");
        
        if (arg2)
            bpm = 148;
    }
    else if (arg0 == 3)
    {
        arg0 = 3;
        __savestring += "_tutorial";
        scr_debug_print("loading tutorial song");
        
        if (arg2)
            bpm = 190;
    }
    else if (arg0 == 4)
    {
        arg0 = 4;
        __savestring += "_board4";
        scr_debug_print("loading board4_rhythm");
        
        if (arg2)
            bpm = 120;
    }
    else if (arg0 == 5)
    {
        arg0 = 5;
        __savestring += "_rudebuster_boss";
        scr_debug_print("loading rudebuster_boss");
        
        if (arg2)
            bpm = 140;
    }
    else if (arg0 == 6)
    {
        arg0 = 6;
        __savestring += "_vapor";
        scr_debug_print("loading battle_vapor");
        
        if (arg2)
            bpm = 200;
    }
    else if (arg0 == 8)
    {
        __savestring += "_rudebuster";
        scr_debug_print("loading rudebuster");
    }
    else if (arg0 == 9)
    {
        __savestring += "_fieldofhopes";
        scr_debug_print("loading field of hopes and dreams");
    }
    else if (arg0 == 10)
    {
        __savestring += "_knockyoudown";
        scr_debug_print("loading Knock You Down!!");
    }
    else if (arg0 == 15)
    {
        __savestring += "_churchx";
        scr_debug_print("loading 4rd Sanctuary");
    }
    else
    {
        __savestring += "_unnamed";
        scr_debug_print("loading unnamed song");
    }
    
    if (arg1 == 1)
        __savestring += "_drums";
    
    if (arg1 == 2)
        __savestring += "_vocals";
/// CODE
    var __savestring = "music_timing_" + string(arg0);
/// END

/// REPLACE
function scr_rhythmgame_editor_load(arg0 = "music_timing.txt", arg1 = true)
{
    file = file_text_open_read(arg0);
    
    while (!file_text_eof(file))
    {
        var line = file_text_read_string(file);
        var l_arg = gml_std_string_split(line, ",");
/// CODE
function scr_rhythmgame_editor_load(arg0 = "music_timing.txt", arg1 = true)
{
    file = file_text_open_read(arg0);
    
    while (!file_text_eof(file))
    {
        var line = file_text_read_string(file);
        var l_arg = string_split(line, ",");
/// END

/// REPLACE
function scr_rhythmgame_editor_load_track_directory(arg0 = "rhythm_chart_list", arg1 = true)
{
    file = file_text_open_read(arg0);
    
    while (!file_text_eof(file))
    {
        var line = file_text_read_string(file);
        var l_arg = gml_std_string_split(line, ",");
/// CODE
function scr_rhythmgame_editor_load_track_directory(arg0 = "rhythm_chart_list", arg1 = true)
{
    file = file_text_open_read(arg0);
    
    while (!file_text_eof(file))
    {
        var line = file_text_read_string(file);
        var l_arg = string_split(line, ",");
/// END

/// REPLACE
        var l_arg = gml_std_string_split(line, ",");
        var _char = string_char_at(line, 1);
/// CODE
        var l_arg = string_split(line, ",");
        var _char = string_char_at(line, 1);
/// END