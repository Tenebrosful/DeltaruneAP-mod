/// PATCH

/// REPLACE
    if (scr_keyitemcheck(31) == 0)
        scr_keyitemget(31);
    
/// CODE
/// END

/// REPLACE
    c_msgnextloc("* YOU DOAN'T KNOW HOW TO CLAIMB./", "obj_ch4_DCA08D_slash_Step_0_gml_1570_0");
    c_msgnextloc("* TAKE THIS..^1. MY FRAINDS..^1. MY CLAIMBING SET./", "obj_ch4_DCA08D_slash_Step_0_gml_1571_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* (You got the ClaimbClaws.)/", "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
    c_facenext("jackenstein", 0);
    c_msgnextloc("* IT'S TOO SMALL FOR ME/%", "obj_ch4_DCA08D_slash_Step_0_gml_1575_0");
/// CODE
    c_msgnextloc(string("* YOU DOAN'T HAVE {0}./", string_upper(AP_get_location_reward_text(200))), "obj_ch4_DCA08D_slash_Step_0_gml_1570_0");
    c_msgnextloc("* TAKE THIS..^1. MY FRAINDS... MY GIFT./", "obj_ch4_DCA08D_slash_Step_0_gml_1571_0");
    c_facenext("no_name", 0);
    AP_sendLocation(200);
    c_msgnextloc(string("* (You got {0}.)/%", AP_get_location_reward_text(200)), "obj_ch4_DCA08D_slash_Step_0_gml_1573_0");
    global.customflags[global.custom_flags_indexes.got_jackenstein_gift] = true;
/// END

/// AFTER
if (con == 91 && !i_ex(obj_cutscene_master))
{
    con = 70;
    global.interact = 0;
    global.facing = 0;
/// CODE
    redflame = instance_create(1520, 1970, obj_dw_church_warpflame);
    
    with (redflame)
    {
        roomtarg = 218;
        entrance = 0;
        color = "red";
    }
/// END