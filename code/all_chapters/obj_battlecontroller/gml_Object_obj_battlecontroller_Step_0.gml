/// PATCH

#if CHAPTER_1
/// REPLACE
    for (i = 0; i < 4; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (i = 0; i < 4; i += 1)
    {
        if (global.hp[i] < 1 && global.maxhp[i] > 0)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// END
#else
/// REPLACE
    for (i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1 && global.maxhp[i] > 0)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
#endif