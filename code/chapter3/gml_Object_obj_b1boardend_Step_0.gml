/// PATCH

/// REPLACE
            global.plot = 110;
            global.interact = 1;
            room_goto(room_ch3_gameshowroom);
/// CODE
            if (global.plot < 110)
            {
              global.interact = 1;
              global.plot = 110;
              room_goto(room_ch3_gameshowroom);
            }
            else
            {
              global.interact = 0;
              global.retry_board = false;
              room_goto(room_dw_green_room);
            }
/// END