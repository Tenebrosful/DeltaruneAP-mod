/// PATCH

/// REPLACE
        }
        else
        {
            var haveRing = scr_weaponcheck_inventory(13) || global.charweapon[4] == 13;
/// CODE
            
            if (scr_sideb_get_phase() > 2)
                scr_checkspot(113);
        }
        else
        {
            var haveRing = global.customflags[18];
/// END

/// REPLACE
    msgsetloc(0, "* Sorry^1, the roller coaster is under construction./", "obj_npc_sign_slash_Other_10_gml_1103_0");
    msgnextloc("* Apparently^1, someone tried to use it anyway.../%", "obj_npc_sign_slash_Other_10_gml_1104_0");
/// CODE
    
    if (global.plot >= 64)
    {
        msgsetloc(0, "* Sorry^1, the roller coaster is under construction./", "obj_npc_sign_slash_Other_10_gml_1103_0");
        msgnextloc("* Apparently^1, someone tried to use it anyway.../%", "obj_npc_sign_slash_Other_10_gml_1104_0");
    }
    else if (global.customflags[11] == 1)
    {
        msgsetloc(0, "* Sorry for getting in your way./%", "obj_npc_sign_slash_Other_10_gml_1104_0");
    }
    else
    {
        msgsetloc(0, "* Sorry^1, the roller coaster is under construction./", "obj_npc_sign_slash_Other_10_gml_1103_0");
        
        if (scr_keyitemcheck(1009))
        {
            msgnextloc("* Oh^1, you guys have safety vests?/", "obj_npc_sign_slash_Other_10_gml_1104_0");
            msgnextloc("* Sorry, you three must work here./", "obj_npc_sign_slash_Other_10_gml_1104_0");
            msgnextloc("* Come on by!/%", "obj_npc_sign_slash_Other_10_gml_1104_0");
            global.customflags[11] = 1;
        }
        else
        {
            msgnextloc("* You'll need to prove you work here to enter./", "obj_npc_sign_slash_Other_10_gml_1104_0");
            msgnextloc("* Or y'know, show up wearing a Safety Vest.../%", "obj_npc_sign_slash_Other_10_gml_1104_0");
        }
    }
/// END

/// AFTER
            var small_text_b = stringsetloc("Goo Duckris?", "obj_npc_sign_slash_Other_10_gml_1142_0_b");
            scr_smallface(1, "susie", 0, "right", "bottom", small_text_b);
        }
    }
/// CODE
    else if (scr_havechar(4))
    {
        scr_speaker("noelle");
        msgsetloc(0, "\\E0* Oh^1, Kris^1, do you need help with the puzzle^1?/");
        msgnextloc("\\E1* Oh^1, you just wanted to talk?/");
        msgnextloc("\\E2* Um^1, alright^1, about what?/");
        msgnextloc("\\E8* ..^1.You just wanted ME to talk?/");
        msgnextloc("\\E3* That's...^1?&* Not how conversations work???/%");
        
        if (read >= 1)
        {
            scr_speaker("noelle");
            msgsetloc(0, "\\E9* (They've been acting so strange lately...)/%");
        }
    }
/// END

/// REPLACE
        scr_speaker("susie");
        msgsetloc(0, "\\EA* Heh^1, it would be funny if the puzzle^1, like.../", "obj_npc_sign_slash_Other_10_gml_1175_0");
        msgnextloc("\\E2* It's actually missing the one letter you actually need./", "obj_npc_sign_slash_Other_10_gml_1176_0");
        
        if (global.plot >= 100)
            msgnextloc("\\EK* Hey^1, stop pretending to write down what I say./%", "obj_npc_sign_slash_Other_10_gml_1180_0");
        else
            msgnextloc("\\EY* Heh^1, like to see Berdly try and solve that.../%", "obj_npc_sign_slash_Other_10_gml_1182_0");
        
        if (read >= 1)
        {
            scr_speaker("susie");
            msgsetloc(0, "\\EK* Hey^1, Kris^1, pretty sure you don't have to do this./%", "obj_npc_sign_slash_Other_10_gml_1187_0");
        }
/// CODE
        if (scr_havechar(4))
        {
            scr_speaker("noelle");
            msgsetloc(0, "\\E1* Gias..^1. felfe..^1./", "obj_npc_sign_slash_Other_10_gml_1187_0");
            msgnextloc("\\E4* Faha^1! What is this word^1, ICE-E's catchphrase?/", "obj_npc_sign_slash_Other_10_gml_1175_0");
            msgnextloc("\\E5* Next thing I know^1, you're going to chant it three times.../", "obj_npc_sign_slash_Other_10_gml_1176_0");
            msgnextloc("\\E3* And try to convince me it will summon ICE-E./%", "obj_npc_sign_slash_Other_10_gml_1176_0");
            
            if (read >= 1)
            {
                scr_speaker("noelle");
                msgsetloc(0, "\\E8* Kris!^1! That wasn't an invitation to start chanting it!/%", "obj_npc_sign_slash_Other_10_gml_1187_0");
            }
        }
        else
        {
            scr_speaker("susie");
            msgsetloc(0, "\\EA* Heh^1, it would be funny if the puzzle^1, like.../", "obj_npc_sign_slash_Other_10_gml_1175_0");
            msgnextloc("\\E2* It's actually missing the one letter you actually need./", "obj_npc_sign_slash_Other_10_gml_1176_0");
            
            if (global.plot >= 100)
                msgnextloc("\\EK* Hey^1, stop pretending to write down what I say./%", "obj_npc_sign_slash_Other_10_gml_1180_0");
            else
                msgnextloc("\\EY* Heh^1, like to see Berdly try and solve that.../%", "obj_npc_sign_slash_Other_10_gml_1182_0");
            
            if (read >= 1)
            {
                scr_speaker("susie");
                msgsetloc(0, "\\EK* Hey^1, Kris^1, pretty sure you don't have to do this./%", "obj_npc_sign_slash_Other_10_gml_1187_0");
            }
        }
/// END

/// REPLACE
        if (global.flag[463] == 0)
/// CODE
        if (scr_havechar(4))
            global.msc = 1244;
        else if (global.flag[463] == 0)
/// END