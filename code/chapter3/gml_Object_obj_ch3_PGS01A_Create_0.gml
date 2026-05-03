/// PATCH

/// PREPEND
if (global.AP_route == "weird_route")
    global.flag[915] = 20;
/// END

/// REPLACE
    if (scr_flag_get(1021) == 0)
    {
        con = 99;
        left_couch = true;
        
        if (global.tempflag[40] == 1)
        {
            with (couch)
                show_sparkle();
        }
/// CODE
    if (scr_flag_get(1021) == 0)
    {
        con = 99;
        
        with (couch)
            show_sparkle();
/// END