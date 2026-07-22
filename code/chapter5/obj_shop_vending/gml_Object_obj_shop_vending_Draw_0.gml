/// IMPORT
depth = 5000;
var cx = camerax();
var cy = cameray();

if (!is_interacting)
    exit;

if (global.interact == 0)
    global.interact = 1;

if (is_talking)
{
    if (!d_ex())
        is_talking = false;
    else
        exit;
}
else if (d_ex())
{
    exit;
}

if (menu_display_type == 0)
{
    if (shopcharx > -20)
        shopcharx -= 4;
    
    if (shopcharx > -40)
        shopcharx -= 4;
    
    if (shopcharx > -80)
        shopcharx -= 4;
    
    if (shopcharx <= -80)
        shopcharx = -80;
}
else
{
    if (shopcharx < -50)
        shopcharx += 4;
    
    if (shopcharx < -30)
        shopcharx += 4;
    
    if (shopcharx < 0)
        shopcharx += 4;
    
    if (shopcharx > 0)
        shopcharx = 0;
}

talkbuffer -= 1;
draw_set_color(c_black);
scr_shopmenu(0);

if (menu_display_type == 0)
{
    scr_darkbox_black(cx, cy + 240, cx + 415, cy + 480);
    scr_darkbox_black(cx + 400, cy + 240, cx + 640, cy + 480);
}
else if (menu_display_type == 1)
{
    scr_darkbox_black(cx, cy + 240, cx + 640, cy + 480);
}

if (!init)
    exit;

if (menu == 0)
{
    sidemessage = 0;
    menuc[1] = 0;
    menuc[2] = 0;
    menuc[3] = 0;
    menuc[4] = 0;
    menu_display_type = 0;
    
    if (instance_exists(obj_writer) == false)
    {
        global.typer = 6;
        global.msg[0] = default_text;
        var writer = instance_create(cx + 30, cy + 270, obj_writer);
    }
    
    menumax = array_length(menu_list) - 1;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    
    if (global.lang == "ja")
        cx -= 32;
    
    for (var i = 0; i < array_length(menu_list); i++)
        draw_text(cx + 480, cy + ((130 + (i * 20)) * 2), string_hash_to_newline(menu_list[i].option_text));
    
    with (obj_dw_fcastle_green_checkpoint)
    {
        if (!anyonelost && !everyonerecruited)
        {
            tsiner++;
            var col1 = merge_color(c_red, c_white, (sin(tsiner / 15) * 0.35) + 0.35);
            var col2 = 16777215;
            draw_text_color(cx + 480, cy + 340, string_hash_to_newline(other.menu_list[2].option_text), col1, col1, col2, col2, 1);
        }
    }
    
    menuc[menu] = min(menuc[menu], menumax);
    
    if (global.lang == "ja")
        cx += 10;
    
    draw_sprite(spr_heart, 0, cx + 450, (135 + (menuc[menu] * 20)) * 2);
    
    if (global.lang == "ja")
        cx += 22;
    
    if (button1_p() && onebuffer < 0)
    {
        onebuffer = 2;
        mainmessage = 1;
        
        with (obj_writer)
            instance_destroy();
        
        menu = menu_list[menuc[0]].menu_type;
        
        if (menu == 99)
        {
            alarm[10] = 1;
            exit;
        }
        else
        {
            menu_list[menuc[0]].times_selected++;
            menu_display_type = 0;
            
            if (menu == 4 || menu == 6)
            {
                menu_talk_flag = menu_list[menuc[0]].talk_flag;
                menu_talk_style = menu_list[menuc[0]].talk_style;
                menu_display_type = 1;
                menu_talk_con = 0;
            }
        }
    }
}

