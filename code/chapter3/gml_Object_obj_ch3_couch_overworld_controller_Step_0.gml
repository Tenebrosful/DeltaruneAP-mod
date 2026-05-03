/// PATCH

/// REPLACE
            msgsetloc(0, "* Inside was 10 POINTs!/%", "obj_ch3_couch_overworld_controller_slash_Step_0_gml_48_0");
            var _d = d_make();
            _d.stay = 5;
            scr_var_delay("chest_con", 4, 1);
            points_display = instance_create(0, 0, obj_dw_points_fake_ui);
            
            with (points_display)
                display_points(10);
/// CODE
            msgsetloc(0, "* Inside was a Check!/%", "obj_ch3_couch_overworld_controller_slash_Step_0_gml_48_0");
            var _d = d_make();
            _d.stay = 5;
            scr_var_delay("chest_con", 4, 1);
/// END

/// REPLACE
            
            with (points_display)
                show_point_increase();
            
            scr_speaker("no_name");
            msgsetloc(0, "* 10 POINTs was added to your SCORE./%", "obj_ch3_couch_overworld_controller_slash_Step_0_gml_67_0");
/// CODE
            scr_speaker("no_name");
            msgsetloc(0, "* The Check was sent to your Multiworld./%", "obj_ch3_couch_overworld_controller_slash_Step_0_gml_67_0");
            scr_checkspot(114);
/// END

/// REPLACE
            chest_con = 0;
            open_chest = false;
            global.interact = 0;
            
            with (points_display)
                instance_destroy();
/// CODE
            chest_con = 0;
            open_chest = false;
            global.interact = 0;
/// END