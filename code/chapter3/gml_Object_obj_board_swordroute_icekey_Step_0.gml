/// PATCH

/// REPLACE
        global.flag[1055] = 1;
/// CODE
        scr_checkspot(182);
        global.customflags[22] = 1;
/// END

/// REPLACE
        msgsetloc(0, "YOU GOT THE \\cIICE KEY\\cW", "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// CODE
        global.flag[1055] = 1;
        msgsetloc(0, "YOU SENT A \\cYCHECK\\cW TO YOUR \\cYMULTIWORLD\\cW", "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// END
