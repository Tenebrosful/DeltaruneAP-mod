/// PATCH

/// REPLACE
function vending_item(arg0 = 0, arg1 = "", arg2 = 0) constructor
{
    item_id = arg0;
    item_type = arg1;
    item_desc = vending_get_item_description(item_id, item_type);
    point_value = arg2;
}
/// CODE
function vending_item(arg0 = 0, arg1 = "", arg2 = 0, arg3 = 0) constructor
{
    item_id = arg0;
    item_type = arg1;
    item_desc = vending_get_item_description(item_id, item_type);
    point_value = arg2;
    custom_price = arg3;
}
/// END

/// BEFORE
    return _desc;
}
/// CODE
    else if (arg1 == "check")
    {
        _desc = stringsetloc("CHECK#Will be#sent to the#Multiworld", "scr_shop_vending_slash_scr_shop_vending_gml_66_0_b");
    }
/// END