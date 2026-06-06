/// PATCH

/// APPEND
if (global.customflags[global.custom_flags_indexes.castle_key_used] && room == room_forest_savepoint3 && x < 680 && instance_exists(obj_dialoguer) == false)
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