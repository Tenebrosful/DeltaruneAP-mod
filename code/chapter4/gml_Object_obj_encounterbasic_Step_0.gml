/// PATCH

/// REPLACE
        snd_pause(global.currentsong[1]);
/// CODE
    {
        snd_pause(global.currentsong[1]);
        if (global.AP_ost_shuffle && i_ex(obj_musicer_dw_church))
            snd_pause(global.dark_sanctuary_unshuffled_music[1]);
    }
/// END