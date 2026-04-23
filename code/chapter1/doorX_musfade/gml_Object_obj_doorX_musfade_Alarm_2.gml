/// PATCH

/// REPLACE
if (room == room_man)
    room_goto(room_forest_savepoint2);
/// CODE
if (room == room_man)
    room_goto(room_forest_area5);
/// END

/// REPLACE
    ch = ceil(random(50));
    
    if (ch == 50 && global.flag[910] == 0)
/// CODE
    ch = ceil(random(5));
    
    if (ch == 5 && global.flag[910] == 0)
/// END