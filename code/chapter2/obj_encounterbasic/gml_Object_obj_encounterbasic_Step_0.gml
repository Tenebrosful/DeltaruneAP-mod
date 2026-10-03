/// PATCH

/// REPLACE
        snd_pause(global.currentsong[1]);
/// CODE
    {
        snd_pause(global.currentsong[1]);
        if (global.AP_ost_shuffle && i_ex(obj_musicer_cyber))
            snd_pause(global.cyber_shuffled_music[1]);
    }
/// END