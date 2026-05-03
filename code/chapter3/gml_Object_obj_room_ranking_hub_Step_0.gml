/// PATCH

/// AFTER
        msgnextloc("* Let's try harder next time!/%", "obj_room_ranking_hub_slash_Step_0_gml_118_0");
    }
/// CODE
    if (global.plot < 160)
    {
        if (rank_letter == "C")
            scr_checkspot(115);
        
        if (rank_letter == "B")
        {
            scr_checkspot(115);
            scr_checkspot(116);
        }
        
        if (rank_letter == "A")
        {
            scr_checkspot(115);
            scr_checkspot(116);
            scr_checkspot(117);
        }
        
        if (rank_letter == "S")
        {
            scr_checkspot(115);
            scr_checkspot(116);
            scr_checkspot(117);
            scr_checkspot(118);
            scr_checkspot(179);
        }
        
        if (rank_letter == "T")
        {
            scr_checkspot(115);
            scr_checkspot(116);
            scr_checkspot(117);
            scr_checkspot(118);
            scr_checkspot(119);
            scr_checkspot(179);
        }
    }
    else
    {
        if (rank_letter == "C")
            scr_checkspot(142);
        
        if (rank_letter == "B")
        {
            scr_checkspot(142);
            scr_checkspot(143);
        }
        
        if (rank_letter == "A")
        {
            scr_checkspot(142);
            scr_checkspot(143);
            scr_checkspot(144);
        }
        
        if (rank_letter == "S")
        {
            scr_checkspot(142);
            scr_checkspot(143);
            scr_checkspot(144);
            scr_checkspot(145);
            scr_checkspot(180);
            scr_checkspot(181);
        }
        
        if (rank_letter == "T")
        {
            scr_checkspot(142);
            scr_checkspot(143);
            scr_checkspot(144);
            scr_checkspot(145);
            scr_checkspot(146);
            scr_checkspot(180);
            scr_checkspot(181);
        }
    }
    
/// END

/// REPLACE
    msgsetloc(0, "* A-Door is for ARCADE. You can replay a PHYSICAL CHALLENGE for fun./", "obj_room_ranking_hub_slash_Step_0_gml_133_0")
/// CODE
    msgsetloc(0, "* A-Door is for ARCADE. You can replay a PHYSICAL CHALLENGE for points./", "obj_room_ranking_hub_slash_Step_0_gml_133_0");
/// END