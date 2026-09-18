/// PATCH

/// REPLACE
    song1 = mus_play(song0);
/// CODE
    if (global.AP_ost_shuffle)
        song1 = mus_loop(song0);
    else
        song1 = mus_play(song0);
/// END