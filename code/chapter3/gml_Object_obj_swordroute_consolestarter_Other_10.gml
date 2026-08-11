/// PATCH

/// REPLACE
    buff = 3;
    con = 1;
/// CODE
    if (global.maxhp[1] <= 0 && global.customflags[global.custom_flags_indexes.SWORD_progression] == 2)
    {
        global.interact = 1;
        con = 12;
    }
    else
    {
        buff = 3;
        con = 1;
    }
/// END