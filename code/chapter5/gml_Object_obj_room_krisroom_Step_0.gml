/// PATCH

/// REPLACE
        con = 43;
        global.interact = 1;
        global.msc = -99;
        global.choice = -1;
        global.choicemsg = [stringsetloc("#Sleep", "obj_room_krisroom_slash_Step_0_gml_67_0"), stringsetloc("#Do not", "obj_room_krisroom_slash_Step_0_gml_68_0"), stringset(""), stringset("")];
        scr_speaker("no_name");
        msgsetloc(0, "* (It's your bed.)/", "obj_room_krisroom_slash_Step_0_gml_74_0");
        msgnextloc("* (If you go back to sleep^1^1, \\cYyou may miss a lot of important things\\cW.)/", "obj_room_krisroom_slash_Step_0_gml_75_0");
        msgnextloc("* (Will you go to bed?)/", "obj_room_krisroom_slash_Step_0_gml_76_0");
        msgnext("\\C2");
        var d = d_make();
        d.stay = 5;
/// CODE
if (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0)
    {
        con = 43;
        global.interact = 1;
        global.msc = -99;
        global.choice = -1;
        global.choicemsg = [stringsetloc("#Sleep", "obj_room_krisroom_slash_Step_0_gml_67_0"), stringsetloc("#Do not", "obj_room_krisroom_slash_Step_0_gml_68_0"), stringset(""), stringset("")];
        scr_speaker("no_name");
        msgsetloc(0, "* (It's your bed.)/", "obj_room_krisroom_slash_Step_0_gml_74_0");
        msgnextloc("* (If you go back to sleep^1^1, \\cYyou may miss a lot of important things\\cW.)/", "obj_room_krisroom_slash_Step_0_gml_75_0");
        msgnextloc("* (Will you go to bed?)/", "obj_room_krisroom_slash_Step_0_gml_76_0");
        msgnext("\\C2");
        var d = d_make();
        d.stay = 5;
    }
    else
    {
        global.interact = 1;
        global.msc = -99;
        con = 100;
        k_d(3);
        scr_speaker("no_name");
        msgsetloc(0, "*\\s0 (You feel like you shouldn't sleep until either \\cBKris\\cW^1, \\cPSusie\\cW^1, or \\cGRalsei\\cW are unlocked.)^3/%", "scr_text_slash_scr_text_gml_2665_0_b");
        var d = d_make();
    }
/// END