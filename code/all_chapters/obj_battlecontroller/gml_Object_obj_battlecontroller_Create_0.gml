/// PATCH

/// REPLACE
        global.charmove[i] = 1;
        global.charcantarget[i] = 1;
        global.chardead[i] = 0;
/// CODE
        var isAlive = global.hp[global.char[i]] > 0;
        global.charmove[i] = isAlive;
        global.charcantarget[i] = isAlive;
        global.chardead[i] = !isAlive;
/// END

/// APPEND
if (scr_should_entering_battle_gameover())
        scr_gameover();
/// END