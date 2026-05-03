/// PATCH

/// REPLACE
        msgsetloc(0, "* Inside was 10 POINTs!/%", "obj_dw_treasure_points_slash_Step_0_gml_37_0");
        var _d = d_make();
        _d.stay = 5;
        scr_var_delay("chest_con", 4, 1);
        display = instance_create(0, 0, obj_dw_points_fake_ui);
        
        with (display)
            display_points(10);
/// CODE
        msgsetloc(0, "* Inside was a Check!/%", "obj_dw_treasure_points_slash_Step_0_gml_37_0");
        var _d = d_make();
        _d.stay = 5;
        scr_var_delay("chest_con", 4, 1);
/// END

/// REPLACE
        
        with (display)
            show_point_increase();
        
        scr_speaker("no_name");
        msgsetloc(0, "* 10 POINTs was added to your SCORE./%", "obj_dw_treasure_points_slash_Step_0_gml_57_0");
/// CODE
        scr_speaker("no_name");
        msgsetloc(0, "* The Check was sent to your Multiworld./%", "obj_dw_treasure_points_slash_Step_0_gml_57_0");
        d_make();
        scr_checkspot(t_itemid);
/// END

/// REPLACE
    if (chest_con == 6 && !d_ex() && i_ex(display) && !display.increase_points)
    {
        chest_con = 0;
        open_chest = false;
        myinteract = 3;
        scr_flag_set(treasure_flag, 1);
        
        with (display)
            instance_destroy();
/// CODE
    if (chest_con == 6 && !d_ex())
    {
        chest_con = 0;
        open_chest = false;
        myinteract = 3;
        scr_flag_set(treasure_flag, 1);
/// END