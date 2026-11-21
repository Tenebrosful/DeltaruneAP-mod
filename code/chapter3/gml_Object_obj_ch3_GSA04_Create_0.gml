/// PATCH

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