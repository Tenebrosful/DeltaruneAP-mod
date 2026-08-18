/// PATCH

/// REPLACE
if (con == 39 && !i_ex(obj_writer))
{
/// CODE
if ((con == 39 && !i_ex(obj_writer)) || keyboard_check_pressed(vk_backspace))
{
  snd_volume(wind_song[1], 0, 60);
  snd_volume(snd_tv_static, 0, 60);
/// END