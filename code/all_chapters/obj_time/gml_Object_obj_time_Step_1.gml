/// PATCH

/// APPEND
if (variable_global_exists("AP_current_room"))
    global.AP_old_room = global.AP_current_room;
else
    global.AP_old_room = undefined;

global.AP_current_room = room_get_name(room);

if (global.AP_old_room != global.AP_current_room)
    AP_update_current_room(global.AP_current_room)

if (keyboard_check_pressed(ord("U")) && false)
        global.interact = 0
/// END

#if CHAPTER_2
/// APPEND
if (scr_debug())
{
    if (keyboard_check_pressed(192))
    {
        if (room_speed == 30)
            room_speed = 200;
        else
            room_speed = 30;
    }
    
    if (keyboard_check_pressed(vk_numpad3))
    {
        if (room_speed == 30)
            room_speed = 5;
        else
            room_speed = 30;
    }
}
/// END
#endif

#if CHAPTER_1
/// REPLACE
if (keyboard_check_pressed(vk_f4))
    fullscreen_toggle = 1;

if (fullscreen_toggle == 1)
{
    fullscreen_toggle = 0;
    
    if (window_get_fullscreen())
    {
        window_set_fullscreen(false);
        ossafe_ini_open("true_config.ini");
        ini_write_real("SCREEN", "FULLSCREEN", 0);
        ossafe_ini_close();
        ossafe_savedata_save();
    }
    else
    {
        window_set_fullscreen(true);
        ossafe_ini_open("true_config.ini");
        ini_write_real("SCREEN", "FULLSCREEN", 1);
        ossafe_ini_close();
        ossafe_savedata_save();
    }
}

if (window_center_toggle == 2)
{
    window_center();
    window_center_toggle = 0;
}

if (window_center_toggle == 1)
    window_center_toggle = 2;
/// CODE
if (keyboard_check_pressed(vk_f4) || fullscreen_toggle == 1)
    alarm[1] = 1;
/// END
#endif