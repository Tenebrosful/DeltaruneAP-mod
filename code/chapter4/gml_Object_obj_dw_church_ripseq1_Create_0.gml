/// PATCH

/// REPLACE
    snd_stop(global.currentsong[0]);
    snd_stop(global.currentsong[1]);
/// CODE
    snd_free(global.currentsong[0]);
    snd_free(global.AP_music[0]);
/// END