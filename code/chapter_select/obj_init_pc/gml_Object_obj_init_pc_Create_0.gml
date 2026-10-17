/// PATCH

/// REPLACE
    _parent.trigger_event("init_complete");
    isfullscreen = window_get_fullscreen();
    var _input = instance_create(0, 0, obj_input);
    _input.init();
/// CODE
    isfullscreen = window_get_fullscreen();
    var _input = instance_create(0, 0, obj_input);
    _input.init();
    global.screen_border_id = "Dynamic";
    global.screen_border_active = true;
    global.screen_border_alpha = 1;
    global.screen_border_state = 0;
    global.screen_border_dynamic_fade_id = 0;
    global.screen_border_dynamic_fade_level = 0;

    if (ossafe_file_exists("true_config.ini"))
    {
        ossafe_ini_open("true_config.ini");
        global.screen_border_id = ini_read_string("BORDER", "TYPE", "Dynamic");
        var _disable_border = global.screen_border_id == "None" || global.screen_border_id == "なし";
        scr_enable_screen_border(!_disable_border);
        ossafe_ini_close();
    }

    _parent.trigger_event("init_complete");
/// END
