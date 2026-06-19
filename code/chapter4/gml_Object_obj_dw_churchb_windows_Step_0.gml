/// PATCH

/// REPLACE
        if (global.plot >= 242)
/// CODE
        if (global.plot >= 244)
/// END

/// REPLACE
            msgsetloc(0, "* (The moss was consumed with gusto!)/%", "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
/// CODE
            AP_sendLocation(226);
            msgsetloc(0, string("* (The moss turned into a {0}!)/%", AP_get_location_reward_text(226)), "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
/// END