/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

/// REPLACE
    global.maxhp[1] = clamp(global.maxhp[1], 10, krismaxhp);
    global.maxhp[2] = clamp(global.maxhp[2], 10, susiemaxhp);
    global.maxhp[3] = clamp(global.maxhp[3], 10, ralseimaxhp);
    global.maxhp[4] = clamp(global.maxhp[4], 10, 999);
/// CODE
    if (global.maxhp[1] > 0)
        global.maxhp[1] = clamp(global.maxhp[1], 10, krismaxhp);
    if (global.maxhp[2] > 0)
        global.maxhp[2] = clamp(global.maxhp[2], 10, susiemaxhp);
    if (global.maxhp[3] > 0)
        global.maxhp[3] = clamp(global.maxhp[3], 10, ralseimaxhp);
    if (global.maxhp[4] > 0)
        global.maxhp[4] = clamp(global.maxhp[4], 10, 999);
/// END