/// PATCH

/// REPLACE
        global.flag[1055] = 1;
/// CODE
        AP_sendLocation(182);
        global.customflags[global.custom_flags_indexes.SWORD_progression] = 1;
/// END

/// REPLACE
        msgsetloc(0, "YOU GOT THE \\cIICE KEY\\cW", "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// CODE
        global.flag[1055] = 1;
        msgsetloc(0, string("YOU GOT {0}", AP_get_location_reward_text(182)), "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// END
