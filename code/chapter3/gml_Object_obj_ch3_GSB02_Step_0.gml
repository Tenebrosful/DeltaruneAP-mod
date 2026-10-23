/// PATCH

/// REPLACE
    var is_replay = global.plot >= 150;
/// CODE
    var is_replay = global.plot >= 150 && !global.retry_board;
/// END

/// REPLACE
    c_mus2("initloop", "ch3_tvtime.ogg", 0);
/// CODE
    c_mus2("initloop", "ch3_tvtime.ogg", 1);
    
    if (global.AP_ost_shuffle)
        c_var_instance(id, "muscon", 1);
/// END

/// BEFORE
    c_wait(15);
    c_tenna_sprite(spr_tenna_point_up);
/// CODE
    if (global.AP_ost_shuffle)
        c_var_instance(id, "muscon", 2);
/// END

/// AFTER
    c_mus2("volume", 0, 30);
/// CODE
    if (snd_is_playing(global.AP_music[1]))
        c_var_instance(id, "muscon", 3);
/// END

/// BEFORE
    c_var_instance(id, "sound_check", true);
/// CODE
    if (global.AP_ost_shuffle)
        c_var_instance(id, "muscon", 4);
/// END

/// REPLACE
    c_pan(camerax(), 0, 1);
    c_var_instance(id, "game_start", true);
/// CODE
    c_pan(camerax(), 0, 1);
    
    if (snd_is_playing(global.AP_music[1]))
        c_var_instance(id, "muscon", 4);
    
    c_var_instance(id, "game_start", true);
/// END

/// APPEND
if (muscon == 1)
{
    global.AP_music[0] = snd_init("ch3_tvtime.ogg");
    global.AP_music[1] = mus_loop(global.AP_music[0]);
    mus_volume(global.currentsong[1], 0, 0);
    muscon = 0;
}

if (muscon == 2)
{
    mus_volume(global.currentsong[1], 1, 30);
    mus_volume(global.AP_music[1], 0, 30);
    muscon = 0;
}

if (muscon == 3)
{
    mus_volume(global.AP_music[1], 0, 30);
    muscon = 0;
}

if (muscon == 4)
{
    if (snd_is_playing(global.AP_music[1]))
        snd_free(global.AP_music[0]);
    
    muscon = 0;
}
/// END