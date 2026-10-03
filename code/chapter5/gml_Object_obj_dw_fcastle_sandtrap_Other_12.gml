/// PATCH

/// REPLACE
        audio_sound_set_track_position(global.currentsong[1], 7);
/// CODE
        if (mus_get_name() == "flower_castle.ogg")
            audio_sound_set_track_position(global.currentsong[1], 7);
/// END

/// REPLACE
    c_customfunc(function()
    {
        mus_fade(global.currentsong[1], 30);
        
        with (obj_astream)
        {
            if (string_pos("cowboy", songname))
                scr_doom(id, 31);
        }
    });
/// CODE
    c_customfunc(function()
    {
        mus_fade(global.currentsong[1], 30);
        
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
            {
                if (string_pos("cowboy", variable_struct_get(global.AP_ost_mapping, songname)))
                    scr_doom(id, 31);
            }
            else
            {
                if (string_pos("cowboy", songname))
                    scr_doom(id, 31);
            }
        }
    });
/// END

/// REPLACE
    c_customfunc(function()
    {
        snd_volume(sadcowboy, 0, 30);
        
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
            {
                if (string_pos("cowboy", variable_struct_get(global.AP_ost_mapping, songname)))
                    scr_doom(id, 31);
            }
            else
            {
                if (string_pos("cowboy", songname))
                    scr_doom(id, 31);
            }
        }
    });
/// CODE
    c_customfunc(function()
    {
        snd_volume(sadcowboy, 0, 30);
        
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
            {
                if (string_pos("cowboy", variable_struct_get(global.AP_ost_mapping, songname)))
                    scr_doom(id, 31);
            }
            else
            {
                if (string_pos("cowboy", songname))
                    scr_doom(id, 31);
            }
        }
    });
/// END

/// REPLACE
    c_customfunc(function()
    {
        snd_volume(cowboy, 0, 30);
        
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
            {
                if (string_pos("cowboy", variable_struct_get(global.AP_ost_mapping, songname)))
                    scr_doom(id, 31);
            }
            else
            {
                if (string_pos("cowboy", songname))
                    scr_doom(id, 31);
            }
        }
    });
/// CODE
    c_customfunc(function()
    {
        snd_volume(cowboy, 0, 30);
        
        with (obj_astream)
        {
            if (global.AP_ost_shuffle)
            {
                if (string_pos("cowboy", variable_struct_get(global.AP_ost_mapping, songname)))
                    scr_doom(id, 31);
            }
            else
            {
                if (string_pos("cowboy", songname))
                    scr_doom(id, 31);
            }
        }
    });
/// END