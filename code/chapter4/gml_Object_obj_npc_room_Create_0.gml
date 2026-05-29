/// PATCH

/// APPEND
    if (room == room_dw_church_jackenstein && x == 320)
    {
        sprite_index = spr_bibliox_talk;
        depthcancel = 1;
        depth = 900000;
        
        if (scr_keyitemcheck(31))
            instance_destroy();
    }

    if ((room == room_dw_church_gersonstudy && x == 600) || (room == room_dw_church_knightclimb_post && x == 160))
    {
        sprite_index = spr_npc_originalstarwalker;
        extflag = "tp_to_arena_npc";

        if (global.plot < 243)
        {
            depthcancel = true;
            instance_destroy();
        }
    }
/// END