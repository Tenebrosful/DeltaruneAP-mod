/// PATCH

/// REPLACE
        global.charcantarget[i] = 1;
/// CODE
        global.charcantarget[i] = global.hp[global.char[i]] > 0;
/// END

/// APPEND
if (scr_should_entering_battle_gameover())
        scr_gameover();
/// END