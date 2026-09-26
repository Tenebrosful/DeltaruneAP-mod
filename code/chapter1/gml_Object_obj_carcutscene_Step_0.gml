/// PATCH

/// REPLACE
        mus_play(global.currentsong[0]);
/// CODE
    if (mus_get_name() == "mus_introcar.ogg"))
        mus_play(global.currentsong[0]);
    else
        mus_loop(global.currentsong[0]);
/// END