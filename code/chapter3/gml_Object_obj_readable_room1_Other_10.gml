/// PATCH

/// REPLACE
    
    if (global.tempflag[40] == 1)
    {
        global.msc = 1296;
        scr_text(global.msc);
    }
/// CODE
    global.msc = 1296;
    scr_text(global.msc);
/// END

/// REPLACE
        
        if (scr_keyitemcheck(13) == 0)
            scr_keyitemget(13);
        
        if (scr_debug() && scr_weaponcheck_inventory(26) > 0)
            scr_weaponremove(26);
        
        noroom = 0;
        scr_weaponget(26);
/// CODE
        scr_checkspot(172);
        scr_checkspot(173);
        noroom = 0;
/// END

/// REPLACE
        msgsetsubloc(0, "\\S0* (SHADOW CRYSTAL was added to your Key Items.)~1", sentence_end, "obj_readable_room1_slash_Other_10_gml_2190_0_b");
        msgnextloc("\\S0* (BLACK SHARD was added to your Weapons.)/%", "obj_readable_room1_slash_Other_10_gml_2191_0_b");
/// CODE
        msgsetsubloc(0, "\\S0* (You found two Checks.)~1", sentence_end, "obj_readable_room1_slash_Other_10_gml_2190_0_b");
        msgnextloc("\\S0* (The Checks were sent to your Multiworld.)/%", "obj_readable_room1_slash_Other_10_gml_2191_0_b");
/// END

/// REPLACE
                scr_weaponget(23);
                var can_get_item = noroom == 0;
                var sentence_end = can_get_item ? "/" : "/%";
                scr_speaker("no_name");
                msgsetloc(0, "* ---!/", "obj_readable_room1_slash_Other_10_gml_2229_0_b");
                msgnextloc("* (Someone from behind the curtain pushed you away...)/", "obj_readable_room1_slash_Other_10_gml_2230_0_b");
                msgnextsubloc("* (...? You felt something spiny stuck in your hand.)~1", sentence_end, "obj_readable_room1_slash_Other_10_gml_2231_0_b");
                
                if (can_get_item)
                {
                    scr_flag_set(1062, 1);
                    msgnextloc("\\S0* (You got the Saber10.)/%", "obj_readable_room1_slash_Other_10_gml_2238_0");
                }
/// CODE
                scr_checkspot(136);
                var can_get_item = noroom == 0;
                var sentence_end = can_get_item ? "/" : "/%";
                scr_speaker("no_name");
                msgsetloc(0, "* ---!/", "obj_readable_room1_slash_Other_10_gml_2229_0_b");
                msgnextloc("* (Someone from behind the curtain pushed you away...)/", "obj_readable_room1_slash_Other_10_gml_2230_0_b");
                msgnextsubloc("* (...? You felt something stuck in your hand.)/", "obj_readable_room1_slash_Other_10_gml_2231_0_b");
                msgnextloc("\\S0* (You sent a Check to your Multiworld.)/%", "obj_readable_room1_slash_Other_10_gml_2238_0");
                scr_flag_set(1062, 1);
/// END