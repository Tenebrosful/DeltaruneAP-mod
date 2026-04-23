/// PATCH

/// BEFORE
            if (murder == 1)
                global.msg[0] = stringsetloc("/*", "obj_shop1_slash_Draw_0_gml_153_0");
/// CODE
            if (sidemessage == 6)
                msgsetloc(0, "\\E0Apologies,&but we are&out of&that item.", "obj_shop_ch2_swatch_slash_Draw_0_gml_142_0");
/// END

/// REPLACE
    if (menu == 2)
    {
        menumax = 1;
        draw_set_color(c_white);
        scr_84_set_draw_font("mainbig");
        var y1_off = langopt(260, 290);
        var y2_off = langopt(290, 260);
        draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop1_slash_Draw_0_gml_167_0")));
        draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_ch2_swatch_slash_Draw_0_gml_160_0")));
        draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_169_0")));
        draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_170_0")));
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
                
                if (global.gold >= buyvalue[menuc[1]])
                    afford = 1;
                
                if (afford == 1)
                {
                    _pocketed = 0;
                    
                    if (itemtype[menuc[1]] == "item")
                        scr_itemget(item[menuc[1]]);
                    
                    if (itemtype[menuc[1]] == "weapon")
                        scr_weaponget(item[menuc[1]]);
                    
                    if (itemtype[menuc[1]] == "armor")
                        scr_armorget(item[menuc[1]]);
                    
                    if (noroom == 0)
                    {
                        global.gold -= buyvalue[menuc[1]];
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
/// CODE
    if (menu == 2)
    {
        if (itemtype[menuc[1]] == "checked")
        {
            menu = 1;
            sidemessage = 6;
        }
        else
        {
            menumax = 1;
            draw_set_color(c_white);
            scr_84_set_draw_font("mainbig");
            var y1_off = langopt(260, 290);
            var y2_off = langopt(290, 260);
            draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop1_slash_Draw_0_gml_167_0")));
            draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_ch2_swatch_slash_Draw_0_gml_160_0")));
            draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_169_0")));
            draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_170_0")));
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
                    
                    if (global.gold >= buyvalue[menuc[1]])
                        afford = 1;
                    
                    if (afford == 1)
                    {
                        _pocketed = 0;
                        
                        if (itemtype[menuc[1]] == "item")
                            scr_itemget(item[menuc[1]]);
                        
                        if (itemtype[menuc[1]] == "weapon")
                            scr_weaponget(item[menuc[1]]);
                        
                        if (itemtype[menuc[1]] == "armor")
                            scr_armorget(item[menuc[1]]);
                        
                        if (itemtype[menuc[1]] == "check")
                            scr_checkspot(item[menuc[1]]);
                        
                        if (noroom == 0)
                        {
                            global.gold -= buyvalue[menuc[1]];
                            sidemessage = 1;
                            snd_play(snd_locker);
                            shopitemname[menuc[1]] = "Out Of Stock";
                            itemtype[menuc[1]] = "checked";
                            buyvalue[menuc[1]] = "--";
                            global.customflags[1000 + item[menuc[1]]] = 1;
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
    }
/// END

/// REPLACE
    for (i = 0; i < itemtotal; i += 1)
    {
        draw_text(60, 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
        draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop_ch2_swatch_slash_Draw_0_gml_120_0")));
    }
/// CODE
    for (i = 0; i < itemtotal; i += 1)
    {
        scr_ap_item_classification_color_shop(shop_item_flags);
        draw_text(60, 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
        draw_set_color(c_white)
        draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop_ch2_swatch_slash_Draw_0_gml_120_0")));
    }
/// END