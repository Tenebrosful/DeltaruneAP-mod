/// PATCH

/// REPLACE
        mus_play_ext("second_church.ogg", 1, 0.7, 1, 0);
/// CODE
        {
            var _song = snd_init("second_church.ogg");
            mus_loop_ext(_song, 0.7, 1);
        }
/// END

/// BEFORE
        room_goto(room_dw_churchb_ripplepost);
/// CODE
        snd_free_all();
/// END
