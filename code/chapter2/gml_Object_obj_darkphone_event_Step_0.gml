/// PATCH

/// AFTER
    if (snd_is_playing(global.currentsong[1]))
    {
        sndplay = 1;
        snd_pause(global.currentsong[1]);
    }
/// CODE
    if (snd_is_playing(global.cyber_shuffled_music[1]))
    {
        sndplay = 2;
        snd_pause(global.cyber_shuffled_music[1]);
    }
/// END

/// AFTER
    if (sndplay == 1)
        snd_resume(global.currentsong[1]);
/// CODE
    if (sndplay == 2)
        snd_resume(global.cyber_shuffled_music[1]);
/// END