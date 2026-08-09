/// PATCH

/// APPEND
if (con == 3)
{
    if (obj_mainchara.y < 240)
    {
        con = 4;
        obj_mainchara.y = 240;
        global.interact = 1;
    }
}

if (con == 4)
{
    con = 5;
    scr_speaker("no_name");
    msgsetloc(0, "* (No reason to go there.)/%", "obj_ch2_room_castle_transformed_slash_Step_0_gml_17_0");
    var d = d_make();
}

if (con == 5 && !d_ex())
{
    con = 3;
    global.interact = 0;
}
/// END