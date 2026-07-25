/// PATCH

/// REPLACE
            scr_keyitemget(2);
            scr_speaker("no_name");
            msgsetloc(0, "* (You received the \"Egg\".)/", "obj_room_man_slash_Step_0_gml_68_0");
/// CODE
            AP_sendLocation(304);
            scr_speaker("no_name");
            msgsetloc(0, string("* (You received {0}.)/", AP_get_location_reward_text(304)), "obj_room_man_slash_Step_0_gml_68_0");
/// END