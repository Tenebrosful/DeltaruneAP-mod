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