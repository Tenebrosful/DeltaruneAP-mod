/// PATCH

/// APPEND
if (room == room_dw_churchc_savepoint)
{
    scr_speaker("no_name");
    
    if (global.customflags[33] == 1)
    {
        msgsetloc(0, "* (The door doesn't seem to be locked with a combination lock.)/", "obj_readable_room1_slash_Other_10_gml_4885_0");
        msgnextloc("* (You could walk in^1, but you are too busy admiring the door frame.)/%", "obj_readable_room1_slash_Other_10_gml_4886_0");
    }
    else
    {
        msgsetloc(0, "* (The door seems to be locked with a combination lock.)/", "obj_readable_room1_slash_Other_10_gml_4885_0");
        
        if (global.MacGuffin_count >= global.AP_macguffin_required[3])
        {
            msgnextloc("* (Luckily, you have enough Combination Lock Digits to unlock this.)/%", "obj_readable_room1_slash_Other_10_gml_4886_0");
            global.customflags[33] = 1;
        }
        else
        {
            msgnextloc("* (Looks like you need more Combination Lock Digits...)/%", "obj_readable_room1_slash_Other_10_gml_4886_0");
        }
    }
}

if (room == room_dw_church_darkmaze && x == 1240 && y == 800)
{
    scr_speaker("ralsei");
    msgsetloc(0, "\\E4* This light... Someone must have opened the door slightly./", "obj_readable_room1_slash_Other_10_gml_4848_0");
    msgnextloc("\\E0* You two could exit to the Light World if you wanted to./", "obj_readable_room1_slash_Other_10_gml_4850_0");
    scr_anyface_next("susie", "C");
    msgnextloc("\\EC* Dunno if we have the time to leave./", "obj_readable_room1_slash_Other_10_gml_4852_0");
    msgnextloc("\\EC* The Knight's here^1, and Toriel could be in trouble./", "obj_readable_room1_slash_Other_10_gml_4852_0");
    scr_anyface_next("no_name", 0);
    msgnextloc("* (You stare at Susie like a dog pleading to go outside.)/", "obj_readable_room1_slash_Other_10_gml_4852_0");
    scr_anyface_next("susie", "K");
    msgnextloc("\\EK* Jeez^1, fine^1. If you wanna go to Castle Town^1, we can./", "obj_readable_room1_slash_Other_10_gml_4852_0");
    msgnextloc("\\E4* But that's it^1. And let's try not to stall too long./%", "obj_readable_room1_slash_Other_10_gml_4852_0");
    global.customflags[37] = 1;
}

/// END