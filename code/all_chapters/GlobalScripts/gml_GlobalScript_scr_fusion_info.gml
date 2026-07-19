/// IMPORT .ignore if CHAPTER_1 || CHAPTER_3

function scr_fusion_info(arg0)
{
    ingredient[0] = 8;
    ingredienttype[0] = "item";
    ingredient[1] = 8;
    ingredienttype[1] = "item";
    result = 22;
    resulttype = "item";
    resultdesc = stringsetloc("Heal 60 HPx2", "scr_fusion_info_slash_scr_fusion_info_gml_11_0");
    
    switch (arg0)
    {
        case 1:
            ingredient[0] = 8;
            ingredienttype[0] = "item";
            ingredient[1] = 8;
            ingredienttype[1] = "item";
            result = 22;
            resulttype = "check";
            resultdesc = stringsetloc("Heal 60 HPx2", "scr_fusion_info_slash_scr_fusion_info_gml_23_0");
            break;
        
        case 2:
            ingredient[0] = 1;
            ingredienttype[0] = "armor";
            ingredient[1] = 1;
            ingredienttype[1] = "armor";
            result = 8;
            resulttype = "check";
            resultdesc = stringsetloc("$ Gained +5%", "scr_fusion_info_slash_scr_fusion_info_gml_34_0");
            break;
        
        case 3:
            ingredient[0] = 3;
            ingredienttype[0] = "armor";
            ingredient[1] = 4;
            ingredienttype[1] = "armor";
            result = 9;
            resulttype = "check";
            resultdesc = stringsetloc("Graze Area+", "scr_fusion_info_slash_scr_fusion_info_gml_56_0");
            break;
        
        case 4:
            ingredient[0] = 10;
            ingredienttype[0] = "armor";
            ingredient[1] = 5;
            ingredienttype[1] = "armor";
            result = 13;
            resulttype = "check";
            resultdesc = stringsetloc("Attack+", "scr_fusion_info_slash_scr_fusion_info_gml_56_0_b");
            break;
        
        case 5:
            ingredient[0] = 12;
            ingredienttype[0] = "armor";
            ingredient[1] = 27;
            ingredienttype[1] = "item";
            result = 15;
            resulttype = "check";
            resultdesc = stringsetloc("Graze TP+", "scr_fusion_info_slash_scr_fusion_info_gml_67_0");
            break;
        
        case 6:
            ingredient[0] = 13;
            ingredienttype[0] = "weapon";
            ingredient[1] = 15;
            ingredienttype[1] = "key";
            result = 11;
            resulttype = "check";
            resultdesc = stringsetloc("Trance", "scr_fusion_info_slash_scr_fusion_info_gml_45_0");
            break;
#if !CHAPTER_2 && !CHAPTER_4
        
        case 7:
            ingredient[0] = 51;
            ingredienttype[0] = "weapon";
            ingredient[1] = 53;
            ingredienttype[1] = "armor";
            result = 30;
            resulttype = "check";
            resultdesc = stringsetloc("Heal+", "scr_fusion_info_slash_scr_fusion_info_gml_90_0");
            break;
        
        case 8:
            ingredient[0] = 27;
            ingredienttype[0] = "armor";
            ingredient[1] = 20;
            ingredienttype[1] = "armor";
            result = 31;
            resulttype = "check";
            resultdesc = stringsetloc("Defend vs Cat", "scr_fusion_info_slash_scr_fusion_info_gml_101_0");
            break;
        
        case 9:
            ingredient[0] = 37;
            ingredienttype[0] = "item";
            ingredient[1] = 37;
            ingredienttype[1] = "item";
            result = 34;
            resulttype = "item";
            resultdesc = stringsetloc("Heal 100 HP", "scr_fusion_info_slash_scr_fusion_info_gml_112_0");
            break;
        
        case 10:
            ingredient[0] = 34;
            ingredienttype[0] = "item";
            ingredient[1] = 34;
            ingredienttype[1] = "item";
            result = 39;
            resulttype = "check";
            resultdesc = stringsetloc("Heal 140 HP", "scr_fusion_info_slash_scr_fusion_info_gml_123_0");
            break;
        
        case 11:
            ingredient[0] = 62;
            ingredienttype[0] = "item";
            ingredient[1] = 52;
            ingredienttype[1] = "armor";
            result = 40;
            resulttype = "check";
            resultdesc = stringsetloc("Heals all 200HP", "scr_fusion_info_slash_scr_fusion_info_gml_134_0");
            break;
        
        case 12:
            ingredient[0] = 62;
            ingredienttype[0] = "item";
            ingredient[1] = 51;
            ingredienttype[1] = "armor";
            result = 29;
            resulttype = "check";
            resultdesc = stringsetloc("Heal 100% TP", "scr_fusion_info_slash_scr_fusion_info_gml_145_0");
            break;
        
        case 13:
            ingredient[0] = 54;
            ingredienttype[0] = "armor";
            ingredient[1] = 33;
            ingredienttype[1] = "item";
            result = 32;
            resulttype = "check";
            resultdesc = stringsetloc("Lose Money", "scr_fusion_info_slash_scr_fusion_info_gml_156_0");
            break;
#endif
    }
}
