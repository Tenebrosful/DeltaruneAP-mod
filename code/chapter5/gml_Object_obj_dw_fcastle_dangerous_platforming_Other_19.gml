/// PATCH

/// REPLACE
    {
        if (!scr_keyitemcheck(28))
        {
            with (shine)
                instance_destroy();
            
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's a papers.)/", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_60_0");
            msgnextloc("* (TrainPlans was added to your EVIDENCE.)/%", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_61_0");
            d_make();
            myinteract = 999;
        }
    }
    
    if (myinteract == 999 && !d_ex())
    {
        scr_keyitemget(28);
        snd_play(snd_item);
        myinteract = 0;
        global.interact = 0;
        
        with (marker)
            instance_destroy();
        
        instance_destroy();
    }
/// CODE
    {
        if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 1)
        {
            with (shine)
                instance_destroy();
            
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's a papers.)/", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_60_0");
            msgnextloc("* (You probably don't need these.)/%", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_61_0");
            d_make();
            myinteract = 999;
        }
        else if (!scr_keyitemcheck(28))
        {
            with (shine)
                instance_destroy();
            
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's a papers.)/", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_60_0");
            msgnextloc("* (TrainPlans was added to your EVIDENCE.)/%", "obj_dw_fcastle_dangerous_platforming_slash_Other_19_gml_61_0");
            d_make();
            myinteract = 999;
        }
    }
    
    if (myinteract == 999 && !d_ex())
    {
        if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 0)
        {
            global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] = 1;
            scr_keyitemget(28);
            snd_play(snd_item);
        }
        
        myinteract = 0;
        global.interact = 0;
        
        with (marker)
            instance_destroy();
        
        instance_destroy();
    }
/// END