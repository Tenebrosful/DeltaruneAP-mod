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
#elsif CHAPTER_4
/// REPLACE
    for (var i = 0; i < 5; i += 1)
    {
        if (global.hp[i] < 1)
            global.hp[i] = round(global.maxhp[i] / 8);
    }
/// CODE
    for (var i = 0; i < 5; i += 1)
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
/// END
#endif

/// AFTER
if (global.myfight == 0)
{
/// CODE
    if (global.charturn == 0 && global.maxhp[global.char[0]] <= 0)
        scr_nexthero();
/// END