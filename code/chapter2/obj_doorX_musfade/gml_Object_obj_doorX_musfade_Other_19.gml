/// PATCH

/// AFTER
mus_volume(global.currentsong[1], 0, 14);
/// CODE
if (global.AP_ost_shuffle && i_ex(obj_musicer_cyber))
    mus_volume(global.cyber_shuffled_music[1], 0, 14);
/// END