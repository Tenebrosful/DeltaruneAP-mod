/// PATCH

/// REPLACE
if (global.plot >= 150 && global.plot < 205)
/// CODE
if (global.plot >= 150 && global.plot < 280)
/// END

/// REPLACE
else if (scr_flag_get(1055) >= 3)
/// CODE
else
/// END

/// REPLACE
else
{
    with (obj_doorAny)
    {
        if (x <= 200)
            instance_destroy();
    }
    
    var left_door_block = instance_create(200, 160, obj_solidblocksized);
    
    with (left_door_block)
        image_xscale = 4;
    
    var door_readable = instance_create(left_door_block.x, left_door_block.y, obj_readable_room1);
    
    with (door_readable)
    {
        image_xscale = 8;
        extflag = "door_blocked";
    }
}
/// CODE
/// END

/// REPLACE
if (global.plot >= 280 && global.flag[1055] >= 3 && global.flag[1055] < 6)
/// CODE
if (global.plot >= 280 && scr_keyitemcheck(16) && global.flag[1055] < 6)
/// END