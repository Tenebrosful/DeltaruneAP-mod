/// PATCH

/// APPEND
if (room == room_dw_mansion_entrance && global.customflags[13] == 1 && instance_exists(obj_dialoguer) == false)
{
    if (x < 970)
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