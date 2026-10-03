/// PATCH

/// REPLACE
    snd_volume(global.currentsong[1], 1, 20);
/// CODE
    if (global.AP_ost_shuffle && i_ex(obj_musicer_cyber))
    {
        snd_volume(global.currentsong[1], 0, 20);
        snd_volume(global.cyber_shuffled_music[1], 0, 0);
        snd_resume(global.cyber_shuffled_music[1]);
        snd_volume(global.cyber_shuffled_music[1], 1, 20);
    }
    else
    {
        snd_volume(global.currentsong[1], 1, 20);
    }
/// END