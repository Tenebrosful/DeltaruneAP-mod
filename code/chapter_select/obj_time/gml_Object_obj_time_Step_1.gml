/// IMPORT
if (keyboard_check(vk_escape))
{
    if (quit_timer < 0)
        quit_timer = 0;
    
    quit_timer += 1;
    
    if (quit_timer >= 30)
        game_end();
}
else
{
    quit_timer -= 2;
}

if (keyboard_check_pressed(vk_f4))
    fullscreen_toggle = 1;

if (fullscreen_toggle == 1)
{
    fullscreen_toggle = 0;
    
    if (window_get_fullscreen())
    {
        window_set_fullscreen(false);
        ossafe_ini_open("true_config.ini");
        ini_write_real("SCREEN", "FULLSCREEN", 0);
        ossafe_ini_close();
        ossafe_savedata_save();
    }
    else
    {
        window_set_fullscreen(true);
        ossafe_ini_open("true_config.ini");
        ini_write_real("SCREEN", "FULLSCREEN", 1);
        ossafe_ini_close();
        ossafe_savedata_save();
    }
}

if (window_center_toggle == 2)
{
    window_center();
    window_center_toggle = 0;
}

if (window_center_toggle == 1)
    window_center_toggle = 2;
