/// PATCH

/// AFTER
_load_type = UnknownEnum.Value_0;
/// CODE
_starting_chapter = 0;
scr_ap_create_chapter_select();
scr_ap_step_chapter_select();
/// END

/// REPLACE
    var max_chapter = UnknownEnum.Value_7;
    var max_available_chapter = UnknownEnum.Value_4;
/// CODE
    var max_chapter = 7;
    var max_available_chapter = 4;
/// END

/// REPLACE
        var chapter = i + 1;
        
        if (scr_chapter_save_file_exists(chapter) && !scr_completed_chapter_any_slot(chapter))
            _chapter_in_progress = chapter;
/// CODE
        if (global.chapter[i] == 1)
        {
          var chapter = i + 1;
          var chaptertext = "ch" + string(chapter) + ".route";
      
          if (file_exists(chaptertext) && _starting_chapter == 0)
              _starting_chapter = chapter;
        }
      }

      for (var i = 0; i < max_available_chapter; i++)
      {
        if (global.chapter[i] == 1)
        {
            var chapter = i + 1;
            
            if (scr_chapter_save_file_exists(chapter) && !scr_completed_chapter_any_slot(chapter))
                _chapter_in_progress = chapter;
        }
/// END

/// REPLACE
        var chapter = i + 1;
        
        if (scr_completed_chapter_any_slot(chapter))
            _chapter_completed = chapter;
/// CODE
        if (global.chapter[i] == 1)
        {
            var chapter = i + 1;
            
            if (scr_completed_chapter_any_slot(chapter))
                _chapter_completed = chapter;
        }
/// END

/// REPLACE
if (_chapter_completed >= max_available_chapter)
/// CODE
if (_chapter_completed >= max_available_chapter || global.chapter[_chapter_completed] == 0)
/// END

/// AFTER
    if (!is_original_launcher(_launch_data))
        _current_state = UnknownEnum.Value_4;
/// CODE
    if (_starting_chapter == 0)
            _current_state = UnknownEnum.Value_7;
/// END

/// AFTER
        case UnknownEnum.Value_6:
            with (obj_screen_start)
                clean_up();
            
            create_load_deny_confirm_screen();
            break;
        
        case UnknownEnum.Value_0:
            with (obj_screen_start)
                clean_up();
            
            break;
/// CODE
        case UnknownEnum.Value_7:
            stop_bgm();
            create_error_screen();
            break;
        
        case UnknownEnum.Value_8:
            with (obj_screen_start)
                clean_up();
            
            break;
    }
};

create_error_screen = function()
{
    if (file_exists("check.spot") && file_exists("macguffin_amount.flag") && global.secret == 1)
    {
        var start_text = "WHAT INTERESTING BEHAVIOR.";
        var start_screen = instance_create(0, 0, obj_screen_start);
        start_screen.init(id, start_text, start_text);
        start_screen.fade_in();
        scr_victory();
    }
    else
    {
        var start_text = "Please connect to the Multiworld.";
        var retry_text = "Retry";
        var quit_text = "Quit";
        var choices = [new create_choice(retry_text, UnknownEnum.Value_0), new create_choice(quit_text, UnknownEnum.Value_1)];
        var choice_offset = (global.lang == "ja") ? -20 : 0;
        var start_screen = instance_create(0, 0, obj_screen_start);
        start_screen.init(id, start_text, choices, choice_offset);
        start_screen.fade_in();
/// END

/// REPLACE
var start_text = (global.lang == "en") ? "Would you like to start from Chapter 1?" : "Chapter 1から始めますか？";
/// CODE
var start_text = "Would you like to start from Chapter " + string(_starting_chapter) + "?";
/// END

/// AFTER
        case UnknownEnum.Value_0:
            if (arg0 == "init_complete")
                init();
            else if (arg0 == "load_prompt")
                change_state(UnknownEnum.Value_5, arg1);
            
            break;
/// CODE
        case UnknownEnum.Value_7:
          if (event_value == UnknownEnum.Value_0)
          {
              game_restart();
              break;
          }
          else
          {
              game_end();
              break;
          }
/// END

/// REPLACE
                _target_chapter = UnknownEnum.Value_1;
                show_transition();
/// CODE
                if (_starting_chapter == 1)
                {
                  _target_chapter = UnknownEnum.Value_1;
                  show_transition();
                }
                else
                {
                  _target_chapter = _starting_chapter;
                  show_transition();
                }
/// END

/// REPLACE
enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7
}
/// CODE
enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8
}
/// END