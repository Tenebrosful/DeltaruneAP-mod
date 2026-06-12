/// PATCH

/// REPLACE
        if (scr_itemcheck(6))
/// CODE
        if (scr_keyitemcheck(1004))
/// END

/// REPLACE
if (room == room_forest_savepoint2)
{
    if (x < 800)
/// CODE
if (room == room_forest_savepoint2)
{
    if (x < 800 && y < 100)
/// END

/// REPLACE
    if (x >= 920)
    {
        if (global.plot < 80)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
        }
    }
/// CODE
    if (x >= 920)
    {
        if (global.flag[238] == 0 && global.plot < 154)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else if (global.flag[238] == 0)
        {
            global.msg[0] = string("* (There's still {0} here.)/%", AP_get_location_reward_text(t_itemid));
            AP_sendLocation(9);
            global.flag[238] = 1;
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
        }
    }
    
    if (y >= 100)
    {
        global.msg[0] = "* Hey^1, welcome to the Bake Sale!/";
        global.msg[1] = "* Let me just see your \\cYBake Sale Ticket\\cW and.../";
        
        if (scr_keyitemcheck(1001) == 0)
        {
            global.msg[2] = "* Oh^1, you don't have one^1?&* That's a shame./";
            global.msg[3] = "* Come back when you have a ticket./%";
        }
        
        if (scr_keyitemcheck(1001))
        {
            global.msg[2] = "* Wait^1, you actually have a ticket?!/";
            global.msg[3] = "* Uh..^1. Hey^1, could you just look over there for a sec?/%";
            global.customflags[global.custom_flags_indexes.use_bake_sale_ticket] = 1;
        }
    }
/// END

/// APPEND
if (room == room_forest_savepoint3)
{
    global.msg[0] = "* Hey^1! You two^1! Didn't you get the memo?!/";
    global.msg[1] = "* We're supposed to capture the lightners^1, but we're stuck outside the castle.../";
    global.msg[2] = "* So go find the \\cYCastle Key\\cW before King notices we lost it^1, Soldiers!/";
    
    if (scr_keyitemcheck(1003))
    {
        scr_ralface(3, 8);
        global.msg[4] = "* Here^1! We found it^1, don't worry!/";
        scr_noface(5);
        global.customflags[9] = true;
        global.msg[6] = "* Oh^1, perfect^1! Quick^1, let's go to the castle before lightners cross the forest./";
        scr_ralface(7, 4);
        global.msg[8] = "* But we're the lightners..^1. Well^1, I'm not^1, but... /";
        scr_ralface(9, "A");
        global.msg[10] = "* Anyways Kris^1, let's find Susie!/%";
    }
    else
    {
        scr_ralface(3, 9);
        global.msg[4] = "* Wait^1, but we aren't-/";
        scr_noface(5);
        global.msg[6] = "* No excuses^1! Go find it!/";
        scr_ralface(7, 6);
        global.msg[8] = "* I don't think we have a choice^1, Kris.../%";
    }
}
/// END

/// AFTER
if (room == room_cc_rudinn)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_675_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_676_0");
    }
    else if (global.flag[520] == 0)
    {
/// CODE
        AP_sendLocation(10);
/// END

/// REPLACE
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_700_0");
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_701_0");
/// CODE
            global.msg[6] = string("* Here^1, have {0}./%", AP_get_location_reward_text(10));
/// END

/// BEFORE
        if (global.flag[243] == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_718_0");
/// CODE
        AP_sendLocation(10);
        
/// END
