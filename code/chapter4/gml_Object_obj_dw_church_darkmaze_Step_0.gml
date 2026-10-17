/// PATCH

/// AFTER
    global.currentsong[0] = snd_init("church_wip.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
/// CODE
    if (global.AP_ost_shuffle)
    {
        if (!snd_is_playing(global.dark_sanctuary_unshuffled_music[1]))
        {
            global.dark_sanctuary_unshuffled_music[0] = snd_init("church_wip.ogg", false);
            global.dark_sanctuary_unshuffled_music[1] = mus_loop_ext(global.dark_sanctuary_unshuffled_music[0], 0, 1);
        }
    }
/// END