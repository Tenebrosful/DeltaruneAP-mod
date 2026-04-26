/// PATCH

/// REPLACE
    c_sel(ra);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_walkdirect(ra_actor.x, 302, 8);
    c_sel(su);
    c_walkdirect(su_actor.x, 298, 8);
    c_wait(8);
    c_sel(ra);
    c_walkdirect(520, 302, 30);
    c_sel(su);
    c_walkdirect(84, 298, 30);
    c_wait(31);
    c_facing("r");
    c_sel(ra);
    c_facing("l");

/// CODE
    
    if (scr_havechar(4))
    {
        c_sel(no);
        c_facing("u");
        c_walkdirect(no_actor.x, 298, 8);
        c_wait(8);
        c_walkdirect(84, 298, 30);
        c_wait(31);
        c_facing("r");
    }
    else if (scr_havechar(3))
    {
        c_sel(ra);
        c_facing("u");
        c_sel(su);
        c_facing("u");
        c_sel(ra);
        c_walkdirect(ra_actor.x, 302, 8);
        c_sel(su);
        c_walkdirect(su_actor.x, 298, 8);
        c_wait(8);
        c_sel(ra);
        c_walkdirect(520, 302, 30);
        c_sel(su);
        c_walkdirect(84, 298, 30);
        c_wait(31);
        c_sel(su);
        c_facing("r");
        c_sel(ra);
        c_facing("l");
    }
    
/// END

/// REPLACE
    npcral = instance_create(realral.x, realral.y, obj_npc_sign);
    npcral.sprite_index = spr_ralsei_walk_left;
    realral.visible = false;
    npcsus = instance_create(realsus.x, realsus.y, obj_npc_sign);
    npcsus.sprite_index = spr_susie_walk_right_dw;
    realsus.visible = false;
/// CODE
    if (scr_havechar(4))
    {
        npcnoe = instance_create(realnoe.x, realnoe.y, obj_npc_sign);
        npcnoe.sprite_index = spr_noelle_walk_right_dw;
        realnoe.visible = false;
    }
    else if (scr_havechar(3))
    {
        npcral = instance_create(realral.x, realral.y, obj_npc_sign);
        npcral.sprite_index = spr_ralsei_walk_left;
        realral.visible = false;
        npcsus = instance_create(realsus.x, realsus.y, obj_npc_sign);
        npcsus.sprite_index = spr_susie_walk_right_dw;
        realsus.visible = false;
    }
    
/// END

/// REPLACE
        realral.x = npcral.x;
        realral.y = npcral.y;
        
        with (realral)
            scr_caterpillar_interpolate();
        
        realral.visible = true;
        realsus.x = npcsus.x;
        realsus.y = npcsus.y;
        
        with (realsus)
            scr_caterpillar_interpolate();
        
        realsus.visible = true;
        
        with (npcral)
            instance_destroy();
        
        with (npcsus)
            instance_destroy();
/// CODE
        if (scr_havechar(4))
        {
            realnoe.x = npcnoe.x;
            realnoe.y = npcnoe.y;
            
            with (realnoe)
                scr_caterpillar_interpolate();
            
            realnoe.visible = true;
            
            with (npcnoe)
                instance_destroy();
        }
        else if (scr_havechar(3))
        {
            realral.x = npcral.x;
            realral.y = npcral.y;
            
            with (realral)
                scr_caterpillar_interpolate();
            
            realral.visible = true;
            realsus.x = npcsus.x;
            realsus.y = npcsus.y;
            
            with (realsus)
                scr_caterpillar_interpolate();
            
            realsus.visible = true;
            
            with (npcral)
                instance_destroy();
            
            with (npcsus)
                instance_destroy();
        }
/// END