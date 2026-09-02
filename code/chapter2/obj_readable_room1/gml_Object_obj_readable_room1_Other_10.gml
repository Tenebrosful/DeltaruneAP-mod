/// PATCH

/// REPLACE
            msgsetloc(0, "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/", "obj_readable_room1_slash_Other_10_gml_42_0");
            msgnextloc("* It's a poorly-drawn design for a game.../", "obj_readable_room1_slash_Other_10_gml_43_0");
            msgnextloc("* Seems the last boss is a creature with giant rainbow wings./", "obj_readable_room1_slash_Other_10_gml_44_0");
            msgnextloc("* Doesn't seem like this game ever saw the light of day.../%", "obj_readable_room1_slash_Other_10_gml_45_0");
/// CODE
            msgsetloc(0, "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/", "obj_readable_room1_slash_Other_10_gml_42_0");
            msgnextloc("* It's a poorly-drawn design for a game.../", "obj_readable_room1_slash_Other_10_gml_43_0");
            msgnextloc("* Seems the last boss is a creature with giant rainbow wings./", "obj_readable_room1_slash_Other_10_gml_44_0");
            msgnextloc("* Doesn't seem like this game ever saw the light of day.../", "obj_readable_room1_slash_Other_10_gml_45_0");
            msgnextloc("* Also^1, \"Archipelago Dragon Blazers Client\" is still open./", "obj_readable_room1_slash_Other_10_gml_45_0")
            msgnextloc("* But^1, it's now waiting an hour between each reconnect attempt.../%", "obj_readable_room1_slash_Other_10_gml_45_0")
/// END

/// AFTER
    if (x > 136)
    {
        if (global.chapter == 1)
            global.msg[0] = stringsetloc("* It's a beautiful day outside./%", "obj_readable_room1_slash_Other_10_gml_80_0");
        
        if (global.chapter == 2)
            msgsetloc(0, "* Even after a long night^1, the sunrise is the same as always./%", "obj_readable_room1_slash_Other_10_gml_86_0");
    }
/// CODE
    if (x > 179)
        global.msg[0] = "* Non-binary rights./%";
/// END

/// REPLACE
            if (global.tempflag[39] == 1 && global.plot < 10)
/// CODE
            if (global.plot < 10)
/// END

/// REPLACE
                if (global.plot >= 200 && global.flag[309] < 9)
                    global.tempflag[36] = 3;
                
                if (global.tempflag[36] == 1 || global.tempflag[36] == 2)
                {
                    global.msc = 1240;
                    scr_text(global.msc);
                }
                else
                {
                    scr_speaker("no_name");
                    msgsetloc(0, "* (There's a hole in the wall...)/", "obj_readable_room1_slash_Other_10_gml_740_0");
                    msgnextloc("* (There's nothing inside.)/%", "obj_readable_room1_slash_Other_10_gml_741_0");
                }
/// CODE
                scr_speaker("no_name");
                msgsetloc(0, "* (There's a hole in the wall...)/", "obj_readable_room1_slash_Other_10_gml_740_0");
                msgnextloc("* (There's nothing inside.)/%", "obj_readable_room1_slash_Other_10_gml_741_0");
/// END

/// REPLACE
        if (scr_keyitemcheck(10) == 0 && instance_exists(obj_npc_room_animated))
/// CODE
        if (!global.customflags[global.custom_flags_indexes.took_emptydisk]&& instance_exists(obj_npc_room_animated))
/// END

/// REPLACE
        if (scr_keyitemcheck(10) == 1 && scr_keyitemcheck(11) == 0)
/// CODE
        if (global.customflags[global.custom_flags_indexes.took_emptydisk] && scr_keyitemcheck(11) == 0)
/// END

/// BEFORE
if (room == room_dw_city_split)
{
/// CODE

if (extflag == "decemberskip")
{
    scr_speaker("no_name");
    
    if (obj_ch2_city_noelle_monologue.decemberskipcon < 10 && obj_ch2_city_noelle_monologue.con == 0)
    {
        msgsetloc(0, "* (You flip the lever.)/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        snd_play(snd_noise);
        image_index += 1;
        skipcon = 1;
        
        with (obj_ch2_city_noelle_monologue)
            decemberskipcon = 10;
    }
    else if (obj_ch2_city_noelle_monologue.decemberskipcon < 10 && obj_ch2_city_noelle_monologue.con > 0)
    {
        msgsetloc(0, "* (The lever won't budge.)/", "obj_readable_room1_slash_Other_10_gml_3015_0");
        msgnextloc("* (You missed your chance...)/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
    }
    else if (skipcon == 1)
    {
        msgsetloc(0, "* Dude what else do you want I disabled the puzzle/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        skipcon += 1;
    }
    else if (skipcon == 2)
    {
        msgsetloc(0, "* Yeah that's right I'm a talking lever/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        skipcon += 1;
    }
    else if (skipcon == 3)
    {
        msgsetloc(0, "* Bro do you want me to teleport you to the end too^1? Gosh you're needy/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        skipcon += 1;
    }
    else if (skipcon == 4)
    {
        msgsetloc(0, "* Fine^1. Enjoy yourself^1. Can't believe you're making me do this.../%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        skipcon += 1;
        
        with (obj_ch2_city_noelle_monologue)
        {
            decemberskipcon = 13;
            timer = 0;
        }
    }
    else if (skipcon == 5)
    {
        msgsetloc(0, "* Why did you walk all the way back here/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
        skipcon += 1;
    }
    else if (skipcon >= 6)
    {
        msgsetloc(0, "* No I'm not teleporting you back^1. You did this to yourself/%", "obj_readable_room1_slash_Other_10_gml_3015_0");
    }
}
/// END