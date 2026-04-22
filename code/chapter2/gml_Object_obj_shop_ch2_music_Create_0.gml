/// PATCH

/// REPLACE
shopdesc[0] = stringsetloc("Musical food#with a#crunch#Heals 80HP", "obj_shop_ch2_music_slash_Create_0_gml_79_0");
shopdesc[1] = stringsetloc("ARMOR#Made#of green wires", "obj_shop_ch2_music_slash_Create_0_gml_80_0");
shopdesc[2] = stringsetloc("WEAPON#Press hilt#to extend", "obj_shop_ch2_music_slash_Create_0_gml_81_0");
shopdesc[3] = stringsetloc("WEAPON#Make sure#to charge it", "obj_shop_ch2_music_slash_Create_0_gml_82_0");
/// CODE
items_data[0] = scr_ap_get_location_reward_data(70)
items_data[1] = scr_ap_get_location_reward_data(71)
items_data[2] = scr_ap_get_location_reward_data(72)
items_data[3] = scr_ap_get_location_reward_data(73)

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
    item[i] = i + 70;
    itemcount = 99;
    scr_hintspot(i + 70);
    
    if (global.customflags[1070 + i] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = i + 70;
    }
/// END