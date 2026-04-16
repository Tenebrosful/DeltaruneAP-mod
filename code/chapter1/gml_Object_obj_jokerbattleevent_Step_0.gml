/// PATCH

/// REPLACE
    scr_keyitemget(13);
    global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_362_0");
    instance_create(0, 0, obj_dialoguer);
}

if (con == 34 && !d_ex())
{
/// CODE
    scr_checkspot(25);
    global.msg[0] = "* (You got a Check.)/%";
    instance_create(0, 0, obj_dialoguer);
}

if (con == 34 && !d_ex())
{
    scr_checkspot(26);
    scr_checkspot(27);
    
/// END

/// REPLACE
        scr_weaponget(7);
        
        if (noroom == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_344_0");
        }
/// CODE
        if (noroom == 0)
        {
            global.msg[0] = "* (You sent the Check to your Multiworld.)/%";
        }
/// END

/// REPLACE
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
/// CODE
    else if (noroom == 0)
    {
        global.msg[0] = "* (You sent the Check to your Multiworld.)/%";
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_jokerbattleevent_slash_Step_0_gml_361_0");
        global.flag[242] = 2;
    }
/// END