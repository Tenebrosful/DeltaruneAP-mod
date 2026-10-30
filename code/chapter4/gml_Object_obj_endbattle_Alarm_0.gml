/// PATCH

/// AFTER
    snd_volume(global.currentsong[1], 1, 20);
/// CODE
    if (global.AP_ost_shuffle && i_ex(obj_musicer_dw_church))
    {
        snd_resume(global.AP_music[1]);
        snd_volume(global.AP_music[1], 0, 0);
    }
/// END