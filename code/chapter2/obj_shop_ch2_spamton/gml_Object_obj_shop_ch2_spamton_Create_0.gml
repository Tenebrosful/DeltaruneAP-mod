/// PATCH

/// REPLACE

if (global.flag[309] >= 3)
    soldout[0] = 1;

/// CODE
/// END

/// REPLACE
shopdesc[0] = stringsetloc("KEYITEM#100%#CERTIFIED#WAREZ", "obj_shop_ch2_spamton_slash_Create_0_gml_89_0");
shopdesc[1] = stringsetloc("ITEM#ITEM#AFFECTS HP#A LOT!#THE SMOOTH#TASTE OF", "obj_shop_ch2_spamton_slash_Create_0_gml_90_0");
shopdesc[2] = stringsetloc("CUT ANYTHING#2 PIECES!#CRIMINAL!", "obj_shop_ch2_spamton_slash_Create_0_gml_91_0");
shopdesc[3] = stringsetloc("EXCLUSIVE#OFFICIAL#SPAMTON", "obj_shop_ch2_spamton_slash_Create_0_gml_92_0");
/// CODE
items_data[0] = AP_get_location_reward_data(90)
items_data[1] = AP_get_location_reward_data(91)
items_data[2] = AP_get_location_reward_data(92)
items_data[3] = AP_get_location_reward_data(93)

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
    item[i] = i + 90;
    itemcount = 99;
    AP_sendHint(i + 90);
    
    if (global.customflags[1090 + i] == 1)
    {
        shopitemname[i] = "OUT OF STOCK";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = i + 90;
    }
/// END

/// REPLACE
shopitemname[1] = stringsetloc("S. POTION", "obj_shop_ch2_spamton_slash_Create_0_gml_147_0");
shopitemname[2] = stringsetloc("''THE BIG ONE''", "obj_shop_ch2_spamton_slash_Create_0_gml_148_0");
canequip[2][1] = 1;
canequip[2][2] = 1;
canequip[2][3] = 1;
itematk[2] = 5324823492384348000000000;
shopitemname[3] = stringsetloc("BSHOT BOWTIE", "obj_shop_ch2_spamton_slash_Create_0_gml_153_0");
itemdef[3] = 50;
/// CODE
/// END