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

pause_music = function()
{
    audio_pause_sound(global.currentsong[1]);
};

resume_music = function()
{
    audio_resume_sound(global.currentsong[1]);
};

use_item = function(arg0)
{
    pause_music();
    var bromide_data = new scr_get_bromide_data(arg0);
    _bromide_sprite = bromide_data.bromide_sprite;
    _bromide_audio = snd_play(bromide_data.bromide_audio, 1, 1);
    _bromide_y = cameray();
    _bromide_y_target = cameray() - (sprite_get_height(_bromide_sprite) - 480);
    
    if (arg0 == 33)
        _scroll_speed = 4;
    
    con = 0;
};
