/// PATCH

/// REPLACE
            scr_become_light();
/// CODE
            if (global.plot < 200)
                scr_become_light();
            
            if (global.plot >= 200 && global.plot < 295)
            {
                if (nextroom == 53)
                    scr_flag_set(1311, 0);
                else
                    scr_flag_set(1311, 1);
            }
/// END

