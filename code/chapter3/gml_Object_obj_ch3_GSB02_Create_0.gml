/// PATCH

/// REPLACE
    var is_replay = global.plot >= 150;
/// CODE
    var is_replay = global.plot >= 150 && !global.retry_board;
/// END

/// AFTER
border_switch = false;
/// CODE
muscon = 0;
/// END

/// AFTER
    global.interact = 0;
/// CODE
    if (global.retry_board)
    {
        with (obj_border_controller)
        {
            set_border(border_dw_blue_stars, 1);
            show_border(1/30);
        }
    }
/// END