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

/// APPEND
if (room == room_dw_mansion_entrance)
{
    if (scr_sideb_get_phase() > 2)
    {
        scr_speaker("no_name");
        msgsetloc(0, "* Welcome to Qu- Er^1, SPAMTON's mansion./");
        msgnextloc("* If you are looking for Queen^1, she has not been seen for hours./");
        msgnextloc("* Spamton has \"inherited\" the mansion in her absence./");
        msgnextloc("* I have been informed by him to not let anyone enter this area./");
        msgnextloc("* I apologize for the inconvenience./%");
    }
    else
    {
        scr_speaker("no_name");
        msgsetloc(0, "* We welcome you to Queen's mansion./");
        
        if (scr_keyitemcheck(1010))
        {
            msgnextloc("* It appears you do have a reservation./");
            msgnextloc("* Feel free to enter at any time./%");
            global.customflags[13] = 1;
        }
        else
        {
            msgnextloc("* Unfortunately^1, you need a reservation in order to enter this area./");
            msgnextloc("* We apologize for the inconvenience./%");
        }
    }
}

if (room == room_dw_cyber_battle_maze_2 && extflag = "actionblocker")
{
    scr_speaker("no_name")
    msgsetloc(0, "* Heh^1, where do you think you're going ?/")
    msgnextloc("* I'm even sure you're parterns can't dance by themself./")
    msgnextloc("* Come back when they know how to ACT themself./%")
}
/// END