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
flag = false;

if (global.darkzone == 1)
    scr_darksize();

if (room == room_dw_castle_west_cliff)
{
    itemidchest = 21;
    itemflag = 142;
    var qualify = 0;
        if (qualify == 0)
    {
        instance_destroy();
        visible = 0;
    }
}

if (room == room_board_postshadowmantle || room == room_dw_green_room)
{
    itemtype = "check";
    itemidchest = 23;
    itemflag = 1067;
    t_itemid = 171;
}

if (room == room_dw_b3bs_cooltrashy)
{
    itemflag = 1100;
    itemidchest = 39;
    itemtype = "check";
    t_itemid = 157;
}

if (room == room_dw_b3bs_watercooler)
{
    itemflag = 1138;
    itemidchest = 0;
    itemtype = "check";
    t_itemid = 153;
}

if (room == room_dw_b3bs_mysterypuzzle)
{
    itemflag = 1139;
    itemidchest = 2;
    itemtype = "check";
    t_itemid = 149;
}

if (room == room_dw_b3bs_zapper_c)
{
    itemflag = 1140;
    itemidchest = 1;
    itemtype = "check";
    t_itemid = 163;
}

if (room == room_dw_teevie_susiebridge)
{
    itemflag = 1213;
    itemidchest = 300;
    itemtype = "check";
    t_itemid = 156;
}

if (room == room_dw_teevie_large_01)
{
    itemtype = "check";
    itemidchest = 34;
    itemflag = 1267;
    t_itemid = 148;
}

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();
