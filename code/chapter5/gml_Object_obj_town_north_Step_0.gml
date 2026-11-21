/// PATCH

/// AFTER
        c_walk(room_width + 40, 2, 90);
        c_mus2("volume", 0, 90);
/// CODE
        if (global.AP_ost_shuffle)
        {
            c_customfunc(function()
            {
                mus_volume(global.AP_music[1], 0, 90);
            });
        }
/// END