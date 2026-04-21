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
t_itemid = 0;

if (global.darkzone == 1)
{
    image_xscale = 2;
    image_yscale = 2;
}

if (room == room_dw_cyber_battle_maze_1)
{
    itemidchest = 10;
    itemtype = "check";
    itemflag = 118;
    t_itemid = 43;
}

if (room == room_dw_cyber_keyboard_puzzle_1)
{
    itemidchest = 18;
    itemtype = "check";
    itemflag = 119;
    t_itemid = 44;
}

if (room == room_dw_cyber_maze_tasque)
{
    itemidchest = 10;
    itemtype = "check";
    itemflag = 120;
    extraevent = 1;
    t_itemid = 45;
}

if (room == room_dw_cyber_maze_queenscreen)
{
    itemidchest = 27;
    itemtype = "check";
    itemflag = 122;
    t_itemid = 46;
}

if (room == room_dw_cyber_viro_ring)
{
    itemidchest = 2;
    itemtype = "check";
    itemflag = 123;
    t_itemid = 47;
}

if (room == room_dw_mansion_bridges)
{
    itemidchest = 30;
    itemtype = "check";
    itemflag = 125;
    t_itemid = 86;
}

if (room == room_dw_cyber_teacup_final)
{
    itemidchest = 19;
    itemtype = "check";
    itemflag = 129;
    t_itemid = 48;
}

if (room == room_dw_city_big_3)
{
    itemidchest = 14;
    itemtype = "check";
    itemflag = 130;
    t_itemid = 64;
}

if (room == room_dw_mansion_b_west_1f_b)
{
    itemtype = "check";
    itemflag = 133;
    itemidchest = 1;
    t_itemid = 95;
}

if (room == room_dw_city_treasure)
{
    itemflag = 134;
    itemtype = "check";
    itemidchest = 3;
    t_itemid = 59;
}

if (room == room_dw_city_cheesemaze)
{
    itemidchest = 16;
    itemtype = "check";
    itemflag = 135;
    t_itemid = 68;
}

if (room == room_dw_mansion_east_1f_secret)
{
    itemidchest = 1;
    itemtype = "item";
    itemflag = 136;
}

if (room == room_dw_mansion_bridges)
{
    itemidchest = 30;
    itemtype = "check";
    itemflag = 137;
    t_itemid = 86;
}

if (room == room_dw_mansion_east_2f_c_a)
{
    itemidchest = 3;
    itemtype = "check";
    itemflag = 139;
    t_itemid = 85;
}

if (room == room_dw_mansion_east_1f_e)
{
    itemidchest = 11;
    itemtype = "check";
    itemflag = 141;
    t_itemid = 84;
}

if (room == room_dw_castle_west_cliff || room == room_dw_mansion_b_east_transformed)
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

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();
