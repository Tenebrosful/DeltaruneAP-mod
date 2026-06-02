/// PATCH

/// REPLACE
    if (global.plot == 15)
    {
        global.interact = 1;
        con = 1;
    }
/// CODE
    if (global.plot == 15)
    {
        if (global.maxhp[1] > 0 || global.maxhp[2] > 0)
        {
            global.interact = 1;
            con = 1;
        }
        else
        {
            con = 20;
            global.interact = 1;
            scr_speaker("none");
            global.fe = 0;
            msgsetloc(0, "* (You probably shouldn't go until either \\cBKris\\cW or \\cPSusie\\cW are unlocked.)/%", "obj_ch2_scene6_slash_Step_0_gml_11_0");
            d_make();
            obj_mainchara.y = y - 27;
        }
    }
/// END
    