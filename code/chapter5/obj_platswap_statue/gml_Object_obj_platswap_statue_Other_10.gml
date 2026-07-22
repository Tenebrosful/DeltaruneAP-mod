/// PATCH

/// REPLACE
if (!global.flag[24])
/// CODE
if (!scr_keyitemcheck(25))
/// END

/// REPLACE
    event_user(1);
/// CODE
    if (room == room_dw_garden_finalplatforming_right && global.plot < 292)
    {
        if (global.maxhp[1] < 0)
        {
            scr_speaker("no_name");
            msgsetloc(0, "* (A mysterious structure.)/", "obj_platswap_statue_slash_Other_10_gml_8_0");
            msgnextloc("* (You should probably unlock \\cBKris\\cW before using this...)/%", "obj_platswap_statue_slash_Other_10_gml_9_0");
            myinteract = 3;
            global.interact = 1;
            mydialoguer = instance_create(0, 0, obj_dialoguer);
            exit;
        }
        
        con = 1;
    }
    else if (room == room_dw_garden_aquaplatforming && global.plot < 292)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* (A mysterious structure.)/", "obj_platswap_statue_slash_Other_10_gml_8_0");
        msgnextloc("* (You should probably go to this one from another direction.)/%", "obj_platswap_statue_slash_Other_10_gml_9_0");
        myinteract = 3;
        global.interact = 1;
        mydialoguer = instance_create(0, 0, obj_dialoguer);
        exit;
    }
    else
    {
        event_user(1);
    }
/// END