/// PATCH

/// PREPEND
border_val = 0;
border_change = false;

if (global.entrance == 24)
{
    border_change = true;

    with (obj_border_controller)
    {
        set_border(border_dw_garden_cliff, 1);
        show_border(0.04);
    }
}
/// END