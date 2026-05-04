/// PATCH

/// REPLACE
        msgsetloc(0, "* (You got the FreezeRing.)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0");
/// CODE
        msgsetloc(0, string("* (You got {0}.)/%", AP_get_location_reward_text(112)), "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0");
/// END

/// REPLACE
    scr_weaponget(22);
/// CODE
    AP_sendLocation(112);
/// END