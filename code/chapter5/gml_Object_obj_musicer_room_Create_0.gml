/// IMPORT
global.customflags[global.custom_flags_indexes.AP_music_playing] = 0;

if (mysong == "cliff.ogg" && global.AP_ost_shuffle)
{
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init(mysong, false);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0, pitch);
    }

    if (!snd_is_playing(global.AP_music[1]))
    {
        global.AP_music[0] = snd_init(mysong);
        global.AP_music[1] = mus_loop_ext(global.AP_music[0], volume, pitch);
    }

    global.customflags[global.custom_flags_indexes.AP_music_playing] = 1;
}
else if (mysong != "na" && !snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init(mysong);
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], volume, pitch);
}
