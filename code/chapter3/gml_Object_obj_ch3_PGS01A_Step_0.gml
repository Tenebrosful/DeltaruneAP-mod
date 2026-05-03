/// PATCH

/// REPLACE
    left_couch = true;
    run_check = scr_flag_get(1258) == 0;
    
    if (global.tempflag[40] == 1)
    {
        with (couch)
            show_sparkle();
    }
/// CODE
    run_check = scr_flag_get(1258) == 0;
    
    with (couch)
        show_sparkle();

    scr_tempsave();
/// END

/// AFTER
    c_msgsetloc(0, "* Hey^1, Kris^1! What'd you do^1, ride the couch all the way here!?/", "obj_ch3_PGS01A_slash_Step_0_gml_398_0");
    c_msgnextloc("* Great timing^1! The game's about to start!/%", "obj_ch3_PGS01A_slash_Step_0_gml_399_0");
/// CODE
    global.customflags[29] = 1;
/// END