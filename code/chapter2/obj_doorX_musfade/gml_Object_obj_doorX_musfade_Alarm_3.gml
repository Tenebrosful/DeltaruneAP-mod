/// PATCH

/// AFTER
snd_free(global.currentsong[0]);
/// CODE
if (global.AP_ost_shuffle && i_ex(obj_musicer_cyber))
    snd_free(global.cyber_shuffled_music[0]);
/// END