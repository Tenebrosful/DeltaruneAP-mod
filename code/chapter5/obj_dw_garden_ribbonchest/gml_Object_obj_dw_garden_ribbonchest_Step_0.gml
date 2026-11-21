/// PATCH

/// REPLACE
    if (global.flag[1404] == 0)
    {
        myinteract = 5;
    }
/// CODE
    if (global.customflags[global.custom_flags_indexes.ch5_opened_first_chest] == 0)
    {
        myinteract = 5;
    }
/// END

/// REPLACE
    var iteminfo = scr_itemget_anytype_text(33, "armor");
    scr_speaker("no_name");
    msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_dw_garden_ribbonchest_slash_Step_0_gml_25_0");
    msgnext(iteminfo);
/// CODE
    t_itemid = 268;
    var iteminfo = scr_itemget_anytype_text(t_itemid, "check");
    scr_speaker("no_name");
    global.customflags[global.custom_flags_indexes.ch5_opened_first_chest] = 1;
    msgset(0, string("* (Inside the treasure chest was {0}.)/%", AP_get_location_reward_text(t_itemid)));
/// END

/// REPLACE
if (myinteract == 6 && !d_ex())
{
    var hatState = !ralseiHatState();
    global.flag[1404] = 1;
/// CODE
if (myinteract == 6 && !d_ex())
{
    var hatState = !ralseiHatState();
/// END

/// REPLACE
    msgnextloc("* (Susie can now equip RIBBONS.)\\f0/%", "obj_dw_garden_ribbonchest_slash_Step_0_gml_109_0");
/// CODE
    msgnextloc("* (Susie can now equip RIBBONS.)\\f0/", "obj_dw_garden_ribbonchest_slash_Step_0_gml_109_0");
/// END

/// REPLACE
    var smallfacetext = stringsetloc("Don't look so smug about it, dumbass!", "obj_dw_garden_ribbonchest_slash_Step_0_gml_113_0");
    scr_smallface(0, "susie", 17, sf.x, sf.y, smallfacetext);
    global.flag[1404] = 1;
/// CODE
    var smallfacetext0 = stringsetloc("Don't look so smug about it, dumbass!", "obj_dw_garden_ribbonchest_slash_Step_0_gml_113_0");
    var smallfacetext1 = stringset("Huh?");
    var smallfacetext2 = stringset("Hey, what the hell!");
    var smallfacetext2_face = 17;
    
    if (global.flag[1404] == 1)
    {
        smallfacetext0 = stringset("I could already do that, dumbass!");
        smallfacetext2 = stringset("???");
        smallfacetext2_face = 20;
    }
    
    scr_smallface(0, "susie", 17, sf.x, sf.y, smallfacetext0);
    scr_smallface(1, "susie", 43, "right", "bottom", smallfacetext1);
    scr_smallface(2, "susie", smallfacetext2_face, "right", "bottom", smallfacetext2);
    
    if (global.flag[1404] == 1)
    {
        msgnext("* (Susie's ability to equip RIBBONS is going even further beyond.)/");
        msgnext("* (Somehow^1, something begins to take shape.)\\f1/");
        msgnext(string("* (You got {0}.^1)\\f2/%", AP_get_location_reward_text(349)));
        scr_msgfunc(function()
        {
            AP_sendLocation(349);
        });
    }
    else
    {
        msgnext(string("* (Susie's ability to equip RIBBONS turned into {0}!^1)\\f1/", AP_get_location_reward_text(349)));
        scr_msgfunc(function()
        {
            AP_sendLocation(349);
        });
        msgnext("* (As a result^1, Susie can no longer equip RIBBONS.)\\f2/%");
    }
/// END

/// REPLACE
    if (variation == 0)
    {
        global.flag[1404] = 2;
/// CODE
    if (variation == 0)
    {
/// END

/// REPLACE
    if (variation == 1)
    {
        susieribbons = true;
        global.flag[1404] = 3;
/// CODE
    if (variation == 1)
    {
        susieribbons = true;
/// END

/// REPLACE
    if (variation == 2)
    {
        global.flag[1404] = 4;
/// CODE
    if (variation == 2)
    {
/// END