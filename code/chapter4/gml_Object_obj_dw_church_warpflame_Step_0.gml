/// PATCH

/// BEFORE
        if (roomtarg == 181)
        {
            musfade = true;
/// CODE
        if (roomtarg == 185)
        {
            musfade = true;
            scr_flag_set(851, 2);
            msgsetloc(0, "* (The Blue Flame flickers with the vision of a battle unfinished...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
            global.choicemsg[0] = stringsetloc("#Fight Hammer#of Justice", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
        }
        
/// END

/// REPLACE
            msgsetloc(0, "* (The Blue Flame flickers with the vision of a battle unfinished...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
            global.choicemsg[0] = stringsetloc("#Return to Dark", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
/// CODE
            if (global.flag[850] >= 5)
            {
                msgsetloc(0, "* (The Blue Flame flickers with a sense of deepness...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
                global.choicemsg[0] = stringsetloc("#Return to#bottom", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
            }
            else
            {
                msgsetloc(0, "* (The Blue Flame flickers with the vision of a battle unfinished...)/", "obj_dw_church_warpflame_slash_Step_0_gml_76_0");
                global.choicemsg[0] = stringsetloc("#Return to Dark", "obj_dw_church_warpflame_slash_Step_0_gml_77_0");
            }
/// END

/// AFTER
    if (roomtarg == 270)
    {
        msgsetloc(0, "* (A pink flame..^1. it glows hesitatingly.)/", "obj_dw_church_warpflame_slash_Step_0_gml_32_0");
        global.choicemsg[0] = stringsetloc("#Return to#beginning", "obj_dw_church_warpflame_slash_Step_0_gml_33_0");
    }
    
    if (roomtarg == 218)
    {
        msgsetloc(0, "* (A red flame..^1. it glows hesitatingly.)/", "obj_dw_church_warpflame_slash_Step_0_gml_41_0");
        global.choicemsg[0] = stringsetloc("#Return to#save point", "obj_dw_church_warpflame_slash_Step_0_gml_42_0");
    }
/// CODE