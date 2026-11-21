/// PATCH

/// PREPEND
border_val = 0;
border_change = false;

if (global.plot >= 200)
{
    border_change = true;

    with (obj_border_controller)
    {
        set_border(border_dw_castletown, 1);
        show_border(0.04);
    }
}
/// END

/// REPLACE
    else if (global.plot >= 390)
/// CODE
    else if (global.plot >= 560)
/// END