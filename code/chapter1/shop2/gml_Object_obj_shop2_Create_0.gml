/// IMPORT
idletimer = 0;
idlefacer = 0;
talkfacer = 0;
talkbuffer = 0;
menu = 0;
submenu = 0;
global.typer = 6;
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
talktimer = 0;
cur_jewel = 0;
shopcharx = 0;
siner = 0;

for (i = 0; i < 20; i += 1)
{
    menuc[i] = 0;
    submenuc[i] = 0;
}

onebuffer = 0;
twobuffer = 0;
upbuffer = 0;
downbuffer = 0;
hold_up = 0;
hold_down = 0;
_up_pressed = 0;
_down_pressed = 0;
murder = 0;
moff = 415;
global.currentsong[0] = snd_init("hip_shop.ogg");
global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
menu = 0;
menuc[0] = 0;
menuc[1] = 0;
menuc[2] = 0;
menuc[3] = 0;
menuc[4] = 0;
item0pic = spr_heart;
item1pic = spr_heart;
item2pic = spr_heart;
item3pic = spr_heart;
itemtotal = 4;
item[0] = 15;
item[1] = 6;
item[2] = 10;
item[3] = 1;
item[4] = 0;
item[5] = 0;
item[6] = 0;
itemtype[0] = "item";
itemtype[1] = "weapon";
itemtype[2] = "weapon";
itemtype[3] = "armor";
itemtype[4] = "item";
itemtype[5] = "item";
itemtype[6] = "item";

items_data[0] = scr_ap_get_location_reward_data(60)
items_data[1] = scr_ap_get_location_reward_data(61)
items_data[2] = scr_ap_get_location_reward_data(62)
items_data[3] = scr_ap_get_location_reward_data(63)

shopdesc[0] = string("{0}#Will be#sent to#{1}#world", items_data[0].itemName, items_data[0].playerName);
shopdesc[1] = string("{0}#Will be#sent to#{1}#world", items_data[1].itemName, items_data[1].playerName);
shopdesc[2] = string("{0}#Will be#sent to#{1}#world", items_data[2].itemName, items_data[2].playerName);
shopdesc[3] = string("{0}#Will be#sent to#{1}#world", items_data[3].itemName, items_data[3].playerName);

for (i = 0; i < itemtotal; i += 1)
{
    itematk[i] = 0;
    itemdef[i] = 0;
    itemmagic[i] = 0;
    canequip[i][1] = 0;
    canequip[i][2] = 0;
    canequip[i][3] = 0;
    
    if (itemtype[i] == "item")
    {
        scr_iteminfo(item[i]);
        shopitemname[i] = itemnameb;
        buyvalue[i] = value;
    }
    
    if (itemtype[i] == "armor")
    {
        scr_armorinfo(item[i]);
        shopitemname[i] = armornametemp;
        buyvalue[i] = value;
        itemdef[i] = armordftemp;
        canequip[i][1] = armorchar1temp;
        canequip[i][2] = armorchar2temp;
        canequip[i][3] = armorchar3temp;
    }
    
    if (itemtype[i] == "weapon")
    {
        scr_weaponinfo(item[i]);
        itematk[i] = weaponattemp;
        itemmagic[i] = weaponmagtemp;
        shopitemname[i] = weaponnametemp;
        canequip[i][1] = weaponchar1temp;
        canequip[i][2] = weaponchar2temp;
        canequip[i][3] = weaponchar3temp;
        buyvalue[i] = value;
    }
    
    shopitemname[i] = items_data[i].itemName;
    shop_item_flags[i] = items_data[i].flags;
    itemtype[i] = "check";
    item[i] = i + 60;
    AP_sendHint(i + 60);
    
    if (global.customflags[1060 + i] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
        item[i] = i + 60;
    }
}

sell = 0;
bought = 0;
mainmessage = 0;
minimenuy = 220;
global.typer = 23;
scr_84_set_draw_font("mainbig");
sidemessage = 0;
selling = 0;
global.msc = 0;
glow = 0;
shx = 130;
soldo = 0;
global.faceemotion = 0;
an = 0;
global.fe = 0;
siner = 0;
friendly = 0;

if (global.plot >= 175)
    friendly = 1;

worm_max = 4;

for (i = 0; i < worm_max; i += 1)
{
    worm_siner[i] = random(999);
    worm_image[i] = floor(random(4));
    worm_y[i] = -4 + random(8);
}
