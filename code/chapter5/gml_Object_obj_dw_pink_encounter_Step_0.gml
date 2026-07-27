/// PATCH

/// REPLACE
    c_msgsetloc(0, "* (SHADOWCRYSTAL was added to your KEY ITEMS.)/%", "obj_dw_pink_encounter_slash_Step_0_gml_1200_0");
/// CODE
    c_msgsetloc(0, string("* (You got {0}.)/%", AP_get_location_reward_text(336)), "obj_dw_pink_encounter_slash_Step_0_gml_1200_0");
    AP_sendLocation(336);
/// END

/// REPLACE
    scr_get_shadow_crystal(global.chapter);
    
    if (scr_keyitemcheck(13) == 0)
        scr_keyitemget(13);
/// CODE
/// END