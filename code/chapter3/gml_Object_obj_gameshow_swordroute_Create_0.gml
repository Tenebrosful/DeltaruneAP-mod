/// PATCH

/// REPLACE
    if (global.plot >= 121 && global.plot <= 129 && global.flag[1055] == 1)
/// CODE
    if (global.plot >= 121 && global.plot <= 129 && global.customflags[22] == 1)
/// END

/// REPLACE
    if (global.plot >= 160 && global.plot < 180 && global.flag[1055] == 3)
/// CODE
    if (global.plot >= 160 && global.plot < 280 && global.customflags[22] == 2)
/// END

/// REPLACE
    if (global.plot >= 180 && global.flag[1055] > 2 && global.flag[1055] < 6)
/// CODE
    if (global.plot >= 280 && global.flag[1055] > 2 && global.customflags[22] < 3)
/// END