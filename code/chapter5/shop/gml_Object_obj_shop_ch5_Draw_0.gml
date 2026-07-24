/// IMPORT

if (menu == 1 || menu == 2)
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

draw_set_color(c_black);
d_rectangle(0, 240, 640, 480, false);
scr_shopmenu(0);

if (menu <= 3 || menu >= 10)
{
    scr_darkbox_black(0, 240, 415, 480);
    scr_darkbox_black(400, 240, 640, 480);
}

if (menu == 4)
    scr_darkbox_black(0, 240, 640, 480);

if (menu == 0)
{
    sell = 0;
    selling = 0;
    sidemessage = 0;
    menuc[1] = 0;
    menuc[2] = 0;
    menuc[3] = 0;
    menuc[4] = 0;
    
    if (instance_exists(obj_writer) == false)
    {
        global.typer = 6;
        global.msg[0] = _intro_text;
        
        if (mainmessage == 0)
            global.msg[0] = _intro_text;
        
        instance_create(30, 270, obj_writer);
    }
    
    menumax = 3;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    draw_text(480, 260, string_hash_to_newline(stringsetloc("Buy", "obj_shop1_slash_Draw_0_gml_106_0")));
    draw_text(480, 300, string_hash_to_newline(stringsetloc("Sell", "obj_shop1_slash_Draw_0_gml_107_0")));
    draw_text(480, 340, string_hash_to_newline(stringsetloc("Talk", "obj_shop1_slash_Draw_0_gml_108_0")));
    draw_text(480, 380, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_109_0")));
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, 450, (135 + (menuc[0] * 20)) * 2);
    
    if (button1_p())
    {
        onebuffer = 2;
        mainmessage = 1;
        
        with (obj_writer)
            instance_destroy();
        
        if (menuc[0] == 0)
            menu = 1;
        
        if (menuc[0] == 1)
        {
            menu = 10;
            sidemessage = 0;
        }
        
        if (menuc[0] == 2)
        {
            menu = 3;
            
            if (scr_flag_get(1846) >= 2)
            {
                sell = 1;
                menu = 4;
            }
        }
        
        if (menuc[0] == 3)
        {
            sell = 2;
            menu = 4;
        }
    }
}

