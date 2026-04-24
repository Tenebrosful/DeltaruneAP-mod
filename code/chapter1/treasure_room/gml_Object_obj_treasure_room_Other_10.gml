/// PATCH

/// BEFORE
    if (itemtype == "item")
    {
/// CODE
    if (itemtype == "check")
    {
        itemname = "Check";
        itemtypename = "Multiworld";
        AP_sendLocation(t_itemid);
    }
    
/// END

/// REPLACE
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"), itemname);
/// CODE
    global.msg[0] = string("* (Inside the treasure chest was {0}.)/%", scr_ap_get_location_reward_text(t_itemid));
/// END

/// REPLACE
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"), itemname, itemtypename);
/// CODE
/// END