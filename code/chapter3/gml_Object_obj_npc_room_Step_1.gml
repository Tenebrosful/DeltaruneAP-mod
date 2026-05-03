/// PATCH

/// APPEND
if (room == room_dw_teevie_intro && extflag == "zapper" && global.customflags[24] == 1 && instance_exists(obj_dialoguer) == false && y == 140 && x >= 1940)
{
    image_index = 0;
    image_speed = 0.2;
    
    if (x < 2100)
    {
        x += 10;
        global.interact = 1;
    }
    else
    {
        global.interact = 0;
        instance_destroy();
    }
}

/// END