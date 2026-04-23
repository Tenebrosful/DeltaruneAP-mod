/// IMPORT
if (!edit)
{
    keyboard_string = "";
    
    if (keyboard_check_pressed(vk_down))
    {
        audio_play_sound(snd_menumove, 1, false);
        
        if (choice == max_choice)
            choice = 0;
        else
            choice++;
    }
    else if (keyboard_check_pressed(vk_up))
    {
        audio_play_sound(snd_menumove, 1, false);
        
        if (choice == 0)
            choice = max_choice;
        else
            choice--;
    }
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))
{
    if (choice == max_choice)
    {
        connect = true;
        global.AP_isAuthenticated = 0;
        audio_play_sound(snd_select, 1, false);
        alarm[0] = 1;
        
        exit;
    }
    
    if (!edit)
    {
        edit = true;
        audio_play_sound(snd_select, 1, false);
    }
    else if (keyboard_check_pressed(vk_enter) && edit)
    {
        edit = false;
        audio_play_sound(snd_select, 1, false);
    }
}

if (keyboard_check_pressed(vk_escape) && edit)
{
    edit = false;
    audio_play_sound(snd_swing, 1, false);
}

if (edit)
{
    var current = "";
    
    switch (choice)
    {
        case 0:
            current = string(global.AP_server);
            break;
        
        case 1:
            current = string(global.AP_port);
            break;
        
        case 2:
            current = string(global.AP_name);
            break;
        
        case 3:
            current = string(global.AP_password);
            break;
    }
    
    if (keyboard_string != "")
    {
        current += keyboard_string;
        keyboard_string = "";
    }
    
    if (keyboard_check(vk_backspace))
    {
        delete_timer++;
        
        if (delete_timer == 1)
        {
            if (string_length(current) > 0)
                current = string_delete(current, string_length(current), 1);
        }
        else if (delete_timer > delete_start_delay)
        {
            if (((delete_timer - delete_start_delay) % delete_repeat_rate) == 0)
            {
                if (string_length(current) > 0)
                    current = string_delete(current, string_length(current), 1);
            }
        }
    }
    else
    {
        delete_timer = 0;
    }
    
    switch (choice)
    {
        case 0:
            global.AP_server = current;
            break;
        
        case 1:
            global.AP_port = real(current);
            break;
        
        case 2:
            global.AP_name = current;
            break;
        
        case 3:
            global.AP_password = current;
            break;
    }
}
