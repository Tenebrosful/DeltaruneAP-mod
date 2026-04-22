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
    if (obj_archipelago_client.isAuthenticated() == false)
        _current_state = UnknownEnum.Value_7;
    else
        _current_state = UnknownEnum.Value_4;

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
                if (!obj_archipelago_client.isAuthenticated())
                    room_goto(PLACE_ARCHIPELAGO_CONNECT);
                else
                    change_state(UnknownEnum.Value_4);
            }
            else
            {
                obj_archipelago_client.AP_connect();
                alarm[0] = 30;
            }
            
            break;
/// END