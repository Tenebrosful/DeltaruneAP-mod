/// PATCH

/// APPEND
if (global.plot >= 243 && obj_mainchara.x < 1080 && leavecon == 0)
{
    leavecon = 1;
    global.interact = 1;
    obj_mainchara.x = 1080;
    scr_speaker("no_name");
    msgsetloc(0, "* No reason to go over there./%", "obj_dw_churchb_gallery_slash_Step_0_gml_468_0");
    d_make();
}

if (leavecon == 1 && !d_ex())
{
    leavecon = 0;
    global.interact = 0;
}
        
/// END
