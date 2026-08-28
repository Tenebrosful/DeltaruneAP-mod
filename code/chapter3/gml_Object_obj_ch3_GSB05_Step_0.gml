/// PATCH

/// AFTER
    if (obj_mainchara.x >= 1120)
    {
        con = 21;
        alarm[0] = 1;
        global.interact = 1;
    }
/// CODE
    else if (obj_mainchara.x > 575 && (global.maxhp[1] <= 0 || global.maxhp[2] <= 0 || global.maxhp[3] <= 0))
    {
        con = 23;
        global.interact = 1;
        obj_mainchara.x = 575;
    }
}

if (con == 23)
{
    con = 24;
    scr_speaker("no_name");
    msgsetloc(0, "\\s0* (You feel like you shouldn't go here unless \\cBKris\\cW, \\cPSusie\\cW and \\cGRalsei\\cW are all unlocked.)/%", "scr_text_slash_scr_text_gml_8915_0");
    d_make();
}

if (con == 24 && !d_ex())
{
    con = 20;
    global.interact = 0; // I know it looks like there's a missing `}` here, but this is intentional. TRUST THE PROCESS!!!
/// END