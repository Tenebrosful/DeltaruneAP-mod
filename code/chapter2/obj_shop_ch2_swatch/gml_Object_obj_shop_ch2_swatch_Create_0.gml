/// PATCH

/// REPLACE
shopdesc[0] = stringsetloc("ITEM#Short for#ButlerJuice#+100HP", "obj_shop_ch2_swatch_slash_Create_0_gml_80_0");
shopdesc[1] = stringsetloc("ITEM#Spaghetti#woven by#master coders#Party +30HP", "obj_shop_ch2_swatch_slash_Create_0_gml_79_0");
shopdesc[2] = stringsetloc("ARMOR#A handsome#bowtie.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0");
shopdesc[3] = stringsetloc("ARMOR#Luxurious#brooch.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0_b");
/// CODE
items_data[0] = AP_get_location_reward_data(80)
items_data[1] = AP_get_location_reward_data(81)
items_data[2] = AP_get_location_reward_data(82)
items_data[3] = AP_get_location_reward_data(83)

shopdesc[0] = "This will#be send to#somebody#multiworld.";
shopdesc[1] = "This will#be send to#somebody#multiworld.";
shopdesc[2] = "This will#be send to#somebody#multiworld.";
shopdesc[3] = "This will#be send to#somebody#multiworld.";
/// END

/// AFTER
        canequip[i][3] = weaponchar3temp;
        buyvalue[i] = value;
    }
/// CODE
    shopitemname[i] = items_data[i].itemName;
    shop_item_flags[i] = items_data[i].flags;
    shopitemreceivername[i] = items_data[i].playerName;
    itemtype[i] = "check";
    item[i] = i + 80;
    itemcount = 99;
    AP_sendHint(i + 80);
    
    if (global.customflags[1080 + i] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = i + 80;
    }
/// END