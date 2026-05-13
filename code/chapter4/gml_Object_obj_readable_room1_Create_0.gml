/// PATCH

/// APPEND

if (room == room_dw_church_darkmaze)
{
    if (global.customflags[37] == 1 || global.plot < 160)
    {
        instance_destroy();
    }
    else
    {
        mywall = instance_create(x, y, obj_solidblocksized);
        
        with (mywall)
        {
            image_xscale = 6;
            image_yscale = 2;
        }
    }
}

if (room == room_dw_churchc_savepoint)
{
    image_index = 0;
    sprite_index = spr_dw_church_door_fancy;
    image_xscale = 2;
    image_yscale = 2;
    visible = 1;
    mywall = instance_create(x, y - 120, obj_solidblocksized);
    
    if (global.customflags[33] == 1 || file_exists("ch5.route") || scr_ap_get_macguffin_amount() == 0)
        image_index = 1;
    
    with (mywall)
    {
        image_xscale = 4;
        image_yscale = 6;
        
        if (global.customflags[33] == 1 || file_exists("ch5.route") || scr_ap_get_macguffin_amount() == 0)
            instance_destroy();
    }
}

/// END