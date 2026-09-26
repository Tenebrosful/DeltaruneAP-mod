/// PATCH

/// REPLACE
    snd_volume(global.currentsong[1], 0, 20);
/// CODE
{
    snd_volume(global.currentsong[1], 0, 20);
    if (global.AP_ost_shuffle && i_ex(obj_musicer_cyber))
        snd_volume(global.cyber_shuffled_music[1], 0, 20);
}
/// END