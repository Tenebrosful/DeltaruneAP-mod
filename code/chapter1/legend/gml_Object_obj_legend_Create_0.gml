/// PATCH

/// REPLACE
subsubcon = 0;
/// CODE
/// END

/// REPLACE
global.currentsong[1] = mus_play(global.currentsong[0]);
/// CODE
if (global.AP_ost_shuffle)
    global.currentsong[1] = mus_loop(global.currentsong[0]);
else
    global.currentsong[1] = mus_play(global.currentsong[0]);
/// END