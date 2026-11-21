/// PATCH

/// PREPEND
if (border_change)
{
    border_val = clamp(border_val + 0.04, 0, 1);
    var _val = border_val;

    with (obj_border_controller)
        overlay_color = merge_color(c_white, c_black, _val);

    if (border_val >= 1)
        border_change = false;
}
/// END