/// PATCH

/// REPLACE
    snow_vfx.bgdepth = 9999;
    
    with (zapper_npc)
        instance_destroy();
/// CODE
    snow_vfx.bgdepth = 9999;
    
    with (zapper_npc)
    {
        if (global.customflags[28] == 1)
            instance_destroy();
        else
            extflag = "zapper_cold";
    }
/// END

/// REPLACE
        extflag = "zapper_board_2";
        
        if (scr_flag_get(1113) == 2 || scr_flag_get(1114) == 1)
            instance_destroy();
/// CODE
        if (global.plot >= 250)
        {
            extflag = "zapper_board_3";
        }
        else
        {
            extflag = "zapper_board_2";
            
            if (scr_flag_get(1113) == 2 || scr_flag_get(1114) == 1)
                instance_destroy();
        }
/// END

/// REPLACE
    var lancer_spin = instance_create(1020, 400, obj_dw_ch3_lancer_spin);
    
    with (lancer_spin)
        depth = 96000;
    
    var throuple_marker = scr_dark_marker(806, 190, spr_npc_rouxls_weather_gaming_chef);
    
    with (throuple_marker)
    {
        image_speed = 0.2;
        scr_depth();
    }
    
    var rouxls_readable = instance_create(828, 242, obj_readable_room1);
    
    with (rouxls_readable)
    {
        image_yscale = 3;
        image_xscale = 5;
        extflag = "rouxls";
    }
/// CODE
    if (global.plot >= 250)
    {
        with (obj_doorAny)
        {
            if (x <= 40)
                instance_destroy();
        }
        
        var door_readable = instance_create(64, 160, obj_readable_room1);
        
        with (door_readable)
        {
            extflag = "left_door_exit";
            image_xscale = 2;
            image_yscale = 2;
        }
    }
    
    if (global.plot < 250)
    {
        var lancer_spin = instance_create(1020, 400, obj_dw_ch3_lancer_spin);
        
        with (lancer_spin)
            depth = 96000;
        
        var throuple_marker = scr_dark_marker(806, 190, spr_npc_rouxls_weather_gaming_chef);
        
        with (throuple_marker)
        {
            image_speed = 0.2;
            scr_depth();
        }
        
        var rouxls_readable = instance_create(828, 242, obj_readable_room1);
        
        with (rouxls_readable)
        {
            image_yscale = 3;
            image_xscale = 5;
            extflag = "rouxls";
        }
    }
/// END