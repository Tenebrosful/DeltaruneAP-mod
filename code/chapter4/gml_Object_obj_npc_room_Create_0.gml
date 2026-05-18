/// PATCH

/// APPEND
    if (room == room_dw_church_jackenstein && x == 320)
    {
        sprite_index = spr_bibliox_talk;
        depthcancel = 1;
        depth = 900000;
        mywall = instance_create(520, 276, obj_solidblocksized);
        
        if (scr_keyitemcheck(1022))
        {
            with (mywall)
                instance_destroy();
        }
        
        if (scr_keyitemcheck(31))
            instance_destroy();
    }

    if (room == room_dw_church_gersonstudy || room_dw_church_knightclimb_post)
    {
        sprite_index = spr_npc_originalstarwalker;
        extflag = "tp_to_arena_npc";

        if (global.plot < 243)
            instance_destroy();
    }
/// END