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