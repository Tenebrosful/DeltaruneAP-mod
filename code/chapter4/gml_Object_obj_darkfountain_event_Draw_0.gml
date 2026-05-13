/// PATCH

/// REPLACE
    if (global.chapter == 4)
        room_goto(room_lw_church_main);
/// CODE
    if (global.chapter == 4)
    {
        room_goto(room_lw_church_main);
        AP_complete_chapter(4);
    }
/// END