/// PATCH

/// REPLACE
    if (myinteract == 3)
    {
        if (!scr_keyitemcheck(22))
        {
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's BootOil.)/", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_103_0");
            msgnextloc("* (BootOil was added to your EVIDENCE.)/%", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_104_0");
            d_make();
            myinteract = 999;
        }
    }
    
    if (myinteract == 999 && !d_ex())
    {
        scr_keyitemget(22);
        snd_play(snd_item);
        myinteract = 0;
        global.interact = 0;
        
        with (marker)
            instance_destroy();
        
        instance_destroy();
    }
/// CODE
    if (myinteract == 3)
    {
        if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 1)
        {
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's BootOil.)/", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_103_0");
            msgnextloc("* (You probably don't need this.)/%", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_104_0");
            d_make();
            myinteract = 999;
        }
        else if (!scr_keyitemcheck(22))
        {
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* (It's BootOil.)/", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_103_0");
            msgnextloc("* (BootOil was added to your EVIDENCE.)/%", "obj_dw_fcastle_sandtrap_slash_Other_11_gml_104_0");
            d_make();
            myinteract = 999;
        }
    }
    
    if (myinteract == 999 && !d_ex())
    {
        if (global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] == 0)
        {
            global.customflags[global.custom_flags_indexes.ch5_unnecessary_evidence_gathered] = 1;
            scr_keyitemget(22);
            snd_play(snd_item);
        }
        
        myinteract = 0;
        global.interact = 0;
        
        with (marker)
            instance_destroy();
        
        instance_destroy();
    }
/// END
