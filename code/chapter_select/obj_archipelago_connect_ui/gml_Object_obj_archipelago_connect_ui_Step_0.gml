/// IMPORT
if (global.AP_connection_state > global.AP_ENUM_CONNECTION_STATE.DISCONNECTED)
{
  exit;
}

if (!edit)
{
    keyboard_string = "";
    
    if (keyboard_check_pressed(vk_down))
    {
        audio_play_sound(snd_menumove, 1, false);
        
        if (choice == max_choice)
            choice = (page == 0) ? 0 : 1;
        else
            choice++;
    }
    else if (keyboard_check_pressed(vk_up))
    {
        audio_play_sound(snd_menumove, 1, false);
        
        if (choice == 0 || (page == 1 && choice == 1))
            choice = max_choice;
        else
            choice--;
    }
    else if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
    {
        page = (page == 0) ? 1 : 0;
        max_choice = (page == 0) ? 4 : 6;
        choice = (page == 0) ? 0 : 1;
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
                alarm[0] = 1;
                exit;
            }
            audio_play_sound(snd_select, 1, false);
            exit;
        }
        else if (page == 1)
        {
            global.AP_colors = 
            {
                filler: "00FFFF",
                progression: "800080",
                useful: "0000FF",
                trap: "FF0000",
                useful_progression: "FFFF00"
            };
            audio_play_sound(snd_select, 1, false);
        }
    }
    else if (keyboard_check_pressed(vk_enter))
    {
        edit = !edit;
        audio_play_sound(snd_select, 1, false);
    }
    else if (keyboard_check_pressed(ord("Z")) && !edit)
    {
        edit = !edit;
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
        // if (choice == 0)
        // {
        //     global.AP_deathlink = (global.AP_deathlink == 0) ? 1 : 0;
        //     edit = 0;
        // }
        
        switch (choice)
        {
            case 1:
                current = global.AP_colors.filler;
                break;
            
            case 2:
                current = global.AP_colors.progression;
                break;
            
            case 3:
                current = global.AP_colors.useful;
                break;
            
            case 4:
                current = global.AP_colors.trap;
                break;
            
            case 5:
                current = global.AP_colors.useful_progression;
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

    if(keyboard_check(vk_control) && keyboard_check(ord("V")))
    {
        current = clipboard_get_text()
    }
    
    if (page == 0)
    {
        switch (choice)
        {
            case 0:
                var parts = string_split(current, ":");
                global.AP_server = parts[0];
                
                if (array_length(parts) == 2)
                {
                    try
                    {
                        global.AP_port = real(parts[1]);
                    }
                    catch (e)
                    {
                    }
                }
                
                break;
            
            case 1:
                if (string_length(current) > 0)
                {
                    try
                    {
                        global.AP_port = real(current);
                    }
                    catch(e)
                    {
                        global.AP_port = "";
                    }
                }
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
        current = string_replace_all(current, "#", "")

        switch (choice)
        {
            case 1:
                global.AP_colors.filler = current;
                break;
            
            case 2:
                global.AP_colors.progression = current;
                break;
            
            case 3:
                global.AP_colors.useful = current;
                break;
            
            case 4:
                global.AP_colors.trap = current;
                break;
            
            case 5:
                global.AP_colors.useful_progression = current;
                break;
        }
    }
}
