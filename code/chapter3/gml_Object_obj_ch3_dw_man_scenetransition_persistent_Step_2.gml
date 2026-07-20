/// PATCH

/// REPLACE
    if (timer == 92)
    {
        room_goto(room_dw_green_room);
        setinplace = 1;
    }
    
    if (timer > 136 && room == room_dw_green_room)
    {
        timer = 0;
        con = 2;
        
        with (obj_border_controller)
            stop_custom_effect();
    }
/// CODE
    if (timer == 92)
    {
        room_goto(room_dw_teevie_ribbicks_a);
        setinplace = 1;
    }
    
    if (timer > 136 && room == room_dw_teevie_ribbicks_a)
    {
        timer = 0;
        con = 2;
        
        with (obj_border_controller)
            stop_custom_effect();
    }
/// END