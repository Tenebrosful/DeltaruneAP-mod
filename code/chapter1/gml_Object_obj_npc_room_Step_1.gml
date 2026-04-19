/// PATCH

/// APPEND

if (global.customflags[4] == 1 && room == room_forest_savepoint1 && x >= 500 && instance_exists(obj_dialoguer) == false)
{
    x += 5;
    global.interact = 1;
    
    if (x >= 640)
    {
        global.interact = 0;
        instance_destroy();
    }
}

if (global.customflags[9] && room == room_forest_savepoint3 && x < 680 && instance_exists(obj_dialoguer) == false)
{
    if (image_xscale > 0)
    {
        image_xscale = -image_xscale
    }

    x += 20;
    global.interact = 1;

    if (x >= 680)
    {
        instance_destroy();
        if (instance_exists(obj_dialoguer) == false)
            global.interact = 0;
    }
}
/// END