/// PATCH

/// REPLACE
    global.flag[23] = 1;
/// CODE
/// END

/// BEFORE
    if (global.flag[891] == 1)
/// CODE
    
    if (global.flag[850] == 5)
        con = 70;
/// END

/// APPEND
if (con == 70)
{
    global.interact = 1;
    con = 71;
}

if (con == 71 && !i_ex(obj_persistentfadein))
{
    con = 72;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    c_msgruncheck(true);
    c_speaker("susie");
    c_msgsetloc(0, "\\ED* (Hey^1, uh^1, Kris?)/", "obj_ch4_DCA08D_slash_Step_0_gml_1631_0");
    c_msgnextloc("\\EN* (..^1. can't guarantee it will be any good^1, but^1, uh...)/", "obj_ch4_DCA08D_slash_Step_0_gml_1632_0");
    c_msgnextloc("\\E2* (Y'know^1, feel free to ask me to heal again. If you need it.)/%", "obj_ch4_DCA08D_slash_Step_0_gml_1633_0");
    c_talk_wait();
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 72 && !i_ex(obj_cutscene_master))
{
    con = 99;
    global.interact = 0;
    global.facing = 0;
    scr_flag_set(850, 6);
    global.tempflag[98] = 0;
    scr_tempsave();
}
/// END