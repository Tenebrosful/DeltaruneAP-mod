/// PATCH .ignore if CHAPTER_2

/// REPLACE
#if CHAPTER_1
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
    
    if (global.submenu == 34)
    {
    }
    
    if (global.submenu == 35)
    {
        var is_dualshock = global.gamepad_type == "Sony DualShock 4" || global.gamepad_type == "DualSense Wireless Controller";
        var _yOffset = (global.lang == "en") ? 0 : -4;
        var _headerOffset = (is_dualshock && global.lang == "ja") ? -5 : 0;
        draw_set_color(c_white);
        draw_text(xx + 105, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Function", "obj_darkcontroller_slash_Draw_0_gml_113_0")));
        
        if (global.is_console)
        {
            var buttonXPos = (scr_is_switch_os() && global.lang == "en") ? (xx + 445) : (xx + 435);
            var buttonYPos = yy + 100 + _yOffset;
            draw_text(buttonXPos, buttonYPos, stringsetloc("Button", "obj_darkcontroller_slash_Draw_0_gml_147_0"));
        }
        else
        {
            draw_text(xx + 325, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Key", "obj_darkcontroller_slash_Draw_0_gml_114_0")));
            
            if (obj_gamecontroller.gamepad_active)
                draw_text(xx + 435, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Gamepad", "obj_darkcontroller_slash_Draw_0_gml_115_0")));
        }
        
        my_function[0] = stringsetloc("DOWN", "obj_darkcontroller_slash_Draw_0_gml_117_0");
        my_function[1] = stringsetloc("RIGHT", "obj_darkcontroller_slash_Draw_0_gml_118_0");
        my_function[2] = stringsetloc("UP", "obj_darkcontroller_slash_Draw_0_gml_119_0");
        my_function[3] = stringsetloc("LEFT", "obj_darkcontroller_slash_Draw_0_gml_120_0");
        my_function[4] = stringsetloc("CONFIRM", "obj_darkcontroller_slash_Draw_0_gml_121_0");
        my_function[5] = stringsetloc("CANCEL", "obj_darkcontroller_slash_Draw_0_gml_122_0");
        my_function[6] = stringsetloc("MENU", "obj_darkcontroller_slash_Draw_0_gml_123_0");
        my_function[7] = stringsetloc("Reset to default", "obj_darkcontroller_slash_Draw_0_gml_124_0");
        my_function[8] = stringsetloc("Finish", "obj_darkcontroller_slash_Draw_0_gml_125_0");
        var voff = langopt(0, -8);
        var vspacing = langopt(28, 30);
        
        if (global.is_console || is_dualshock)
        {
            var _heartYPos = (global.lang == "en") ? (yy + 146) : (yy + 144);
            var _heartHeight = (global.lang == "en") ? 29 : 30;
            draw_sprite(spr_heart, 0, xx + 80, _heartYPos + (global.submenucoord[35] * _heartHeight) + _yOffset);
        }
        else
        {
            var heart_offset = (global.lang == "en") ? 28 : 29;
            draw_sprite(spr_heart, 0, xx + 80, (yy + 150 + (global.submenucoord[35] * heart_offset) + _yOffset) - 2);
        }
        
        var line_padding = (global.lang == "ja") ? 1 : 0;
        
        for (var i = 0; i <= 8; i += 1)
        {
            draw_set_color(c_white);
            
            if (global.submenucoord[35] == i)
                draw_set_color(c_aqua);
            
            if (global.submenucoord[35] == i && control_select_con == 1)
                draw_set_color(c_red);
            
            if (i == 7 && control_flash_timer > 0)
                draw_set_color(merge_color(c_aqua, c_yellow, (control_flash_timer / 10) - 0.1));
            
            var _textYPos;
            
            if (is_dualshock)
            {
                var _textHeight = 29;
                _textYPos = (global.lang == "en") ? (yy + 137) : (yy + 136);
                draw_text(xx + 105, _textYPos + (i * (_textHeight + line_padding)) + _yOffset, string_hash_to_newline(my_function[i]));
            }
            else
            {
                draw_text(xx + 105, yy + 140 + (i * (28 + line_padding)) + _yOffset, string_hash_to_newline(my_function[i]));
            }
            
            if (i < 7)
            {
                if (is_dualshock)
                {
                    var _sprite = scr_getbuttonsprite(global.input_g[i], false);
                    var _sprite_height = 29;
                    var _xPos = xx + 465;
                    var _yPos = yy + 139;
                    
                    if (_sprite == button_ps4_dpad_up || _sprite == button_ps4_dpad_down || _sprite == button_ps4_dpad_left || _sprite == button_ps4_dpad_right)
                    {
                        _sprite_height = 30;
                        _yPos = _textYPos + 0.5;
                        _xPos = xx + 463;
                    }
                    else if (_sprite == button_ps4_options)
                    {
                        _sprite_height = 29.5;
                        _yPos = _textYPos + 0.5;
                        _xPos = xx + 460;
                    }
                    
                    var icon_color = 16777215;
                    draw_sprite_ext(_sprite, 0, _xPos, _yPos + (i * (_sprite_height + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    
                    if (!global.is_console)
                        draw_text(xx + 325, yy + voff + 140 + (i * vspacing), string_hash_to_newline(global.asc_def[global.input_k[i]]));
                }
                else if (global.is_console)
                {
                    if (obj_gamecontroller.gamepad_active)
                    {
                        var _sprite = (scr_getbuttonsprite(global.input_g[i], false) != noone) ? scr_getbuttonsprite(global.input_g[i], false) : button_switch_left_0;
                        var _xPos = (global.lang == "en") ? (xx + 475) : (xx + 465);
                        
                        if (_sprite == button_switch_lStickClick_0 || _sprite == button_switch_rStickClick_0)
                            _xPos -= 3;
                        
                        draw_sprite_ext(_sprite, 0, _xPos, yy + 144 + (i * (28 + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    }
                }
                else
                {
                    draw_text(xx + 325, yy + voff + 140 + (i * vspacing), string_hash_to_newline(global.asc_def[global.input_k[i]]));
                    
                    if (obj_gamecontroller.gamepad_active)
                    {
                        var _sprite = scr_getbuttonsprite(global.input_g[i], false);
                        var _xPos = (global.lang == "en") ? (xx + 475) : (xx + 465);
                        
                        if (sprite_get_width(_sprite) < 12)
                            _xPos += 2;
                        
                        draw_sprite_ext(_sprite, 0, _xPos, yy + 144 + (i * (28 + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    }
                }
            }
        }
    }
}
#endif
/// CODE
if (global.menuno == 5)
{
    var lang_off = langopt([90, 410, 420], [85, 412, 422]);
    draw_set_color(c_black);
    ossafe_fill_rectangle(xx + 60, yy + lang_off[0], xx + 580, yy + lang_off[1], false);
    scr_darkbox(xx + 10, (yy + lang_off[0]) - 10, xx + 630, yy + lang_off[2]);
    
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
    
    if (global.submenu == 34)
    {
    }
    
    if (global.submenu == 35)
    {
        var is_dualshock = global.gamepad_type == "Sony DualShock 4" || global.gamepad_type == "DualSense Wireless Controller";
        var _yOffset = (global.lang == "en") ? 0 : -4;
        var _headerOffset = (is_dualshock && global.lang == "ja") ? -5 : 0;
        draw_set_color(c_white);
        draw_text(xx + 105, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Function", "obj_darkcontroller_slash_Draw_0_gml_113_0")));
        
        if (global.is_console)
        {
            var buttonXPos = (scr_is_switch_os() && global.lang == "en") ? (xx + 445) : (xx + 435);
            var buttonYPos = yy + 100 + _yOffset;
            draw_text(buttonXPos, buttonYPos, stringsetloc("Button", "obj_darkcontroller_slash_Draw_0_gml_147_0"));
        }
        else
        {
            draw_text(xx + 325, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Key", "obj_darkcontroller_slash_Draw_0_gml_114_0")));
            
            if (obj_gamecontroller.gamepad_active)
                draw_text(xx + 435, yy + 100 + _headerOffset, string_hash_to_newline(stringsetloc("Gamepad", "obj_darkcontroller_slash_Draw_0_gml_115_0")));
        }
        
        my_function[0] = stringsetloc("DOWN", "obj_darkcontroller_slash_Draw_0_gml_117_0");
        my_function[1] = stringsetloc("RIGHT", "obj_darkcontroller_slash_Draw_0_gml_118_0");
        my_function[2] = stringsetloc("UP", "obj_darkcontroller_slash_Draw_0_gml_119_0");
        my_function[3] = stringsetloc("LEFT", "obj_darkcontroller_slash_Draw_0_gml_120_0");
        my_function[4] = stringsetloc("CONFIRM", "obj_darkcontroller_slash_Draw_0_gml_121_0");
        my_function[5] = stringsetloc("CANCEL", "obj_darkcontroller_slash_Draw_0_gml_122_0");
        my_function[6] = stringsetloc("MENU", "obj_darkcontroller_slash_Draw_0_gml_123_0");
        my_function[7] = stringsetloc("Reset to default", "obj_darkcontroller_slash_Draw_0_gml_124_0");
        my_function[8] = stringsetloc("Finish", "obj_darkcontroller_slash_Draw_0_gml_125_0");
        var voff = langopt(0, -8);
        var vspacing = langopt(28, 30);
        
        if (global.is_console || is_dualshock)
        {
            var _heartYPos = (global.lang == "en") ? (yy + 146) : (yy + 144);
            var _heartHeight = (global.lang == "en") ? 29 : 30;
            draw_sprite(spr_heart, 0, xx + 80, _heartYPos + (global.submenucoord[35] * _heartHeight) + _yOffset);
        }
        else
        {
            var heart_offset = (global.lang == "en") ? 28 : 29;
            draw_sprite(spr_heart, 0, xx + 80, (yy + 150 + (global.submenucoord[35] * heart_offset) + _yOffset) - 2);
        }
        
        var line_padding = (global.lang == "ja") ? 1 : 0;
        
        for (var i = 0; i <= 8; i += 1)
        {
            draw_set_color(c_white);
            
            if (global.submenucoord[35] == i)
                draw_set_color(c_aqua);
            
            if (global.submenucoord[35] == i && control_select_con == 1)
                draw_set_color(c_red);
            
            if (i == 7 && control_flash_timer > 0)
                draw_set_color(merge_color(c_aqua, c_yellow, (control_flash_timer / 10) - 0.1));
            
            var _textYPos;
            
            if (is_dualshock)
            {
                var _textHeight = 29;
                _textYPos = (global.lang == "en") ? (yy + 137) : (yy + 136);
                draw_text(xx + 105, _textYPos + (i * (_textHeight + line_padding)) + _yOffset, string_hash_to_newline(my_function[i]));
            }
            else
            {
                draw_text(xx + 105, yy + 140 + (i * (28 + line_padding)) + _yOffset, string_hash_to_newline(my_function[i]));
            }
            
            if (i < 7)
            {
                if (is_dualshock)
                {
                    var _sprite = scr_getbuttonsprite(global.input_g[i], false);
                    var _sprite_height = 29;
                    var _xPos = xx + 465;
                    var _yPos = yy + 139;
                    
                    if (_sprite == button_ps4_dpad_up || _sprite == button_ps4_dpad_down || _sprite == button_ps4_dpad_left || _sprite == button_ps4_dpad_right)
                    {
                        _sprite_height = 30;
                        _yPos = _textYPos + 0.5;
                        _xPos = xx + 463;
                    }
                    else if (_sprite == button_ps4_options)
                    {
                        _sprite_height = 29.5;
                        _yPos = _textYPos + 0.5;
                        _xPos = xx + 460;
                    }
                    
                    var icon_color = 16777215;
                    draw_sprite_ext(_sprite, 0, _xPos, _yPos + (i * (_sprite_height + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    
                    if (!global.is_console)
                        draw_text(xx + 325, yy + voff + 140 + (i * vspacing), string_hash_to_newline(global.asc_def[global.input_k[i]]));
                }
                else if (global.is_console)
                {
                    if (obj_gamecontroller.gamepad_active)
                    {
                        var _sprite = (scr_getbuttonsprite(global.input_g[i], false) != noone) ? scr_getbuttonsprite(global.input_g[i], false) : button_switch_left_0;
                        var _xPos = (global.lang == "en") ? (xx + 475) : (xx + 465);
                        
                        if (_sprite == button_switch_lStickClick_0 || _sprite == button_switch_rStickClick_0)
                            _xPos -= 3;
                        
                        draw_sprite_ext(_sprite, 0, _xPos, yy + 144 + (i * (28 + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    }
                }
                else
                {
                    draw_text(xx + 325, yy + voff + 140 + (i * vspacing), string_hash_to_newline(global.asc_def[global.input_k[i]]));
                    
                    if (obj_gamecontroller.gamepad_active)
                    {
                        var _sprite = scr_getbuttonsprite(global.input_g[i], false);
                        var _xPos = (global.lang == "en") ? (xx + 475) : (xx + 465);
                        
                        if (sprite_get_width(_sprite) < 12)
                            _xPos += 2;
                        
                        draw_sprite_ext(_sprite, 0, _xPos, yy + 144 + (i * (28 + line_padding)) + _yOffset, 2, 2, 0, c_white, 1);
                    }
                }
            }
        }
    }
}
/// END