/// PATCH

/// REPLACE
    var iteminfo = scr_itemget_anytype_text(33, "armor");
    scr_speaker("no_name");
    msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_dw_garden_ribbonchest_slash_Step_0_gml_25_0");
/// CODE
    t_itemid = 268;
    var iteminfo = scr_itemget_anytype_text(t_itemid, "check");
    scr_speaker("no_name");
    msgset(0, string("* (Inside the treasure chest was {0}.)/", AP_get_location_reward_text(t_itemid)));
/// END


