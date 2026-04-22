/// PATCH

/// AFTER
            if (global.plot < 200)
            {
/// CODE
                if (global.plot >= 50 && global.plot < 200)
                    instance_destroy();
                
/// END

/// REPLACE
        if (x > 1000)
        {
            if (global.flag[309] == 9)
/// CODE
        if (x > 1000)
        {
            if (global.flag[309] == 9 && global.customflags[12] == 1)
/// END