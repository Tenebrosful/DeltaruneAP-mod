/// PATCH

/// APPEND
if (con == 0 && (extflag == "floweryleaveleft" || extflag == "floweryleaveright"))
{
    if (d_ex())
    {
        con = 1;
    }
    else
    {
        global.interact = 1;
        mydialoguer = instance_create(0, 0, obj_dialoguer);
    }
}

if (con == 1 && !d_ex())
{
    if (extflag == "floweryleaveleft")
    {
        sprite_index = spr_flowery_walk_left_jacket_hand_up;
        image_speed = 0.125;
        x -= 5;
        global.interact = 1;
        
        if (x < -80)
        {
            global.interact = 0;
            instance_destroy();
        }
    }
    
    if (extflag == "floweryleaveright")
    {
        sprite_index = spr_flowery_walk_right_jacket;
        image_speed = 0.125;
        x += 5;
        global.interact = 1;
        
        if (x > 960)
        {
            global.interact = 0;
            instance_destroy();
        }
    }
}

/// END