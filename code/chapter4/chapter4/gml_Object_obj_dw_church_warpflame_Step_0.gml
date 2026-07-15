/// PATCH

/// BEFORE
        if (roomtarg == 181)
        {
            musfade = true;
            msgsetloc(0, "* (The Blue Flame flickers with the vision of a battle unfinished...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
            global.choicemsg[0] = stringsetloc("#Return to Dark", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
        }
/// CODE
        if (roomtarg == 185)
        {
            musfade = true;
            scr_flag_set(851, 2);
            msgsetloc(0, "* (The Blue Flame flickers with the vision of a battle unfinished...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
            global.choicemsg[0] = stringsetloc("#Fight Hammer#of Justice", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
        }
        
/// END
