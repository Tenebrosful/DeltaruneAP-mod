/// PATCH

/// REPLACE
    snd_volume(global.currentsong[1], 1, 20);
/// CODE
    snd_volume(global.AP_music[1], 0, 0);
    snd_resume(global.AP_music[1]);
    
    if (global.customflags[global.custom_flags_indexes.AP_music_playing])
        snd_volume(global.AP_music[1], 1, 20);
    else
        snd_volume(global.currentsong[1], 1, 20);
/// END