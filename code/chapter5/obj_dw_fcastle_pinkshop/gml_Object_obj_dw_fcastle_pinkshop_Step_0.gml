/// PATCH

/// REPLACE
var buythisstring = stringsetsubloc("* Buy this for ~1 Flowery Dollars and ~2 Pink Coins?/", flowercost, pinkcost, "obj_dw_fcastle_pinkshop_slash_Step_0_gml_61_0");
/// CODE
var buythisstring = stringsetsubloc("* Buy this for ~1 Flowery Dollars and ~2 Pink Coin?/", flowercost, pinkcost, "obj_dw_fcastle_pinkshop_slash_Step_0_gml_61_0");
/// END

/// REPLACE
                msgnextloc("* \"AquaKnife\" - A weapon for Kris^1. It will be easier to get critical hits./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// CODE
                t_itemid = 337;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 337;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgnextloc(string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
                msgnextloc("* \"SethSpecs\" - Armor^1. Be invulnerable longer after taking damage./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_116_0");
/// CODE
                t_itemid = 340;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 340;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgnextloc(string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
                msgnextloc("* \"BlueShoes\" - A weapon for Ralsei^1. Pacify will cost 0 TP./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_154_0");
/// CODE
                t_itemid = 339;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 339;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgnextloc(string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
                msgnextloc("* \"YellowHat\" - Armor^1. Spells are 20`% stronger./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_192_0");
/// CODE
                t_itemid = 342;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 342;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgnextloc(string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
                msgnextloc("* \"O.Glove\" - Armor^1. Susie's SCYTHEMARE will cost less TP./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_230_0");
/// CODE
                t_itemid = 338;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 338;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgnextloc(string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
            msgsetloc(0, "* \"GreenApron\" - Armor^1. Slightly recover HP when defending./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_294_0");
/// CODE
            t_itemid = 341;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 341;
            apdata = AP_get_location_reward_data(t_itemid);
            AP_sendHint(t_itemid);
            msgsetloc(0, string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
                msgsetloc(0, "* \"FloweryScarf\" - Ralsei's ultimate weapon^1. Only costs 1F$./", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_331_0");
/// CODE
                t_itemid = 343;
                with (obj_dw_fcastle_pinkshop)
                    t_itemid = 343;
                apdata = AP_get_location_reward_data(t_itemid);
                AP_sendHint(t_itemid);
                msgsetloc(0, string("* \"{0}\" - Item for {1}./", apdata.itemName, apdata.playerName), "obj_dw_fcastle_pinkshop_slash_Step_0_gml_78_0");
/// END

/// REPLACE
        var str = scr_itemget_anytype_text(flower[tryingtobuy].itemindex, flower[tryingtobuy].itemtype);
        msgset(0, str);
/// CODE
        var str = scr_itemget_anytype_text(t_itemid, "check");
        msgset(0, string("* You got {0}./%", AP_get_location_reward_text(t_itemid)));
/// END

/// REPLACE
        if (purchasecount == 3)
        {
            global.interact = 1;
            timer = 0;
            con = 45;
        }
        else if (purchasecount == 4)
/// CODE
        if (purchasecount == 6)
        {
            global.interact = 1;
            timer = 0;
            con = 45;
        }
        else if (purchasecount == 7)
/// END

/// REPLACE
            msgsetloc(0, "\\ER* I'm..^1. I'm not wearing this stupid ribbon!/%", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_439_0");
/// CODE
            msgsetloc(0, "\\ER* We..^1. We shouldn't have bought that stupid item.../%", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_439_0");
/// END

/// REPLACE
    c_msgnextsubloc("~1* It seems that there are~2no more pink shards./", (global.lang == "ja") ? "\\m5\t\t\t" : "\\m5\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_572_0");
/// CODE
    c_msgnextsubloc("~1* It seems that there are~2no more items here./", (global.lang == "ja") ? "\\m5\t\t\t" : "\\m5\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_fcastle_pinkshop_slash_Step_0_gml_572_0");
/// END

/// REPLACE
    if (purchasecount == 3)
    {
        fcost = 1;
        pcost = 0;
    }
/// CODE
    if (purchasecount == 6)
    {
        fcost = 1;
        pcost = 0;
    }
/// END

/// REPLACE
    if (purchasecount == 4)
    {
        with (flower[6])
/// CODE
    if (purchasecount == 7)
    {
        with (flower[6])
/// END