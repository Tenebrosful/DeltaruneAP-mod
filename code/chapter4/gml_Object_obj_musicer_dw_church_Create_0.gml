/// IMPORT
global.customflags[global.custom_flags_indexes.AP_music_playing] = 0;

if (global.plot >= 140 && global.plot < 160)
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("gerson_theme_intro.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
    }
}
else
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("church_wip.ogg", false);

        if (global.AP_ost_shuffle)
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0, 1);
        else
            global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
    }

    if (global.AP_ost_shuffle)
    {
        if (!snd_is_playing(global.AP_music[1]))
        {
            global.AP_music[0] = snd_init("church_wip.ogg");
            global.AP_music[1] = mus_loop_ext(global.AP_music[0], 0.7, 1);
        }

        global.customflags[global.custom_flags_indexes.AP_music_playing] = 1;
    }
}
