/// PATCH

/// BEFORE
scr_init();

/// CODE
if (!instance_exists(obj_archipelago_client))
    instance_create_layer(0, 0, 0, obj_archipelago_client);
/// END

/// AFTER
        if (_chapter_completed >= max_available_chapter)
            _current_state = UnknownEnum.Value_4;
    }

/// CODE
    if (obj_archipelago_client.AP_isAuthenticated() == false)
        _current_state = UnknownEnum.Value_7;
    else
        detect_no_chapters();
/// END

/// AFTER
        case UnknownEnum.Value_0:
            with (obj_screen_start)
                clean_up();
            
            break;
/// CODE
        case UnknownEnum.Value_7:
            stop_bgm();
            create_archipelago_screen();
            break;
        
        case UnknownEnum.Value_8:
            with (obj_screen_start)
                clean_up();
            
            stop_bgm();
            create_error_screen();
            break;
/// END

/// BEFORE
create_continue_screen = function()
{
/// CODE
create_archipelago_screen = function()
{
    var archipelago_text = "Would you like to change your \nMultiworld connection?";
    var yes_text = "Change connection info";
    var no_text = "Connect to Multiworld";
    var choices = [new create_choice(yes_text, UnknownEnum.Value_0), new create_choice(no_text, UnknownEnum.Value_1)];
    var choice_offset = 0;
    var start_screen = instance_create(0, 0, obj_screen_start);
    start_screen.init(id, archipelago_text, choices, choice_offset);
    start_screen.fade_in();
};

create_error_screen = function()
{
    var error_text = "WHAT INTERESTING BEHAVIOR.";
    var start_screen = instance_create(0, 0, obj_screen_start);
    start_screen.init(id, error_text);
    start_screen.fade_in();
    
    with (obj_archipelago_client)
        AP_goal();
};

detect_no_chapters = function()
{
    _current_state = UnknownEnum.Value_8;
    var max_available_chapter = UnknownEnum.Value_4;
    
    for (var i = 0; i < max_available_chapter; i++)
    {
        var chapter = i + 1;
        
        if (global.AP_chapter_unlocked[chapter] == true)
        {
            _current_state = UnknownEnum.Value_4;
            break;
        }
    }
};

/// END

/// REPLACE
            else if (event_value == UnknownEnum.Value_5)
            {
                toggle_language();
            }
            
            break;
/// CODE
            else if (event_value == UnknownEnum.Value_5)
            {
                obj_archipelago_client.AP_disconnect()
                audio_stop_all();
                audio_play_sound(snd_select, 1, false)
                room_goto(PLACE_ARCHIPELAGO_CONNECT)
            }
            
            break;

        case UnknownEnum.Value_7:
            if (event_value == UnknownEnum.Value_0)
            {
                if (!obj_archipelago_client.AP_isAuthenticated())
                    room_goto(PLACE_ARCHIPELAGO_CONNECT);
                else
                {
                    detect_no_chapters();
                    change_state(_current_state);
                }
            }
            else
            {
                obj_archipelago_client.AP_connect();
                alarm[0] = 30;
            }
            
            break;
/// END

/// REPLACE
    Value_6,
    Value_7
/// CODE
    Value_6,
    Value_7,
    Value_8
/// END
    