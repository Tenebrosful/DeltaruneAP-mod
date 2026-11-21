/// PATCH

/// AFTER
    c_waitcustom_end();
    c_mus2("volume", 0, 30);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 30);
        });
    }
/// END

/// BEFORE
    c_mus2("initloop", "noelle_normal.ogg", 0);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            snd_free(global.AP_music[0]);
        });
    }
/// END

/// REPLACE
    c_mus("free_all");
    c_mus2("initloop", "festival.ogg", 0);
    c_mus2("volume", 0, 0);
    c_mus2("volume", 1, 30);
/// CODE
    c_mus("free_all");
    c_mus2("initloop", "festival.ogg", 1);
    c_mus2("volume", 0, 0);

    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            global.AP_music[0] = snd_init("festival.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
/// END

/// AFTER
    c_msgnextloc("\\Eb* ..^1. sure^1, Kris^1. If you want to./%", "obj_town_mid_ferris_slash_Step_0_gml_451_0");
    c_talk_wait();
    c_mus2("volume", 0, 30);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 30);
        });
    }
/// END

/// REPLACE
    });
    c_mus2("initloop", "festival.ogg", 0);
    c_mus2("volume", 0, 0);
    c_mus2("volume", 1, 30);
/// CODE
    });
    c_mus2("initloop", "festival.ogg", 1);
    c_mus2("volume", 0, 0);

    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            global.AP_music[0] = snd_init("festival.ogg");
            global.AP_music[1] = mus_loop(global.AP_music[0]);
            mus_volume(global.AP_music[1], 0, 0);
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
/// END

/// AFTER
    c_wait(8);
    c_mus2("volume", 0, 30);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 30);
        });
    }
/// END

/// REPLACE
    c_delayfacing(16, "r");
    c_mus2("volume", 1, 30);
/// CODE
    c_delayfacing(16, "r");

    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
/// END

/// AFTER
    c_msgsetloc(0, "\\E9* See ya in a minute^1, Kris!/%", "obj_town_mid_ferris_slash_Step_0_gml_849_0");
    c_talk_wait();
    c_mus2("volume", 0, 30);
/// CODE
    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 0, 30);
        });
    }
/// END

/// REPLACE
    c_walkdirect_wait(194, 102, 20);
    c_mus2("volume", 1, 30);
/// CODE
    c_walkdirect_wait(194, 102, 20);

    if (global.AP_ost_shuffle)
    {
        c_customfunc(function()
        {
            mus_volume(global.AP_music[1], 1, 30);
        });
    }
    else
        c_mus2("volume", 1, 30);
/// END