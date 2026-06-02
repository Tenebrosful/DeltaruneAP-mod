/// PATCH .ignore if !CHAPTER_2 && !CHAPTER_4

/// AFTER
    global.facing = 0;
}

/// CODE
if (con == 16)
{
    scr_speaker("noone");
    msgsetloc(0, "* Sorry^1, boss^1, but you're not fit for this challenge./", "obj_npc_dojo_slash_Step_0_gml_45_0");
    msgnextloc("* You need to unlock one of the members in your party first!/%", "obj_npc_dojo_slash_Step_0_gml_46_0");
    d_make();
    con = 15;
}
/// END