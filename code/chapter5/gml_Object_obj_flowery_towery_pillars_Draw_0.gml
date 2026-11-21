/// PATCH

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