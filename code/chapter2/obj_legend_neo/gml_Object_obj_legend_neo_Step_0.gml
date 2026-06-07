/// PATCH

/// APPEND
if (keyboard_check_pressed(vk_backspace))
{
    snd_free_all();
    global.flag[6] = 0;
    instance_create(0, 0, obj_persistentfadein);
    
    if (scr_sideb_get_phase() < 2)
        room_goto(room_dw_mansion_top_post);
    else
        room_goto(room_dw_mansion_top);
}
/// END