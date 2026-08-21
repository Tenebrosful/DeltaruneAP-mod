/// PATCH

/// APPEND
if (room == room_forest_savepoint3 && global.customflags[global.custom_flags_indexes.castle_key_used] && x < 680 && instance_exists(obj_dialoguer) == false)
{
    if (image_xscale > 0)
    {
        image_xscale = -image_xscale
    }

    x += 10;
    global.interact = 1;

    if (x >= 680)
    {
        with (mywall)
            instance_destroy();
        
        if (instance_exists(obj_dialoguer) == false)
            global.interact = 0;
        
        instance_destroy();
    }
}

if (room == room_forest_afterthrash2 && extflag == "gotoprisonskip" && !instance_exists(obj_dialoguer) && skiptoprison)
{
    scr_losechar();
    snd_free_all();
    room_goto(room_cc_prison_cells);
}
/// END