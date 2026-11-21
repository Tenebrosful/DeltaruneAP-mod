/// IMPORT
function snd_init(arg0, arg1 = true)
{
    var _old_song = arg0;
    var _new_song = arg0;
    
    if (scr_debug())
    {
        if (file_exists("debug.snd_init"))
        {
            var _file = file_text_open_read("debug.snd_init");
            var _read1 = file_text_read_string(_file);
            file_text_readln(_file);
            var _read2 = file_text_read_string(_file);
            var _read2f = arg1;
            
            if (_read2 == "0" || _read2 == "1" || _read2 == "false" || _read2 == "true")
                _read2f = bool(_read2);
            
            if (_read1 != "")
            {
                global.AP_debug_last_shuffled_ost = _old_song;
                arg0 = _read1;
                
                if (_read2f == true)
                {
                    if (variable_struct_exists(global.AP_ost_mapping, arg0))
                        _new_song = variable_struct_get(global.AP_ost_mapping, arg0);
                }
                
                global.AP_debug_last_shuffled_ost_result = _new_song;
                arg1 = false;
            }
            else if (_read1 == "")
            {
                if (_read2 != "")
                    arg1 = _read2f;
            }
            
            file_text_close(_file);
        }
    }
    
    if (global.AP_ost_shuffle && arg1)
    {
        global.AP_debug_last_shuffled_ost = _old_song;
        
        if (variable_struct_exists(global.AP_ost_mapping, arg0))
            _new_song = variable_struct_get(global.AP_ost_mapping, arg0);
        
        global.AP_debug_last_shuffled_ost_result = _new_song;
    }
    
    var dir = "mus/";
    
    if (global.launcher)
        dir = working_directory + "../mus/";
    
    initsongvar = dir + _new_song;
    _mystream = audio_create_stream(initsongvar);
    _astream = instance_create(0, 0, obj_astream);
    _astream.mystream = _mystream;
    _astream.songname = _new_song;
    _astream.origsongname = _old_song;
    return _mystream;
}

function sound_init(arg0)
{
    snd_init(arg0);
}
