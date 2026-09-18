/// PATCH

/// REPLACE
    song0 = snd_init("ch4_credits.ogg");
    song1 = mus_play(song0);
/// CODE
    song0 = snd_init("ch4_credits.ogg", false);
    song1 = mus_play(song0);

    if (global.AP_ost_shuffle)
    {
        mus_volume(song1, 0, 0);
        song2 = snd_init("ch4_credits.ogg");
        song3 = mus_loop(song2);
    }
/// END