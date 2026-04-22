/// PATCH

/// REPLACE
            msgsetloc(0, "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/", "obj_readable_room1_slash_Other_10_gml_42_0");
            msgnextloc("* It's a poorly-drawn design for a game.../", "obj_readable_room1_slash_Other_10_gml_43_0");
            msgnextloc("* Seems the last boss is a creature with giant rainbow wings./", "obj_readable_room1_slash_Other_10_gml_44_0");
            msgnextloc("* Doesn't seem like this game ever saw the light of day.../%", "obj_readable_room1_slash_Other_10_gml_45_0");
/// CODE
            msgsetloc(0, "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/", "obj_readable_room1_slash_Other_10_gml_42_0");
            msgnextloc("* It's a poorly-drawn design for a game.../", "obj_readable_room1_slash_Other_10_gml_43_0");
            msgnextloc("* Seems the last boss is a creature with giant rainbow wings./", "obj_readable_room1_slash_Other_10_gml_44_0");
            msgnextloc("* Doesn't seem like this game ever saw the light of day.../", "obj_readable_room1_slash_Other_10_gml_45_0");
            msgnextloc("* Also, \"Archipelago Dragon Blazers Client\" is now 1 hours between each reconnect.../%", "obj_readable_room1_slash_Other_10_gml_45_0")
/// END

/// AFTER
    if (x > 136)
    {
        if (global.chapter == 1)
            global.msg[0] = stringsetloc("* It's a beautiful day outside./%", "obj_readable_room1_slash_Other_10_gml_80_0");
        
        if (global.chapter == 2)
            msgsetloc(0, "* Even after a long night^1, the sunrise is the same as always./%", "obj_readable_room1_slash_Other_10_gml_86_0");
    }
/// CODE
    if (x > 179)
        global.msg[0] = "* Non-binary rights./%";
/// END

/// REPLACE
            if (global.tempflag[39] == 1 && global.plot < 10)
/// CODE
            if (global.plot < 10)
/// END

/// REPLACE
                if (global.plot >= 200 && global.flag[309] < 9)
                    global.tempflag[36] = 3;
                
                if (global.tempflag[36] == 1 || global.tempflag[36] == 2)
                {
                    global.msc = 1240;
                    scr_text(global.msc);
                }
                else
                {
                    scr_speaker("no_name");
                    msgsetloc(0, "* (There's a hole in the wall...)/", "obj_readable_room1_slash_Other_10_gml_740_0");
                    msgnextloc("* (There's nothing inside.)/%", "obj_readable_room1_slash_Other_10_gml_741_0");
                }
/// CODE
                scr_speaker("no_name");
                msgsetloc(0, "* (There's a hole in the wall...)/", "obj_readable_room1_slash_Other_10_gml_740_0");
                msgnextloc("* (There's nothing inside.)/%", "obj_readable_room1_slash_Other_10_gml_741_0");
/// END

/// REPLACE
        if (scr_keyitemcheck(10) == 0 && instance_exists(obj_npc_room_animated))
/// CODE
        if (global.customflags[15] == 0 && instance_exists(obj_npc_room_animated))
/// END

/// REPLACE
        if (scr_keyitemcheck(10) == 1 && scr_keyitemcheck(11) == 0)
/// CODE
        if (global.customflags[15] == 1 && scr_keyitemcheck(11) == 0)
/// END

/// APPEND
if (room == room_dw_mansion_entrance)
{
    if (scr_sideb_get_phase() > 2)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Welcome to Qu- Er^1, SPAMTON's mansion./");
        msgnextloc("* If you are looking for Queen^1, she has not been seen for hours./");
        msgnextloc("* Spamton has \"inherited\" the mansion in her absence./");
        msgnextloc("* I have been informed by him to not let anyone enter this area./");
        msgnextloc("* I apologize for the inconvenience./%");
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* We welcome you to Queen's mansion./");
        
        if (scr_keyitemcheck(1010))
        {
            msgnextloc("* It appears you do have a reservation./");
            msgnextloc("* Feel free to enter at any time./%");
            global.customflags[13] = 1;
            
            with (mywall)
                instance_destroy();
            
            instance_destroy();
        }
        else
        {
            msgnextloc("* Unfortunately^1, you need a reservation in order to enter this area./");
            msgnextloc("* We apologize for the inconvenience./%");
        }
    }
}

/// END