/// PATCH

/// REPLACE
            msgsetloc(0, "YOU GOT THE\n\\cSSHELTER KEY\\cW", "obj_b2d_dungeonend_slash_Step_0_gml_114_0");
/// CODE
            global.flag[1055] = 3;
            msgsetloc(0, string("YOU SENT {0}", string_upper(AP_get_location_reward_text(183))), "obj_b2d_dungeonend_slash_Step_0_gml_114_0");
/// END

/// REPLACE
        if (d.halt)
        {
            global.flag[1055] = 3;
            snd_play(snd_link_sfx_itemget_bad);
/// CODE
        if (d.halt)
        {
            AP_sendLocation(183);
            global.customflags[global.custom_flags_indexes.SWORD_progression] = 2;
            snd_play(snd_link_sfx_itemget_bad);
/// END