/// PATCH

/// AFTER
        target = _temptarget;
/// CODE
        is_all_dead = global.hp[global.char[0]] <= 0 && global.hp[global.char[1]] <= 0 && global.hp[global.char[2]] <= 0;
        
        if (is_all_dead)
            scr_gameover();
/// END