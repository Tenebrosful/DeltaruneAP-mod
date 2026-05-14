/// PATCH

/// REPLACE
    global.maxhp[1] = clamp(global.maxhp[1], 10, 160);
    global.maxhp[2] = clamp(global.maxhp[2], 10, 190);
    global.maxhp[3] = clamp(global.maxhp[3], 10, 140);
    global.maxhp[4] = clamp(global.maxhp[4], 10, 999);
/// CODE
    if (global.maxhp[1] > 0)
        global.maxhp[1] = clamp(global.maxhp[1], 10, 160);
    if (global.maxhp[2] > 0)
        global.maxhp[2] = clamp(global.maxhp[2], 10, 190);
    if (global.maxhp[3] > 0)
        global.maxhp[3] = clamp(global.maxhp[3], 10, 140);
    if (global.maxhp[4] > 0)
        global.maxhp[4] = clamp(global.maxhp[4], 10, 999);
/// END