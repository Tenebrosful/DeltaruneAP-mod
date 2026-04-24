/// PATCH .ignore if CHAPTER_1

/// BEFORE
    if (_itemtype == "item")
    {
        scr_iteminfo(_itemid);
        itemname = itemnameb;
        itemtypename = stringsetloc("ITEMs", "scr_itemget_anytype_text_slash_scr_itemget_anytype_text_gml_36_0");
/// CODE
    if (_itemtype == "check")
    {
        itemname = "Check";
        itemtypename = "Multiworld";
        AP_sendLocation(t_itemid);
    }
    
/// END

/// REPLACE
        itemgetstring = stringsetsubloc("* (\\cY~1\\cW was added to your \\cY~2\\cW.)", itemname, itemtypename, "obj_treasure_room_slash_Other_10_gml_76_0");
/// CODE
        itemgetstring = stringsetsubloc("* (The \\cY~1\\cW was sent to your \\cY~2\\cW.)", itemname, itemtypename, "obj_treasure_room_slash_Other_10_gml_76_0");
/// END