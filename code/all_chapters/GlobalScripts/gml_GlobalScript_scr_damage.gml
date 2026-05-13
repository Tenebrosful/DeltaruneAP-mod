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