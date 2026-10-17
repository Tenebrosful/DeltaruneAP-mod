/// IMPORT
function scr_draw_background_ps4(arg0, arg1, arg2)
{
    var bg = arg0;
    var xx = arg1;
    var yy = arg2;
    
    if (os_type == os_ps4 || scr_is_switch_os() || os_type == os_ps5)
    {
        var scale = window_get_width() / 1920;
        draw_background_stretched(bg, xx * scale, yy * scale, background_get_width(bg) * scale, background_get_height(bg) * scale);
    }
    else
    {
        var scale = window_get_width() / 1920;
        draw_background_stretched(bg, xx * scale, yy * scale, background_get_width(bg) * scale, background_get_height(bg) * scale);
    }
}

function draw_background_stretched(arg0, arg1, arg2, arg3, arg4)
{
    draw_sprite_stretched(arg0, 0, arg1, arg2, arg3, arg4);
}

function background_get_width(arg0)
{
    return sprite_get_width(arg0);
}

function background_get_height(arg0)
{
    return sprite_get_height(arg0);
}
