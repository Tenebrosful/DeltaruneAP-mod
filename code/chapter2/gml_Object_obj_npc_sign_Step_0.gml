/// PATCH

/// APPEND
if (room == room_dw_cyber_teacup_final)
    depth = 880000;

if (room == room_dw_cyber_teacup_final && global.customflags[11] == 1 && global.plot < 64 && instance_exists(obj_dialoguer) == false)
{
    if (y > 1615)
    {
        y -= 5;
        global.interact = 1;
    }
    else
    {
        global.interact = 0;
    }
}

if (room == room_dw_mansion_entrance && global.customflags[13] == 1 && instance_exists(obj_dialoguer) == false && y == 240 && x >= 800)
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