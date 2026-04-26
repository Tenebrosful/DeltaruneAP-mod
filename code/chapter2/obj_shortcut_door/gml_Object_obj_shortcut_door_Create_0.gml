/// PATCH

/// REPLACE
    if (global.plot < 100)
/// CODE
    if (global.plot < 120)
/// END

/// REPLACE
if (global.chapter == 2 && room == room_dw_mansion_entrance && scr_sideb_get_phase() > 2)
    on = 0;
/// CODE
if (room == room_dw_mansion_entrance)
    global.customflags[17] = 1;
/// END