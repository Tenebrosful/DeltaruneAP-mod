/// PATCH

/// APPEND
if (con == 0 && obj_mainchara.y < 230 && !(global.maxhp[1] > 0 && global.maxhp[2] > 0 && global.maxhp[3] > 0))
{
    obj_mainchara.y = 230;
    con = 1;
    global.interact = 1;
    scr_speaker("no_name");
    msgset(0, "* You should probably have everyone unlocked before going here./%");
    d_make();
}

if (con == 1 && !d_ex())
{
    con = 0;
    global.interact = 0;
}

/// END