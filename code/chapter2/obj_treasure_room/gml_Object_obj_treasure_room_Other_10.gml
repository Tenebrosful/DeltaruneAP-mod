/// PATCH

/// REPLACE
    msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_treasure_room_slash_Other_10_gml_65_0");
/// CODE
    msgsetsubloc(0, string("* (Inside the treasure chest was {0}.)/%", AP_get_location_reward_text(t_itemid)), itemname, "obj_treasure_room_slash_Other_10_gml_65_0");
/// END