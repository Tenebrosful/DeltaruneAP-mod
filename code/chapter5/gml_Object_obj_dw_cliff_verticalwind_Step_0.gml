/// PATCH

/// REPLACE
    c_mus2("volume", 0, 15);
    scr_maincharacters_actors();
    scr_get_plat_followers();
    c_wait(15);
    c_mus("free");
/// CODE
    c_mus2("volume", 0, 15);
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 15);
        });
    }
    scr_maincharacters_actors();
    scr_get_plat_followers();
    c_wait(15);
    c_mus("free");
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            snd_free(global.AP_music[0]);
            global.customflags[global.custom_flags_indexes.AP_music_playing] = 0;
        });
    }
/// END