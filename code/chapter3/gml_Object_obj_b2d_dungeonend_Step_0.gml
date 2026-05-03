/// PATCH

/// REPLACE
            msgsetloc(0, "YOU GOT THE\n\\cSSHELTER KEY\\cW", "obj_b2d_dungeonend_slash_Step_0_gml_114_0");
/// CODE
            global.flag[1055] = 3;
            msgsetloc(0, "YOU SENT A \\cYCHECK\\cW TO YOUR \\cYMULTIWORLD\\cW", "obj_b2d_dungeonend_slash_Step_0_gml_114_0");
/// END

/// REPLACE
        if (d.halt)
        {
            global.flag[1055] = 3;
            snd_play(snd_link_sfx_itemget_bad);
/// CODE
        if (d.halt)
        {
            scr_checkspot(183);
            global.customflags[22] = 2;
            snd_play(snd_link_sfx_itemget_bad);
/// END