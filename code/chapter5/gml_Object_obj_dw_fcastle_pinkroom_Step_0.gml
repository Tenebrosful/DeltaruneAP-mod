/// PATCH

/// APPEND
if (obj_mainchara.y < 40 && con < 50 && global.customflags[1302] == 0)
{
    obj_mainchara.y = 40;
    con = 50;
    scr_speaker("no_name");
    msgset(0, "* You should buy the fourth item of the Cliffs Shop before spending more Pink Coins./%");
    d_make();
    global.interact = 1;
}

if (con == 50 && !d_ex())
{
    global.interact = 0;
    con = 0;
}
/// END