/// IMPORT
if (global.screen_border_id == "None" || global.screen_border_id == "なし" || !window_get_fullscreen())
    exit;

if (!_video_enabled)
    exit;

var _video_data = video_draw();
var _video_status = _video_data[0];
var ww = window_get_width();
var wh = window_get_height();
var scale = min((ww / 1280), (wh / 720));

if (_video_status == 0)
{
    texture_set_interpolation(true);
    
    switch (video_get_format())
    {
        case 0:
            _vid_surface = _video_data[1];
            draw_surface_ext(_vid_surface, 0, 0, scale, scale, 0, c_white, 1);
            break;
    }
    
    texture_set_interpolation(false);
}

if (!_paused)
    exit;

draw_set_color(c_black);
draw_set_alpha(_overlay_alpha);
ossafe_fill_rectangle(0, 0, ww - 1, wh - 1);
draw_set_alpha(1);
draw_set_color(c_white);
