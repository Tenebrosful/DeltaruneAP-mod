/// PATCH

/// REPLACE
subsubcon = 0;
/// CODE
/// END

/// REPLACE
global.currentsong[1] = mus_play(global.currentsong[0]);
/// CODE
global.currentsong[1] = mus_loop(global.currentsong[0]);
/// END