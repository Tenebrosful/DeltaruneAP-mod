/// PATCH

/// REPLACE
    song0 = snd_init("ch4_credits.ogg");
    song1 = mus_play(song0);
/// CODE
    song0 = snd_init("ch4_credits.ogg", false);
    song1 = mus_play(song0);
    song2 = snd_init("ch4_credits.ogg");

    if (mus_get_name(song2) != "ch4_credits.ogg")
    {
        mus_volume(song1, 0, 0);
        song3 = mus_loop(song2);
    }
/// END