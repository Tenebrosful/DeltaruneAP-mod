/// PATCH

/// REPLACE
    if (global.choice == 0)
    {
        c_sel_sprite(su, 2265);
        c_sel_sprite(kr, 5905);
        c_snd_play(snd_swallow);
        c_snd_play(snd_power);
        c_speaker("no_name");
        c_msgsetloc(0, "* (The moss was consumed.)/%", "obj_ch5_DW19B_slash_Step_0_gml_317_0");
        c_talk_wait();
    }
    
    if (global.choice == 1)
    {
        c_speaker("susie");
        c_msgsetloc(0, "\\E5* Hey^1, the hell are you waiting for!?/", "obj_ch5_DW19B_slash_Step_0_gml_331_0");
        c_msgnextloc("\\EH* Eating that moss might be our only way out!!/%", "obj_ch5_DW19B_slash_Step_0_gml_332_0");
        c_talk_wait();
        c_sel_sprite(su, 2265);
        c_snd_play(snd_swallow);
        c_snd_play(snd_power);
        c_speaker("no_name");
        c_msgsetloc(0, "* (The moss was consumed.)/%", "obj_ch5_DW19B_slash_Step_0_gml_349_0");
        c_talk_wait();
    }
/// CODE
    if (global.choice == 0)
    {
        c_sel_sprite(su, 2265);
        c_sel_sprite(kr, 5905);
        c_snd_play(snd_swallow);
        c_snd_play(snd_power);
        c_speaker("no_name");
        c_msgsetloc(0, string("* (The moss turned into {0}.)/%", AP_get_location_reward_text(331)), "obj_ch5_DW19B_slash_Step_0_gml_317_0");
        AP_sendLocation(331);
        c_talk_wait();
    }
    
    if (global.choice == 1)
    {
        c_speaker("susie");
        c_msgsetloc(0, "\\E5* Hey^1, the hell are you waiting for!?/", "obj_ch5_DW19B_slash_Step_0_gml_331_0");
        c_msgnextloc("\\EH* Getting that moss might be our only way out!!/%", "obj_ch5_DW19B_slash_Step_0_gml_332_0");
        c_talk_wait();
        c_sel_sprite(su, 2265);
        c_snd_play(snd_swallow);
        c_snd_play(snd_power);
        c_speaker("no_name");
        c_msgsetloc(0, string("* (The moss turned into {0}.)/%", AP_get_location_reward_text(331)), "obj_ch5_DW19B_slash_Step_0_gml_317_0");
        AP_sendLocation(331);
        c_talk_wait();
    }
/// END