/// PATCH

/// PREPEND
fade = 0;
/// END

/// REPLACE
if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("cyber.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
/// CODE
if (global.AP_ost_shuffle)
{
    if (room == room_dw_cyber_savepoint && snd_is_playing(global.currentsong[1]) && !snd_is_playing(global.cyber_shuffled_music[1]))
        fade = 1;

    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("cyber.ogg", false);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0, 1);
    }

    if (!snd_is_playing(global.cyber_shuffled_music[1]))
    {
        global.cyber_shuffled_music[0] = snd_init("cyber.ogg");
        global.cyber_shuffled_music[1] = mus_loop_ext(global.cyber_shuffled_music[0], 0, 1);
    }

    if (fade)
    {
        mus_volume(global.cyber_shuffled_music[1], 0, 0);
        mus_volume(global.currentsong[1], 1, 0);
    }
    else
    {
        mus_volume(global.cyber_shuffled_music[1], 1, 0);
        mus_volume(global.currentsong[1], 0, 0);
    }
}
else
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("cyber.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
    }
}
/// END