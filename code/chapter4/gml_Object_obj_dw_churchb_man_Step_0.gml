/// PATCH

/// REPLACE
        scr_keyitemget(2);
        scr_speaker("no_name");
        msgsetloc(0, "* (An Egg was picked up from a nearby easel.)/%", "obj_dw_churchb_man_slash_Step_0_gml_227_0");
/// CODE
        AP_sendLocation(211);
        scr_speaker("no_name");
        msgsetloc(0, string("* ({0} was picked up from a nearby easel.)/%", AP_get_location_reward_text(211)), "obj_dw_churchb_man_slash_Step_0_gml_227_0");

/// END