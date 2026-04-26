/// PATCH

/// REPLACE
    scr_weaponget(21);
    
    if (noroom == 1)
        global.flag[468] = 2;
    
    if (scr_keyitemcheck(13) == 0)
        scr_keyitemget(13);
}
/// CODE
    AP_sendLocation([97, 98, 99]);
}
/// END