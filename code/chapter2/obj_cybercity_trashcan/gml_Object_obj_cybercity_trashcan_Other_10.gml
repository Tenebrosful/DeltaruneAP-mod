/// IMPORT
scr_speaker("no_name");
msgsetloc(0, "* (You dug through the trash...)/", "obj_cybercity_trashcan_slash_Other_10_gml_5_0");

if (global.flag[flag] == 0)
{
    image_index = 1;
    snd_play(snd_impact);
    
    if (room == room_dw_city_intro)
        t_itemid = 56;
    else if (room == room_dw_city_roadblock && x < 840)
        t_itemid = 57;
    else if (room == room_dw_city_roadblock && x > 840)
        t_itemid = 58;
    else if (room == room_dw_city_poppup && x < 540 && y < 240)
        t_itemid = 69;
    else if (room == room_dw_city_poppup && x > 540 && y < 240)
        t_itemid = 74;
    else if (room == room_dw_city_poppup && y > 240)
        t_itemid = 75;
    
    if (money_amount > 0)
    {
        global.flag[flag] = 1;
        var itemget = scr_itemget_anytype_text(item_id, "check");
        msgnextsubloc("* (And found ~1!)/", AP_get_location_reward_text(t_itemid), "obj_cybercity_trashcan_slash_Other_10_gml_16_0");
        msgnext(itemget);
    }
    else if (item_id > 0)
    {
        var itemget = scr_itemget_anytype_text(item_id, "check");
        msgnextsubloc("* (And found ~1!)/", AP_get_location_reward_text(t_itemid), "obj_cybercity_trashcan_slash_Other_10_gml_23_0");
        msgnext(itemget);
        
        if (noroom == 0)
            global.flag[flag] = 1;
    }
}
else
{
    msgnextloc("* (And found trash!)/%", "obj_cybercity_trashcan_slash_Other_10_gml_35_0");
}

myinteract = 3;
global.interact = 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
