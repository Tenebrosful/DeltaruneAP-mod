/// PATCH

/// REPLACE
        mus_play_ext("second_church.ogg", 1, 0.7, 1, 0);
/// CODE
        {
            var _song = snd_init("second_church.ogg", false);
            mus_loop_ext(_song, 0.7, 1);
        }
/// END

/// BEFORE
        room_goto(room_dw_churchb_ripplepost);
/// CODE
        if (global.ost_shuffle && variable_struct_get(global.AP_ost_mapping, "second_church.ogg") != "second_church.ogg")
            snd_free_all();
/// END
