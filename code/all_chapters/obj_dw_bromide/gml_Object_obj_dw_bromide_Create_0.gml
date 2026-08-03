/// IMPORT
con = -1;
_bromide_data = -4;
_bromide_sprite = -4;
_bromide_audio = -4;
_bromide_x = 0;
_bromide_y = 0;
_bromide_y_target = 0;
_scroll_speed = 2;
_active = false;
depth = -100;
item_id = 0;
queue_id = 0;

pause_music = function()
{
    audio_pause_sound(global.currentsong[1]);
};

resume_music = function()
{
    audio_resume_sound(global.currentsong[1]);
};

queue = function(arg0)
{
    con = -2;
    queue_id = instance_count;
    item_id = arg0;
};

use_item = function(arg0)
{
    pause_music();
    var bromide_data = new scr_get_bromide_data(arg0);
    _bromide_sprite = bromide_data.bromide_sprite;
    _bromide_audio = snd_play(bromide_data.bromide_audio, 1, 1);
    _bromide_y = cameray();
    
    if (global.darkzone == 0)
        _bromide_y_target = cameray() - ((sprite_get_height(_bromide_sprite) - 480) / 2);
    else
        _bromide_y_target = cameray() - (sprite_get_height(_bromide_sprite) - 480);
    
    if (arg0 == 33)
        _scroll_speed = 4;
    
    if (global.darkzone == 0)
        _scroll_speed = _scroll_speed / 2;
    
    con = 0;
};
