/// PATCH

/// AFTER
        msgnextloc("* Let's try harder next time!/%", "obj_room_ranking_hub_slash_Step_0_gml_118_0");
    }
/// CODE
    if (global.plot < 160)
    {
        if (rank_letter == "C")
            AP_sendLocation(115);
        
        if (rank_letter == "B")
        {
            AP_sendLocation([115, 116]);
        }
        
        if (rank_letter == "A")
        {
            AP_sendLocation([115, 116, 117]);
        }
        
        if (rank_letter == "S")
        {
            AP_sendLocation([115, 116, 117, 118, 179, 247]);
        }
        
        if (rank_letter == "T")
        {
            AP_sendLocation([115, 116, 117, 118, 119, 179, 247]);
        }
    }
    else
    {
        if (rank_letter == "C")
            AP_sendLocation(142);
        
        if (rank_letter == "B")
        {
            AP_sendLocation([142, 143]);
        }
        
        if (rank_letter == "A")
        {
            AP_sendLocation([142, 143, 144]);
        }
        
        if (rank_letter == "S")
        {
            AP_sendLocation([142, 143, 144, 145, 180, 181]);
        }
        
        if (rank_letter == "T")
        {
            AP_sendLocation([142, 143, 144, 145, 146, 180, 181]);
        }
    }
    
/// END

/// REPLACE
    msgsetloc(0, "* A-Door is for ARCADE. You can replay a PHYSICAL CHALLENGE for fun./", "obj_room_ranking_hub_slash_Step_0_gml_133_0")
/// CODE
    msgsetloc(0, "* A-Door is for ARCADE. You can replay a PHYSICAL CHALLENGE for points./", "obj_room_ranking_hub_slash_Step_0_gml_133_0");
/// END