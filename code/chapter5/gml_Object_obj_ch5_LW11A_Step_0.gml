/// PATCH

/// REPLACE
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("festival.ogg");
        global.currentsong[1] = mus_loop(global.currentsong[0]);
        mus_volume(global.currentsong[1], 0, 0);
        mus_volume(global.currentsong[1], 1, 30);
    }
/// CODE
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("festival.ogg", false);
        global.currentsong[1] = mus_loop(global.currentsong[0]);
        mus_volume(global.currentsong[1], 0, 0);
        
        if (global.AP_ost_shuffle)
        {
            global.AP_music[0] = snd_init("festival.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        }
        else
            mus_volume(global.currentsong[1], 1, 30);
    }
/// END