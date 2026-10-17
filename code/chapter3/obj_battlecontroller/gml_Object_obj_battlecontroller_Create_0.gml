/// PATCH

/// AFTER
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], battlemusicvolume, 1);
/// CODE
    if (global.AP_ost_shuffle && i_ex(obj_ch3_BTB06))
    {
        mus_volume(global.batmusic[1], 0, 0);
        global.tenna_shuffled_music[1] = mus_loop_ext(global.tenna_shuffled_music[0], battlemusicvolume, 1);
    }
/// END