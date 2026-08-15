/// PATCH

/// REPLACE
var itemgetstring = scr_itemget_anytype_text(itemid, "item");
msgsetloc(0, "* (You found a \\cYFlatSoda\\cW.)/", "obj_swordroute_event_susiesoda_slash_Other_10_gml_16_0");
/// CODE
t_itemid = 184;
var itemgetstring = scr_itemget_anytype_text(itemid, "check");
msgsetloc(0, string("* (You found {0}.)/", AP_get_location_reward_text(184)), "obj_swordroute_event_susiesoda_slash_Other_10_gml_16_0");
/// END