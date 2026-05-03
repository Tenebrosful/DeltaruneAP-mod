/// PATCH

/// REPLACE
    if (menu == 2)
    {
        menumax = 1;
        draw_set_color(c_white);
        scr_84_set_draw_font("mainbig");
        var y1_off = langopt(260, 290);
        var y2_off = langopt(290, 260);
        draw_text(camerax() + 460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop_vending_slash_Draw_0_gml_223_0")));
        
        if (menu_dollar)
            draw_text(camerax() + 460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_196_0")));
        else
            draw_text(camerax() + 460, y2_off, string_hash_to_newline(stringsetsubloc("~1 PTs?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_224_0")));
        
        draw_text(camerax() + 480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop_vending_slash_Draw_0_gml_225_0")));
        draw_text(camerax() + 480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop_vending_slash_Draw_0_gml_226_0")));
        menuc[2] = min(menuc[2], menumax);
        draw_sprite(spr_heart, 0, camerax() + 450, 350 + (menuc[2] * 30));
        
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
                        event_active = true;
                        sidemessage = 0;
                        menu = 1;
                        exit;
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
                    else if (global.flag[1044] >= buyvalue[menuc[1]])
                    {
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
                        
                        if (menu_dollar)
                        {
                            if (noroom == 0)
                            {
                                global.gold -= buyvalue[menuc[1]];
                                snd_play(snd_locker);
                                
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
/// CODE
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
            draw_text(camerax() + 460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop_vending_slash_Draw_0_gml_223_0")));
            
            if (menu_dollar)
                draw_text(camerax() + 460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_196_0")));
            else
                draw_text(camerax() + 460, y2_off, string_hash_to_newline(stringsetsubloc("~1 PTs?", string(buyvalue[menuc[1]]), "obj_shop_vending_slash_Draw_0_gml_224_0")));
            
            draw_text(camerax() + 480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop_vending_slash_Draw_0_gml_225_0")));
            draw_text(camerax() + 480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop_vending_slash_Draw_0_gml_226_0")));
            menuc[2] = min(menuc[2], menumax);
            draw_sprite(spr_heart, 0, camerax() + 450, 350 + (menuc[2] * 30));
            
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
                        if (button1_p() && onebuffer < 0)
                        {
                            event_active = true;
                            sidemessage = 0;
                            menu = 1;
                            exit;
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
                        else if (global.flag[1044] >= buyvalue[menuc[1]])
                        {
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
/// END