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

/// REPLACE
    global.currentsong[0] = snd_init("church_wip.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
/// CODE
    instance_create(0, 0, obj_musicer_dw_church);
/// END