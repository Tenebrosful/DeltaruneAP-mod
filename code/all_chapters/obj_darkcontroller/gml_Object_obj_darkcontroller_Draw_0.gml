/// PATCH

/// REPLACE
#if CHAPTER_1
    if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
    {
        scroll_xoff = 0;
        
        if (global.lang == "ja")
            scroll_xoff = 54;
        
        if (global.submenu == 12)
            pm = 0;
        else
            pm = 1;
        
        draw_sprite(spr_heart, 0, xx + 344 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * ch_vspace));
        draw_set_color(c_white);
        
        for (var i = 0; i < 12; i += 1)
        {
            buff = 0;
            
            if (global.submenucoord[global.submenu] == i)
                buff += 3;
            
            if (pm == 0)
            {
                if (global.weapon[i] == 0)
                    buff -= 1;
            }
            
            if (pm == 1)
            {
                if (global.armor[i] == 0)
                    buff -= 1;
            }
            
            draw_rectangle(((xx + 555) - buff) + scroll_xoff, (yy + 260 + (i * 10)) - buff, xx + 558 + buff + scroll_xoff, yy + 263 + (i * 10) + buff, false);
        }
        
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < 11)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
    }
#elsif CHAPTER_2
    if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
    {
        var __equipmenumax = 47;
        var scroll_xoff = langopt(0, 50);
        
        if (global.submenu == 12)
            pm = 0;
        else
            pm = 1;
        
        draw_sprite(spr_heart, 0, xx + 344 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * 27));
        draw_set_color(c_dkgray);
        draw_rectangle(xx + 555 + scroll_xoff, yy + 260, xx + 560 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        draw_rectangle(xx + 555 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 560 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
        
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
    }
#else
    if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
    {
        var __equipmenumax = 47;
        var scroll_xoff = langopt(0, 50);
        
        if (global.submenu == 12)
            pm = 0;
        else
            pm = 1;
        
        draw_sprite(spr_heart, 0, xx + 344 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * 27));
        draw_set_color(c_dkgray);
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, yy + 260, xx + 560 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, (yy + 260 + (pagemax[pm] * 2.738095238095238)) - 1, xx + 560 + scroll_xoff, yy + 263 + (pagemax[pm] * 2.738095238095238) + 1, false);
        
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
    }
#endif
/// CODE
    if (global.submenu == 12 || global.submenu == 13 || global.submenu == 14)
    {
        var __equipmenumax;
        var scroll_xoff = 0;
        
        if (global.submenu == 12)
        {
            pm = 0;
            __equipmenumax = 47;
        }
        else
        {
            pm = 1;
            __equipmenumax = 59;
        }
        
        draw_sprite(spr_heart, 0, xx + 344 + eq_xoff, yy + 240 + ((global.submenucoord[global.submenu] - pagemax[pm]) * 27));
        draw_set_color(c_dkgray);
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, yy + 260, xx + 560 + scroll_xoff, yy + 263 + 115, false);
        draw_set_color(c_white);
        var height_factor = 115 / (__equipmenumax - 5);
        ossafe_fill_rectangle(xx + 555 + scroll_xoff, (yy + 260 + (pagemax[pm] * height_factor)) - 1, xx + 560 + scroll_xoff, yy + 263 + (pagemax[pm] * height_factor) + 1, false);
        
        if (pagemax[pm] > 0)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, (yy + 250) - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
        
        if ((5 + pagemax[pm]) < __equipmenumax)
            draw_sprite_ext(spr_morearrow, 0, xx + 551 + scroll_xoff, yy + 385 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
    }
/// END