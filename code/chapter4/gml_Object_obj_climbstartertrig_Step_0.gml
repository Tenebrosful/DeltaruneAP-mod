/// PATCH

/// REPLACE
    scr_speaker("no_name");
    msgsetloc(0, "* (It looks like you'd be able to climb this if you had the right tools.)/%", "obj_climbstartertrig_slash_Step_0_gml_15_0");
    d_make();
    myinteract = 401;
/// CODE
    if (scr_keyitemcheck(31))
    {
        scr_speaker("no_name");
        msgsetloc(0, "* (You have the tools to climb this^1, but you don't know how to use them yet.)/%", "obj_climbstartertrig_slash_Step_0_gml_15_0");
        d_make();
        myinteract = 401;
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* (It looks like you'd be able to climb this if you had the right tools.)/%", "obj_climbstartertrig_slash_Step_0_gml_15_0");
        d_make();
        myinteract = 401;
    }
/// END