if (menu == 1 || menu == 2)
{
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    var sold_out_text = stringsetloc("SOLD", "obj_shop_ch5_slash_Draw_0_gml_94_0");
    
    for (var i = 0; i < itemtotal; i += 1)
    {
        draw_set_font(fnt_main);
        AP_item_classification_color_shop(shop_item_flags[i]);
        draw_text(camerax() + 60, cameray() + 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
        draw_set_color(c_white);
        draw_text(camerax() + 60, cameray() + 260 + (i * 40) + 15, "To: " + string_hash_to_newline(shopitemreceivername[i]));
        draw_set_font(fnt_mainbig);
        if (item_currency[i] == UnknownEnum.Value_1)
        {
            var sold_value = stringsetsubloc("P$~1", string(buyvalue[i]), "obj_shop_ch5_slash_Draw_0_gml_105_0");
            var sold_color = make_color_rgb(255, 138, 144);
            draw_set_color(sold_color);
            draw_text(300, 260 + (i * 40), sold_value);
            draw_set_color(c_white);
        }
        else
        {
          draw_text(camerax() + 300, cameray() + 260 + (i * 40), string_hash_to_newline("$" + string(buyvalue[i])));
        }
    }
    
    draw_text(60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_139_0")));
    
    if (menu == 1)
    {
        menumax = 4;
        
        if (instance_exists(obj_writer) == false)
        {
            if (sidemessage == 0)
                global.msg[0] = stringsetloc("Right...&this is&a store.", "obj_shop_ch5_slash_Draw_0_gml_129_0");
            
            if (sidemessage == 1)
                global.msg[0] = stringsetloc("Enjoy.&Enjoy!&ENJOY!", "obj_shop_ch5_slash_Draw_0_gml_130_0");
            
            if (sidemessage == 2)
                global.msg[0] = stringsetloc("Save your&dollars.", "obj_shop_ch5_slash_Draw_0_gml_131_0");
            
            if (sidemessage == 3)
                global.msg[0] = stringsetloc("Ever&heard of&dollars?", "obj_shop_ch5_slash_Draw_0_gml_132_0");
            
            if (sidemessage == 4)
                global.msg[0] = stringsetloc("Not if&you can't&carry it.", "obj_shop_ch5_slash_Draw_0_gml_133_0");
            
            if (sidemessage == 5)
                msgsetloc(0, "Enjoy^1. It's&in your&STORAGE.", "obj_shop_ch5_slash_Draw_0_gml_134_0");
            
            instance_create(450, 260, obj_writer);
        }
        
        menuc[menu] = min(menuc[menu], menumax);
        draw_sprite(spr_heart, 0, 30, 270 + (menuc[1] * 40));
        var can_buy = true;
        
        if (itemtype[menuc[1]] == "key")
        {
            if (scr_keyitemcheck(item[menuc[1]]))
                can_buy = false;
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
        menumax = 1;
        draw_set_color(c_white);
        scr_84_set_draw_font("mainbig");
        var y1_off = langopt(260, 290);
        var y2_off = langopt(290, 260);
        draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop1_slash_Draw_0_gml_167_0")));
        
        if (item_currency[menuc[1]] == UnknownEnum.Value_0)
        {
            draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop1_slash_Draw_0_gml_177_0")));
        }
        else if (item_currency[menuc[1]] == UnknownEnum.Value_1)
        {
            draw_set_color(make_color_rgb(255, 138, 144));
            var pink_amount_text = stringsetsubloc("P$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_ch5_slash_Draw_0_gml_168_0");
            draw_text(460, y2_off, pink_amount_text);
            draw_set_color(c_white);
        }
        
        draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_169_0")));
        draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_170_0")));
        menuc[menu] = min(menuc[menu], menumax);
        draw_sprite(spr_heart, 0, 450, 350 + (menuc[2] * 30));
        
        if (button2_p() && twobuffer < 0)
        {
            menu = 1;
            sidemessage = 2;
            twobuffer = 2;
            onebuffer = 2;
        }
        
        if (button1_p() && onebuffer < 0 && twobuffer < 0)
        {
            if (menuc[2] == 0)
            {
                afford = 0;
                
                if (item_currency[menuc[1]] == UnknownEnum.Value_0)
                {
                    if (global.gold >= buyvalue[menuc[1]])
                        afford = 1;
                }
                else if (item_currency[menuc[1]] == UnknownEnum.Value_1)
                {
                    if (scr_flag_get(1312) >= buyvalue[menuc[1]])
                        afford = 1;
                }
                
                if (afford == 1)
                {
                    _pocketed = 0;
                    
                    if (itemtype[menuc[1]] == "item")
                        scr_itemget(item[menuc[1]]);
                    
                    if (itemtype[menuc[1]] == "weapon")
                        scr_weaponget(item[menuc[1]]);
                    
                    if (itemtype[menuc[1]] == "armor")
                        scr_armorget(item[menuc[1]]);
                    
                    if (itemtype[menuc[1]] == "key")
                        scr_keyitemget(item[menuc[1]]);

                    if (itemtype[menuc[1]] == "check")
                        AP_sendLocation(item[menuc[1]]);
                    
                    if (noroom == 0)
                    {
                        if (item_currency[menuc[1]] == UnknownEnum.Value_0)
                        {
                            global.gold -= buyvalue[menuc[1]];
                        }
                        else if (item_currency[menuc[1]] == UnknownEnum.Value_1)
                        {
                            var new_amount = scr_flag_get(1312) - buyvalue[menuc[1]];
                            scr_flag_set(1312, new_amount);
                        }

                        shopitemname[menuc[1]] = "Out Of Stock";
                        itemtype[menuc[1]] = "checked";
                        buyvalue[menuc[1]] = "--";
                        global.customflags[1000 + item[menuc[1]]] = 1;
                        
                        snd_play(snd_locker);
                        
                        if (_pocketed == 1)
                            sidemessage = 5;
                        else
                            sidemessage = 1;
                    }
                    
                    if (noroom == 1)
                        sidemessage = 4;
                }
                else
                {
                    sidemessage = 3;
                }
            }
            
            if (menuc[2] == 1)
                sidemessage = 2;
            
            menu = 1;
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
        
        if (itemtype[menuc[1]] == "key")
        {
            if (scr_keyitemcheck(item[menuc[1]]))
            {
                shopdesc[menuc[1]] = "";
                
                if (minimenuy < 200)
                    minimenuy += 40;
                
                if (minimenuy >= 200)
                    minimenuy = 200;
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

if (menu == 3)
{
    menumax = 4;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    
    for (var i = 0; i < array_length(_talk_options); i++)
    {
        var y_offset = 40 * i;
        draw_text(80, 260 + y_offset, string_hash_to_newline(_talk_options[i]));
    }
    
    draw_set_color(c_white);
    draw_text(80, 420, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_240_0")));
    
    if (instance_exists(obj_writer) == false)
    {
        global.msg[0] = stringsetloc("I guess...&we could&talk.", "obj_shop_ch5_slash_Draw_0_gml_277_0");
        instance_create(440, 260, obj_writer);
    }
    
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, 50, 270 + (menuc[3] * 40));
    
    if (button1_p() && onebuffer < 0)
    {
        onebuffer = 2;
        
        with (obj_writer)
            instance_destroy();
        
        if (menuc[3] < menumax)
        {
            sell = menuc[3] + 3;
            menu = 4;
        }
        else
        {
            menu = 0;
        }
    }
    else if (button2_p() && twobuffer < 0 && onebuffer < 0)
    {
        twobuffer = 2;
        menu = 0;
        
        with (obj_writer)
            instance_destroy();
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
    draw_text(80, 260, string_hash_to_newline(stringsetloc("Sell Items", "obj_shop1_slash_Draw_0_gml_278_0")));
    draw_text(80, 300, string_hash_to_newline(stringsetloc("Sell Weapons", "obj_shop1_slash_Draw_0_gml_279_0")));
    draw_text(80, 340, string_hash_to_newline(stringsetloc("Sell Armor", "obj_shop1_slash_Draw_0_gml_280_0")));
    draw_text(80, 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop1_slash_Draw_0_gml_292_0")));
    draw_text(80, 420, string_hash_to_newline(stringsetloc("Return", "obj_shop1_slash_Draw_0_gml_293_0")));
    
    if (instance_exists(obj_writer) == false)
    {
        if (sidemessage == 0)
            global.msg[0] = stringsetloc("Leave&it all&behind.", "obj_shop_ch5_slash_Draw_0_gml_320_0");
        
        if (sidemessage == 1)
            global.msg[0] = stringsetloc("Guess&it's MINE&now.", "obj_shop_ch5_slash_Draw_0_gml_321_0");
        
        if (sidemessage == 2)
            global.msg[0] = stringsetloc("You have&nothing.&Feels&nice?", "obj_shop_ch5_slash_Draw_0_gml_322_0");
        
        instance_create(460, 260, obj_writer);
    }
    
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, 50, 270 + (menuc[10] * 40));
    
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

if (menu == 11 || menu == 12 || menu == 13 || menu == 14)
{
    if (instance_exists(obj_writer) == false)
    {
        if (sidemessage2 == 0 && (menu == 11 || menu == 14))
            global.msg[0] = stringsetloc("You're&gonna give&me stuff?", "obj_shop_ch5_slash_Draw_0_gml_406_0");
        
        if (sidemessage2 == 0 && menu == 12)
            global.msg[0] = stringsetloc("I could&always use&a knife.", "obj_shop_ch5_slash_Draw_0_gml_407_0");
        
        if (sidemessage2 == 0 && menu == 13)
            global.msg[0] = stringsetloc("A ribbon&might be&nice.", "obj_shop_ch5_slash_Draw_0_gml_408_0");
        
        if (sidemessage2 == 1)
            global.msg[0] = stringsetloc("Guess&it's MINE&now.", "obj_shop_ch5_slash_Draw_0_gml_409_0");
        
        if (sidemessage2 == 2)
            global.msg[0] = stringsetloc("Don't have&second&thoughts.", "obj_shop_ch5_slash_Draw_0_gml_410_0");
        
        if (sidemessage2 == 3)
            global.msg[0] = stringsetloc("L..^1. like&I would&want THAT!", "obj_shop_ch5_slash_Draw_0_gml_411_0");
        
        if (sidemessage2 == 4)
            global.msg[0] = stringsetloc("Huh?", "obj_shop_ch5_slash_Draw_0_gml_412_0");
        
        instance_create(450, 260, obj_writer);
    }
}

scr_shopmenu(4);

if (menu == 15 || menu == 16 || menu == 17 || menu == 18)
{
    menumax = 1;
    draw_set_color(c_white);
    scr_84_set_draw_font("mainbig");
    var y1_off = langopt(260, 290);
    var y2_off = langopt(290, 260);
    draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Sell it for", "obj_shop1_slash_Draw_0_gml_365_0")));
    draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop1_slash_Draw_0_gml_407_0")));
    draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_367_0")));
    draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_368_0")));
    menuc[menu] = min(menuc[menu], menumax);
    draw_sprite(spr_heart, 0, 450, 350 + (menuc[menu] * 30));
}

scr_shopmenu(5);

if (menu == 4)
{
    if (sell == 0)
        menu = 0;
    
    if (instance_exists(obj_writer) == false && selling == 0)
    {
        if (sell != 2)
        {
            if (scr_flag_get(1846) >= 2)
            {
                if (scr_flag_get(1895) > 0 && scr_flag_get(941) > 0 && scr_flag_get(1711) == 0)
                    load_dialogue(UnknownEnum.Value_5);
                else
                    load_dialogue(UnknownEnum.Value_4);
            }
            else
            {
                var convo_index = sell - 3;
                load_dialogue(convo_index);
            }
        }
        else
        {
            global.msg[0] = _exit_text;
            instance_create(30, 270, obj_writer);
        }
        
        selling = 1;
    }
    
    if (selling == 1 && instance_exists(obj_writer) == false)
    {
        if (sell == 2)
        {
            selling = 2;
            event_user(1);
        }
        else
        {
            if (sell == 1 || sell == 7 || sell == 10)
                menu = 0;
            else
                menu = 3;
            
            sell = 0;
            selling = 0;
        }
    }
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

if (menu < 4 || menu >= 10)
{
    if (itemtype[menuc[1]] != "key")
    {
        draw_text(440, 420, "$" + string_hash_to_newline(string(global.gold)));
        
        if (menu == 1 || menu == 2)
        {
            if (menuc[1] < itemtotal)
                scr_shop_space_display(menuc[1]);
        }
    }
    else
    {
        draw_set_color(make_color_rgb(255, 138, 144));
        draw_text(440, 420, "P$" + string_hash_to_newline(string(scr_flag_get(1312))));
        draw_set_color(c_white);
    }
}

onebuffer -= 1;
twobuffer -= 1;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_4 = 4,
    Value_5
}
