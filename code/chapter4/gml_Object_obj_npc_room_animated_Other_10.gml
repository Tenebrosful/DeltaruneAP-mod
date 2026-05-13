/// PATCH

/// APPEND
if (room == room_dw_church_intropiano)
{
    if (y == 130)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Hark^1! There is a creepy person in the next room.../", "obj_npc_room_animated_slash_Other_10_gml_442_0");
        msgnextloc("* I'm not sure if they're here to kill us^1, but we're not taking any chances!/", "obj_npc_room_animated_slash_Other_10_gml_443_0");
        scr_anyface_next("susie", 0);
        msgnextloc("\\E0* Creepy person^1, huh...?/", "obj_npc_room_animated_slash_Other_10_gml_152_0_b");
        msgnextloc("\\E1* Sounds like trouble^1.&* Gotta be careful./%", "obj_npc_room_animated_slash_Other_10_gml_152_0_b");
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Don't bother climbing up here^1, it leads straight to the creepy person!/%", "obj_npc_room_animated_slash_Other_10_gml_447_0");
    }
}

/// END