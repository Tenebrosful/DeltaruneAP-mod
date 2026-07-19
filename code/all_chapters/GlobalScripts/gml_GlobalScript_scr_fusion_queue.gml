/// IMPORT .ignore if CHAPTER_1 || CHAPTER_3

function scr_fusion_queue(arg0)
{
    scr_fusion_info(arg0);
    fusionIngredient1[fusioncount] = ingredient[0];
    fusionIngredient2[fusioncount] = ingredient[1];
    fusionIngredientName1[fusioncount] = "--";
    fusionIngredientName2[fusioncount] = "--";
    fusionIngredientType1[fusioncount] = ingredienttype[0];
    fusionIngredientType2[fusioncount] = ingredienttype[1];
    fusionResult[fusioncount] = result;
    fusionResultType[fusioncount] = resulttype;
    fusionResultName[fusioncount] = "--";
    fusionResultTopComment[fusioncount] = "--";
    fusionHaveIngredient1[fusioncount] = 0;
    fusionHaveIngredient2[fusioncount] = 0;
    fusionCanMake[fusioncount] = 0;

    switch (fusionResult[fusioncount])
    {
        case 22:
            fusionResultData[fusioncount] = AP_get_location_reward_data(40)
        break;
        case 8:
            fusionResultData[fusioncount] = AP_get_location_reward_data(41)
        break;
        case 9:
            fusionResultData[fusioncount] = AP_get_location_reward_data(102)
        break;
        case 13:
            fusionResultData[fusioncount] = AP_get_location_reward_data(42)
        break;
        case 15:
            fusionResultData[fusioncount] = AP_get_location_reward_data(103)
        break;
        case 11:
            fusionResultData[fusioncount] = AP_get_location_reward_data(244)
        break;
#if !CHAPTER_2 && !CHAPTER_4

        case 30:
            fusionResultData[fusioncount] = AP_get_location_reward_data(259);
            break;
        
        case 31:
            fusionResultData[fusioncount] = AP_get_location_reward_data(260);
            break;
        
        case 34:
            fusionResultData[fusioncount] = AP_get_location_reward_data(261);
            break;
        
        case 39:
            fusionResultData[fusioncount] = AP_get_location_reward_data(262);
            break;
        
        case 40:
            fusionResultData[fusioncount] = AP_get_location_reward_data(263);
            break;
        
        case 29:
            fusionResultData[fusioncount] = AP_get_location_reward_data(264);
            break;
        
        case 32:
            fusionResultData[fusioncount] = AP_get_location_reward_data(265);
            break;
#endif
    }
    
    switch (fusionResultData[fusioncount].flags)
    {
        case 0:
            resultdesc = "Filler";
            break;
        
        case 1:
            resultdesc = "Progression";
            break;
        
        case 2:
            resultdesc = "Useful";
            break;
        
        case 3:
            resultdesc = "Prog. & Useful";
            break;
        
        case 4:
            resultdesc = "Trap";
            break;
        
        default:
            resultdesc = " ";
            break;
    }
    
    fusionDesc[fusioncount] = resultdesc;
    
    if (fusionIngredientType1[fusioncount] == "item")
    {
        scr_iteminfo(fusionIngredient1[fusioncount]);
        fusionIngredientName1[fusioncount] = itemnameb;
        
        if (scr_itemcheck(fusionIngredient1[fusioncount]))
            fusionHaveIngredient1[fusioncount] = 1;
    }
    
    if (fusionIngredientType1[fusioncount] == "weapon")
    {
        scr_weaponinfo(fusionIngredient1[fusioncount]);
        fusionIngredientName1[fusioncount] = weaponnametemp;
        
        if (scr_weaponcheck_inventory(fusionIngredient1[fusioncount]))
            fusionHaveIngredient1[fusioncount] = 1;
    }
    
    if (fusionIngredientType1[fusioncount] == "armor")
    {
        scr_armorinfo(fusionIngredient1[fusioncount]);
        fusionIngredientName1[fusioncount] = armornametemp;
        
        if (scr_armorcheck_inventory(fusionIngredient1[fusioncount]))
            fusionHaveIngredient1[fusioncount] = 1;
    }
    
    if (fusionIngredientType1[fusioncount] == "key")
    {
        scr_keyiteminfo(fusionIngredient1[fusioncount]);
        fusionIngredientName1[fusioncount] = tempkeyitemname;
        
        if (scr_keyitemcheck(fusionIngredient1[fusioncount]))
            fusionHaveIngredient1[fusioncount] = 1;
    }
    
    identicalcheck = 0;
    
    if (fusionIngredientType2[fusioncount] == fusionIngredientType2[fusioncount])
    {
        if (fusionIngredient1[fusioncount] == fusionIngredient2[fusioncount])
            identicalcheck = 1;
    }
    
    if (fusionIngredientType2[fusioncount] == "item")
    {
        scr_iteminfo(fusionIngredient2[fusioncount]);
        fusionIngredientName2[fusioncount] = itemnameb;
        
        if (scr_itemcheck(fusionIngredient2[fusioncount]))
        {
            if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
                fusionHaveIngredient2[fusioncount] = 1;
        }
    }
    
    if (fusionIngredientType2[fusioncount] == "weapon")
    {
        scr_weaponinfo(fusionIngredient2[fusioncount]);
        fusionIngredientName2[fusioncount] = weaponnametemp;
        
        if (scr_weaponcheck_inventory(fusionIngredient2[fusioncount]))
        {
            if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
                fusionHaveIngredient2[fusioncount] = 1;
        }
    }
    
    if (fusionIngredientType2[fusioncount] == "armor")
    {
        scr_armorinfo(fusionIngredient2[fusioncount]);
        fusionIngredientName2[fusioncount] = armornametemp;
        
        if (scr_armorcheck_inventory(fusionIngredient2[fusioncount]))
        {
            if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
                fusionHaveIngredient2[fusioncount] = 1;
        }
    }
    
    if (fusionIngredientType2[fusioncount] == "key")
    {
        scr_keyiteminfo(fusionIngredient2[fusioncount]);
        fusionIngredientName2[fusioncount] = tempkeyitemname;
        
        if (scr_keyitemcheck(fusionIngredient2[fusioncount]))
        {
            if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
                fusionHaveIngredient2[fusioncount] = 1;
        }
    }
    
    if (fusionResultType[fusioncount] == "item")
    {
        scr_iteminfo(fusionResult[fusioncount]);
        fusionResultName[fusioncount] = "Check";
        fusionResultTopComment[fusioncount] = "Will be sent to " + string(fusionResultData[fusioncount].playerName);
    }
    
    if (fusionResultType[fusioncount] == "weapon")
    {
        scr_weaponinfo(fusionResult[fusioncount]);
        fusionResultName[fusioncount] = "Check";
        fusionResultTopComment[fusioncount] = "Will be sent to " + string(fusionResultData[fusioncount].playerName);
    }
    
    if (fusionResultType[fusioncount] == "armor")
    {
        scr_armorinfo(fusionResult[fusioncount]);
        fusionResultName[fusioncount] = "Check";
        fusionResultTopComment[fusioncount] = "Will be sent to " + string(fusionResultData[fusioncount].playerName);
    }
    
    if (fusionResultType[fusioncount] == "key")
    {
        scr_keyiteminfo(fusionResult[fusioncount]);
        fusionResultName[fusioncount] = "Check";
        fusionResultTopComment[fusioncount] = "Will be sent to " + string(fusionResultData[fusioncount].playerName);
    }
    
    if (fusionResultType[fusioncount] == "check")
    {
        scr_keyiteminfo(fusionResult[fusioncount]);
        fusionResultName[fusioncount] = "check";
        fusionResultTopComment[fusioncount] = "Will be sent to " + string(fusionResultData[fusioncount].playerName);
    }
    
    if (fusionResultTopComment[fusioncount] == "Will be sent to Unknown")
        fusionResultTopComment[fusioncount] = "Location not available in this Multiworld.#Sorry!";
    
    if (fusionHaveIngredient1[fusioncount] && fusionHaveIngredient2[fusioncount])
        fusionCanMake[fusioncount] = 1;
    
    fusioncount++;
}
