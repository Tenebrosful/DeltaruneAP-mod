/// PATCH

/// REPLACE
    mus_volume(global.currentsong[1], 1, 0);
    reset_pos();
    stopcon = 0;
    con = 0;
    kris_y = y - 80;
    fake_v = 0;
    draw_kris = 0;
    obj_mainchara.cutscene = 0;
    
    with (kr_actor)
    {
        obj_mainchara.x = x;
        obj_mainchara.y = y;
    }
    
    obj_mainchara.x -= 6;
    
    with (obj_mainchara)
        scr_depth();
    
    obj_mainchara.sprite_index = spr_krisd_dark;
    global.facing = 0;
    obj_mainchara.visible = true;
    global.cinstance[0].visible = true;
    
    with (su_actor)
    {
        global.cinstance[0].x = x;
        global.cinstance[0].y = y;
    }
    
    scr_caterpillar_interpolate("all");
    
    with (kr_actor)
        instance_destroy();
    
    with (su_actor)
        instance_destroy();
    
    global.interact = 0;
}
/// CODE
    mus_volume(global.currentsong[1], 1, 0);
    stopcon = 4;
    kris_y = y - 80;
    fake_v = 0;
    draw_kris = 0;
    obj_mainchara.cutscene = 0;
    
    with (kr_actor)
    {
        obj_mainchara.x = x;
        obj_mainchara.y = y;
    }
    
    obj_mainchara.x -= 6;
    
    with (obj_mainchara)
        scr_depth();
    
    obj_mainchara.sprite_index = spr_krisd_dark;
    global.facing = 0;
    obj_mainchara.visible = true;
    global.cinstance[0].visible = true;
    
    with (su_actor)
    {
        global.cinstance[0].x = x;
        global.cinstance[0].y = y;
    }
    
    scr_caterpillar_interpolate("all");
    
    with (kr_actor)
        instance_destroy();
    
    with (su_actor)
        instance_destroy();
    
    if (global.flag[1358] > 1)
    {
        scr_speaker("susie");
        msgsetloc(0, "\\E6* ...?/", "obj_dw_leave_flowery_slash_Step_0_gml_127_0");
        msgnextloc("\\EA* Oh yeah^1, if we gotta^1, we can use this to get back to Castle Town./%", "obj_dw_leave_flowery_slash_Step_0_gml_127_0");
        d_make();
    }
}

if (stopcon == 4 && !d_ex())
{
    global.interact = 0;
    stopcon = 0;
    con = 0;
    global.customflags[global.custom_flags_indexes.discovered_ch5_leave_dw] = 1;
}

if (!(instance_exists(obj_platswap) || instance_exists(obj_plat_player)))
{
    if (con == 0 && global.customflags[global.custom_flags_indexes.discovered_ch5_leave_dw] == 1)
    {
        instance_create(x, y, obj_dw_leave);
        
        with (obj_dw_leave_flowery)
            instance_destroy();
    }
}
/// END