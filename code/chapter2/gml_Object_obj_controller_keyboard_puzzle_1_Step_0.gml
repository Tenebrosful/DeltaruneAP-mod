/// PATCH

/// REPLACE
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E2* Kris, I think you should handle this puzzle!/%", "obj_controller_keyboard_puzzle_1_slash_Step_0_gml_18_0");
    c_talk_wait();
    c_sel(ra);
    c_walkdirect(50, 114, 12);
    c_sel(su);
    c_walkdirect(102, 110, 12);
    c_wait(13);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
/// CODE
    
    if (scr_havechar(4))
    {
        c_sel(no);
        c_walkdirect(102, 110, 12);
        c_wait(13);
        c_facing("d");
    }
    else if (scr_havechar(3))
    {
        c_speaker("ralsei");
        c_msgsetloc(0, "\\E2* Kris, I think you should handle this puzzle!/%", "obj_controller_keyboard_puzzle_1_slash_Step_0_gml_18_0");
        c_talk_wait();
        c_sel(ra);
        c_walkdirect(50, 114, 12);
        c_sel(su);
        c_walkdirect(102, 110, 12);
        c_wait(13);
        c_facing("d");
        c_sel(ra);
        c_facing("d");
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