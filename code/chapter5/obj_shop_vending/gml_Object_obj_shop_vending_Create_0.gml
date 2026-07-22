/// IMPORT
depth = 5000;
event_active = false;
event_con = 0;
is_interacting = false;
is_talking = false;
menu_type = 0;
menu_display_type = 0;
menu_talk_flag = "";
customMenuTalkFlags = [["", function()
{
}]];
menu_talk_style = 0;
menu_talk_con = 0;
menu_dollar = 1;
dinermenu = false;
default_text = stringset("* (It's a vending&machine.)");
menu_list = [];
item_list = [];
var value_label = (menu_dollar == 1) ? stringsetloc("money", "obj_shop_vending_slash_Create_0_gml_34_0") : stringsetloc("F$", "obj_shop_vending_slash_Create_0_gml_34_1");
sidemessage_list = [stringsetloc("(Select&an item.)", "obj_shop_vending_slash_Create_0_gml_24_0"), stringsetloc("(Item&bought.)", "obj_shop_vending_slash_Create_0_gml_25_0"), stringsetsubloc("(Not&enough&~1.)", value_label, "obj_shop_vending_slash_Create_0_gml_26_0"), stringsetloc("(Not&enough&space.)", "obj_shop_vending_slash_Create_0_gml_27_0"), stringsetloc("(It's&sold out.)", "obj_shop_vending_slash_Create_0_gml_28_0"), stringsetloc("(It's&sold out.)", "obj_shop_vending_slash_Create_0_gml_28_0")];
event_user(1);

for (var i = 0; i < 10; i++)
{
    item[i] = 0;
    itemtype[i] = "item";
    shopdesc[i] = "";
}

reset_list = function()
{
    item_list = [];
    
    for (var i = 0; i < 10; i++)
    {
        item[i] = 0;
        itemtype[i] = "item";
        shopdesc[i] = "";
        sold_flag[i] = 0;
    }
};

fillBuyList = function()
{
    itemtotal = array_length(item_list);
    
    for (var i = 0; i < array_length(item_list); i++)
    {
        var current_item = item_list[i];
        item_data = AP_get_location_reward_data(current_item.item_id + 274);
        shopdesc[i] = "CHECK#Will be#sent to the#Multiworld";
        buyvalue[i] = current_item.point_value;
        itematk[i] = 0;
        itemdef[i] = 0;
        itemmagic[i] = 0;
        canequip[i][1] = 0;
        canequip[i][2] = 0;
        canequip[i][3] = 0;
        
        if (menu_dollar)
            dollar_value[i] = -1;
        
        if (variable_instance_exists(current_item, "custom_price"))
        {
            if (current_item.custom_price > 0)
                value = current_item.custom_price;
        }
        
        if (global.chapter != 3 && current_item.point_value != 0)
            value = current_item.point_value;
        
        dollar_value[i] = value;
        buyvalue[i] = dollar_value[i];
        shopitemname[i] = item_data.itemName;
        shop_item_flags[i] = item_data.flags;
        shopitemreceivername[i] = item_data.playerName;
        itemtype[i] = "check";
        item[i] = current_item.item_id + 274;
        itemcount = 99;
        sold_flag[i] = current_item.sold_flag;
        AP_sendHint(item[i]);
        
        if (global.customflags[1274 + current_item.item_id])
        {
            shopitemname[i] = "Out Of Stock";
            itemtype[i] = "checked";
            buyvalue[i] = "--";
            item[i] = current_item.item_id + 274;
        }
    }
};

fillBuyList();
event_user(0);
idletimer = 0;
idlefacer = 0;
talkfacer = 0;
talkbuffer = 0;
menu = 0;
submenu = 0;
global.typer = 6;
talktimer = 0;
cur_jewel = 0;
shopcharx = 0;
siner = 0;

for (var i = 0; i < 20; i += 1)
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
itemtotal = array_length(item_list);
sell = 0;
bought = 0;
mainmessage = 0;
minimenuy = 220;
global.typer = 23;
sidemessage = 0;
selling = 0;
global.msc = 0;
glow = 0;
shx = 130;
soldo = 0;
global.faceemotion = 0;
an = 0;
talk_counter = 0;
init = 0;
