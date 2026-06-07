/// PATCH

// this readds the debug code that skips the GASTER SURVEY in debug with BACKSPACE
// (was removed in LTS)
// From Keucher-mod

/// APPEND
if keyboard_check_pressed(vk_backspace)
{
    global.flag[6] = 0
    snd_free_all()
    room_goto(room_krisroom)
}
/// END