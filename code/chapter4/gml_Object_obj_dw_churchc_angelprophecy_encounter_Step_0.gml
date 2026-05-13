/// PATCH

/// REPLACE
            if (gotegg)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* It's absolutely true. Oh^1, sink me^1, the unbeliever. I should be a statue./%", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_121_0");
                global.flag[1606] = 2;
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Of course you didn't. There's nothing to miss./", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_127_0");
                msgnextloc("* Those who can't speak the truth are liars./", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_128_0");
                msgnextloc("* And none of us can know the truth now^1, so we're all liars!/", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_129_0");
                msgnextloc("* Look for yourself^1! There's nothing back there^1, is there?/%", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_130_0");
                global.flag[1606] = 1;
                makedoor = true;
            }
/// CODE
            scr_speaker("no_name");
            msgsetloc(0, "* Of course you didn't. There's nothing to miss./", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_127_0");
            msgnextloc("* Those who can't speak the truth are liars./", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_128_0");
            msgnextloc("* And none of us can know the truth now^1, so we're all liars!/", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_129_0");
            msgnextloc("* Look for yourself^1! There's nothing back there^1, is there?/%", "obj_dw_churchc_angelprophecy_encounter_slash_Step_0_gml_130_0");
            global.flag[1606] = 1;
            makedoor = true;
/// END

/// REPLACE
                global.flag[1606] = 2;
/// CODE
                talked = 0;
/// END