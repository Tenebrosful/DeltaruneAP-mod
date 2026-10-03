/// PATCH

/// REPLACE
    EVENT = 28;
    DARK_WAIT = 0;
}

if (EVENT == 28)
{
    DARK_WAIT += 1;
    
    if (DARK_WAIT >= 2040)
        ossafe_game_end();
    
    if (!snd_is_playing(global.currentsong[1]))
        ossafe_game_end();
    
#if CHAPTER_1
    if (os_type == os_ps4 || os_type == os_ps5 || scr_is_switch_os())
#else
    if (global.is_console)
#endif
    {
        if (DARK_WAIT >= 90 && !restart)
        {
            for (var i = 0; i < array_length_1d(gamepad_controls); i++)
            {
                if (gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, gamepad_controls[i]))
                {
                    if (gamepad_controls[i] == global.button0 || gamepad_controls[i] == global.button1 || gamepad_controls[i] == global.button2 || gamepad_controls[i] == gp_shoulderlb)
                    {
                        mus_volume(global.currentsong[1], 0, 80);
                        restart = true;
                        break;
                    }
                }
            }
        }
        
        if (restart)
        {
            restart_timer++;
            
            if (restart_timer >= 100)
                ossafe_game_end();
        }
    }
}
/// CODE
    EVENT = 28;
}

if (EVENT == 28)
{
    if (!snd_is_playing(global.currentsong[1]))
        ossafe_game_end();
}
/// END