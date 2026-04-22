/// PATCH

/// REPLACE
        global.msg[1] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_154_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_155_0");
/// CODE
        scr_checkspot(6);
        global.msg[1] = string("* Huh, the cake turned into {0}./", scr_ap_get_location_reward_text(6));
        global.msg[2] = "* I hope it's useful./%";
/// END

/// REPLACE
        scr_keyitemget(5);
        global.typer = 6;
        global.fc = 0;
        snd_play(snd_item);
        global.msg[0] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_184_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_185_0");
        global.msg[2] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_186_0");
        global.msg[3] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_187_0");
        global.msg[4] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_188_0");
/// CODE
        scr_checkspot(28);
        global.typer = 6;
        global.fc = 0;
        snd_play(snd_item);
        global.msg[0] = scr_84_get_lang_string("obj_npc_hammerguy_slash_Step_0_gml_184_0");
        global.msg[1] = string("* Huh, the key parts turned into {0}./", scr_ap_get_location_reward_text(28)); 
        global.msg[2] = "* I hope it's useful./%";

/// END