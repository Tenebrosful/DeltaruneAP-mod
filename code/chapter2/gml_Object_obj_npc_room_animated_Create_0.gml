/// PATCH

/// REPLACE
    if (scr_keyitemcheck(10) == 0)
/// CODE
    if (global.customflags[15] == 0)
/// END

/// REPLACE
    if (scr_keyitemcheck(10) == 1 || global.flag[309] >= 7)
/// CODE
    if (global.customflags[15] == 1 || global.flag[309] >= 7)
/// END

/// APPEND
if (room == room_dw_mansion_east_4f_b)
{
    if (!file_exists("super.flag") || scr_sideb_get_phase() > 2)
    {
        instance_destroy();
    }
    else if (global.flag[309] == 9)
    {
        sprite_index = spr_omawaroid_idle;
        x = 800;
        y = 200;
        scr_depth();
    }
    else
    {
        sprite_index = spr_omawaroid_idle;
        mywall = instance_create(x + 20, y, obj_soliddark);
        mywall.image_xscale = 1;
        mywall.image_yscale = 4;
        scr_depth();
    }
}

/// END