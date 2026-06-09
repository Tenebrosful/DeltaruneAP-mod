/// PATCH

/// REPLACE
    if (global.plot >= 121 && global.plot <= 129 && global.flag[1055] == 1)
/// CODE
    if (global.plot >= 121 && global.plot <= 129 && global.customflags[global.custom_flags_indexes.SWORD_progression] == 1)
/// END

/// REPLACE
    if (global.plot >= 160 && global.plot < 180 && global.flag[1055] == 3)
/// CODE
    if (global.plot >= 160 && global.plot < 280 && global.customflags[global.custom_flags_indexes.SWORD_progression] == 2)
/// END

/// REPLACE
    if (global.plot >= 180 && global.flag[1055] > 2 && global.flag[1055] < 6)
/// CODE
    if (global.plot >= 280 && global.flag[1055] > 2 && global.customflags[global.custom_flags_indexes.SWORD_progression] < 3)
/// END