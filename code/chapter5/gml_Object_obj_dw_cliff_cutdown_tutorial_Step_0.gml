/// PATCH

/// AFTER
        prevtrackpos = audio_sound_get_track_position(global.currentsong[1]);
/// CODE
        if (global.AP_ost_shuffle)
            AP_prevtrackpos = audio_sound_get_track_position(global.AP_music[1]);
/// END

/// AFTER
        snd_volume(global.currentsong[1], 0, 30);
/// CODE
        if (global.AP_ost_shuffle)
            snd_volume(global.AP_music[1], 0, 30);
/// END

/// AFTER
        c_wait(30);
        c_mus("free");
/// CODE
        if (global.AP_ost_shuffle)
        {
            c_customfunc(function()
            {
                snd_free(global.AP_music[0]);
            });
        }
/// END

/// REPLACE
        c_mus2("initloop", "cliff.ogg");
        c_mus2("volume", 0, 1);
        c_customfunc(function(arg0)
        {
            snd_volume(global.currentsong[1], 1, 30);
            audio_sound_set_track_position(global.currentsong[1], arg0);
        }, prevtrackpos);
/// CODE
        c_mus2("initloop", "cliff.ogg", 1);
        c_mus2("volume", 0, 1);
        c_customfunc(function(arg0, arg1)
        {
            if (global.AP_ost_shuffle)
            {
                global.AP_music[0] = snd_init("cliff.ogg");
                global.AP_music[1] = mus_loop(global.AP_music[0]);
                snd_volume(global.AP_music[1], 0, 1);
                snd_volume(global.AP_music[1], 1, 30);
                audio_sound_set_track_position(global.AP_music[1], arg1);
            }
            else
                snd_volume(global.currentsong[1], 1, 30);
            
            audio_sound_set_track_position(global.currentsong[1], arg0);
        }, prevtrackpos, AP_prevtrackpos);
/// END