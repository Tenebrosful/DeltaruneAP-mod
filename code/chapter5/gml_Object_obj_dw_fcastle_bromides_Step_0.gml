/// PATCH

/// REPLACE
            if (scr_keyitemcheck(33))
                return -4;
            
            scr_speaker("no_name");
            msgsetloc(0, "* (You found something incredible on the ground.)/", "obj_dw_fcastle_bromides_slash_Step_0_gml_15_0");
            msgnextloc("* (It was added to your KEY ITEMS.)/%", "obj_dw_fcastle_bromides_slash_Step_0_gml_16_0");
            scr_msgno_func(1, function()
            {
                with (npc_sparkle)
                    x -= 9999;
                
                scr_keyitemget(33);
                snd_play(snd_item);
            });
/// CODE
            scr_speaker("no_name");
            msgsetloc(0, string("* (You found {0} on the ground.)/", AP_get_location_reward_text(329)), "obj_dw_fcastle_bromides_slash_Step_0_gml_15_0");
            msgnextloc("* (It was sent to your \\cYMultiworld\\cW.)/%", "obj_dw_fcastle_bromides_slash_Step_0_gml_16_0");
            scr_msgno_func(1, function()
            {
                with (npc_sparkle)
                    x -= 9999;
                
                AP_sendLocation(329);
                snd_play(snd_item);
            });
/// END