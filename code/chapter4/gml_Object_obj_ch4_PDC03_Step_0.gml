/// PATCH

/// AFTER
    if (global.lweapon == 12)
        list_dialogue = stringsetloc("* An eraser...", "obj_ch4_PDC03_slash_Step_0_gml_654_0");
/// CODE
    if (global.lweapon == 15)
        list_dialogue = stringsetloc("* Candy cane pencil...", "obj_ch4_PDC03_slash_Step_0_gml_654_0");

    if (global.lweapon == 18)
        list_dialogue = stringsetloc("* A feather...", "obj_ch4_PDC03_slash_Step_0_gml_668_0");

    if (global.lweapon == 22)
        list_dialogue = stringsetloc("* A number two pencil...", "obj_ch4_PDC03_slash_Step_0_gml_668_0");

    if (global.lweapon == 23)
        list_dialogue = stringsetloc("* A flower petal...", "obj_ch4_PDC03_slash_Step_0_gml_668_0");
/// END

/// AFTER
        if (global.charweapon[2] == 24)
            susie_item = stringsetloc("dirty toothbrush", "obj_ch4_PDC03_slash_Step_0_gml_746_0");
/// CODE
        if (global.charweapon[2] == 54)
            susie_item = stringsetloc("ladle", "obj_ch4_PDC03_slash_Step_0_gml_746_0");
        
        if (global.charweapon[2] == 52)
            susie_item = stringsetloc("hammer", "obj_ch4_PDC03_slash_Step_0_gml_746_0");
        
        if (global.charweapon[2] == 31)
            susie_item = stringsetloc("thorny branch", "obj_ch4_PDC03_slash_Step_0_gml_746_0");
/// END