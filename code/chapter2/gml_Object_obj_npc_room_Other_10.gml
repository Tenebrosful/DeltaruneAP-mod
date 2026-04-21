/// PATCH

/// REPLACE
    if (sprite_index == spr_npc_addison_orange)
    {
        if (global.plot < 85)
        {
            if (scr_armorcheck_inventory(16) == 1 || scr_armorcheck_equipped(1, 16) == 1)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Buy^1! Buy^1! Buy^1! We're sold out^1! Buy!/%", "obj_npc_room_slash_Other_10_gml_1385_0");
            }
            else
            {
                global.msc = 1075;
                scr_text(global.msc);
            }
        }
        else
        {
            scr_speaker("no_name");
            msgsetloc(0, "* Spamton? ..^1. We don't talk about that around here./%", "obj_npc_room_slash_Other_10_gml_1411_0");
        }
    }
/// CODE
    if (sprite_index == spr_npc_addison_orange)
    {
        if (global.customflags[12] == 1)
        {
            if (global.plot < 85)
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Buy^1! Buy^1! Buy^1! We're sold out^1! Buy!/%", "obj_npc_room_slash_Other_10_gml_1385_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Spamton? ..^1. We don't talk about that around here./%", "obj_npc_room_slash_Other_10_gml_1411_0");
            }
        }
        else
        {
            global.msc = 1075;
            scr_text(global.msc);
        }
    }
/// END

/// REPLACE
        msgsetloc(0, "* It's terrible... The butlers are all trapped in the cafe.../", "obj_npc_room_slash_Other_10_gml_2026_0");
/// CODE
        msgsetloc(0, "* It's terrible... All the butlers except him are trapped in the cafe.../", "obj_npc_room_slash_Other_10_gml_2026_0");
/// END