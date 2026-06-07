/// PATCH

/// APPEND
if (variable_global_exists("AP_current_room"))
    global.AP_old_room = global.AP_current_room;
else
    global.AP_old_room = undefined;

global.AP_current_room = room_get_name(room);

if (global.AP_old_room != global.AP_current_room)
    AP_update_current_room(global.AP_current_room)
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

    if (keyboard_check_pressed(ord("U")))
        global.interact = 0
}
/// END
#endif