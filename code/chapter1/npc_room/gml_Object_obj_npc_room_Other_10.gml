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
        global.msg[1] = "* Let me just see your ticket and.../";
        
        if (scr_keyitemcheck(1001) == 0)
        {
            global.msg[2] = "* Oh^1, you don't have one^1?&* That's a shame./";
            global.msg[3] = "* Come back when you have a ticket./%";
        }
        
        if (scr_keyitemcheck(1001))
        {
            global.msg[2] = "* Wait^1, you actually have a ticket?!/";
            global.msg[3] = "* Uh..^1. Hey^1, could you just look over there for a sec?/%";
            global.customflags[5] = 1;
        }
    }
/// END

/// APPEND
if (room == room_forest_savepoint3)
{
    global.msg[0] = "* We are supposed to capture the lightners but we are stuck outside the castle.../";
    global.msg[1] = "* Solders! Go find the Castle Key before King notice it!/";
    if (scr_keyitemcheck(1003))
    {
        scr_ralface(2,8);
        global.msg[3] = "* Here! We found it, don't worry!/";
        scr_noface(4);
        global.customflags[9] = true;
        global.msg[5] = "* Ho great! Quick, let's go to the castle before lightners cross the forest./"
        scr_ralface(6,4);
        global.msg[7] = "* But we are the lightners... Well I'm not but... /"
        scr_ralface(8,"A");
        global.msg[9] = "* Anyway Kris, let's find Susie!/%"
    }
    else
    {
        scr_ralface(2,9);
        global.msg[3] = "* But we aren't-/";
        scr_noface(4);
        global.msg[5] = "* Enough talking! Go find it!/";
        scr_ralface(6,9);
        global.msg[7] = "* I think we don't have the choice Kris.../%";
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