/// PATCH .ignore if !CHAPTER_2 && !CHAPTER_4

/// AFTER
        wrap = 0;
        vwrap = 0;
/// CODE
        scr_hintspot(40);
        scr_hintspot(41);
        scr_hintspot(42);
        scr_hintspot(102);
        scr_hintspot(103);
        scr_hintspot(244);
/// END

/// REPLACE .ignore if !CHAPTER_2
        dojoPrizeName[0] = stringsetloc("Joe's Life Savings", "obj_fusionmenu_slash_Step_0_gml_153_0_b");
        dojoPrizeName[1] = stringsetloc("$100", "obj_fusionmenu_slash_Step_0_gml_150_0");
        dojoPrizeName[2] = stringsetloc("ClubsSandwich", "obj_fusionmenu_slash_Step_0_gml_151_0");
        dojoPrizeName[3] = stringsetloc("---", "obj_fusionmenu_slash_Step_0_gml_152_0");
        dojoPrizeName[4] = stringsetloc("---", "obj_fusionmenu_slash_Step_0_gml_153_0");
        dojoPrizeValue[0] = 1;
        dojoPrizeValue[1] = 100;
        dojoPrizeValue[2] = 11;
        dojoPrizeValue[3] = 250;
        dojoPrizeValue[4] = 28;
        dojoPrizeType[0] = "money";
        dojoPrizeType[1] = "money";
        dojoPrizeType[2] = "item";
        dojoPrizeType[3] = "money";
        dojoPrizeType[4] = "item";
/// CODE
        dojoPrizeName[0] = stringsetloc(scr_ap_get_location_reward_data(36).itemName, "obj_fusionmenu_slash_Step_0_gml_153_0_b");
        dojoPrizeName[1] = stringsetloc(scr_ap_get_location_reward_data(37).itemName, "obj_fusionmenu_slash_Step_0_gml_150_0");
        dojoPrizeName[2] = stringsetloc(scr_ap_get_location_reward_data(38).itemName, "obj_fusionmenu_slash_Step_0_gml_151_0");
        dojoPrizeName[3] = stringsetloc("---", "obj_fusionmenu_slash_Step_0_gml_152_0");
        dojoPrizeName[4] = stringsetloc("---", "obj_fusionmenu_slash_Step_0_gml_153_0");
        dojoPrizeValue[0] = 1;
        dojoPrizeValue[1] = 100;
        dojoPrizeValue[2] = 11;
        dojoPrizeValue[3] = 250;
        dojoPrizeValue[4] = 28;
        dojoPrizeType[0] = "36";
        dojoPrizeType[1] = "37";
        dojoPrizeType[2] = "38";
        dojoPrizeType[3] = "100";
        dojoPrizeType[4] = "101";
        dojoFlag[0] = 814;
        dojoFlag[1] = 810;
        dojoFlag[2] = 811;
        dojoFlag[3] = 812;
        dojoFlag[4] = 813;
        scr_hintspot(36);
        scr_hintspot(37);
        scr_hintspot(38);
/// END

/// REPLACE .ignore if !CHAPTER_2
                dojoPrizeName[3] = stringsetloc("$250", "obj_fusionmenu_slash_Step_0_gml_178_0");
                dojoTopComment[3] = stringsetloc("Winning's as easy as A-B-C!#You've got three chances, boss!", "obj_fusionmenu_slash_Step_0_gml_180_0");
                dojoEncounter[3] = 89;
/// CODE
                dojoPrizeName[3] = stringsetloc(scr_ap_get_location_reward_data(100).itemName, "obj_fusionmenu_slash_Step_0_gml_178_0");
                dojoTopComment[3] = stringsetloc("Winning's as easy as A-B-C!#You've got three chances, boss!", "obj_fusionmenu_slash_Step_0_gml_180_0");
                dojoEncounter[3] = 89;
                scr_hintspot(100);
/// END

/// REPLACE .ignore if !CHAPTER_2
                dojoPrizeName[4] = stringsetloc("TensionGem", "obj_fusionmenu_slash_Step_0_gml_179_0");
                dojoTopComment[4] = stringsetloc("Face everyone in a row!#It'll take some stamina...", "obj_fusionmenu_slash_Step_0_gml_181_0");
                dojoEncounter[4] = 90;
/// CODE
                dojoPrizeName[4] = stringsetloc(scr_ap_get_location_reward_data(101).itemName, "obj_fusionmenu_slash_Step_0_gml_179_0");
                dojoTopComment[4] = stringsetloc("Face everyone in a row!#It'll take some stamina...", "obj_fusionmenu_slash_Step_0_gml_181_0");
                dojoEncounter[4] = 90;
                scr_hintspot(101);
/// END

/// REPLACE
        scr_itemget_anytype(fusionResult[menuCoord[0]], fusionResultType[menuCoord[0]]);
/// CODE
        
        if (fusionResult[menuCoord[0]] == 22)
            scr_checkspot(40);
        else if (fusionResult[menuCoord[0]] == 8)
            scr_checkspot(41);
        else if (fusionResult[menuCoord[0]] == 9)
            scr_checkspot(102);
        else if (fusionResult[menuCoord[0]] == 13)
            scr_checkspot(42);
        else if (fusionResult[menuCoord[0]] == 15)
            scr_checkspot(103);
        else if (fusionResult[menuCoord[0]] == 11)
            scr_checkspot(244);
/// END