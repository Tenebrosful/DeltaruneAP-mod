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
/// END

/// APPEND

if (room == room_dw_cyber_musical_door)
    AP_sendLocation(104);

if (room == room_dw_city_intro)
    AP_sendLocation(105);

if (room == room_dw_mansion_entrance)
    AP_sendLocation(106);
/// END