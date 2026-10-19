/// IMPORT
persistent = 1;
quit_timer = 0;
keyboard_active = 1;
axis_value = 0.4;
fullscreen_toggle = 0;
window_center_toggle = 0;
isfullscreen = 0;
screenshot_number = 0;
border_fade_out = false;
border_fade_in = false;
border_alpha = 1;
border_fade_value = 0.08;
_border_image = border_lw_town;
loaded = false;
paused = false;
paused = false;
pausing = false;
screenshot = -1;

if (instance_number(obj_time) > 1)
{
    instance_destroy();
}
else
{
    var setfull = false;
    
    if (!global.is_console)
    {
        ini_open("true_config.ini");
        setfull = ini_read_real("SCREEN", "FULLSCREEN", 0);
        ini_close();
        
        if (setfull)
            window_set_fullscreen(true);
    }
    
    var display_height = display_get_height();
    var display_width = display_get_width();
    window_size_multiplier = 1;
    
    for (var _ww = 2; _ww < 12; _ww += 1)
    {
        if (display_width > (640 * _ww) && display_height > (480 * _ww))
            window_size_multiplier = _ww;
    }
    
    if (window_size_multiplier > 1 && !setfull)
    {
        window_set_size(640 * window_size_multiplier, 480 * window_size_multiplier);
        window_center_toggle = 1;
    }
    
    if (scr_is_switch_os())
    {
        switch_controller_support_set_defaults();
        switch_controller_support_set_singleplayer_only(true);
        switch_controller_set_supported_styles(7);
    }
    
    scr_controls_default();

    if (ossafe_file_exists("true_config.ini"))
    {
        ossafe_ini_open("true_config.ini");
        var _readval = 0;
        
        for (var i = 0; i < 10; i += 1)
        {
            _readval = ini_read_real("KEYBOARD_CONTROLS", string(i), -1);
            
            if (_readval != -1)
                global.input_k[i] = _readval;
        }
        
        for (var i = 0; i < 10; i += 1)
        {
            _readval = ini_read_real("GAMEPAD_CONTROLS", string(i), -1);
            
            if (_readval != -1)
                global.input_g[i] = _readval;
        }
        
        _readval = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
        
        if (_readval != -1)
            obj_gamecontroller.gamepad_shoulderlb_reassign = _readval;
        
        global.button0 = global.input_g[4];
        global.button1 = global.input_g[5];
        global.button2 = global.input_g[6];
        ossafe_ini_close();
    }
    
    for (i = 0; i < 10; i += 1)
    {
        global.input_pressed[i] = 0;
        global.input_held[i] = 0;
        global.input_released[i] = 0;
    }
    
    application_surface_enable(true);
    application_surface_draw_enable(false);

    if (global.screen_border_id == "None" || global.screen_border_id == "なし")
        scr_enable_screen_border(false);
    else
        scr_enable_screen_border(true);
}
