/// PATCH

/// REPLACE
        if (place_meeting(x, y, obj_mainchara))
/// CODE
        if (place_meeting(x, y, obj_mainchara) && (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0))
/// END