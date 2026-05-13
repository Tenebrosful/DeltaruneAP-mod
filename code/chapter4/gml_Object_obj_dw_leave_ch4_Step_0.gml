/// PATCH

/// BEFORE
    contimer = 0;
    con = 11;
}
/// CODE
    if (instance_exists(obj_caterpillarchara) && scr_havechar(2) && room == room_dw_church_darkmaze)
    {
        su_actor = instance_create_depth(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].depth, obj_actor);
        su_actor.__x = sus_x;
        su_actor.__y = sus_y + 8;
        su_walktime = scr_calculate_move_distance(su_actor.x, su_actor.y, su_actor.__x, su_actor.__y, 4) / 2;
        var walktime = su_walktime;
        kr_walktime = walktime;
        
        with (su_actor)
        {
            sprite_index = global.cinstance[0].sprite_index;
            scr_set_facing_sprites("susie");
            scr_move_to_point_over_time(__x, __y, walktime);
        }
        
        with (global.cinstance[0])
            visible = 0;
    }
    
    with (obj_caterpillarchara)
    {
        if (visible == 1 && room == room_dw_church_darkmaze)
        {
            me = scr_dark_marker_depth(x, y, 510000, sprite_index);
            visible = 0;
        }
    }
    
/// END

/// REPLACE
        with (obj_actor)
        {
            if (name == "kris")
                visible = 0;
        }
/// CODE
        with (obj_actor)
        {
            if (name == "kris" || room == room_dw_church_darkmaze)
                visible = 0;
        }
/// END