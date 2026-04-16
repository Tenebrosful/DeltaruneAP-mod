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

if (global.customflags[5] == 1 && room == room_forest_savepoint3 && instance_exists(obj_dialoguer) == false)
{
    if (x <= 280)
    {
        y += 10;
        global.interact = 1;
        
        if (y >= 480)
        {
            global.interact = 0;
            instance_destroy();
        }
    }
    else
    {
        x -= 10;
        global.interact = 1;
    }
}
/// END