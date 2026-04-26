/// PATCH

/// APPEND
if (room == room_dw_mansion_east_4f_b)
{
    if (global.flag[309] == 9)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Thanks to you^1, the reports of the spam email have dramatically decreased./", "obj_npc_room_animated_slash_Other_10_gml_605_0");
        msgnextloc("* Usually it's me and my colleagues' job to stop spam^1, so I appreciate it!/%", "obj_npc_room_animated_slash_Other_10_gml_606_0");
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Hey^1! I need some help./", "obj_npc_room_animated_slash_Other_10_gml_605_0");
        msgnextloc("* We've recieved reports of a spam email going around./", "obj_npc_room_animated_slash_Other_10_gml_606_0");
        msgnextloc("* I have to stay here until my shift ends^1, so I can't deal with it./", "obj_npc_room_animated_slash_Other_10_gml_606_0");
        msgnextloc("* If you could take care of the spam^1, I'd be very grateful!/%", "obj_npc_room_animated_slash_Other_10_gml_606_0");
    }
}
/// END