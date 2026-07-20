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

if (room == room_dw_garden_riverchest || instance_exists(obj_dw_garden_riverchest))
{
    itemflag = 1827;
    t_itemid = 272;
    itemtype = "check";
}

if (room == room_dw_garden_shearydodge || instance_exists(obj_dw_garden_shearydodge))
{
    itemflag = 1828;
    t_itemid = 271;
    itemtype = "check";
}

if (room == room_dw_garden_newdash || instance_exists(obj_dw_garden_newdash))
{
    itemflag = 1829;
    t_itemid = 279;
    itemtype = "check";
}

if (room == room_dw_garden_wateringcan_aqua || instance_exists(obj_dw_garden_wateringcan_aqua))
{
    itemflag = 1830;
    t_itemid = 282;
    itemtype = "check";
}

if (room == room_dw_cliff_yellowcave || instance_exists(obj_dw_cliff_yellowcave))
{
    itemflag = 1732;
    t_itemid = 298;
    itemtype = "check";
}

if (room == room_dw_fcastle_shinobeetle_encounter || instance_exists(obj_dw_fcastle_shinobeetle_encounter))
{
    itemflag = 1853;
    t_itemid = 332;
    itemtype = "check";
}

if (room == room_dw_cliff_netskieclimb || instance_exists(obj_dw_cliff_netskieclimb))
{
    itemflag = 1834;
    t_itemid = 307;
    itemtype = "check";
}

if (room == room_dw_fcastle_terracotta_bonus || instance_exists(obj_dw_fcastle_terracotta_bonus))
{
    itemflag = 1835;
    t_itemid = 319;
    itemtype = "check";
}

if (room == room_dw_fcastle_terracotta_puzzle || instance_exists(obj_dw_fcastle_terracotta_puzzle))
{
    itemflag = 1875;
    t_itemid = 321;
    itemtype = "check";
}

if (room == room_dw_garden_starwalkerdash || instance_exists(obj_dw_garden_starwalkerdash))
{
    itemflag = 1304;
    t_itemid = 288;
    itemtype = "check";
}

if (room == room_dw_fcastle_heldmushrooms || instance_exists(obj_dw_fcastle_heldmushrooms))
{
    itemflag = 1836;
    t_itemid = 327;
    itemtype = "check";
}

if (room == room_dw_fcastle_foxhunt || instance_exists(obj_dw_fcastle_foxhunt))
{
    if (x < 1500)
    {
        itemflag = 1840;
        t_itemid = 325;
        itemtype = "check";
    }
    else
    {
        itemflag = 1841;
        t_itemid = 324;
        itemtype = "check";
    }
}

if (room == room_dw_fcastle_zenlooker || instance_exists(obj_dw_fcastle_zenlooker))
{
    itemflag = 1837;
    t_itemid = 315;
    itemtype = "check";
}

if (room == room_dogplatforming || instance_exists(obj_dw_dogplatforming))
{
    itemflag = 1866;
    t_itemid = 334;
    itemtype = "check";
}

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();