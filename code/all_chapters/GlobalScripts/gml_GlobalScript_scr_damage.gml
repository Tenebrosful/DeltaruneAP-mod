/// PATCH

/// REPLACE
#if CHAPTER_4
                    with (global.charinstance[target])
                    {
                        image_blend = c_white;
                        darkify = 0;
                    }
#else
                with (global.charinstance[target])
                {
                    image_blend = c_white;
                    darkify = 0;
                }
#endif
/// CODE
                if (target < 3)
                {
                    with (global.charinstance[target])
                    {
                        image_blend = c_white;
                        darkify = 0;
                    }
                }
/// END

/// REPLACE
#if CHAPTER_3 || CHAPTER_4
            with (global.charinstance[target])
            {
                image_blend = c_white;
                darkify = 0;
            }
#else
        with (global.charinstance[target])
        {
            hurt = 1;
            hurttimer = 0;
        }
#endif
/// CODE
        if (target < 3)
        {
            with (global.charinstance[target])
            {
                hurt = 1;
                hurttimer = 0;
            }
        }
/// END

#if CHAPTER_4
/// REPLACE
                if (i_ex(obj_climb_kris))
                    skipthis = true;
/// CODE
                if (i_ex(obj_climb_kris) || room == room_dw_church_staircase)
                    skipthis = true;
/// END

/// REPLACE
            if (__targx == -1)
            {
                __targx = global.charinstance[target].x;
                __targy = (global.charinstance[target].y + global.charinstance[target].myheight) - 24;
            }
/// CODE
            if (__targx == -1 && target < 3)
            {
                __targx = global.charinstance[target].x;
                __targy = (global.charinstance[target].y + global.charinstance[target].myheight) - 24;
            }
/// END

/// REPLACE
        if (!instance_exists(obj_shake))
            instance_create(0, 0, obj_shake);
        
        with (global.charinstance[target])
        {
            hurt = 1;
            hurttimer = 0;
        }
/// CODE
        if (!instance_exists(obj_shake))
            instance_create(0, 0, obj_shake);
        
        if (target < 3)
        {
            with (global.charinstance[target])
            {
                hurt = 1;
                hurttimer = 0;
            }
        }
/// END
#endif

#if CHAPTER_1
/// AFTER
    if (global.inv < 0 && debug_inv == 0)
    {
/// CODE
        skip_to_gameover = false;
        
        if (global.char[0] != 0 && global.hp[global.char[0]] <= 0)
            skip_to_gameover = true;
        
        if (global.char[1] != 0 && global.hp[global.char[1]] <= 0)
            skip_to_gameover = true;
        
        if (global.char[2] != 0 && global.hp[global.char[2]] <= 0)
            skip_to_gameover = true;
        
        if (skip_to_gameover)
        {
            scr_gameover();
            exit;
        }
/// END
#endif