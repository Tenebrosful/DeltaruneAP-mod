/// PATCH

/// REPLACE
    scr_keyitemget(13);
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_362_0");
    instance_create(0, 0, obj_dialoguer);
}

if (con == 34 && !d_ex())
{
/// CODE
    AP_sendLocation([25, 26, 27]);

    global.msg[0] = string("* (You got {0}.)/", AP_get_location_reward_text(25));
    global.msg[1] = string("* (You got {0}.)/", AP_get_location_reward_text(26));
    global.msg[2] = string("* (You got {0}.)/%", AP_get_location_reward_text(27));
    instance_create(0, 0, obj_dialoguer);
}

if (con == 34 && !d_ex())
{
/// END

/// REPLACE
 if (global.flag[241] == 6)
    {
        scr_weaponget(7);
        
        if (noroom == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_344_0");
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_348_0");
            global.flag[242] = 1;
        }
    }
    else
    {
        scr_armorget(7);
        
        if (noroom == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_357_0");
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_361_0");
            global.flag[242] = 2;
        }
    }
    
    con = 35;
    instance_create(0, 0, obj_dialoguer);
}
/// CODE
    con = 35;
}
/// END