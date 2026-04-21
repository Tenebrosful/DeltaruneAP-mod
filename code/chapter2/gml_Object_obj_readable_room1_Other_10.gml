/// PATCH

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
if (room == room_dw_cyber_battle_maze_1)
{
    scr_speaker("susie");
    msgsetloc(0, "\\E6* Hey^1, this looks like the beam of light in Castle Town./", "obj_readable_room1_slash_Other_10_gml_2043_0");
    scr_anyface_next("ralsei", "0");
    msgnextloc("\\E0* It seems like the door to the computer lab is still cracked open./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    msgnextloc("\\E9* If we must return to Castle Town^1, you two can go here to exit./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "1");
    msgnextloc("\\E1* I thought you told us work on our project before we go back./", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "5");
    msgnextloc("\\E5* Well^1, if you promise to seal the fountain here^1, I'll forgive you./", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "2");
    msgnextloc("\\E2* Pshh^1, you think we'd give up the chance to go on another adventure?/", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "G");
    msgnextloc("\\EG* I didn't hear a \"promise\"!/", "obj_readable_room1_slash_Other_10_gml_2045_0");
    scr_anyface_next("susie", "5");
    msgnextloc("\\E5* Ugh^1, fine^1. We promise./", "obj_readable_room1_slash_Other_10_gml_2047_0");
    scr_anyface_next("ralsei", "2");
    msgnextloc("\\E2* Well then^1, consider yourselves forgiven!/%", "obj_readable_room1_slash_Other_10_gml_2045_0");
    global.customflags[36] = 1;
}

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