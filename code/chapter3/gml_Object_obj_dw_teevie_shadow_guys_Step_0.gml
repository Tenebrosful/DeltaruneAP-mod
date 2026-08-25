/// PATCH

/// REPLACE
    if (timer == 45)
    {
        global.flag[654] += 0.04;
        
        if (global.flag[654] > 1)
            global.flag[654] = 1;
/// CODE
    if (timer == 45)
    {
        global.flag[654] += 0.04;
        
        if (global.flag[654] > 1)
        {
            global.flag[654] = 1;
            AP_sendLocation(164);
        }
/// END