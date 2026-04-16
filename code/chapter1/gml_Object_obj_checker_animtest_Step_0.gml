/// PATCH

/// AFTER
    if (con == 32)
    {
/// CODE
        global.customflags[2] = 1;
        
/// END

/// REPLACE
        scr_losechar();
/// CODE
        scr_losechar(2);
        scr_getchar(3);
        global.charauto[2] = 1;
/// END