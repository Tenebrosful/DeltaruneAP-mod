/// PATCH

/// REPLACE
    customcon = 0;
    global.plot = 110;
/// CODE
    customcon = 0;
    if (global.plot < 110)
        global.plot = 110;
/// END

/// REPLACE
    con = -1;
    global.plot = 110;
    room_goto(room_ch3_gameshowroom);
/// CODE
    con = -1;
    if (global.plot < 110)
    {
        global.plot = 110;
        room_goto(room_ch3_gameshowroom);
    }
    else
    {
        global.retry_board = false;
        room_goto(room_dw_green_room);
    }
/// END