if (menu == 1 || menu == 2)
{
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    var sold_out_text = stringsetloc("SOLD OUT", "obj_shop_vending_slash_Draw_0_gml_136_0");
    
    for (var i = 0; i < itemtotal; i += 1)
    {
        draw_set_font(fnt_main);
        AP_item_classification_color_shop(shop_item_flags[i]);
        draw_text(camerax() + 60, cameray() + 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
        draw_set_color(c_white);
        draw_text(camerax() + 60, cameray() + 260 + (i * 40) + 15, "To: " + string_hash_to_newline(shopitemreceivername[i]));
        draw_set_font(fnt_mainbig);
        
        if (menu_dollar)
            draw_text(camerax() + 300, cameray() + 260 + (i * 40), string_hash_to_newline("$" + string(buyvalue[i])));
        else
            draw_text(camerax() + 300, cameray() + 260 + (i * 40), string_hash_to_newline(string(buyvalue[i]) + " PTs"));
    }
    
    draw_text(cx + 60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop_vending_slash_Draw_0_gml_218_0")));
    
    if (menu == 1)
    {
        menumax = itemtotal;
        
        if (instance_exists(obj_writer) == false)
        {
            msgset(0, sidemessage_list[sidemessage]);
            instance_create(cx + 450, 260, obj_writer);
        }
        
        menuc[menu] = min(menuc[menu], menumax);
        draw_sprite(spr_heart, 0, cx + 30, 270 + (menuc[menu] * 40));
        var can_buy = true;
        
        if (itemtype[menuc[1]] == "key")
        {
            if (scr_keyitemcheck(item[menuc[1]]))
                can_buy = false;
        }
        else if (itemtype[menuc[1]] == "event" || itemtype[menuc[1]] == "item")
        {
            if (menuc[1] < array_length(sold_flag))
            {
                if (array_length(sold_flag[menuc[1]]) > 0)
                {
                    var _flag = sold_flag[menuc[1]][0];
                    var _min_value = sold_flag[menuc[1]][1];
                    can_buy = scr_flag_get(_flag) < _min_value;
                    
                    if (!can_buy)
                        shopdesc[menuc[1]] = "";
                }
            }
        }
        
        if (can_buy && button1_p() && onebuffer < 0)
        {
            menu = 2;
            onebuffer = 2;
            
            with (obj_writer)
                instance_destroy();
            
            if (menuc[1] == menumax)
                menu = 0;
        }
        
        if (button2_p() && twobuffer < 0 && onebuffer < 2)
        {
            menu = 0;
            twobuffer = 2;
            minimenuy = 220;
            
            with (obj_writer)
                instance_destroy();
        }
        
        menuc[2] = 0;
    }
    
    if (menu == 2)
    {
        if (itemtype[menuc[1]] == "checked")
        {
            menu = 1;
            sidemessage = 5;
        }
        else
        {
            menumax = 1;
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
            var y1_off = langopt(260, 290);
            var y2_off = langopt(290, 260);
            draw_text(cx + 460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop_vending_slash_Draw_0_gml_273_0")));
            
            if (menu_dollar)
                draw_text(cx + 460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_276_0")));
            else
                draw_text(cx + 460, y2_off, string_hash_to_newline(stringsetsubloc("~1 F$?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_279_0")));
            
            draw_text(cx + 480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop_vending_slash_Draw_0_gml_281_0")));
            draw_text(cx + 480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop_vending_slash_Draw_0_gml_282_0")));
            menuc[menu] = min(menuc[menu], menumax);
            draw_sprite(spr_heart, 0, cx + 450, 350 + (menuc[menu] * 30));
            
            if (button2_p() && twobuffer < 0)
            {
                menu = 1;
                sidemessage = 0;
                twobuffer = 2;
                onebuffer = 2;
            }
            
            if (button1_p() && onebuffer < 0 && twobuffer < 0)
            {
                if (menuc[2] == 0)
                {
                    if (itemtype[menuc[1]] == "event")
                    {
                        if (button1_p() && onebuffer < 0)
                        {
                            if (room == room_dw_fcastle_cafe && !dinermenu)
                            {
                                afford = 0;
                                
                                if (menu_dollar)
                                {
                                    if (global.gold >= buyvalue[menuc[1]])
                                        afford = 1;
                                }
                                else if (global.flag[1411] >= buyvalue[menuc[1]])
                                {
                                    afford = 1;
                                }
                                
                                if (afford == 1)
                                {
                                    _pocketed = 0;
                                    
                                    if (itemtype[menuc[1]] == "check")
                                        AP_sendLocation(item[menuc[1]]);
                                    
                                    if (menu_dollar)
                                    {
                                        if (noroom == 0)
                                        {
                                            global.gold -= buyvalue[menuc[1]];
                                            snd_play(snd_locker);
                                            shopitemname[menuc[1]] = "Out Of Stock";
                                            itemtype[menuc[1]] = "checked";
                                            buyvalue[menuc[1]] = "--";
                                            global.customflags[1000 + item[menuc[1]]] = 1;
                                            
                                            if (_pocketed == 1)
                                                sidemessage = 4;
                                            else
                                                sidemessage = 1;
                                        }
                                    }
                                    else if (noroom == 0)
                                    {
                                        global.flag[1044] -= buyvalue[menuc[1]];
                                        snd_play(snd_locker);
                                        shopitemname[menuc[1]] = "Out Of Stock";
                                        itemtype[menuc[1]] = "checked";
                                        buyvalue[menuc[1]] = "--";
                                        global.customflags[1000 + item[menuc[1]]] = 1;
                                        
                                        if (_pocketed == 1)
                                            sidemessage = 4;
                                        else
                                            sidemessage = 1;
                                    }
                                    
                                    if (noroom == 1)
                                        sidemessage = 3;
                                }
                                else
                                {
                                    sidemessage = 2;
                                }
                            }
                            else
                            {
                                event_active = true;
                                sidemessage = 0;
                                menu = 1;
                                exit;
                            }
                        }
                    }
                    else
                    {
                        afford = 0;
                        
                        if (menu_dollar)
                        {
                            if (global.gold >= buyvalue[menuc[1]])
                                afford = 1;
                        }
                        else if (global.flag[1411] >= buyvalue[menuc[1]])
                        {
                            afford = 1;
                        }
                        
                        if (afford == 1)
                        {
                            _pocketed = 0;
                            
                            if (itemtype[menuc[1]] == "check")
                                AP_sendLocation(item[menuc[1]]);
                            
                            if (menu_dollar)
                            {
                                if (noroom == 0)
                                {
                                    global.gold -= buyvalue[menuc[1]];
                                    snd_play(snd_locker);
                                    shopitemname[menuc[1]] = "Out Of Stock";
                                    itemtype[menuc[1]] = "checked";
                                    buyvalue[menuc[1]] = "--";
                                    global.customflags[1000 + item[menuc[1]]] = 1;
                                    
                                    if (_pocketed == 1)
                                        sidemessage = 4;
                                    else
                                        sidemessage = 1;
                                }
                            }
                            else if (noroom == 0)
                            {
                                global.flag[1044] -= buyvalue[menuc[1]];
                                snd_play(snd_locker);
                                shopitemname[menuc[1]] = "Out Of Stock";
                                itemtype[menuc[1]] = "checked";
                                buyvalue[menuc[1]] = "--";
                                global.customflags[1000 + item[menuc[1]]] = 1;
                                
                                if (_pocketed == 1)
                                    sidemessage = 4;
                                else
                                    sidemessage = 1;
                            }
                            
                            if (noroom == 1)
                                sidemessage = 3;
                        }
                        else
                        {
                            sidemessage = 2;
                        }
                    }
                }
                
                if (menuc[2] == 1)
                    sidemessage = 0;
                
                menu = 1;
            }
        }
    }
    
    if (menuc[1] != itemtotal)
    {
        if (minimenuy <= 20)
            minimenuy = 20;
        
        if (minimenuy > 20)
            minimenuy -= 5;
        
        if (minimenuy > 50)
            minimenuy -= 5;
        
        if (minimenuy > 100)
            minimenuy -= 8;
        
        if (minimenuy > 150)
            minimenuy -= 10;
        
        if (itemtype[menuc[1]] == "event")
        {
            if (array_length(sold_flag[menuc[1]]) > 0)
            {
                var _flag = sold_flag[menuc[1]][0];
                var _min_value = sold_flag[menuc[1]][1];
                var can_buy = scr_flag_get(_flag) < _min_value;
                
                if (!can_buy)
                {
                    if (minimenuy < 200)
                        minimenuy += 40;
                    
                    if (minimenuy >= 200)
                        minimenuy = 200;
                }
            }
        }
    }
    else
    {
        if (minimenuy < 200)
            minimenuy += 40;
        
        if (minimenuy >= 200)
            minimenuy = 200;
    }
}

if (menu == 4 || menu == 6)
{
    if (instance_exists(obj_writer) == false && menu_talk_con == 0)
    {
        talk_counter = menu_list[menuc[0]].times_selected;
        event_user(2);
        
        if (menu_talk_style == 1)
            d_make();
        else if (menu_talk_style == 2)
            instance_destroy();
        else
            instance_create(cx + 30, cy + 270, obj_writer);
        
        is_talking = true;
        menu_talk_con = 1;
    }
    
    if (menu_talk_con == 1 && instance_exists(obj_writer) == false)
    {
        if (event_active)
        {
            event_active = false;
            event_con = 0;
        }
        
        if (menu == 4)
        {
            menu = 0;
            menu_talk_con = 0;
        }
        
        if (menu == 6)
        {
            menu_display_type = 99;
            
            if (!d_ex())
            {
                menu = 0;
                menu_talk_con = 0;
                alarm[10] = 1;
                exit;
            }
        }
    }
}

if (menu == 10)
{
    menuc[11] = 0;
    menuc[12] = 0;
    menuc[13] = 0;
    menumax = 4;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    draw_text(cx + 80, cy + 260, string_hash_to_newline(stringsetloc("Sell Items", "obj_shop_vending_slash_Draw_0_gml_533_0")));
    draw_text(cx + 80, cy + 300, string_hash_to_newline(stringsetloc("Sell Weapons", "obj_shop_vending_slash_Draw_0_gml_534_0")));
    draw_text(cx + 80, cy + 340, string_hash_to_newline(stringsetloc("Sell Armor", "obj_shop_vending_slash_Draw_0_gml_535_0")));
    draw_text(cx + 80, cy + 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop_vending_slash_Draw_0_gml_536_0")));
    draw_text(cx + 80, cy + 420, string_hash_to_newline(stringsetloc("Return", "obj_shop_vending_slash_Draw_0_gml_537_0")));
    
    if (instance_exists(obj_writer) == false)
    {
        if (sidemessage == 0)
            global.msg[0] = stringsetloc("Dispense&of items&for Dark&Dollars.", "obj_shop_vending_slash_Draw_0_gml_542_0");
        
        if (sidemessage == 1)
            global.msg[0] = stringsetloc("Object&sold.", "obj_shop_vending_slash_Draw_0_gml_543_0");
        
        if (sidemessage == 2)
            global.msg[0] = stringsetloc("Nothing&to sell.", "obj_shop_vending_slash_Draw_0_gml_544_0");
        
        if (instance_exists(obj_dw_garden_diner))
        {
            if (sidemessage == 0)
                global.msg[0] = stringsetloc("Sell your&items.", "obj_shop_vending_slash_Draw_0_gml_548_0");
        }
        
        instance_create(cx + 460, cy + 260, obj_writer);
    }
    
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, cx + 50, cy + 270 + (menuc[menu] * 40));
    
    if (button1_p() && onebuffer < 0)
    {
        pagemax = 0;
        sidemessage2 = 0;
        onebuffer = 2;
        
        with (obj_writer)
            instance_destroy();
        
        can = 1;
        idealmenu = menuc[10] + 11;
        
        if (idealmenu == 11)
        {
            scr_itemcheck(0);
            
            if (itemcount == 12)
            {
                sidemessage = 2;
                can = 0;
            }
            
            nothingcount = itemcount;
            scr_iteminfo_all();
            selltype = "item";
            selltotal = 12;
            
            for (var i = 0; i < selltotal; i++)
            {
                itemsellvalue[i] = global.itemvalue[i];
                itemsellname[i] = global.itemnameb[i];
            }
        }
        
        if (idealmenu == 12)
        {
            scr_weaponcheck_inventory(0);
            
            if (itemcount == 48)
            {
                sidemessage = 2;
                can = 0;
            }
            
            scr_weaponinfo_all();
        }
        
        if (idealmenu == 13)
        {
            scr_armorcheck_inventory(0);
            
            if (itemcount == 48)
            {
                sidemessage = 2;
                can = 0;
            }
            
            scr_armorinfo_all();
        }
        
        if (idealmenu == 14)
        {
            scr_itemcheck_pocket(0);
            
            if (itemcount == global.flag[64])
            {
                sidemessage = 2;
                can = 0;
            }
            
            selltype = "pocket";
            nothingcount = 0;
            selltotal = global.flag[64];
            
            for (var i = 0; i < global.flag[64]; i++)
            {
                scr_iteminfo(global.pocketitem[i]);
                itemsellvalue[i] = value;
                itemsellname[i] = itemnameb;
            }
            
            idealmenu = 11;
        }
        
        if (menuc[10] < menumax)
        {
            if (can == 1)
                menu = idealmenu;
            
            sidemessage1 = 0;
        }
        else
        {
            menu = 0;
        }
        
        submenu = 0;
        submenuc[1] = 0;
    }
    
    if (button2_p() && twobuffer < 0 && onebuffer < 0)
    {
        twobuffer = 2;
        menu = 0;
        
        with (obj_writer)
            instance_destroy();
    }
}

scr_shopmenu(4);

if (menu == 11 || menu == 12 || menu == 13 || menu == 14)
{
    if (instance_exists(obj_writer) == false)
    {
        if (sidemessage2 == 0 && (menu == 11 || menu == 14))
            global.msg[0] = stringsetloc("Select&ITEM&to sell.", "obj_shop_vending_slash_Draw_0_gml_636_0");
        
        if (sidemessage2 == 0 && menu == 12)
            global.msg[0] = stringsetloc("Select&WEAPON&to sell.", "obj_shop_vending_slash_Draw_0_gml_637_0");
        
        if (sidemessage2 == 0 && menu == 13)
            global.msg[0] = stringsetloc("Select&ARMOR&to sell.", "obj_shop_vending_slash_Draw_0_gml_638_0");
        
        if (sidemessage2 == 1)
            global.msg[0] = stringsetloc("Thank&you for&the sale.", "obj_shop_vending_slash_Draw_0_gml_639_0");
        
        if (sidemessage2 == 2)
            global.msg[0] = stringsetloc("What&will&you do?", "obj_shop_vending_slash_Draw_0_gml_640_0");
        
        if (sidemessage2 == 3)
            global.msg[0] = stringsetloc("Not&accepted&here.", "obj_shop_vending_slash_Draw_0_gml_641_0");
        
        if (sidemessage2 == 4)
            global.msg[0] = stringsetloc("No&value.", "obj_shop_vending_slash_Draw_0_gml_642_0");
        
        instance_create(cx + 450, cy + 260, obj_writer);
    }
}

scr_shopmenu(5);

if (menu == 15 || menu == 16 || menu == 17 || menu == 18)
{
    menumax = 1;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    var y1_off = langopt(260, 290);
    var y2_off = langopt(290, 260);
    draw_text(cx + 460, y1_off, string_hash_to_newline(stringsetloc("Sell it for", "obj_shop_vending_slash_Draw_0_gml_656_0")));
    draw_text(cx + 460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop_vending_slash_Draw_0_gml_657_0")));
    draw_text(cx + 480, cy + 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop_vending_slash_Draw_0_gml_658_0")));
    draw_text(cx + 480, cy + 370, string_hash_to_newline(stringsetloc("No", "obj_shop_vending_slash_Draw_0_gml_659_0")));
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, cx + 450, cy + 350 + (menuc[menu] * 30));
}

if (down_p())
{
    if (menu != 11 && menu != 12 && menu != 13)
    {
        menuc[menu] += 1;
        
        if (menuc[menu] > menumax)
            menuc[menu] = 0;
    }
}

if (up_p())
{
    if (menu != 11 && menu != 12 && menu != 13)
    {
        menuc[menu] -= 1;
        
        if (menuc[menu] < 0)
            menuc[menu] = menumax;
    }
}

if (menuc[1] < itemtotal || menu >= 10)
{
    if (menu >= 10 && menu < 18)
        draw_text(cx + 440, 420, "$" + string_hash_to_newline(string(global.gold)));
    else if (menu_dollar)
        draw_text(cx + 440, 420, string_hash_to_newline("$" + string(global.gold)));
    else
        draw_text((cx + 440) - 10, 420, string_hash_to_newline(string(global.flag[1411])) + " F$");
    
    if (itemtype[menuc[1]] != "key" && itemtype[menuc[1]] != "event")
    {
        if (menu == 1 || menu == 2)
        {
            if (menuc[1] < itemtotal)
                scr_shop_space_display(menuc[1]);
        }
    }
}

onebuffer -= 1;
twobuffer -= 1;
