/// PATCH

/// APPEND

if (room == room_cc_6f && y < 170)
{
    if ((global.MacGuffin_count >= global.AP_macguffin_required[0] && (!global.AP_secret_bosses_mandatory || global.flag[241] >= 6))
    {
        instance_destroy();
    }
    else if (y == 80)
    {
        sprite_index = spr_throneroom_door;
        visible = 1;
        image_xscale = 2;
        image_yscale = 2;
    }
    else
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 3;
        mywall.image_yscale = 1;
    }
}

if (room == room_castle_outskirts && x == 300 && y == 240)
{
    if (global.flag[100] == 0)
    {
        shine = scr_dark_marker(x + 20, y - 30, spr_shine);
        shine.image_speed = 0.1;
    }
}

if (room == room_castle_darkdoor)
{
    if (scr_keyitemcheck(1000) == 0)
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 2;
        mywall.image_yscale = 1;
    }
    else
    {
        instance_destroy();
    }
}

if (room == room_forest_area3 && x == 520 && y == 120)
{
    if (scr_keyitemcheck(1001) == 0)
    {
        shine = scr_dark_marker(x + 20, y + 10, spr_shine);
        shine.image_speed = 0.1;
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 2;
        mywall.image_yscale = 1;
    }
    else
    {
        instance_destroy();
    }
}

if (room == room_forest_savepoint1)
{
    if (global.customflags[4] == 0)
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 0.5;
        mywall.image_yscale = 3;
    }
    else
    {
        instance_destroy();
    }
}

if (room == room_forest_savepoint3)
{
    if (scr_keyitemcheck(1003) == 0 && global.unlocked_buttons[3] == 0)
    {
        mywall = instance_create(x, y, obj_soliddark);
        mywall.image_xscale = 1;
        mywall.image_yscale = 2;
        shine = scr_dark_marker(x, y, spr_shine);
        shine.image_speed = 0.1;
    }
    else
    {
        instance_destroy();
    }
}
/// END