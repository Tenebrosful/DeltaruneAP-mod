/// PATCH

/// REPLACE
        if (global.plot >= 242)
/// CODE
        if (global.plot >= 244)
/// END

/// REPLACE
            msgsetloc(0, "* (The moss was consumed with gusto!)/%", "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
/// CODE
            msgsetloc(0, "* (The moss turned into a check!)/%", "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
            AP_sendLocation(226);
/// END