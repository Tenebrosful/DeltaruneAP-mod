/// PATCH

/// REPLACE
    var iteminfo = scr_itemget_anytype_text(33, "armor");
    scr_speaker("no_name");
    msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_dw_garden_ribbonchest_slash_Step_0_gml_25_0");
/// CODE
    t_itemid = 268;
    var iteminfo = scr_itemget_anytype_text(t_itemid, "check");
    scr_speaker("no_name");
    msgset(0, string("* (Inside the treasure chest was {0}.)/", AP_get_location_reward_text(t_itemid)));
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
    var smallfacetext = stringsetloc("Don't look so smug about it, dumbass!", "obj_dw_garden_ribbonchest_slash_Step_0_gml_113_0");
    scr_smallface(0, "susie", 17, sf.x, sf.y, smallfacetext);
    global.flag[1404] = 1;
/// CODE
    var smallfacetext = stringsetloc("Don't look so smug about it, dumbass!", "obj_dw_garden_ribbonchest_slash_Step_0_gml_113_0");
    scr_smallface(0, "susie", 17, sf.x, sf.y, smallfacetext);
/// END

/// REPLACE
    msgnextsubloc("\\E~1* Aww^1, Susie!/", face[hatState], "obj_dw_garden_ribbonchest_slash_Step_0_gml_106_0");
    scr_anyface_next("no_name", 0);
    msgnextloc("* (Susie can now equip RIBBONS.)\\f0/%", "obj_dw_garden_ribbonchest_slash_Step_0_gml_109_0");
/// CODE
    msgnextsubloc("\\E~1* Aww^1, Susie!/%", face[hatState], "obj_dw_garden_ribbonchest_slash_Step_0_gml_106_0");
    scr_anyface_next("no_name", 0);
    AP_sendLocation(349)
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