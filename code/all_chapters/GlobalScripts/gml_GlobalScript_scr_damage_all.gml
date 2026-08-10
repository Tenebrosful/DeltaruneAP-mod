/// PATCH

/// AFTER
        target = _temptarget;
/// CODE
        is_all_dead = global.hp[global.char[0]] <= 0 && global.hp[global.char[1]] <= 0 && global.hp[global.char[2]] <= 0;
        
        if (is_all_dead)
            if (global.chapter == 3 && instance_exists(obj_knight_enemy))
            {
                global.hp[global.char[0]] = -180;
                global.hp[global.char[1]] = -999;
                global.hp[global.char[2]] = -999;
            }
            else
            {
                scr_gameover();
            }
/// END