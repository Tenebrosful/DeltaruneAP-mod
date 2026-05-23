/// PATCH

/// REPLACE
    msgnextloc("* (But^1, there was also \\cY500 POINTs\\cW)/%", "obj_dw_teevie_watercooler_slash_Step_0_gml_290_0");
/// CODE
    msgnextloc(string("* (But^1, also {0}/%", AP_get_location_reward_text(153)), "obj_dw_teevie_watercooler_slash_Step_0_gml_290_0");
/// END

/// REPLACE
    msgnextloc("* (inside was \\cY500 POINTs\\cW!)/%", "obj_dw_teevie_watercooler_slash_Step_0_gml_298_0");
/// CODE
    msgnextloc(string("* (inside was {0}/%", AP_get_location_reward_text(153)), "obj_dw_teevie_watercooler_slash_Step_0_gml_298_0");
/// END

/// REPLACE
    var itemgetstring = scr_itemget_anytype_text(500, "points");
/// CODE
    t_itemid = 153;
    var itemgetstring = scr_itemget_anytype_text(1, "check");
/// END