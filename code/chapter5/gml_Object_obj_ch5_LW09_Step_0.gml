/// PATCH

/// REPLACE
    con = 5;
    global.interact = 1;
    global.msc = -99;
    global.choice = -1;
    global.choicemsg[0] = stringsetloc("#All ready", "obj_ch5_LW09_slash_Step_0_gml_31_0");
    global.choicemsg[1] = stringsetloc("#Wait a sec", "obj_ch5_LW09_slash_Step_0_gml_32_0");
    global.choicemsg[2] = stringset("");
    global.choicemsg[3] = stringset("");
    scr_speaker("susie");
    msgsetloc(0, "\\E0* Ready^1, Kris^1? We probably won't be coming back here today.../", "obj_ch5_LW09_slash_Step_0_gml_37_0");
    msgnext("\\C2");
    d_make();
}
/// CODE
    if (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0)
    {
        con = 5;
        global.interact = 1;
        global.msc = -99;
        global.choice = -1;
        global.choicemsg[0] = stringsetloc("#All ready", "obj_ch5_LW09_slash_Step_0_gml_31_0");
        global.choicemsg[1] = stringsetloc("#Wait a sec", "obj_ch5_LW09_slash_Step_0_gml_32_0");
        global.choicemsg[2] = stringset("");
        global.choicemsg[3] = stringset("");
        scr_speaker("susie");
        msgsetloc(0, "\\E0* Ready^1, Kris^1? We might not return for a while.../", "obj_ch5_LW09_slash_Step_0_gml_37_0");
        msgnext("\\C2");
        d_make();
    }
    else
    {
        global.interact = 1;
        global.msc = -99;
        con = 6;
        scr_speaker("no_name");
        msgsetloc(0, "*\\s0 (You feel like you shouldn't leave until either \\cBKris\\cW^1, \\cPSusie\\cW^1, or \\cGRalsei\\cW are unlocked.)^3/%", "scr_text_slash_scr_text_gml_2665_0_b");
        var d = d_make();
    }
}

if (con == 6 && !d_ex())
{
    con = 0;
    global.interact = 0;
    
    with (obj_mainchara)
    {
        y = 64;
        
        if (x >= 405)
            x = 405;
    }
}
/// END