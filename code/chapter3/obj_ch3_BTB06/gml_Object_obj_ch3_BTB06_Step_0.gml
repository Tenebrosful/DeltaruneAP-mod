/// PATCH

/// REPLACE
    global.batmusic[0] = snd_init("tenna_battle.ogg");
    global.batmusic[2] = snd_init("tenna_battle_guitar.ogg");
    global.batmusic[3] = mus_loop(global.batmusic[2]);
    mus_volume(global.batmusic[3], 0, 0);
/// CODE
    global.batmusic[0] = snd_init("tenna_battle.ogg", false);
    global.batmusic[2] = snd_init("tenna_battle_guitar.ogg", false);
    global.batmusic[3] = mus_loop(global.batmusic[2]);
    mus_volume(global.batmusic[3], 0, 0);

    if (global.AP_ost_shuffle)
        global.tenna_shuffled_music[0] = snd_init("tenna_battle.ogg");
/// END

/// AFTER
        snd_volume(global.batmusic[1], 0, 25);
/// CODE
        if (global.AP_ost_shuffle)
            snd_volume(global.tenna_shuffled_music[1], 0, 25);
/// END

/// AFTER
    snd_free(global.batmusic[0]);
/// CODE
    if (global.AP_ost_shuffle)
        snd_free(global.tenna_shuffled_music[0]);
/// END