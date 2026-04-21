/// PATCH

/// REPLACE
    scr_weaponget(21);
    
    if (noroom == 1)
        global.flag[468] = 2;
    
    if (scr_keyitemcheck(13) == 0)
        scr_keyitemget(13);
}
/// CODE
    scr_checkspot(97);
    scr_checkspot(98);
    scr_checkspot(99);
}
/// END