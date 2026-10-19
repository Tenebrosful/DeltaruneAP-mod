/// PATCH

/// REPLACE
if (!(room == room_dw_city_poppup && global.flag[915] == 6 && global.flag[916] == 0 && global.entrance == 24))
/// CODE
if (!(room == room_dw_city_poppup && global.flag[915] >= 6 && global.flag[916] == 0 && global.entrance == 24))
/// END

/// REPLACE
    if (scr_sideb_get_phase() == 2)
/// CODE
    if (scr_sideb_get_phase() >= 2)
/// END