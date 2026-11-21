/// PATCH

/// AFTER
lastmusic = "";
lastmusicpos = 0;
/// CODE
AP_lastmusic = "";
AP_lastmusicpos = 0;
/// END

/// REPLACE
    if (stop_music)
    {
        snd_free(global.currentsong[0]);
        
        if (lastmusic != "")
        {
            global.currentsong[0] = snd_init(lastmusic);
            global.currentsong[1] = mus_loop(global.currentsong[0]);
            audio_sound_set_track_position(global.currentsong[1], lastmusicpos);
            mus_volume(global.currentsong[1], 0, 0);
            mus_volume(global.currentsong[1], 1, 30);
        }
    }
/// CODE
    if (stop_music)
    {
        snd_free(global.currentsong[0]);
        snd_free(global.AP_music[0]);
        
        if (lastmusic != "")
        {
            global.currentsong[0] = snd_init(lastmusic, false);
            global.currentsong[1] = mus_loop(global.currentsong[0]);
            audio_sound_set_track_position(global.currentsong[1], lastmusicpos);
            mus_volume(global.currentsong[1], 0, 0);

            if (!global.customflags[global.custom_flags_indexes.AP_music_playing])
                mus_volume(global.currentsong[1], 1, 30);
        }
        
        if (global.customflags[global.custom_flags_indexes.AP_music_playing])
        {
            if (AP_lastmusic != "")
            {
                global.AP_music[0] = snd_init(AP_lastmusic);
                global.AP_music[1] = mus_loop(global.AP_music[0]);
                audio_sound_set_track_position(global.AP_music[1], AP_lastmusicpos);
                mus_volume(global.AP_music[1], 0, 0);
                mus_volume(global.AP_music[1], 1, 30);
            }
        }
    }
/// END

/// REPLACE
    var name = "";
    
    with (obj_astream)
    {
        if (mystream == global.currentsong[0])
            name = songname;
    }
    
    if (stop_music)
    {
        lastmusic = string_trim_start(name, ["mus/"]);
        lastmusicpos = audio_sound_get_track_position(global.currentsong[1]);
        snd_free(global.currentsong[0]);
        global.currentsong[0] = snd_init("battle.ogg");
        global.currentsong[1] = mus_loop(global.currentsong[0]);
        mus_volume(global.currentsong[1], 0, 0);
        scr_script_delayed(mus_volume, 30, global.currentsong[1], 1, 30);
    }
/// CODE
    var name = mus_get_name(global.currentsong[0]);
    var APname = AP_mus_get_orig_name(global.AP_music[0]);
    
    if (stop_music)
    {
        lastmusic = string_trim_start(name, ["mus/"]);
        lastmusicpos = audio_sound_get_track_position(global.currentsong[1]);
        snd_free(global.currentsong[0]);

        if (global.customflags[global.custom_flags_indexes.AP_music_playing])
        {
            AP_lastmusic = string_trim_start(APname, ["mus/"]);
            AP_lastmusicpos = audio_sound_get_track_position(global.AP_music[1]);
            snd_free(global.AP_music[0]);
        }

        global.currentsong[0] = snd_init("battle.ogg");
        global.currentsong[1] = mus_loop(global.currentsong[0]);
        mus_volume(global.currentsong[1], 0, 0);
        scr_script_delayed(mus_volume, 30, global.currentsong[1], 1, 30);
    }
/// END