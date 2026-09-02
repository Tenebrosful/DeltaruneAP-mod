/// PATCH

/// REPLACE
        case 1455:
            global.choicemsg[0] = stringsetloc("#Don't#sleep", "scr_text_slash_scr_text_gml_11397_0");
            global.choicemsg[1] = stringsetloc("#Sleep an#incredibly#long time", "scr_text_slash_scr_text_gml_11398_0");
            global.choicemsg[2] = stringset("");
            global.choicemsg[3] = stringset("");
            scr_speaker("no_name");
            msgsetloc(0, "* (You could go back to sleep...)/", "scr_text_slash_scr_text_gml_11403_0");
            msgnextloc("* (However^1, if you did^1, you might end up \\cYmissing the entire day\\cW.)/", "scr_text_slash_scr_text_gml_11404_0");
            msgnext("\\C2");
            break;
        
        case 1456:
            if (global.choice == 0)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* (You forced your eyes open a little longer.)/%", "scr_text_slash_scr_text_gml_11413_0");
            }
            else
            {
                with (obj_ch4_PDC01B)
                    skip_intro = true;
                
                scr_speaker("no_name");
                msgset(0, "%%");
            }
            
            break;
        
        case 1457:
            return stringsetloc("A tea that has deteriorated after a short while#due to its poor craftsmanship. +10HP", "scr_text_slash_scr_text_gml_11457_0");
            break;
/// CODE
        case 1455:
            global.choicemsg[0] = stringsetloc("#Don't#sleep", "scr_text_slash_scr_text_gml_11397_0");
            global.choicemsg[1] = stringsetloc("#Sleep", "scr_text_slash_scr_text_gml_11398_0");
            global.choicemsg[2] = stringset("");
            global.choicemsg[3] = stringset("");
            scr_speaker("no_name");
            msgsetloc(0, "* (A very comfortable-looking chair.)/", "scr_text_slash_scr_text_gml_11403_0");
            msgnextloc("* (You could go back to sleep if you wanted.)/", "scr_text_slash_scr_text_gml_11403_0");
            
            if (!((global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0) || scr_keyitemcheck(31)))
                msgnextloc("* (Though^1, \\cYyou will probably only sleep until church is over\\cW.)/", "scr_text_slash_scr_text_gml_11403_0");
            
            msgnext("\\C2");
            break;
        
        case 1456:
            if (global.choice == 0)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* (You forced your eyes open a little longer.)/%", "scr_text_slash_scr_text_gml_11413_0");
            }
            else if ((global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0) || scr_keyitemcheck(31))
            {
                global.choicemsg[0] = stringsetloc("#Sleep#through#church", "scr_text_slash_scr_text_gml_11398_0");
                global.choicemsg[1] = stringsetloc("#Sleep an#incredibly#long time", "scr_text_slash_scr_text_gml_11397_0");
                global.choicemsg[2] = stringset("");
                global.choicemsg[3] = stringset("");
                scr_speaker("no_name");
                
                if (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0)
                {
                    msgsetloc(0, "* (You could sleep through the whole day...)/", "scr_text_slash_scr_text_gml_11403_0");
                    msgnextloc("* (However^1, you might end up \\cYmissing a lot of important things\\cW.)/", "scr_text_slash_scr_text_gml_11404_0");
                }
                else
                {
                    msgsetloc(0, "\\s0* (You could sleep through the whole day...)/", "scr_text_slash_scr_text_gml_11403_0");
                    msgnextloc("\\s0* (However^1, \\cYyou'd need to be able to wrong warp to progress\\cW^3.)/", "scr_text_slash_scr_text_gml_11404_0");
                }
                
                msgnextloc("* (Or^1, you could sleep through church and go to Castle Town.)/", "scr_text_slash_scr_text_gml_11404_0");
                msgnext("\\C2");
            }
            else
            {
                with (obj_ch4_PDC01B)
                    skip_intro = 2;
                
                scr_speaker("no_name");
                msgset(0, "%%");
            }
            
            break;
        
        case 1457:
            if (global.choice == 0)
            {
                if (!i_ex(obj_ch4_PDC01B))
                    error = You_messed_up_the_tea;
                
                with (obj_ch4_PDC01B)
                    skip_intro = 2;
            }
            else
            {
                if (!i_ex(obj_ch4_PDC01B))
                    error = You_messed_up_the_tea;
                
                with (obj_ch4_PDC01B)
                    skip_intro = 1;
            }
            
            scr_speaker("no_name");
            msgset(0, "%%");
            break;       
/// END

/// BEFORE
        case 5000:
/// CODE
        case 2000:
            global.choicemsg[0] = stringsetloc("#I'll wait#here", "scr_text_slash_scr_text_gml_7037_0");
            global.choicemsg[1] = stringsetloc("#Let's find#Ralsei", "scr_text_slash_scr_text_gml_7038_0");
            global.choicemsg[2] = stringset(" ");
            global.choicemsg[3] = stringset(" ");
            scr_speaker("susie");
            msgsetloc(0, "\\E1* Wait^1, Kris./", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E0* We're the one's with the climbing claws^1, right?/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E1* If Ralsei shows up^1, I dunno if he'd be able to climb up there./", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E1* We should probably find him and then go,^1 right?/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7042_0");
            break;
        
        case 2001:
            scr_speaker("susie");
            
            if (global.choice == 0)
            {
                msgsetloc(0, "\\E6* Huh^1? You sure?/", "scr_text_slash_scr_text_gml_7048_0");
                msgnextloc("\\E3* Well^1, alright I guess./", "scr_text_slash_scr_text_gml_7048_0");
                msgnextloc("\\EA* Be back soon./%", "scr_text_slash_scr_text_gml_7048_0");
            }
            else
            {
                msgsetloc(0, "\\EA* C'mon^1, he's gotta be around here somewhere./%", "scr_text_slash_scr_text_gml_7052_0");
            }
            
            break;
        
        case 2002:
            global.choicemsg[0] = stringsetloc("#Leave", "scr_text_slash_scr_text_gml_7037_0");
            global.choicemsg[1] = stringsetloc("#Stay", "scr_text_slash_scr_text_gml_7038_0");
            global.choicemsg[2] = stringset(" ");
            global.choicemsg[3] = stringset(" ");
            scr_speaker("none");
            msgsetloc(0, "* (You get a bad feeling about leaving without \\cPSusie\\cW unlocked.)/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\s0* (You feel like \\cYyou will need to know how to wrong warp\\cW to progress.)/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("* (Leave anyway?)/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnext("\\C2");
            break;
        
        case 2003:
            if (global.choice == 0)
                global.customflags[global.custom_flags_indexes.accepted_dark_sanctuary_skip] = 1;
            
            scr_speaker("no_name");
            msgset(0, "%%");
            break;
        
/// END
