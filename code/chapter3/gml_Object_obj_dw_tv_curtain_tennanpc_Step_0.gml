/// PATCH

/// AFTER
        snd_play(snd_impact);
        snd_play(snd_locker);
        room_goto(room_ch3_gameshowroom);
/// CODE
        global.customflags[29] = 1;
/// END

/// AFTER
        tenna.preset = 0;
        tenna.image_speed = 0;
        tenna.bounce = 1;
    }
}

/// CODE
if (con == 7 && !d_ex())
{
    k_d();
    con = 0;
    trig.myinteract = 0;
    global.interact = 0;
}

/// END

/// REPLACE
    global.interact = 1;
    global.msc = -99;
    global.choice = -1;
    global.choicemsg[0] = stringsetloc("#Ready", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_21_0");
    global.choicemsg[1] = stringsetloc("#Not Ready", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_22_0");
    scr_speaker("tenna");
    msgsetloc(0, "* Everyone got their snacks and drinks?/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_27_0");
    msgnextloc("* Once the show starts there will be NO bathroom breaks!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_28_0");
    msgnextloc("* Are we all ready to begin the show?!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_29_0");
    msgnext("\\C2 ");
    con = 2;
    
    if (talked)
    {
        tenna.preset = 21;
        scr_speaker("tenna");
        msgsetloc(0, "* Are we ready now?/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_37_0");
        msgnext("\\C2 ");
        con = 5;
    }
    
    with (d_make())
        side = 1;
/// CODE
    global.interact = 1;
    
    if (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0)
    {
        global.msc = -99;
        global.choice = -1;
        global.choicemsg[0] = stringsetloc("#Ready", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_21_0");
        global.choicemsg[1] = stringsetloc("#Not Ready", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_22_0");
        scr_speaker("tenna");
        msgsetloc(0, "* Everyone got their snacks and drinks?/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_27_0");
        msgnextloc("* Once the show starts there will be NO bathroom breaks!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_28_0");
        msgnextloc("* Are we all ready to begin the show?!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_29_0");
        msgnext("\\C2 ");
        con = 2;
        
        if (talked)
        {
            tenna.preset = 21;
            scr_speaker("tenna");
            msgsetloc(0, "* Are we ready now?/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_37_0");
            msgnext("\\C2 ");
            con = 5;
        }
    }
    else
    {
        scr_speaker("tenna");
        msgsetloc(0, "* I would ask if you're ready^1, but geez!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_27_0");
        msgnextloc("* You three are in no condition for this^1!&* Get some more rest!/", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_28_0");
        msgnextloc("* Come back when at least one of you are able to play!/%", "obj_dw_tv_curtain_tennanpc_slash_Step_0_gml_28_0");
        con = 7;
    }
    
    with (d_make())
        side = 1;
/// END
