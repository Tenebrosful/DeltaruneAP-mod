/// PATCH

/// REPLACE
        if (version == 0)
            scr_keyitemget(20);
/// CODE
        if (version == 0 && global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 0)
        {
            scr_keyitemget(20);
            global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] = 1;
        }
/// END

/// REPLACE
            msgnextloc("* (SCISSORS was added to your EVIDENCE.)/%", "obj_dw_fcastle_sandtrap_greenaqua_slash_Step_0_gml_75_0");
            scr_msgno_func(2, function()
            {
                snd_play(snd_item);
                
                with (obj_dw_fcastle_sandtrap_greenaqua)
                    scissors = false;
            });
/// CODE          
            if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 0)
                msgnextloc("* (SCISSORS was added to your EVIDENCE.)/%", "obj_dw_fcastle_sandtrap_greenaqua_slash_Step_0_gml_75_0");
            else
                msgnextloc("* (You probably don't need them^1, though.)/%", "obj_dw_fcastle_sandtrap_greenaqua_slash_Step_0_gml_75_0");
            
            scr_msgno_func(2, function()
            {
                if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 0)
                    snd_play(snd_item);
                
                with (obj_dw_fcastle_sandtrap_greenaqua)
                    scissors = false;
            });
/// END