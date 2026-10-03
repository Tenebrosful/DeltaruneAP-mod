/// PATCH

/// REPLACE
    if (musname != "piano_ambience.ogg")
    {
        if (musname != "")
            snd_free(global.currentsong[0]);
        
        global.currentsong[0] = snd_init("piano_ambience.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
    }
    else
    {
        snd_volume(global.currentsong[1], 1, 0);
    }
/// CODE
    if (global.AP_ost_shuffle)
    {
        if (musname != variable_struct_get(global.AP_ost_mapping, "piano_ambience.ogg"))
        {
            if (musname != "")
                snd_free(global.currentsong[0]);

            global.currentsong[0] = snd_init("piano_ambience.ogg");
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
        }
        else
        {
            snd_volume(global.currentsong[1], 1, 0);
        }
    }
    else
    {
        if (musname != "piano_ambience.ogg")
        {
            if (musname != "")
                snd_free(global.currentsong[0]);

            global.currentsong[0] = snd_init("piano_ambience.ogg");
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
        }
        else
        {
            snd_volume(global.currentsong[1], 1, 0);
        }
    }
/// END
