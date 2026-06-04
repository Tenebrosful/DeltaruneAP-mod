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
/// CODE
        case 1455:
            if (global.maxhp[1] > 0 || global.maxhp[2] > 0 || global.maxhp[3] > 0)
            {
              global.choicemsg[0] = stringsetloc("#Don't#sleep", "scr_text_slash_scr_text_gml_11397_0");
              global.choicemsg[1] = stringsetloc("#Sleep an#incredibly#long time", "scr_text_slash_scr_text_gml_11398_0");
              global.choicemsg[2] = stringset("");
              global.choicemsg[3] = stringset("");
              scr_speaker("no_name");
              msgsetloc(0, "* (You could go back to sleep...)/", "scr_text_slash_scr_text_gml_11403_0");
              msgnextloc("* (However^1, if you did^1, you might end up \\cYmissing the entire day\\cW.)/", "scr_text_slash_scr_text_gml_11404_0");
              msgnext("\\C2");
            }
            else
            {
                msgsetloc(0, "*\\s0 (You feel like you shouldn't sleep without \\cBKris\\cW, \\cPSusie\\cW or \\cGRalsei\\cW unlocked.)/%", "scr_text_slash_scr_text_gml_8487_0");
            }
            break;
/// END

/// BEFORE
        case 5000:
/// CODE
        case 2000:
            global.choicemsg[0] = stringsetloc("#I'll wait#here", "scr_text_slash_scr_text_gml_7037_0");
            global.choicemsg[1] = stringsetloc("#Let's go", "scr_text_slash_scr_text_gml_7038_0");
            global.choicemsg[2] = stringset(" ");
            global.choicemsg[3] = stringset(" ");
            scr_speaker("susie");
            msgsetloc(0, "\\E1* Wait^1, Kris./", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E0* We're the one's with the climbing claws^1, right?/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E1* If Ralsei shows up^1, I dunno if he'd be able to climb up there./", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\E1* We should probably find him and then climb up./", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("\\C2 ", "scr_text_slash_scr_text_gml_7042_0");
            break;
        
        case 2001:
            scr_speaker("susie");
            
            if (global.choice == 0)
            {
                msgsetloc(0, "\\E6* Huh^1? You sure?/", "scr_text_slash_scr_text_gml_7048_0");
                msgnextloc("\\E0* Well^1, alright I guess./", "scr_text_slash_scr_text_gml_7048_0");
                msgnextloc("\\E2* Be back soon./%", "scr_text_slash_scr_text_gml_7048_0");
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
            msgnextloc("* (You feel like \\cYyou will need to know how to wrong warp\\cW to progress.)/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnextloc("* (Leave anyway?)/", "obj_climbstartertrig_slash_Step_0_gml_15_0");
            msgnext("\\C2");
            break;
        
        case 2003:
            if (global.choice == 0)
                global.customflags[39] = 1;
            
            scr_speaker("no_name");
            msgset(0, "%%");
            break;
        
/// END
