/// PATCH

/// REPLACE
        global.msg[5] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_92_0");
/// CODE
        global.msg[5] = "* The Manual turned into a Check./";
        
        if (global.customflags[999] == 0)
        {
            scr_checkspot(12);
            global.msg[6] = "* You sent the Check to your Multiworld./%";
        }
        else
        {
            global.msg[6] = "* ..^1.But^1, the power of the Egg refused the check!/%";
        }
/// END

/// REPLACE
        instance_create(0, 0, obj_dialoguer);
        scr_itemget(4);
/// CODE
        instance_create(0, 0, obj_dialoguer);
/// END

/// REPLACE
    if (con == 40 && d_ex() == 0)
    {
        scr_itemget(4);
/// CODE
    if (con == 40 && d_ex() == 0)
    {
        scr_checkspot(12);
/// END