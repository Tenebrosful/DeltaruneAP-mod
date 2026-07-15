/// IMPORT
myinteract = 0;
talked = 0;
image_speed = 0;
itemflag = 104;
itemtype = "armor";
itemidchest = 4;
close = 0;
extratext = 0;
extraevent = 0;
tempchest = false;
needsitem = false;

if (scr_debug())
{
    itemidchest = 0;
    itemflag = 1999;
    itemtype = "item";
}

noflag = false;

if (global.darkzone == 1)
{
    image_xscale = 2;
    image_yscale = 2;
}

if (room == room_dw_castle_west_cliff)
{
    itemidchest = 21;
    itemflag = 142;
    var qualify = 0;
    
    if (global.flag[468] > 0)
        qualify = 0;
    
    if (global.flag[142] == 1)
        qualify = 0;
    
    if (global.flag[571] == 1 || global.flag[468] == 2)
        itemtype = "weapon";
    else
        itemtype = "armor";
    
    if (qualify == 0)
    {
        instance_destroy();
        visible = 0;
    }
}

if (room == room_dw_church_darkmaze || i_ex(obj_dw_church_darkmaze))
{
    itemflag = 871;
    itemtype = "nothing";
}

if (room == room_dw_church_pianopiece_left || i_ex(obj_dw_church_pianopiece_left))
{
    itemflag = 894;
    itemtype = "check";
    t_itemid = 198;
}

if (room == room_dw_church_worshiproom)
{
    itemtype = "check";
    t_itemid = 197;
    itemflag = 1517;
}

if (room == room_dw_churchb_worshiproom)
{
    itemtype = "check";
    t_itemid = 197;
    itemflag = 1517;
}

if (room == room_dw_churchb_library || i_ex(obj_dw_churchb_library))
{
    itemtype = "check";
    t_itemid = 228;
    itemflag = 1540;
}

if (extflag == "ripseqtreasure" || room == room_dw_church_ripplepuzzle_postgers)
{
    itemtype = "check";
    t_itemid = 191;
    itemflag = 1550;
}

if (i_ex(obj_dw_churchb_prophecymaze))
{
    itemtype = "check";
    t_itemid = 212;
    itemflag = 1581;
}

if (i_ex(obj_dw_church_sideclimb))
{
    itemtype = "check";
    t_itemid = 203;
    itemflag = 863;
}

if (i_ex(obj_dw_church_bookshelfpuzzle))
{
    itemtype = "check";
    t_itemid = 196;
    itemflag = 1582;
}

if (room == room_dw_churchb_libraryconnector || i_ex(obj_dw_churchb_libraryconnector))
{
    itemtype = "check";
    t_itemid = 209;
    itemflag = 1539;
}

if (room == room_dw_churchb_gallery || i_ex(obj_dw_churchb_gallery))
{
    itemflag = 1545;
    itemtype = "check";
    t_itemid = 212;
}

if (room == room_dw_church_rightconnect || i_ex(obj_dw_church_rightconnect))
{
    itemtype = "check";
    t_itemid = 202;
    itemflag = 1586;
}

if (room == room_dw_church_minorlegend || i_ex(obj_dw_church_minorlegend))
{
    itemtype = "check";
    t_itemid = 190;
    itemflag = 1587;
}

if (room == room_dw_church_pianopiece_right || i_ex(obj_dw_church_pianopiece_right))
{
    itemtype = "check";
    t_itemid = 199;
    itemflag = 1588;
}

if (room == room_dw_church_trueclimbadventure || i_ex(obj_dw_church_trueclimbadventure))
{
    itemflag = 1589;
    itemtype = "check";
    t_itemid = 204;
}

if (room == room_dw_church_jackenstein || i_ex(obj_dw_church_jackenstein))
{
    itemflag = 1590;
    itemtype = "check";
    t_itemid = 201;
}

if (room == room_dw_churchc_encounter2 || i_ex(obj_dw_churchc_encounter2))
{
    itemflag = 1614;
    itemtype = "check";
    t_itemid = 216;
    image_blend = c_black;
}

if (room == room_dw_churchc_treasurechest || i_ex(obj_dw_churchc_treasurechest))
{
    itemflag = 1616;
    itemtype = "check";
    t_itemid = 216;
}

if (i_ex(obj_dw_churchc_prophecies) || room == room_dw_churchc_prophecies)
{
    itemflag = 1610;
    itemtype = "check";
    t_itemid = 215;
}

if (room == room_dw_church_dogclimb)
{
    itemflag = 1638;
    itemtype = "check";
    t_itemid = 214;
}

if (room == room_dw_churchb_moneyfountain || instance_exists(obj_dw_churchb_moneyfountain))
{
    itemflag = 1537;
    itemtype = "check";
    t_itemid = 210;
}

if (room == room_dw_castle_tv_zone_3)
{
    itemflag = 1703;
    itemtype = "item";
    itemidchest = 34;
}

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();
init = 0;
