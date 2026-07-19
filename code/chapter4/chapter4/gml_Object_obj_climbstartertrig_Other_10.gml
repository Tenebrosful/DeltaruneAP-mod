/// PATCH

/// REPLACE
        if (global.flag[23] == 1 || global.plot >= 180)
/// CODE
        if ((global.flag[23] == 1 || global.plot >= 180) && (((global.customflags[global.custom_flags_indexes.accepted_dark_sanctuary_skip] == 1 || global.maxhp[2] > 0) && scr_havechar(3)) || room != room_dw_church_intropiano))
/// END
