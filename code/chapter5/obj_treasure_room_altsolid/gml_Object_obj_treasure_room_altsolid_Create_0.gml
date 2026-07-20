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
scr_platswap_init();
needsitem = false;

if (scr_debug())
{
    itemidchest = 0;
    itemflag = 1999;
    itemtype = "item";
}

noflag = false;
solidblock = -4;

if (has_solid)
    solidblock = instance_create(x, y, obj_solidblocksized);

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

if (instance_exists(obj_dw_garden_mushrooms))
{
    itemtype = "check";
    t_itemid = 269;
    itemflag = 1826;
}

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();