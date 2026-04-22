/// PATCH

/// REPLACE
shopdesc[0] = stringsetloc("ITEM#Short for#ButlerJuice#+100HP", "obj_shop_ch2_swatch_slash_Create_0_gml_80_0");
shopdesc[1] = stringsetloc("ITEM#Spaghetti#woven by#master coders#Party +30HP", "obj_shop_ch2_swatch_slash_Create_0_gml_79_0");
shopdesc[2] = stringsetloc("ARMOR#A handsome#bowtie.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0");
shopdesc[3] = stringsetloc("ARMOR#Luxurious#brooch.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0_b");
/// CODE
items_data[0] = scr_ap_get_location_reward_data(80)
items_data[1] = scr_ap_get_location_reward_data(81)
items_data[2] = scr_ap_get_location_reward_data(82)
items_data[3] = scr_ap_get_location_reward_data(83)

shopdesc[0] = string("{0}#Will be#sent to#{1}#world", items_data[0].itemName, items_data[0].playerName);
shopdesc[1] = string("{0}#Will be#sent to#{1}#world", items_data[1].itemName, items_data[1].playerName);
shopdesc[2] = string("{0}#Will be#sent to#{1}#world", items_data[2].itemName, items_data[2].playerName);
shopdesc[3] = string("{0}#Will be#sent to#{1}#world", items_data[3].itemName, items_data[3].playerName);
/// END

/// AFTER
        canequip[i][3] = weaponchar3temp;
        buyvalue[i] = value;
    }
/// CODE
    shopitemname[i] = "Check";
    itemtype[i] = "check";
    item[i] = i + 80;
    itemcount = 99;
    scr_hintspot(i + 80);
    
    if (global.customflags[1080 + i] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = i + 80;
    }
/// END