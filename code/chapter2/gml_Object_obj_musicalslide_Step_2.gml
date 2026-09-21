/// PATCH

/// REPLACE
        mus_initloop("cyber.ogg");
/// CODE
        global.currentsong[0] = snd_init("cyber.ogg", false);
        global.currentsong[1] = mus_loop(global.currentsong[0]);
/// END