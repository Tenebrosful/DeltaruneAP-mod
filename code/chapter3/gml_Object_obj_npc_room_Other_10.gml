/// PATCH

/// APPEND
if (room == room_dw_teevie_intro)
{
    if (extflag == "zapper")
    {
        if (scr_keyitemcheck(1014))
        {
            scr_speaker("no_name");
            msgsetloc(0, "* I see youse are VIPs^1. Yah may enter./", "obj_npc_room_slash_Other_10_gml_1651_0");
            msgnextloc("* Don't get the carpet dirty./%", "obj_npc_room_slash_Other_10_gml_1652_0");
            global.customflags[24] = 1;
        }
        else
        {
            scr_speaker("no_name");
            msgsetloc(0, "* Only people with a VIP Pass can get in./", "obj_npc_room_slash_Other_10_gml_1651_0");
            msgnextloc("* Mr. Tenna's orders./%", "obj_npc_room_slash_Other_10_gml_1652_0");
        }
    }
}
/// END

/// AFTER
    if (extflag == "zapper")
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Don't do anything funny./", "obj_npc_room_slash_Other_10_gml_1651_0");
        msgnextloc("* Mr. Tenna's orders./%", "obj_npc_room_slash_Other_10_gml_1652_0");
    }
/// CODE
    
    if (extflag == "zapper_board_3")
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Hey^1! Youse the lightners!/", "obj_npc_room_slash_Other_10_gml_1651_0");
        msgnextloc("* I don't wanna mess with yah after last time though.../", "obj_npc_room_slash_Other_10_gml_1652_0");
        msgnextloc("* Well^1, stay outta trouble^1, and my lips are sealed./%", "obj_npc_room_slash_Other_10_gml_1652_0");
    }
    
    if (extflag == "zapper_cold")
    {
        if (global.flag[1055] < 6 && !global.AP_no_mantle)
        {
            scr_speaker("no_name");
            msgsetloc(0, "* Hey^1! Youse the lightners!/", "obj_npc_room_slash_Other_10_gml_1651_0");
            msgnextloc("* I suppose you's off to seal the fountain?/", "obj_npc_room_slash_Other_10_gml_1652_0");
            msgnextloc("* Well^1, before yah do that^1, Ramb told me something before he turneda stone./", "obj_npc_room_slash_Other_10_gml_1652_0");
            msgnextloc("* Apparently youse got to do something in the S-Rank room before going out there./", "obj_npc_room_slash_Other_10_gml_1652_0");
            msgnextloc("* Not exactly sure what^1. He kept it pretty secretive^1. He said you'd know^1, though./%", "obj_npc_room_slash_Other_10_gml_1652_0");
        }
        else
        {
            if (global.customflags[28] == 1)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Would yah mind giving me some privacy^1?/", "obj_npc_room_slash_Other_10_gml_1651_0");
                msgnextloc("* Putting in batteries is..^1. awkward with othah people around./%", "obj_npc_room_slash_Other_10_gml_1652_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Hey^1! Youse the lightners!/", "obj_npc_room_slash_Other_10_gml_1651_0");
                msgnextloc("* I suppose you's off to seal the fountain?/", "obj_npc_room_slash_Other_10_gml_1652_0");
                msgnextloc("* I would let yah through^1, but I'm nearly outta charge^1.&* I can't move!/", "obj_npc_room_slash_Other_10_gml_1652_0");
                msgnextloc("* Any chance yah three got some more remote batteries?/", "obj_npc_room_slash_Other_10_gml_1652_0");
                
                if (global.MacGuffin_count >= global.AP_macguffin_required[2])
                {
                    msgnextloc("* (You gave the Zapper all of your Remote Batteries...)/", "obj_npc_room_slash_Other_10_gml_1652_0");
                    msgnextloc("* Ah^1, thank you very much^1!/", "obj_npc_room_slash_Other_10_gml_1652_0");
                    msgnextloc("* Now would yah mind giving me some privacy^1?/", "obj_npc_room_slash_Other_10_gml_1652_0");
                    msgnextloc("* Putting in batteries is..^1. awkward with othah people around./%", "obj_npc_room_slash_Other_10_gml_1652_0");
                    global.customflags[28] = 1;
                }
                else
                {
                    msgnextloc("* (Seems you need more Remote Batteries...)/%", "obj_npc_room_slash_Other_10_gml_1652_0");
                }
            }
        }
    }
    
/// END