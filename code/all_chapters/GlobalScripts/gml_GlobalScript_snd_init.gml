/// PATCH

/// AFTER
function snd_init(arg0)
{
/// CODE

  if (global.AP_ost_shuffle)
  {
    if (variable_struct_exists(global.AP_ost_mapping, arg0))
    {
      arg0 = variable_struct_get(global.AP_ost_mapping, arg0)
    }
  }
/// END