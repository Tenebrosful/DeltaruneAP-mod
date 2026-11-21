/// PATCH

/// REPLACE
            if (!instance_exists(obj_pink_curtains))
                instance_create_depth(x, y - 88, depth - 10, obj_pink_curtains);
        }
        
        with (obj_pink_curtains)
            difficulty = other.difficulty;
        
        global.turntimer = 425;
        
        if (difficulty > 0)
            global.turntimer += 80;
    }
    
    if (difficulty == 0)
    {
        if (global.turntimer == 408)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart();
        }
    }
    
    if (difficulty > 0)
    {
        if (global.turntimer == 488)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart();
        }
    }
    
    with (obj_heart)
        wspeed = global.sp * 1.5;
/// CODE
            if (!instance_exists(obj_pink_curtains))
                instance_create_depth(x, y - 88, depth - 10, obj_pink_curtains);
        }
        
        with (obj_pink_curtains)
            difficulty = other.difficulty;
        
        global.turntimer = 425;
        
        if (difficulty > 0)
            global.turntimer += 80;
        
        with (obj_pink_curtains)
        {
            if v_ex("debug_turntimer")
                global.turntimer = 999999;
        }
    }
    
    if (difficulty == 0)
    {
        var turn_timer_val = 408;

        with (obj_pink_curtains)
        {
            if v_ex("debug_turntimer")
                other.turn_timer_val = 999999;
        }

        if (global.turntimer == turn_timer_val)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart();
        }
    }
    
    if (difficulty > 0)
    {
        var turn_timer_val = 488;

        with (obj_pink_curtains)
        {
            if v_ex("debug_turntimer")
                other.turn_timer_val = 999999;
        }

        if (global.turntimer == turn_timer_val)
        {
            if (!instance_exists(obj_moveheart))
                scr_moveheart();
        }
    }
    
    with (obj_heart)
        wspeed = global.sp * 1.5;
/// END