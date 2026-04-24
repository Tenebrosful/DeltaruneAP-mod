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
    else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
    {
        page = (page == 0) ? 1 : 0;
        max_choice = (page == 0) ? 4 : 6;
        choice = 0;
    }
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))
{
    if (choice == max_choice)
    {
        if (page == 0)
        {
            connect = true;
            
            if (global.AP_server != "" && global.AP_port != "" && global.AP_name != "")
            {
                global.AP_isAuthenticated = 0;
                audio_play_sound(snd_select, 1, false);
                alarm[0] = 1;
                exit;
            }
            
            global.AP_isAuthenticated = 1;
            exit;
        }
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
    
    if (page == 0)
    {
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
    }
    
    if (page == 1)
    {
        if (choice == 0)
        {
            global.AP_deathLink = (global.AP_deathLink == 0) ? 1 : 0;
            edit = 0;
        }
        
        switch (choice)
        {
            case 2:
                current = string(dec_to_hex(global.AP_colors.filler));
                break;
            
            case 3:
                current = string(dec_to_hex(global.AP_colors.progression));
                break;
            
            case 4:
                current = string(dec_to_hex(global.AP_colors.useful));
                break;
            
            case 5:
                current = string(dec_to_hex(global.AP_colors.trap));
                break;
            
            case 6:
                current = string(dec_to_hex(global.AP_colors.useful_progression));
                break;
        }
    }
    
    if (keyboard_string != "")
    {
        if (page == 0)
            current += keyboard_string;
        else if (string_length(current) < 6)
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
    
    if (page == 0)
    {
        switch (choice)
        {
            case 0:
                global.AP_server = current;
                break;
            
            case 1:
                if (string_length(current) > 0)
                    global.AP_port = real(current);
                else
                    global.AP_port = "";
                
                break;
            
            case 2:
                global.AP_name = current;
                break;
            
            case 3:
                global.AP_password = current;
                break;
        }
    }
    
    if (page == 1)
    {
        switch (choice)
        {
            case 2:
                global.AP_colors.filler = hex_to_dec(current);
                break;
            
            case 3:
                global.AP_colors.progression = hex_to_dec(current);
                break;
            
            case 4:
                global.AP_colors.useful = hex_to_dec(current);
                break;
            
            case 5:
                global.AP_colors.trap = hex_to_dec(current);
                break;
            
            case 6:
                global.AP_colors.useful_progression = hex_to_dec(current);
                break;
        }
    }
}
