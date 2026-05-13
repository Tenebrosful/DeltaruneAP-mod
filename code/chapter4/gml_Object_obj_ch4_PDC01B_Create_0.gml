/// PATCH

/// PREPEND
if (global.AP_route == "weird_route")
    global.flag[915] = 20;
/// END

/// REPLACE
    can_sleep = global.tempflag[41] == 1 && !scr_sideb_active();
/// CODE
    can_sleep = !scr_sideb_active();
/// END