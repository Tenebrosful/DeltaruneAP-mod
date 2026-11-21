/// PATCH

/// AFTER
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
    c_mus2("volume", 1, 30);
/// CODE
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