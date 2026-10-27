/// PATCH

/// REPLACE

if (global.plot < 320)
{
    var treasure_screen_left = instance_create(0, 0, obj_dw_teevie_tv_screens_treasure);
    
    with (treasure_screen_left)
    {
        x = 320;
        y = 800;
        width = 6;
        height = 3;
        depth = _target_depth;
        tvbasesprite = spr_dw_teevie_tv_base;
        set_secret(1224, 1);
    }
}
else
{
    var tv_screen = instance_create(320, 800, obj_dw_teevie_tv_screens);
    
    with (tv_screen)
    {
        x = 320;
        y = 800;
        width = 6;
        height = 3;
        depth = _target_depth;
        tvbasesprite = spr_dw_teevie_tv_base;
    }
    
    var door_collider = instance_create(560, 960, obj_solidblocksized);
    
    with (door_collider)
    {
        image_xscale = 2;
        image_yscale = 2;
    }
}
/// CODE
var treasure_screen_left = instance_create(0, 0, obj_dw_teevie_tv_screens_treasure);

with (treasure_screen_left)
{
    x = 320;
    y = 800;
    width = 6;
    height = 3;
    depth = _target_depth;
    tvbasesprite = spr_dw_teevie_tv_base;
    set_secret(1224, 1);
}

if global.plot >= 320
{
    scr_flag_set(1161, 1);
    scr_flag_set(1151, 1);
}
/// END