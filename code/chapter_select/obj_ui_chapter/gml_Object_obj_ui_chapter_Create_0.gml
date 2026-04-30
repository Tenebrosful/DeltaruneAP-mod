/// PATCH

/// REPLACE
        case UnknownEnum.Value_0:
            _chapter_choice.hide_heart();
            _chapter_choice.disable_input();
            hide_title();
            show_choices();
            _parent.trigger_event("disable_scroll", arg1);
            
/// CODE
        case UnknownEnum.Value_0:
            if (global.AP_chapter_unlocked[_chapter - 1])
            {
                _chapter_choice.hide_heart();
                _chapter_choice.disable_input();
                hide_title();
                show_choices();
                _parent.trigger_event("disable_scroll", arg1);
            }
/// END

/// AFTER
    _chapter_choice = instance_create(x + 20, y + 26, obj_ui_choice);

/// CODE
if (_chapter < array_length(global.AP_chapter_unlocked))
    {
        if (!global.AP_chapter_unlocked[_chapter - 1])
        {
            _chapter_choice._color = 8421504;
            _chapter_choice.disabled_chapter = true;
        }
    }
/// END