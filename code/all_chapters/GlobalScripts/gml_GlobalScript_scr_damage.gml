/// PATCH

/// REPLACE
                with (global.charinstance[target])
                {
                    image_blend = c_white;
                    darkify = 0;
                }
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
#if CHAPTER_3
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