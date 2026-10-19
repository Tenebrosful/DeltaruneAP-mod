/// PATCH

/// REPLACE
if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("cyber.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
/// CODE
if (global.AP_ost_shuffle)
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("cyber.ogg", false);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0, 1);
    }

    if (!snd_is_playing(global.AP_music[1]))
    {
        global.AP_music[0] = snd_init("cyber.ogg");
        global.AP_music[1] = mus_loop_ext(global.AP_music[0], 1, 1);
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