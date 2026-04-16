/// PATCH

/// BEFORE
    if (itemtype == "item")
    {
/// CODE
    if (itemtype == "check")
    {
        itemname = "Check";
        itemtypename = "Multiworld";
        scr_checkspot(t_itemid);
    }
    
/// END

/// REPLACE
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"), itemname);
/// CODE
    global.msg[0] = scr_84_get_subst_string("* (You opened the treasure chest.^1)&* (Inside was a Check.)/", itemname);
/// END

/// REPLACE
        global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"), itemname, itemtypename);
/// CODE
        global.msg[1] = scr_84_get_subst_string("* (You sent the Check to your Multiworld.)/%", itemname, itemtypename);
/// END