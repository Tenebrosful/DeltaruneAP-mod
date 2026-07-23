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
#elsif CHAPTER_2 || CHAPTER_3
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

/// REPLACE
#if CHAPTER_1
if (global.menuno == 5)
{
    draw_set_color(c_black);
    
    if (global.lang == "ja")
    {
        draw_rectangle(xx + 60, yy + 85, xx + 580, yy + 412, false);
        scr_darkbox(xx + 50, yy + 75, xx + 590, yy + 422);
    }
    else
    {
        draw_rectangle(xx + 60, yy + 90, xx + 580, yy + 410, false);
        scr_darkbox(xx + 50, yy + 80, xx + 590, yy + 420);
    }
    
    if ((global.submenu >= 30 && global.submenu <= 33) || global.submenu == 36)
    {
        var _xPos = (global.lang == "en") ? (xx + 170) : (xx + 150);
        var _heartXPos = (global.lang == "en") ? (xx + 145) : (xx + 125);
        var _selectXPos = (global.lang == "ja" && global.is_console) ? (xx + 385) : (xx + 430);
        draw_set_color(c_white);
        draw_text(xx + 270, yy + 100, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_74_0")));
        audvol = string(round(global.flag[17] * 100)) + "%";
        musvol = string(abs(global.flag[16] * 100)) + "%";
        runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_0");
        
        if (global.flag[11] == 1)
            runoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_79_1");
        
        flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_0");
        
        if (global.flag[8] == 1)
            flashoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_80_1");
        
        shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_0");
        
        if (global.flag[12] == 1)
            shakeoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_81_1");
        
        if (!global.is_console)
        {
            fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_0");
            
            if (window_get_fullscreen())
                fullscreenoff = scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_82_1");
        }
        
        draw_sprite(spr_heart, 0, _heartXPos, yy + 160 + (global.submenucoord[30] * 35));
        
        if (global.submenu == 33)
            draw_set_color(c_yellow);
        
        draw_text(_xPos, yy + 150, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_86_0")));
        draw_text(_selectXPos, yy + 150, string_hash_to_newline(audvol));
        draw_set_color(c_white);
        draw_text(_xPos, yy + 185, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_91_0")));
        draw_text(_xPos, yy + 220, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_92_0")));
        draw_text(_selectXPos, yy + 220, string_hash_to_newline(flashoff));
        
        if (global.is_console)
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_94_0")));
            draw_text(_selectXPos, yy + 255, string_hash_to_newline(runoff));
            
            if (global.submenu == 36)
                draw_set_color(c_yellow);
            else if (global.disable_border)
                draw_set_color(c_gray);
            
            draw_text(_xPos, yy + 290, border_text);
            draw_text(_selectXPos, yy + 290, border_options[selected_border]);
            draw_set_color(c_white);
            draw_text(_xPos, yy + 325, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_96_0")));
        }
        else
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_93_0")));
            draw_text(xx + 430, yy + 255, string_hash_to_newline(fullscreenoff));
            draw_text(_xPos, yy + 290, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_94_0")));
            draw_text(xx + 430, yy + 290, string_hash_to_newline(runoff));
            draw_text(_xPos, yy + 325, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(scr_84_get_lang_string("obj_darkcontroller_slash_Draw_0_gml_96_0")));
        }
    }
#elsif CHAPTER_2 || CHAPTER_3
if (global.menuno == 5)
{
    var lang_off = langopt([90, 410, 420], [85, 412, 422]);
    draw_set_color(c_black);
    draw_rectangle(xx + 60, yy + lang_off[0], xx + 580, yy + lang_off[1], false);
    scr_darkbox(xx + 50, (yy + lang_off[0]) - 10, xx + 590, yy + lang_off[2]);
    
    if ((global.submenu >= 30 && global.submenu <= 33) || global.submenu == 36)
    {
        var _xPos = (global.lang == "en") ? (xx + 170) : (xx + 150);
        var _heartXPos = (global.lang == "en") ? (xx + 145) : (xx + 125);
        var _selectXPos = (global.lang == "ja" && global.is_console) ? (xx + 385) : (xx + 430);
        draw_set_color(c_white);
        draw_text(xx + 270, yy + 100, string_hash_to_newline(stringsetloc("CONFIG", "obj_darkcontroller_slash_Draw_0_gml_74_0")));
        audvol = string(round(abs(global.flag[17] * 100))) + "%";
        musvol = string(round(abs(global.flag[16] * 100))) + "%";
        runoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_82_0");
        
        if (global.flag[11] == 1)
            runoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_82_1");
        
        flashoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_83_0");
        
        if (global.flag[8] == 1)
            flashoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_83_1");
        
        shakeoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_84_0");
        
        if (global.flag[12] == 1)
            shakeoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_84_1");
        
        if (!global.is_console)
        {
            fullscreenoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_87_0");
            
            if (window_get_fullscreen())
                fullscreenoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_87_1");
        }
        
        draw_sprite(spr_heart, 0, _heartXPos, yy + 160 + (global.submenucoord[30] * 35));
        
        if (global.submenu == 33)
            draw_set_color(c_yellow);
        
        draw_text(_xPos, yy + 150, string_hash_to_newline(stringsetloc("Master Volume", "obj_darkcontroller_slash_Draw_0_gml_86_0")));
        draw_text(_selectXPos, yy + 150, string_hash_to_newline(audvol));
        draw_set_color(c_white);
        draw_text(_xPos, yy + 185, string_hash_to_newline(stringsetloc("Controls", "obj_darkcontroller_slash_Draw_0_gml_91_0")));
        draw_text(_xPos, yy + 220, string_hash_to_newline(stringsetloc("Simplify VFX", "obj_darkcontroller_slash_Draw_0_gml_92_0")));
        draw_text(_selectXPos, yy + 220, string_hash_to_newline(flashoff));
        
        if (global.is_console)
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(autorun_text));
            draw_text(_selectXPos, yy + 255, string_hash_to_newline(runoff));
            
            if (global.submenu == 36)
                draw_set_color(c_yellow);
            else if (global.disable_border)
                draw_set_color(c_gray);
            
            draw_text(_xPos, yy + 290, stringsetloc("Border", "obj_darkcontroller_slash_Draw_0_gml_112_0"));
            draw_text(_selectXPos, yy + 290, border_options[selected_border]);
            draw_set_color(c_white);
            draw_text(_xPos, yy + 325, string_hash_to_newline(stringsetloc("Return to Title", "obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(back_text));
        }
        else
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(stringsetloc("Fullscreen", "obj_darkcontroller_slash_Draw_0_gml_93_0")));
            draw_text(xx + 430, yy + 255, string_hash_to_newline(fullscreenoff));
            draw_text(_xPos, yy + 290, string_hash_to_newline(autorun_text));
            draw_text(xx + 430, yy + 290, string_hash_to_newline(runoff));
            draw_text(_xPos, yy + 325, string_hash_to_newline(stringsetloc("Return to Title", "obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(back_text));
        }
    }
#else
if (global.menuno == 5)
{
    var lang_off = langopt([90, 410, 420], [85, 412, 422]);
    draw_set_color(c_black);
    ossafe_fill_rectangle(xx + 60, yy + lang_off[0], xx + 580, yy + lang_off[1], false);
    scr_darkbox(xx + 50, (yy + lang_off[0]) - 10, xx + 590, yy + lang_off[2]);
    
    if ((global.submenu >= 30 && global.submenu <= 33) || global.submenu == 36)
    {
        var _xPos = (global.lang == "en") ? (xx + 170) : (xx + 150);
        var _heartXPos = (global.lang == "en") ? (xx + 145) : (xx + 125);
        var _selectXPos = (global.lang == "ja" && global.is_console) ? (xx + 385) : (xx + 430);
        draw_set_color(c_white);
        draw_text(xx + 270, yy + 100, string_hash_to_newline(stringsetloc("CONFIG", "obj_darkcontroller_slash_Draw_0_gml_74_0")));
        audvol = string(round(abs(global.flag[17] * 100))) + "%";
        musvol = string(round(abs(global.flag[16] * 100))) + "%";
        runoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_82_0");
        
        if (global.flag[11] == 1)
            runoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_82_1");
        
        flashoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_83_0");
        
        if (global.flag[8] == 1)
            flashoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_83_1");
        
        shakeoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_84_0");
        
        if (global.flag[12] == 1)
            shakeoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_84_1");
        
        if (!global.is_console)
        {
            fullscreenoff = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_87_0");
            
            if (window_get_fullscreen())
                fullscreenoff = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_87_1");
        }
        
        draw_sprite(spr_heart, 0, _heartXPos, yy + 160 + (global.submenucoord[30] * 35));
        
        if (global.submenu == 33)
            draw_set_color(c_yellow);
        
        draw_text(_xPos, yy + 150, string_hash_to_newline(stringsetloc("Master Volume", "obj_darkcontroller_slash_Draw_0_gml_86_0")));
        draw_text(_selectXPos, yy + 150, string_hash_to_newline(audvol));
        draw_set_color(c_white);
        draw_text(_xPos, yy + 185, string_hash_to_newline(stringsetloc("Controls", "obj_darkcontroller_slash_Draw_0_gml_91_0")));
        draw_text(_xPos, yy + 220, string_hash_to_newline(stringsetloc("Simplify VFX", "obj_darkcontroller_slash_Draw_0_gml_92_0")));
        draw_text(_selectXPos, yy + 220, string_hash_to_newline(flashoff));
        
        if (global.is_console)
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(autorun_text));
            draw_text(_selectXPos, yy + 255, string_hash_to_newline(runoff));
            
            if (global.submenu == 36)
                draw_set_color(c_yellow);
            else if (global.disable_border)
                draw_set_color(c_gray);
            
            draw_text(_xPos, yy + 290, stringsetloc("Border", "obj_darkcontroller_slash_Draw_0_gml_112_0"));
            draw_text(_selectXPos, yy + 290, border_options[selected_border]);
            draw_set_color(c_white);
            draw_text(_xPos, yy + 325, string_hash_to_newline(stringsetloc("Return to Title", "obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(back_text));
        }
        else
        {
            draw_text(_xPos, yy + 255, string_hash_to_newline(stringsetloc("Fullscreen", "obj_darkcontroller_slash_Draw_0_gml_93_0")));
            draw_text(xx + 430, yy + 255, string_hash_to_newline(fullscreenoff));
            draw_text(_xPos, yy + 290, string_hash_to_newline(autorun_text));
            draw_text(xx + 430, yy + 290, string_hash_to_newline(runoff));
            draw_text(_xPos, yy + 325, string_hash_to_newline(stringsetloc("Return to Title", "obj_darkcontroller_slash_Draw_0_gml_95_0")));
            draw_text(_xPos, yy + 360, string_hash_to_newline(back_text));
        }
    }
#endif
/// CODE
if (global.menuno == 5)
{
    if ((global.submenu >= 30 && global.submenu <= 33) || global.submenu == 36)
    {
        var top_offset = 90;
        var left_offset = 10;
        var heart_offset = 25;
        var darkbox_offset = 10;
        var value_width = 50;
        var width = 630;
        var height = 410;
        var line_height = 15;
        var between_col_gap = 50;
        var between_row_gap = 5;
        var line_width = (width / 2) - between_col_gap - (heart_offset * 2);
        var max_line = 9;
        var max_col = 1;
        var coord_index = global.submenucoord[30];
        var selected_line = coord_index;
        var selected_col = 0;
        var left_col_max_index = 10;
        var top_padding = 50;
        var left_padding = 10;
        var line_offset = left_offset + darkbox_offset + (heart_offset * 2);
        
        if (coord_index >= left_col_max_index)
        {
            selected_line = coord_index - left_col_max_index;
            selected_col = 1;
        }
        
        if (scr_debug())
            draw_set_color(c_purple);
        else
            draw_set_color(c_black);
        
        ossafe_fill_rectangle(xx + left_offset + darkbox_offset, yy + top_offset + darkbox_offset, (xx + width) - darkbox_offset, (yy + height) - darkbox_offset, false);
        scr_darkbox(xx + left_offset, yy + top_offset, xx + width, yy + height);
        
        if (scr_debug())
        {
            for (var i = 0; i <= max_line; i++)
            {
                var l_x = xx + line_offset + left_padding;
                var l_y = yy + top_padding + top_offset + darkbox_offset + (i * (line_height + between_row_gap));
                draw_set_color(c_teal);
                ossafe_fill_rectangle(l_x, l_y, l_x + line_width, l_y + line_height);
                ossafe_fill_rectangle(l_x + line_width + between_col_gap, l_y, l_x + line_width + between_col_gap + line_width, l_y + line_height);
                draw_set_color(c_dkgray);
                ossafe_fill_rectangle((l_x + line_width) - value_width, l_y, l_x + line_width, l_y + line_height);
                ossafe_fill_rectangle((l_x + line_width + between_col_gap + line_width) - value_width, l_y, l_x + line_width + between_col_gap + line_width, l_y + line_height);
            }
        }
        
        draw_set_color(c_white);
        draw_set_font(fnt_mainbig);
        draw_set_halign(fa_center);
        draw_text(xx + left_offset + (width / 2), yy + top_offset + darkbox_offset + (top_padding / 8), "Options");
        draw_set_font(fnt_main);
        draw_set_halign(fa_left);
        var base_x = xx + line_offset + left_padding;
        var base_y = yy + top_padding + top_offset + darkbox_offset;
        var _heartXPos = xx + left_offset + left_padding + darkbox_offset + heart_offset + (selected_col * (line_width + between_col_gap));
        var _heartYPos = yy + top_offset + top_padding + darkbox_offset + (line_height / 5) + (selected_line * (line_height + between_row_gap));
        
        if (coord_index == 20)
            draw_sprite(spr_heart, 0, (xx + left_offset + (width / 2)) - 50, base_y + (line_height / 2) + 2 + ((max_line + 1) * (line_height + between_row_gap)));
        else
            draw_sprite(spr_heart, 0, _heartXPos, _heartYPos);
        
        var current_line = 0;
        var current_col = 0;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Master Volume");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), string(round(global.flag[17] * 100)) + "%");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Music Volume");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), string(round(global.flag[16] * 100)) + "%");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "SFX Volume");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), string(round(global.flag[15] * 100)) + "%");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Controls");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Simplify VFX");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.flag[8] ? "ON" : "OFF");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Disable Shakes");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.flag[12] ? "ON" : "OFF");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Fullscreen");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), window_get_fullscreen() ? "ON" : "OFF");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Auto-Run");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.flag[11] ? "ON" : "OFF");
        if (global.chapter == 5)
        {
            current_line++;
            draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Voice Clips");
            draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.flag[1391] == 2 ? "ON" : "OFF");
            current_line++;
            draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Feather");
            draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - (value_width * 1.5), base_y + (current_line * (line_height + between_row_gap)), global.flag[25] ? "Jump X / Atk. Z" : "Jump Z / Atk. X");
        }
        current_line = 0;
        current_col = 1;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Deathlink");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.AP_deathlink ? "ON" : "OFF");
        current_line++;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Item Balancing");
        draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), global.AP_balancing ? "ON" : "OFF");
        if (global.chapter == 5 && global.tempflag[52] == 1)
        {
            current_line = max_line - 3;
            draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Ralseis");
            draw_text((base_x + (current_col * (line_width + between_col_gap)) + line_width) - value_width, base_y + (current_line * (line_height + between_row_gap)), !global.flag[1392] ? "ON" : "OFF");
        }
        current_line = max_line - 2;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Load the last save");
        current_line = max_line - 1;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Return to Chapter Select");
        current_line = max_line;
        draw_text(base_x + (current_col * (line_width + between_col_gap)), base_y + (current_line * (line_height + between_row_gap)), "Return to Title");
        draw_set_color(c_white);
        draw_set_font(fnt_mainbig);
        draw_set_halign(fa_center);
        draw_text(xx + left_offset + (width / 2), base_y + ((max_line + 1) * (line_height + between_row_gap)), "Back");
        draw_set_font(fnt_main);
        draw_set_halign(fa_left);
    }
    else
    {
        var lang_off = [90, 410, 420];
        draw_set_color(c_black);
        ossafe_fill_rectangle(xx + 60, yy + lang_off[0], xx + 580, yy + lang_off[1], false);
        scr_darkbox(xx + 50, (yy + lang_off[0]) - 10, xx + 590, yy + lang_off[2]);
    }
/// END