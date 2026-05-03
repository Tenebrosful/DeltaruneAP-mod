/// PATCH

/// REPLACE
sidemessage_list = [stringsetloc("(Select&an item.)", "obj_shop_vending_slash_Create_0_gml_24_0"), stringsetloc("(Item&bought.)", "obj_shop_vending_slash_Create_0_gml_25_0"), stringsetsubloc("(Not&enough&~1.)", value_label, "obj_shop_vending_slash_Create_0_gml_26_0"), stringsetloc("(Not&enough&space.)", "obj_shop_vending_slash_Create_0_gml_27_0"), stringsetloc("(Item&placed in&STORAGE.)", "obj_shop_vending_slash_Create_0_gml_28_0")];
/// CODE
sidemessage_list = [stringsetloc("(Select&an item.)", "obj_shop_vending_slash_Create_0_gml_24_0"), stringsetloc("(Item&bought.)", "obj_shop_vending_slash_Create_0_gml_25_0"), stringsetsubloc("(Not&enough&~1.)", value_label, "obj_shop_vending_slash_Create_0_gml_26_0"), stringsetloc("(Not&enough&space.)", "obj_shop_vending_slash_Create_0_gml_27_0"), stringsetloc("(It's&sold out.)", "obj_shop_vending_slash_Create_0_gml_28_0"), stringsetloc("(It's&sold out.)", "obj_shop_vending_slash_Create_0_gml_28_0")];
/// END

/// REPLACE
    shopdesc[i] = current_item.item_desc;
/// CODE
    shopdesc[i] = "This will#be send to#somebody#multiworld.";
/// END

/// AFTER
    if (menu_dollar)
        buyvalue[i] = dollar_value[i];
/// CODE
    
    shopitemname[i] = "Check";
    itemtype[i] = "check";
    item[i] = current_item.item_id + 120;
    itemcount = 99;
    AP_sendHint(item[i]);
    
    if (global.customflags[1120 + current_item.item_id] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = current_item.item_id + 120;
    }
/// END