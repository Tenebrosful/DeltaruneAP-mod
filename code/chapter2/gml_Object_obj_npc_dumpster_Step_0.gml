/// PATCH

/// REPLACE
    msgsetloc(0, "\\s0* You found the \\cG[Moss]\\cW^8! %%", "obj_npc_dumpster_slash_Step_0_gml_40_0");
/// CODE
    msgsetloc(0, string("\\s0* The \\cG[Moss]\\cW turned into {0}^8! %%", scr_ap_get_location_reward_text(107)), "obj_npc_dumpster_slash_Step_0_gml_40_0");
    scr_checkspot(107);
/// END