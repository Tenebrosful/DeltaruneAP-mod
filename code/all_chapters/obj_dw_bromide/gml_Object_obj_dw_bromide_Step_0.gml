/// IMPORT
if (con < 0)
    exit;

if (con == 0)
{
    if (_bromide_y != _bromide_y_target)
    {
        _bromide_y = scr_movetowards(_bromide_y, _bromide_y_target, _scroll_speed);
        
        if (abs(_bromide_y - _bromide_y_target) <= 1)
        {
            _bromide_y = _bromide_y_target;
            _bromide_y_target = cameray();
            con = 5;
        }
    }
}

if (con == 5)
{
    if (_bromide_y != _bromide_y_target)
    {
        _bromide_y = scr_movetowards(_bromide_y, _bromide_y_target, _scroll_speed);
        
        if (abs(_bromide_y - _bromide_y_target) <= 1)
        {
            _bromide_y = _bromide_y_target;
            con = 10;
        }
    }
}

if (con == 10)
{
    con = 11;
    scr_script_delayed(scr_var, 30, "con", 12).respect_plat_pause = false;
    snd_volume(_bromide_audio, 0, 30);
}

if (con == 12)
{
    con = -1;
    snd_free(_bromide_audio);
    resume_music();
    instance_destroy();
}
