/// PATCH

/// BEFORE
            room_goto(nextroom);
        }
    }
/// CODE
            
            if (scr_havechar(3) && room == room_dw_church_darkmaze)
            {
                scr_losechar();
                scr_getchar(2);
            }
            
/// END