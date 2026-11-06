/// PATCH

/// REPLACE
    choir_song[1] = audio_play_sound(choir_song[0], 90, 0);
/// CODE
    if (mus_get_name(choir_song[0]) == "church_hymn.ogg")
        choir_song[1] = audio_play_sound(choir_song[0], 90, 0);
    else
        choir_song[1] = audio_play_sound(choir_song[0], 90, 1);
/// END