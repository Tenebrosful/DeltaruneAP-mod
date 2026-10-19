/// PATCH

/// AFTER
    scr_controls_default();
/// CODE
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
/// END