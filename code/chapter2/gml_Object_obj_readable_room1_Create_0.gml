/// PATCH

/// AFTER
    if (room == room_schooldoor && x >= 270 && x <= 470)
    {
        dwt = instance_create(x, y, obj_dw_transition_interactable);
        dwt.image_xscale = image_xscale;
        dwt.image_yscale = image_yscale;
        instance_destroy();
    }
/// CODE
    if (room == room_dw_mansion_entrance)
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 2;
        mywall.image_yscale = 4;
        
        if (global.customflags[13] == 1)
        {
            with (mywall)
                instance_destroy();
            
            instance_destroy();
        }
    }
    
    if (room == room_dw_cyber_post_music_boss_slide && x == 360 && y == 2560)
    {
        if (global.customflags[36] == 1)
        {
            instance_destroy();
        }
        else
        {
            mywall = instance_create(x, y, obj_soliddark);
            mywall.image_xscale = 2;
            mywall.image_yscale = 4;
        }
    }
    
/// END