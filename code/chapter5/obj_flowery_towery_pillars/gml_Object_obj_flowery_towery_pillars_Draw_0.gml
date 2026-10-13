/// PATCH

/// REPLACE
        trackpos = scr_loop(trackpos + (delta_time / 1000000), 192.024);
/// CODE
        trackpos = scr_loop(trackpos + (delta_time / 1000000), song_length);
/// END

/// REPLACE
if (trackpos >= 95 && trackpos < 143 && bg_change < 90)
    bg_change++;
else if (bg_change > 0 && bg_change < 150 && trackpos > 143)
    bg_change++;

if (bg_change == 150 || trackpos < 95)
    bg_change = 0;
/// CODE
if (songname == "Flowerman_Arrangement.ogg")
{
    if (trackpos >= 95 && trackpos < 143 && bg_change < 90)
        bg_change++;
    else if (bg_change > 0 && bg_change < 150 && trackpos > 143)
        bg_change++;
    
    if (bg_change == 150 || trackpos < 95)
        bg_change = 0;
}
else
{
    if (bg_change_lockout == 0 && !bg_changing)
        can_change = 1;
    
    if (trackpos >= 95 && trackpos < 143 && bg_change < 90 && can_change == 1 && bg_con == 0)
    {
        bg_change++;
        bg_changing = 1;
    }
    else if (bg_change > 0 && bg_change < 150 && trackpos > 143 && can_change == 1 && bg_con == 1)
    {
        bg_change++;
        bg_changing = 1;
    }
    
    if (bg_change == 90)
    {
        can_change = 0;
        bg_changing = 0;
        bg_con = 1;
        bg_change_lockout = 900;
    }
    
    if (bg_change == 150)
    {
        can_change = 0;
        bg_changing = 0;
        bg_change = 0;
        bg_con = 0;
        bg_change_lockout = 900;
    }
}
/// END

/// REPLACE
    d_rectangle(cam.x, cam.y, cam.x + 640, cam.y + 480, false);
    
    if (global.console)
    {
        if (!border_show)
        {
            border_show = true;
            
            with (obj_border_controller)
                hide_border(1/30, c_white);
        }
    }
/// CODE
    d_rectangle(cam.x, cam.y, cam.x + 640, cam.y + 480, false);
    
    if (!border_show)
    {
        border_show = true;
        
        with (obj_border_controller)
            hide_border(1/30, c_white);
    }
/// END

/// REPLACE
    if (global.console)
    {
        if (border_show)
        {
            border_show = false;
            
            with (obj_border_controller)
            {
                set_border(border_dw_castle_top, 1);
                show_border();
            }
        }
    }
/// CODE
    if (border_show)
    {
        border_show = false;
        
        with (obj_border_controller)
        {
            set_border(border_dw_castle_top, 1);
            show_border();
        }
    }
/// END

/// REPLACE
    obj_flowery_towery.brightness = merge_color(c_gray, c_black, _alph);
    
    if (global.console)
    {
        if (!border_show)
        {
            border_show = true;
            
            with (obj_border_controller)
                hide_border(1/30, c_white);
        }
    }
/// CODE
    obj_flowery_towery.brightness = merge_color(c_gray, c_black, _alph);
    
    if (!border_show)
    {
        border_show = true;
        
        with (obj_border_controller)
            hide_border(1/30, c_white);
    }
/// END

/// REPLACE
    if (global.console)
    {
        if (border_show)
        {
            border_show = false;
            
            with (obj_border_controller)
            {
                set_border(border_dw_castle_right_gold, 1);
                show_border();
            }
        }
    }
/// CODE
    if (border_show)
    {
        border_show = false;
        
        with (obj_border_controller)
        {
            set_border(border_dw_castle_right_gold, 1);
            show_border();
        }
    }
/// END