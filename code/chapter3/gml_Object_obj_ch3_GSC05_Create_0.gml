/// PATCH

/// REPLACE
    visited_tenna = scr_flag_get(1208) > 0;
/// CODE
    visited_tenna = scr_flag_get(1208) > 0;
    
    if (global.plot >= 250)
        visited_tenna = 1;

    if (global.plot >= 320)
        visited_tenna = 0;
/// END