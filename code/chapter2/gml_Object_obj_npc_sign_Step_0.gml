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
/// END