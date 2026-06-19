/// PATCH

/// REPLACE
    msgnextloc("(KRIS RECEIVED THE \\cYEGG\\cW.)/%", "obj_blocktree_dmg_slash_Step_0_gml_262_0");
    scr_keyitemget(2);
/// CODE
    AP_sendLocation(170);
    msgnextloc(string("(YOU RECEIVED {0}.)/%", AP_get_location_reward_text(170)), "obj_blocktree_dmg_slash_Step_0_gml_262_0");
/// END

/// REPLACE
        msgnextloc("THERE'S NO SHAME IN AN EGG./", "obj_blocktree_dmg_slash_Step_0_gml_294_0");
/// CODE
        msgnextloc("OH^1, YOU ALREADY DID?/", "obj_blocktree_dmg_slash_Step_0_gml_294_0");
        msgnextloc("MAYBE I WON'T BE FORGOTTEN AFTER ALL./", "obj_blocktree_dmg_slash_Step_0_gml_294_0");
/// END