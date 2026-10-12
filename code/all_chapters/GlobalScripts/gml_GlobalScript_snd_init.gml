/// PATCH

/// REPLACE
function snd_init(arg0)
{
/// CODE
function snd_init(arg0, arg1 = true)
{
  if (scr_debug())
  {
    if (file_exists("debug.snd_init"))
    {
      var _file = file_text_open_read("debug.snd_init");
      var _read1 = file_text_readln(_file);
      var _read2 = file_text_readln(_file);

      if (_read1 != "")
      {
        global.AP_debug_last_shuffled_ost = arg0;
        arg0 = _read1;
        if (_read2 == "true" || bool(_read2) == true)
        {
          if (variable_struct_exists(global.AP_ost_mapping, arg0))
          {
            arg0 = variable_struct_get(global.AP_ost_mapping, arg0);
          }
        }
        global.AP_debug_last_shuffled_ost_result = arg0;
        arg1 = false;
      }
      else if (_read1 == "")
      {
        if (_read2 != "")
        {
        }
        else if (_read2 == "true" || bool(_read2) == true)
          arg1 = true;
        else if (_read2 == "false" || bool(_read2) == false)
          arg1 = false;
      }

      file_text_close(_file);
    }
  }

  if (global.AP_ost_shuffle && arg1)
  {
    global.AP_debug_last_shuffled_ost = arg0;
    if (variable_struct_exists(global.AP_ost_mapping, arg0))
    {
      arg0 = variable_struct_get(global.AP_ost_mapping, arg0);
    }
    global.AP_debug_last_shuffled_ost_result = arg0;
  }
/// END

#if CHAPTER_1
/// AFTER
    _astream.mystream = _mystream;
/// CODE
    _astream.songname = arg0;
/// END
#endif