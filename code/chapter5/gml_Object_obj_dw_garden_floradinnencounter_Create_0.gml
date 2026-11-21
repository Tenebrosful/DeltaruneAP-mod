/// PATCH

/// REPLACE
if (global.console)
{
    if (global.flag[1410] == 0)
    {
        with (obj_border_controller)
        {
            _custom_show = true;
            hide_border();
        }
    }
}
/// CODE
if (global.flag[1410] == 0)
{
    with (obj_border_controller)
    {
        _custom_show = true;
        hide_border();
    }
}
/// END

/// APPEND
if (global.entrance == 24)
{
    border_change = true;

    with (obj_border_controller)
    {
        set_border(border_dw_garden, 1);
        show_border(0.04);
    }
}
/// END