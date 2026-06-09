/// PATCH

/// APPEND
if (room == room_dw_teevie_intro)
{
    if (global.customflags[global.custom_flags_indexes.ch3_warp_state] < 2)
        global.customflags[global.custom_flags_indexes.ch3_warp_state] = 1;
}

if (room == room_dw_b3bs_jail1)
    global.customflags[global.custom_flags_indexes.ch3_warp_state] = 2;
/// END

/// REPLACE
    if (global.plot < 280)
/// CODE
    if (global.plot < 70)
/// END