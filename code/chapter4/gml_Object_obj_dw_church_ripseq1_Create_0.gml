/// PATCH

/// AFTER
    snd_stop(global.currentsong[0]);
    snd_stop(global.currentsong[1]);
/// CODE
    if (snd_is_playing(global.AP_ost_shuffle))
    {
        snd_stop(global.AP_music[0]);
        snd_stop(global.AP_music[1]);
    }
/// END