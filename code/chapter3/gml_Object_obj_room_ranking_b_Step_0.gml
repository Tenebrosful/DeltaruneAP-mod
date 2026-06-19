/// PATCH

/// REPLACE
        scr_keyitemget(18);
/// CODE
        AP_sendLocation(169);
/// END

/// AFTER
    if (numentry.result != -1)
    {
/// CODE
        var nogold = false;
        var remainingSuperPrize = 5 - (global.flag[1177] + global.flag[1178] + global.flag[1179] + global.flag[1180] + global.flag[1181]);
        
        if (remainingSuperPrize == 0)
            nogold = true;
        
/// END

/// AFTER
            global.interact = 1;
            timer = 0;
            gacha_con = 120;
/// CODE
            
            if (nogold == false)
            {
                global.flag[1044] -= 1225;
                
                if (global.flag[1044] < 1)
                    global.flag[1044] = 0;
                
                AP_sendLocation([130, 131, 132, 133, 134]);
            }
/// END
