/// PATCH

/// APPEND
if (room == room_dw_mansion_entrance && global.customflags[global.custom_flags_indexes.mansion_reservation_used] && instance_exists(obj_dialoguer) == false)
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