/// PATCH

/// AFTER
    c_var_instance(jackenstein, "current_state", 5);
    c_speaker("jackenstein");
    c_msgsetloc(0, "* NOOOOOOO!!!/%", "obj_ch4_DCA08D_slash_Step_0_gml_470_0");
/// CODE
    global.customflags[29] = 1;
/// END

/// REPLACE
    if (scr_keyitemcheck(31) == 0)
        scr_keyitemget(31);
    
/// CODE
/// END

/// REPLACE
    c_msgnextloc("* TAKE THIS..^1. MY FRAINDS..^1. MY CLAIMBING SET./", "obj_ch4_DCA08D_slash_Step_0_gml_1571_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* (You got the ClaimbClaws.)/", "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
    c_facenext("jackenstein", 0);
    c_msgnextloc("* IT'S TOO SMALL FOR ME/%", "obj_ch4_DCA08D_slash_Step_0_gml_1575_0");
/// CODE
    c_msgnextloc("* TAKE THIS..^1. MY FRAINDS..^1. AND INSTRUCTIONS FOR CLAIMBING SET./", "obj_ch4_DCA08D_slash_Step_0_gml_1571_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* (You got a Check and instructions on Claimbing.)/", "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
    scr_keyitemget(1022);
    c_facenext("jackenstein", 0);
    c_msgnextloc("* NOW YOU WILL CLAIMB OVER MOUNTAINS/", "obj_ch4_DCA08D_slash_Step_0_gml_1575_0");
    c_facenext("no_name", 0);
    global.customflags[29] = 0;
    
    if (global.customflags[999] == 0)
    {
        c_msgnextloc("* (You sent the Check to your Multiworld.)/%", "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
        scr_checkspot(200);
    }
    else
    {
        c_msgnextloc("* (..^1.But^1, the power of the Egg refused the check!)/%", "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
    }
    
/// END