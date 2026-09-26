/// PATCH

/// REPLACE
song1 = mus_play(song0);
/// CODE
if (mus_get_name(song0) == "ch5_credits.ogg")
    song1 = mus_play(song0);
else
    song1 = mus_loop(song0);
/// END