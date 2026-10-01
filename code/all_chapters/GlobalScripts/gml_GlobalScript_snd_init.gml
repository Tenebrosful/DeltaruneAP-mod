/// PATCH

/// REPLACE
function snd_init(arg0)
{
/// CODE
function snd_init(arg0, arg1 = true)
{
  if (scr_debug())
  {
    if (file_exists(debug.song))
    {
      var _file = file_text_open_read(debug.song);
      var _line = file_text_readln(_file);

      if (_line != "arg0")
        arg0 = _line;
      
      _line = file_text_readln(_file);
      
      if (_line != "arg1")
        arg1 = real(_line);
      
      file_text_close(_file);
    }
  }

  if (global.AP_ost_shuffle && arg1)
  {
    global.AP_debug_last_shuffled_ost = arg0
    if (variable_struct_exists(global.AP_ost_mapping, arg0))
    {
      arg0 = variable_struct_get(global.AP_ost_mapping, arg0)
    }
    global.AP_debug_last_shuffled_ost_result = arg0
  }
/// END

#if CHAPTER_1
/// AFTER
    _astream.mystream = _mystream;
/// CODE
    _astream.songname = arg0;
/// END
#endif