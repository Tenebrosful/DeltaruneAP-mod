/// PATCH

/// REPLACE
        blueflame = instance_create(info[2], info[3], obj_dw_church_warpflame);
/// CODE
        if (global.flag[850] < 5)
            blueflame = instance_create(info[2], info[3], obj_dw_church_warpflame);
        else
            blueflame = instance_create(info[2], info[3] - 40, obj_dw_church_warpflame);
/// END

/// REPLACE
        with (instance_create(info[2], info[3], obj_solidblock))
        {
            sprite_index = spr_pxwhite;
            image_blend = c_black;
            depth = layer_get_depth("Tiles_new_midground") - 10;
            scr_size(info[4], info[5]);
        }
/// CODE
        with (instance_create(info[2], info[3], obj_solidblock))
        {
            sprite_index = spr_pxwhite;
            image_blend = c_black;
            depth = layer_get_depth("Tiles_new_midground") - 10;
            scr_size(info[4], info[5]);

            if (global.flag[850] >= 5)
                instance_destroy();
        }
/// END