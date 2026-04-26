/// PATCH

/// AFTER
    c_msgnextloc("* Let me become your strength./%", "obj_ch2_sceneex2a_slash_Step_0_gml_54_0");
/// CODE
    global.flag[309] = 9;
/// END

/// REPLACE
    c_msgsetloc(0, "* (You got ShadowCrystal.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_95_0");
    c_talk_wait();
    c_wait(5);
    noroom = 0;
    
    if (global.flag[571] == 1)
    {
        scr_weaponget(21);
        
        if (noroom == 1)
            global.flag[468] = 1;
        
        c_soundplay(snd_item);
        c_speaker("no_name");
        c_msgsetloc(0, "* (You got PuppetScarf.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_88_0");
        c_talk_wait();
    }
    else
    {
        global.flag[454] = 1;
        scr_armorget(21);
        
        if (noroom == 1)
            global.flag[468] = 1;
        
        c_soundplay(snd_item);
        c_speaker("no_name");
        c_msgsetloc(0, "* (You got Dealmaker.)/%", "obj_ch2_sceneex2a_slash_Step_0_gml_82_0");
        c_talk_wait();
    }
/// CODE
    c_msgsetloc(0, string("* (You got {0}.)/", scr_ap_get_location_reward_text(97)), "obj_ch2_sceneex2a_slash_Step_0_gml_95_0");
    c_msgsetloc(0, string("* (You got {0}.)/", scr_ap_get_location_reward_text(98)), "obj_ch2_sceneex2a_slash_Step_0_gml_95_0");
    c_msgsetloc(0, string("* (You got {0}.)/%", scr_ap_get_location_reward_text(99)), "obj_ch2_sceneex2a_slash_Step_0_gml_95_0");
    c_talk_wait();
    c_wait(5);
    noroom = 0;
    AP_sendLocation([97, 98, 99]);
    c_speaker("no_name");
    c_talk_wait();
/// END